### Create console format

You can create your own format to present in the example console: 
</br>
----
note: there is a variable in main.swift that is set as active , to also simulate how I get populated on the console
 
``` Swift
var formats = ["[%@ %@]: at %@ -> %@","%@ %@ at file: %@ message: %@",
               "(%@ %@) at file (%@) message (%@)",
               "\n%@ %@ \nfile: %@ \nmessage: %@",
               "[%1$@ %2$@ %1$@] file: [%3$@] message: [%4$@]",
               "%1$@ %2$@ %1$@ file: %3$@ message: %4$@"]
```

inserting the formatted string into the array, there are some presentation examples

``` Swift
2022-03-02 12:11:45.417363-0300 LoggerMVP[4165:297183] [register] [🎯 DEBUG]: at main.swift -> View Controller is with debug
2022-03-02 12:11:45.417782-0300 LoggerMVP[4165:297183] [register] [ℹ️ INFO]: at main.swift -> View Controller is with info
2022-03-02 12:11:45.417821-0300 LoggerMVP[4165:297183] [register] [⚠️ WARN]: at main.swift -> View Controller is with warn
2022-03-02 12:11:45.417852-0300 LoggerMVP[4165:297183] [register] [❌ ERROR]: at main.swift -> View Controller is with error
2022-03-02 12:11:45.417881-0300 LoggerMVP[4165:297183] [register] [✅ SUCCESS]: at main.swift -> View Controller is with success
2022-03-02 12:11:45.417978-0300 LoggerMVP[4165:297183] [register] [💢 CRITICAL]: at main.swift -> View Controller is with critical
2022-03-02 12:11:45.418008-0300 LoggerMVP[4165:297183] [register] [💬 CHAT]: at main.swift -> View Controller is with chat
2022-03-02 12:11:45.418040-0300 LoggerMVP[4165:297183] [register] 🎯 DEBUG at file: main.swift message: View Controller is with debug
2022-03-02 12:11:45.418067-0300 LoggerMVP[4165:297183] [register] ℹ️ INFO at file: main.swift message: View Controller is with info
2022-03-02 12:11:45.418094-0300 LoggerMVP[4165:297183] [register] ⚠️ WARN at file: main.swift message: View Controller is with warn
2022-03-02 12:11:45.418120-0300 LoggerMVP[4165:297183] [register] ❌ ERROR at file: main.swift message: View Controller is with error
2022-03-02 12:11:45.418146-0300 LoggerMVP[4165:297183] [register] ✅ SUCCESS at file: main.swift message: View Controller is with success
2022-03-02 12:11:45.418172-0300 LoggerMVP[4165:297183] [register] 💢 CRITICAL at file: main.swift message: View Controller is with critical
2022-03-02 12:11:45.421474-0300 LoggerMVP[4165:297183] [register] 💬 CHAT at file: main.swift message: View Controller is with chat
2022-03-02 12:11:45.421519-0300 LoggerMVP[4165:297183] [register] (🎯 DEBUG) at file (main.swift) message (View Controller is with debug)
2022-03-02 12:11:45.421550-0300 LoggerMVP[4165:297183] [register] (ℹ️ INFO) at file (main.swift) message (View Controller is with info)
2022-03-02 12:11:45.421580-0300 LoggerMVP[4165:297183] [register] (⚠️ WARN) at file (main.swift) message (View Controller is with warn)
2022-03-02 12:11:45.421608-0300 LoggerMVP[4165:297183] [register] (❌ ERROR) at file (main.swift) message (View Controller is with error)
2022-03-02 12:11:45.421635-0300 LoggerMVP[4165:297183] [register] (✅ SUCCESS) at file (main.swift) message (View Controller is with success)
2022-03-02 12:11:45.421662-0300 LoggerMVP[4165:297183] [register] (💢 CRITICAL) at file (main.swift) message (View Controller is with critical)
2022-03-02 12:11:45.421924-0300 LoggerMVP[4165:297183] [register] (💬 CHAT) at file (main.swift) message (View Controller is with chat)
2022-03-02 12:11:45.421965-0300 LoggerMVP[4165:297183] [register] 
🎯 DEBUG 
file: main.swift 
message: View Controller is with debug
2022-03-02 12:11:45.421995-0300 LoggerMVP[4165:297183] [register] 
ℹ️ INFO 
file: main.swift 
message: View Controller is with info
2022-03-02 12:11:45.422022-0300 LoggerMVP[4165:297183] [register] 
⚠️ WARN 
file: main.swift 
message: View Controller is with warn
2022-03-02 12:11:45.422055-0300 LoggerMVP[4165:297183] [register] 
❌ ERROR 
file: main.swift 
message: View Controller is with error
2022-03-02 12:11:45.422083-0300 LoggerMVP[4165:297183] [register] 
✅ SUCCESS 
file: main.swift 
message: View Controller is with success
2022-03-02 12:11:45.422110-0300 LoggerMVP[4165:297183] [register] 
💢 CRITICAL 
file: main.swift 
message: View Controller is with critical
2022-03-02 12:11:45.422137-0300 LoggerMVP[4165:297183] [register] 
💬 CHAT 
file: main.swift 
message: View Controller is with chat
2022-03-02 12:11:45.422167-0300 LoggerMVP[4165:297183] [register] [🎯 DEBUG 🎯] file: [main.swift] message: [View Controller is with debug]
2022-03-02 12:11:45.422227-0300 LoggerMVP[4165:297183] [register] [ℹ️ INFO ℹ️] file: [main.swift] message: [View Controller is with info]
2022-03-02 12:11:45.422272-0300 LoggerMVP[4165:297183] [register] [⚠️ WARN ⚠️] file: [main.swift] message: [View Controller is with warn]
2022-03-02 12:11:45.422305-0300 LoggerMVP[4165:297183] [register] [❌ ERROR ❌] file: [main.swift] message: [View Controller is with error]
2022-03-02 12:11:45.422335-0300 LoggerMVP[4165:297183] [register] [✅ SUCCESS ✅] file: [main.swift] message: [View Controller is with success]
2022-03-02 12:11:45.422404-0300 LoggerMVP[4165:297183] [register] [💢 CRITICAL 💢] file: [main.swift] message: [View Controller is with critical]
2022-03-02 12:11:45.422437-0300 LoggerMVP[4165:297183] [register] [💬 CHAT 💬] file: [main.swift] message: [View Controller is with chat]
2022-03-02 12:11:45.422510-0300 LoggerMVP[4165:297183] [register] 🎯 DEBUG 🎯 file: main.swift message: View Controller is with debug
2022-03-02 12:11:45.422573-0300 LoggerMVP[4165:297183] [register] ℹ️ INFO ℹ️ file: main.swift message: View Controller is with info
2022-03-02 12:11:45.422631-0300 LoggerMVP[4165:297183] [register] ⚠️ WARN ⚠️ file: main.swift message: View Controller is with warn
2022-03-02 12:11:45.422689-0300 LoggerMVP[4165:297183] [register] ❌ ERROR ❌ file: main.swift message: View Controller is with error
2022-03-02 12:11:45.422730-0300 LoggerMVP[4165:297183] [register] ✅ SUCCESS ✅ file: main.swift message: View Controller is with success
2022-03-02 12:11:45.422798-0300 LoggerMVP[4165:297183] [register] 💢 CRITICAL 💢 file: main.swift message: View Controller is with critical
2022-03-02 12:11:45.422872-0300 LoggerMVP[4165:297183] [register] 💬 CHAT 💬 file: main.swift message: View Controller is with chat
2022-03-02 12:11:45.422907-0300 LoggerMVP[4165:297183] [register] 
🎯 DEBUG 🎯 
file: main.swift 
message View Controller is with debug
2022-03-02 12:11:45.422984-0300 LoggerMVP[4165:297183] [register] 
ℹ️ INFO ℹ️ 
file: main.swift 
message View Controller is with info
2022-03-02 12:11:45.423092-0300 LoggerMVP[4165:297183] [register] 
⚠️ WARN ⚠️ 
file: main.swift 
message View Controller is with warn
2022-03-02 12:11:45.423124-0300 LoggerMVP[4165:297183] [register] 
❌ ERROR ❌ 
file: main.swift 
message View Controller is with error
2022-03-02 12:11:45.423155-0300 LoggerMVP[4165:297183] [register] 
✅ SUCCESS ✅ 
file: main.swift 
message View Controller is with success
2022-03-02 12:11:45.423183-0300 LoggerMVP[4165:297183] [register] 
💢 CRITICAL 💢 
file: main.swift 
message View Controller is with critical
2022-03-02 12:11:45.423250-0300 LoggerMVP[4165:297183] [register] 
💬 CHAT 💬 
file: main.swift 
message View Controller is with chat
2022-03-02 12:11:45.423338-0300 LoggerMVP[4165:297183] [register] [🟪 DEBUG]: at main.swift -> View Controller is with debug
2022-03-02 12:11:45.423375-0300 LoggerMVP[4165:297183] [register] [🟦 INFO]: at main.swift -> View Controller is with info
2022-03-02 12:11:45.423404-0300 LoggerMVP[4165:297183] [register] [🟨 WARN]: at main.swift -> View Controller is with warn
2022-03-02 12:11:45.423489-0300 LoggerMVP[4165:297183] [register] [🟥 ERROR]: at main.swift -> View Controller is with error
2022-03-02 12:11:45.423518-0300 LoggerMVP[4165:297183] [register] [🟩 SUCCESS]: at main.swift -> View Controller is with success
2022-03-02 12:11:45.423596-0300 LoggerMVP[4165:297183] [register] [🟧 CRITICAL]: at main.swift -> View Controller is with critical
2022-03-02 12:11:45.423642-0300 LoggerMVP[4165:297183] [register] [⬜ CHAT]: at main.swift -> View Controller is with chat
2022-03-02 12:11:45.423705-0300 LoggerMVP[4165:297183] [register] 🟪 DEBUG at file: main.swift message: View Controller is with debug
2022-03-02 12:11:45.423763-0300 LoggerMVP[4165:297183] [register] 🟦 INFO at file: main.swift message: View Controller is with info
2022-03-02 12:11:45.423814-0300 LoggerMVP[4165:297183] [register] 🟨 WARN at file: main.swift message: View Controller is with warn
2022-03-02 12:11:45.423878-0300 LoggerMVP[4165:297183] [register] 🟥 ERROR at file: main.swift message: View Controller is with error
2022-03-02 12:11:45.423933-0300 LoggerMVP[4165:297183] [register] 🟩 SUCCESS at file: main.swift message: View Controller is with success
2022-03-02 12:11:45.424006-0300 LoggerMVP[4165:297183] [register] 🟧 CRITICAL at file: main.swift message: View Controller is with critical
2022-03-02 12:11:45.424063-0300 LoggerMVP[4165:297183] [register] ⬜ CHAT at file: main.swift message: View Controller is with chat
2022-03-02 12:11:45.424126-0300 LoggerMVP[4165:297183] [register] (🟪 DEBUG) at file (main.swift) message (View Controller is with debug)
2022-03-02 12:11:45.424200-0300 LoggerMVP[4165:297183] [register] (🟦 INFO) at file (main.swift) message (View Controller is with info)
2022-03-02 12:11:45.424233-0300 LoggerMVP[4165:297183] [register] (🟨 WARN) at file (main.swift) message (View Controller is with warn)
2022-03-02 12:11:45.424290-0300 LoggerMVP[4165:297183] [register] (🟥 ERROR) at file (main.swift) message (View Controller is with error)
2022-03-02 12:11:45.424357-0300 LoggerMVP[4165:297183] [register] (🟩 SUCCESS) at file (main.swift) message (View Controller is with success)
2022-03-02 12:11:45.424451-0300 LoggerMVP[4165:297183] [register] (🟧 CRITICAL) at file (main.swift) message (View Controller is with critical)
2022-03-02 12:11:45.424481-0300 LoggerMVP[4165:297183] [register] (⬜ CHAT) at file (main.swift) message (View Controller is with chat)
2022-03-02 12:11:45.424512-0300 LoggerMVP[4165:297183] [register] 
🟪 DEBUG 
file: main.swift 
message: View Controller is with debug
2022-03-02 12:11:45.424578-0300 LoggerMVP[4165:297183] [register] 
🟦 INFO 
file: main.swift 
message: View Controller is with info
2022-03-02 12:11:45.424644-0300 LoggerMVP[4165:297183] [register] 
🟨 WARN 
file: main.swift 
message: View Controller is with warn
2022-03-02 12:11:45.424686-0300 LoggerMVP[4165:297183] [register] 
🟥 ERROR 
file: main.swift 
message: View Controller is with error
2022-03-02 12:11:45.424749-0300 LoggerMVP[4165:297183] [register] 
🟩 SUCCESS 
file: main.swift 
message: View Controller is with success
2022-03-02 12:11:45.424793-0300 LoggerMVP[4165:297183] [register] 
🟧 CRITICAL 
file: main.swift 
message: View Controller is with critical
2022-03-02 12:11:45.424852-0300 LoggerMVP[4165:297183] [register] 
⬜ CHAT 
file: main.swift 
message: View Controller is with chat
2022-03-02 12:11:45.424942-0300 LoggerMVP[4165:297183] [register] [🟪 DEBUG 🟪] file: [main.swift] message: [View Controller is with debug]
2022-03-02 12:11:45.424973-0300 LoggerMVP[4165:297183] [register] [🟦 INFO 🟦] file: [main.swift] message: [View Controller is with info]
2022-03-02 12:11:45.425056-0300 LoggerMVP[4165:297183] [register] [🟨 WARN 🟨] file: [main.swift] message: [View Controller is with warn]
2022-03-02 12:11:45.425086-0300 LoggerMVP[4165:297183] [register] [🟥 ERROR 🟥] file: [main.swift] message: [View Controller is with error]
2022-03-02 12:11:45.425126-0300 LoggerMVP[4165:297183] [register] [🟩 SUCCESS 🟩] file: [main.swift] message: [View Controller is with success]
2022-03-02 12:11:45.425190-0300 LoggerMVP[4165:297183] [register] [🟧 CRITICAL 🟧] file: [main.swift] message: [View Controller is with critical]
2022-03-02 12:11:45.425255-0300 LoggerMVP[4165:297183] [register] [⬜ CHAT ⬜] file: [main.swift] message: [View Controller is with chat]
2022-03-02 12:11:45.425292-0300 LoggerMVP[4165:297183] [register] 🟪 DEBUG 🟪 file: main.swift message: View Controller is with debug
2022-03-02 12:11:45.425406-0300 LoggerMVP[4165:297183] [register] 🟦 INFO 🟦 file: main.swift message: View Controller is with info
2022-03-02 12:11:45.425437-0300 LoggerMVP[4165:297183] [register] 🟨 WARN 🟨 file: main.swift message: View Controller is with warn
2022-03-02 12:11:45.425478-0300 LoggerMVP[4165:297183] [register] 🟥 ERROR 🟥 file: main.swift message: View Controller is with error
2022-03-02 12:11:45.425535-0300 LoggerMVP[4165:297183] [register] 🟩 SUCCESS 🟩 file: main.swift message: View Controller is with success
2022-03-02 12:11:45.425587-0300 LoggerMVP[4165:297183] [register] 🟧 CRITICAL 🟧 file: main.swift message: View Controller is with critical
2022-03-02 12:11:45.425660-0300 LoggerMVP[4165:297183] [register] ⬜ CHAT ⬜ file: main.swift message: View Controller is with chat
2022-03-02 12:11:45.425693-0300 LoggerMVP[4165:297183] [register] 
🟪 DEBUG 🟪 
file: main.swift 
message View Controller is with debug
2022-03-02 12:11:45.425763-0300 LoggerMVP[4165:297183] [register] 
🟦 INFO 🟦 
file: main.swift 
message View Controller is with info
2022-03-02 12:11:45.425830-0300 LoggerMVP[4165:297183] [register] 
🟨 WARN 🟨 
file: main.swift 
message View Controller is with warn
2022-03-02 12:11:45.425888-0300 LoggerMVP[4165:297183] [register] 
🟥 ERROR 🟥 
file: main.swift 
message View Controller is with error
2022-03-02 12:11:45.425940-0300 LoggerMVP[4165:297183] [register] 
🟩 SUCCESS 🟩 
file: main.swift 
message View Controller is with success
2022-03-02 12:11:45.426000-0300 LoggerMVP[4165:297183] [register] 
🟧 CRITICAL 🟧 
file: main.swift 
message View Controller is with critical
2022-03-02 12:11:45.426056-0300 LoggerMVP[4165:297183] [register] 
⬜ CHAT ⬜ 
file: main.swift 
message View Controller is with chat
2022-03-02 12:11:45.426125-0300 LoggerMVP[4165:297183] [register] [🐛 DEBUG]: at main.swift -> View Controller is with debug
2022-03-02 12:11:45.426172-0300 LoggerMVP[4165:297183] [register] [ℹ️ INFO]: at main.swift -> View Controller is with info
2022-03-02 12:11:45.426227-0300 LoggerMVP[4165:297183] [register] [⚠️ WARN]: at main.swift -> View Controller is with warn
2022-03-02 12:11:45.426260-0300 LoggerMVP[4165:297183] [register] [🔥 ERROR]: at main.swift -> View Controller is with error
2022-03-02 12:11:45.426325-0300 LoggerMVP[4165:297183] [register] [📖 SUCCESS]: at main.swift -> View Controller is with success
2022-03-02 12:11:45.426400-0300 LoggerMVP[4165:297183] [register] [⚡ CRITICAL]: at main.swift -> View Controller is with critical
2022-03-02 12:11:45.426441-0300 LoggerMVP[4165:297183] [register] [🗣️ CHAT]: at main.swift -> View Controller is with chat
2022-03-02 12:11:45.426514-0300 LoggerMVP[4165:297183] [register] 🐛 DEBUG at file: main.swift message: View Controller is with debug
2022-03-02 12:11:45.426561-0300 LoggerMVP[4165:297183] [register] ℹ️ INFO at file: main.swift message: View Controller is with info
2022-03-02 12:11:45.426626-0300 LoggerMVP[4165:297183] [register] ⚠️ WARN at file: main.swift message: View Controller is with warn
2022-03-02 12:11:45.426660-0300 LoggerMVP[4165:297183] [register] 🔥 ERROR at file: main.swift message: View Controller is with error
2022-03-02 12:11:45.426746-0300 LoggerMVP[4165:297183] [register] 📖 SUCCESS at file: main.swift message: View Controller is with success
2022-03-02 12:11:45.426841-0300 LoggerMVP[4165:297183] [register] ⚡ CRITICAL at file: main.swift message: View Controller is with critical
2022-03-02 12:11:45.426871-0300 LoggerMVP[4165:297183] [register] 🗣️ CHAT at file: main.swift message: View Controller is with chat
2022-03-02 12:11:45.426901-0300 LoggerMVP[4165:297183] [register] (🐛 DEBUG) at file (main.swift) message (View Controller is with debug)
2022-03-02 12:11:45.426950-0300 LoggerMVP[4165:297183] [register] (ℹ️ INFO) at file (main.swift) message (View Controller is with info)
2022-03-02 12:11:45.427017-0300 LoggerMVP[4165:297183] [register] (⚠️ WARN) at file (main.swift) message (View Controller is with warn)
2022-03-02 12:11:45.427075-0300 LoggerMVP[4165:297183] [register] (🔥 ERROR) at file (main.swift) message (View Controller is with error)
2022-03-02 12:11:45.427135-0300 LoggerMVP[4165:297183] [register] (📖 SUCCESS) at file (main.swift) message (View Controller is with success)
2022-03-02 12:11:45.427166-0300 LoggerMVP[4165:297183] [register] (⚡ CRITICAL) at file (main.swift) message (View Controller is with critical)
2022-03-02 12:11:45.427237-0300 LoggerMVP[4165:297183] [register] (🗣️ CHAT) at file (main.swift) message (View Controller is with chat)
2022-03-02 12:11:45.427309-0300 LoggerMVP[4165:297183] [register] 
🐛 DEBUG 
file: main.swift 
message: View Controller is with debug
2022-03-02 12:11:45.427348-0300 LoggerMVP[4165:297183] [register] 
ℹ️ INFO 
file: main.swift 
message: View Controller is with info
2022-03-02 12:11:45.427422-0300 LoggerMVP[4165:297183] [register] 
⚠️ WARN 
file: main.swift 
message: View Controller is with warn
2022-03-02 12:11:45.427454-0300 LoggerMVP[4165:297183] [register] 
🔥 ERROR 
file: main.swift 
message: View Controller is with error
2022-03-02 12:11:45.427525-0300 LoggerMVP[4165:297183] [register] 
📖 SUCCESS 
file: main.swift 
message: View Controller is with success
2022-03-02 12:11:45.427618-0300 LoggerMVP[4165:297183] [register] 
⚡ CRITICAL 
file: main.swift 
message: View Controller is with critical
2022-03-02 12:11:45.427683-0300 LoggerMVP[4165:297183] [register] 
🗣️ CHAT 
file: main.swift 
message: View Controller is with chat
2022-03-02 12:11:45.427798-0300 LoggerMVP[4165:297183] [register] [🐛 DEBUG 🐛] file: [main.swift] message: [View Controller is with debug]
2022-03-02 12:11:45.427849-0300 LoggerMVP[4165:297183] [register] [ℹ️ INFO ℹ️] file: [main.swift] message: [View Controller is with info]
2022-03-02 12:11:45.428027-0300 LoggerMVP[4165:297183] [register] [⚠️ WARN ⚠️] file: [main.swift] message: [View Controller is with warn]
2022-03-02 12:11:45.428058-0300 LoggerMVP[4165:297183] [register] [🔥 ERROR 🔥] file: [main.swift] message: [View Controller is with error]
2022-03-02 12:11:45.428085-0300 LoggerMVP[4165:297183] [register] [📖 SUCCESS 📖] file: [main.swift] message: [View Controller is with success]
2022-03-02 12:11:45.428117-0300 LoggerMVP[4165:297183] [register] [⚡ CRITICAL ⚡] file: [main.swift] message: [View Controller is with critical]
2022-03-02 12:11:45.428178-0300 LoggerMVP[4165:297183] [register] [🗣️ CHAT 🗣️] file: [main.swift] message: [View Controller is with chat]
2022-03-02 12:11:45.428209-0300 LoggerMVP[4165:297183] [register] 🐛 DEBUG 🐛 file: main.swift message: View Controller is with debug
2022-03-02 12:11:45.428238-0300 LoggerMVP[4165:297183] [register] ℹ️ INFO ℹ️ file: main.swift message: View Controller is with info
2022-03-02 12:11:45.428318-0300 LoggerMVP[4165:297183] [register] ⚠️ WARN ⚠️ file: main.swift message: View Controller is with warn
2022-03-02 12:11:45.428352-0300 LoggerMVP[4165:297183] [register] 🔥 ERROR 🔥 file: main.swift message: View Controller is with error
2022-03-02 12:11:45.428428-0300 LoggerMVP[4165:297183] [register] 📖 SUCCESS 📖 file: main.swift message: View Controller is with success
2022-03-02 12:11:45.428478-0300 LoggerMVP[4165:297183] [register] ⚡ CRITICAL ⚡ file: main.swift message: View Controller is with critical
2022-03-02 12:11:45.428557-0300 LoggerMVP[4165:297183] [register] 🗣️ CHAT 🗣️ file: main.swift message: View Controller is with chat
2022-03-02 12:11:45.428595-0300 LoggerMVP[4165:297183] [register] 
🐛 DEBUG 🐛 
file: main.swift 
message View Controller is with debug
2022-03-02 12:11:45.428666-0300 LoggerMVP[4165:297183] [register] 
ℹ️ INFO ℹ️ 
file: main.swift 
message View Controller is with info
2022-03-02 12:11:45.428715-0300 LoggerMVP[4165:297183] [register] 
⚠️ WARN ⚠️ 
file: main.swift 
message View Controller is with warn
2022-03-02 12:11:45.428761-0300 LoggerMVP[4165:297183] [register] 
🔥 ERROR 🔥 
file: main.swift 
message View Controller is with error
2022-03-02 12:11:45.428855-0300 LoggerMVP[4165:297183] [register] 
📖 SUCCESS 📖 
file: main.swift 
message View Controller is with success
2022-03-02 12:11:45.428891-0300 LoggerMVP[4165:297183] [register] 
⚡ CRITICAL ⚡ 
file: main.swift 
message View Controller is with critical
2022-03-02 12:11:45.428949-0300 LoggerMVP[4165:297183] [register] 
🗣️ CHAT 🗣️ 
file: main.swift 
message View Controller is with chat
2022-03-02 12:11:45.429003-0300 LoggerMVP[4165:297183] [register] [🟣 DEBUG]: at main.swift -> View Controller is with debug
2022-03-02 12:11:45.429091-0300 LoggerMVP[4165:297183] [register] [🔵 INFO]: at main.swift -> View Controller is with info
2022-03-02 12:11:45.429176-0300 LoggerMVP[4165:297183] [register] [🟡 WARN]: at main.swift -> View Controller is with warn
2022-03-02 12:11:45.429307-0300 LoggerMVP[4165:297183] [register] [🔴 ERROR]: at main.swift -> View Controller is with error
2022-03-02 12:11:45.429337-0300 LoggerMVP[4165:297183] [register] [🟢 SUCCESS]: at main.swift -> View Controller is with success
2022-03-02 12:11:45.429388-0300 LoggerMVP[4165:297183] [register] [🟠 CRITICAL]: at main.swift -> View Controller is with critical
2022-03-02 12:11:45.429457-0300 LoggerMVP[4165:297183] [register] [⚪ CHAT]: at main.swift -> View Controller is with chat
2022-03-02 12:11:45.429513-0300 LoggerMVP[4165:297183] [register] 🟣 DEBUG at file: main.swift message: View Controller is with debug
2022-03-02 12:11:45.429581-0300 LoggerMVP[4165:297183] [register] 🔵 INFO at file: main.swift message: View Controller is with info
2022-03-02 12:11:45.429639-0300 LoggerMVP[4165:297183] [register] 🟡 WARN at file: main.swift message: View Controller is with warn
2022-03-02 12:11:45.429695-0300 LoggerMVP[4165:297183] [register] 🔴 ERROR at file: main.swift message: View Controller is with error
2022-03-02 12:11:45.429758-0300 LoggerMVP[4165:297183] [register] 🟢 SUCCESS at file: main.swift message: View Controller is with success
2022-03-02 12:11:45.429794-0300 LoggerMVP[4165:297183] [register] 🟠 CRITICAL at file: main.swift message: View Controller is with critical
2022-03-02 12:11:45.429861-0300 LoggerMVP[4165:297183] [register] ⚪ CHAT at file: main.swift message: View Controller is with chat
2022-03-02 12:11:45.429920-0300 LoggerMVP[4165:297183] [register] (🟣 DEBUG) at file (main.swift) message (View Controller is with debug)
2022-03-02 12:11:45.429973-0300 LoggerMVP[4165:297183] [register] (🔵 INFO) at file (main.swift) message (View Controller is with info)
2022-03-02 12:11:45.430027-0300 LoggerMVP[4165:297183] [register] (🟡 WARN) at file (main.swift) message (View Controller is with warn)
2022-03-02 12:11:45.430131-0300 LoggerMVP[4165:297183] [register] (🔴 ERROR) at file (main.swift) message (View Controller is with error)
2022-03-02 12:11:45.430161-0300 LoggerMVP[4165:297183] [register] (🟢 SUCCESS) at file (main.swift) message (View Controller is with success)
2022-03-02 12:11:45.430212-0300 LoggerMVP[4165:297183] [register] (🟠 CRITICAL) at file (main.swift) message (View Controller is with critical)
2022-03-02 12:11:45.430274-0300 LoggerMVP[4165:297183] [register] (⚪ CHAT) at file (main.swift) message (View Controller is with chat)
2022-03-02 12:11:45.430312-0300 LoggerMVP[4165:297183] [register] 
🟣 DEBUG 
file: main.swift 
message: View Controller is with debug
2022-03-02 12:11:45.430374-0300 LoggerMVP[4165:297183] [register] 
🔵 INFO 
file: main.swift 
message: View Controller is with info
2022-03-02 12:11:45.430435-0300 LoggerMVP[4165:297183] [register] 
🟡 WARN 
file: main.swift 
message: View Controller is with warn
2022-03-02 12:11:45.430494-0300 LoggerMVP[4165:297183] [register] 
🔴 ERROR 
file: main.swift 
message: View Controller is with error
2022-03-02 12:11:45.430544-0300 LoggerMVP[4165:297183] [register] 
🟢 SUCCESS 
file: main.swift 
message: View Controller is with success
2022-03-02 12:11:45.430617-0300 LoggerMVP[4165:297183] [register] 
🟠 CRITICAL 
file: main.swift 
message: View Controller is with critical
2022-03-02 12:11:45.430653-0300 LoggerMVP[4165:297183] [register] 
⚪ CHAT 
file: main.swift 
message: View Controller is with chat
2022-03-02 12:11:45.430732-0300 LoggerMVP[4165:297183] [register] [🟣 DEBUG 🟣] file: [main.swift] message: [View Controller is with debug]
2022-03-02 12:11:45.430766-0300 LoggerMVP[4165:297183] [register] [🔵 INFO 🔵] file: [main.swift] message: [View Controller is with info]
2022-03-02 12:11:45.430844-0300 LoggerMVP[4165:297183] [register] [🟡 WARN 🟡] file: [main.swift] message: [View Controller is with warn]
2022-03-02 12:11:45.430875-0300 LoggerMVP[4165:297183] [register] [🔴 ERROR 🔴] file: [main.swift] message: [View Controller is with error]
2022-03-02 12:11:45.430951-0300 LoggerMVP[4165:297183] [register] [🟢 SUCCESS 🟢] file: [main.swift] message: [View Controller is with success]
2022-03-02 12:11:45.431038-0300 LoggerMVP[4165:297183] [register] [🟠 CRITICAL 🟠] file: [main.swift] message: [View Controller is with critical]
2022-03-02 12:11:45.431068-0300 LoggerMVP[4165:297183] [register] [⚪ CHAT ⚪] file: [main.swift] message: [View Controller is with chat]
2022-03-02 12:11:45.431125-0300 LoggerMVP[4165:297183] [register] 🟣 DEBUG 🟣 file: main.swift message: View Controller is with debug
2022-03-02 12:11:45.431182-0300 LoggerMVP[4165:297183] [register] 🔵 INFO 🔵 file: main.swift message: View Controller is with info
2022-03-02 12:11:45.431212-0300 LoggerMVP[4165:297183] [register] 🟡 WARN 🟡 file: main.swift message: View Controller is with warn
2022-03-02 12:11:45.431287-0300 LoggerMVP[4165:297183] [register] 🔴 ERROR 🔴 file: main.swift message: View Controller is with error
2022-03-02 12:11:45.431318-0300 LoggerMVP[4165:297183] [register] 🟢 SUCCESS 🟢 file: main.swift message: View Controller is with success
2022-03-02 12:11:45.431387-0300 LoggerMVP[4165:297183] [register] 🟠 CRITICAL 🟠 file: main.swift message: View Controller is with critical
2022-03-02 12:11:45.431451-0300 LoggerMVP[4165:297183] [register] ⚪ CHAT ⚪ file: main.swift message: View Controller is with chat
2022-03-02 12:11:45.431521-0300 LoggerMVP[4165:297183] [register] 
🟣 DEBUG 🟣 
file: main.swift 
message View Controller is with debug
2022-03-02 12:11:45.431630-0300 LoggerMVP[4165:297183] [register] 
🔵 INFO 🔵 
file: main.swift 
message View Controller is with info
2022-03-02 12:11:45.431660-0300 LoggerMVP[4165:297183] [register] 
🟡 WARN 🟡 
file: main.swift 
message View Controller is with warn
2022-03-02 12:11:45.431693-0300 LoggerMVP[4165:297183] [register] 
🔴 ERROR 🔴 
file: main.swift 
message View Controller is with error
2022-03-02 12:11:45.431780-0300 LoggerMVP[4165:297183] [register] 
🟢 SUCCESS 🟢 
file: main.swift 
message View Controller is with success
2022-03-02 12:11:45.431849-0300 LoggerMVP[4165:297183] [register] 
🟠 CRITICAL 🟠 
file: main.swift 
message View Controller is with critical
2022-03-02 12:11:45.431883-0300 LoggerMVP[4165:297183] [register] 
⚪ CHAT ⚪ 
file: main.swift 
message View Controller is with chat
```
