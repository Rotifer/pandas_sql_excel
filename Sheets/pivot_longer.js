class PivotLonger {

  constructor(rng) {
    this.rngInfo = new RangeInfo(rng);
    this.rng = rng;
    this.dataSheetName = this.rngInfo.SheetName;
    this.sheet = SpreadsheetApp.getActiveSpreadsheet().getSheetByName(this.dataSheetName);
    this.rowNamesRng = this.rngInfo.getColumnRangeByIndex(1);
    this.columnNamesRng = this.rngInfo.getRowRangeByIndex(1);
    this._setDataRange();
    this._setRowNames();
    this._setColumnNames();
  }

  _setDataRange() {
    const firstDataCellAddress = this.rngInfo.getCell(2, 2).getA1Notation();
    const lastDataCellAddress = this.rngInfo.LastCellAddress;
    const dataRngAddress = `${firstDataCellAddress}:${lastDataCellAddress}`;
    this.dataRng = this.sheet.getRange(dataRngAddress);
  }

  _setRowNames() {
    this.rowNames = this.rowNamesRng.getValues().map((row) => {return row[0];});
  }

  _setColumnNames() {
    this.columnNames = this.columnNamesRng.getValues()[0];
  }

  get DataRange() {
    return this.dataRng;
  }

  get RowNames() {
    return this.rowNames;
  }

  get ColumnNames() {
    return this.columnNames;
  }

  getLonger() {
    this.dataRngInfo = new RangeInfo(this.dataRng);
    //console.log(this.dataRng.getA1Notation());
    const results = [];
    let i = 1;
    for(let row of this.dataRngInfo.Rows()) {
      let rowColumnValue = [];
      let rowName = this.rowNames[i];
      let cellInfo = new RangeInfo(row);
      let j = 1;
      for(let cell of cellInfo.Cells()) {
        let columnName = this.columnNames[j];
        let cellValue = cell.getValue();
        rowColumnValue = [rowName, columnName, cellValue];
        results.push(rowColumnValue);
        j++;
      }
      i++;
    }
    return results;
  }

}

function test_PivotLonger() {
  const rng = SpreadsheetApp.getActiveSpreadsheet().getRangeByName("PIVOT_LONGER_RNG");
  const pvtLngr = new PivotLonger(rng);
  console.log(pvtLngr.DataRange.getA1Notation());
  //console.log(pvtLngr.RowNames);
  //console.log(pvtLngr.ColumnNames);
  console.log(pvtLngr.getLonger());
}

