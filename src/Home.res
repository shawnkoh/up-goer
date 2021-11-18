@react.component
let make = () => {
  let onClick = _evt => {
    Js.log("hello!")
    Subscriber.start()
  }
  <div className="bg-white">
    <div className="max-w-7xl mx-auto py-16 px-4 sm:py-24 sm:px-6 lg:px-8">
      <div className="text-center">
        <h2 className="text-base font-semibold text-indigo-600 tracking-wide uppercase">
          {React.string("Pricing")}
        </h2>
        <p
          className="mt-1 text-4xl font-extrabold text-gray-900 sm:text-5xl sm:tracking-tight lg:text-6xl">
          {React.string("Take control of your team.")}
        </p>
        <p className="max-w-xl mt-5 mx-auto text-xl text-gray-500">
          {React.string(
            "Start building for free, then add a site plan to go live. Account plans unlock additional features.",
          )}
        </p>
        <button onClick> {React.string("Subscribe")} </button>
      </div>
    </div>
  </div>
}
