import chai, { should } from "chai";
import chaiAsPromised from "chai-as-promised";
import { wait } from "../src/wait";

should();
chai.use(chaiAsPromised);

describe("wait", async () => {
  it("should throw invalid number when wait is not a number", async () => {
    const input = parseInt("foo", 10);
    await wait(input).should.eventually.be.rejectedWith("milliseconds not a number");
  });

  it("wait 50 ms", async () => {
    const start = new Date();
    await wait(50);
    const end = new Date();
    const delta = Math.abs(end.getTime() - start.getTime());
    delta.should.be.greaterThan(45);
  });
});
