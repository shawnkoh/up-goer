// %%raw(`
// const mqtt = require("mqtt")
// `)
// @module external mqtt: 'whatever = "mqtt"

// let client = mqtt["connect"]("mqtt://test.mosquitto.org")

// client["on"]("connect")
// ->client["subscribe"]("presence")
// ->(
//   (err, granted) => {
//     if !err {
//       client["publish"]("presence", "Hello mqtt")
//     }
//   }
// )

// client["on"]("message")->(
//   (topic, message) => {
//     Js.log(message)
//     client["end"]()
//   }
// )

@genType.import(("mqtt", "client"))
type client

@genType.import("mqtt")
external connect: string => 'whatever = "connect"

// external connect: string => 'whatever = "connect"
// @genType.import("mqtt")
// type client

let start = () => {
  let cli = connect("abc")

  cli["on"]("connect")
  ->cli["subscribe"]
  ->(
    err => {
      if !err {
        // TODO: Not sure if this should be double bracket
        cli["publish"](("presence", "hello mqtt"))
      }
    }
  )

  cli["on"]("message")->(
    (topic, message) => {
      Js.log("test")
      Js.log(message)
      cli["end"]
    }
  )()
}

// @genType.connect("mqtt")
// external publish: client => 'whatever = "publish"

// let cli = connect("mqtt://test.mosquitto.org")

// cli.on("connect")
// ->cli.subscribe("presence")
// ->(
//   err => {
//     if !err {
//       publish(cli)
//     }
//   }
// )
