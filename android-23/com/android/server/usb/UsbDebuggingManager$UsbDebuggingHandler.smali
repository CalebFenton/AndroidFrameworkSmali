.class Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;
.super Landroid/os/Handler;
.source "UsbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsbDebuggingHandler"
.end annotation


# static fields
.field private static final MESSAGE_ADB_ALLOW:I = 0x3

.field private static final MESSAGE_ADB_CLEAR:I = 0x6

.field private static final MESSAGE_ADB_CONFIRM:I = 0x5

.field private static final MESSAGE_ADB_DENY:I = 0x4

.field private static final MESSAGE_ADB_DISABLED:I = 0x2

.field private static final MESSAGE_ADB_ENABLED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDebuggingManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDebuggingManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDebuggingManager;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@2
    .line 207
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 206
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 211
    iget v2, p1, Landroid/os/Message;->what:I

    #@4
    packed-switch v2, :pswitch_data_0

    #@7
    .line 210
    :cond_0
    :goto_0
    return-void

    #@8
    .line 213
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@a
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get0(Lcom/android/server/usb/UsbDebuggingManager;)Z

    #@d
    move-result v2

    #@e
    if-nez v2, :cond_0

    #@10
    .line 216
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@12
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->-set0(Lcom/android/server/usb/UsbDebuggingManager;Z)Z

    #@15
    .line 218
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@17
    new-instance v3, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@19
    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@1b
    invoke-direct {v3, v4}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;-><init>(Lcom/android/server/usb/UsbDebuggingManager;)V

    #@1e
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->-set2(Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@21
    .line 219
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@23
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->start()V

    #@2a
    goto :goto_0

    #@2b
    .line 224
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@2d
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get0(Lcom/android/server/usb/UsbDebuggingManager;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_0

    #@33
    .line 227
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@35
    const/4 v3, 0x0

    #@36
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager;->-set0(Lcom/android/server/usb/UsbDebuggingManager;Z)Z

    #@39
    .line 229
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@3b
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@3e
    move-result-object v2

    #@3f
    if-eqz v2, :cond_0

    #@41
    .line 230
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@43
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->stopListening()V

    #@4a
    .line 231
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@4c
    invoke-static {v2, v4}, Lcom/android/server/usb/UsbDebuggingManager;->-set2(Lcom/android/server/usb/UsbDebuggingManager;Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@4f
    goto :goto_0

    #@50
    .line 237
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@52
    check-cast v1, Ljava/lang/String;

    #@54
    .line 238
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@56
    invoke-static {v2, v1}, Lcom/android/server/usb/UsbDebuggingManager;->-wrap0(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    .line 240
    .local v0, "fingerprints":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@5c
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get1(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v2

    #@64
    if-nez v2, :cond_1

    #@66
    .line 241
    const-string/jumbo v2, "UsbDebuggingManager"

    #@69
    new-instance v3, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v4, "Fingerprints do not match. Got "

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    .line 242
    const-string/jumbo v4, ", expected "

    #@7c
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    .line 242
    iget-object v4, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@82
    invoke-static {v4}, Lcom/android/server/usb/UsbDebuggingManager;->-get1(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    #@85
    move-result-object v4

    #@86
    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v3

    #@8e
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@91
    goto/16 :goto_0

    #@93
    .line 246
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@95
    if-ne v2, v3, :cond_2

    #@97
    .line 247
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@99
    invoke-static {v2, v1}, Lcom/android/server/usb/UsbDebuggingManager;->-wrap3(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)V

    #@9c
    .line 250
    :cond_2
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@9e
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@a1
    move-result-object v2

    #@a2
    if-eqz v2, :cond_0

    #@a4
    .line 251
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@a6
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@a9
    move-result-object v2

    #@aa
    const-string/jumbo v3, "OK"

    #@ad
    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    #@b0
    goto/16 :goto_0

    #@b2
    .line 257
    .end local v0    # "fingerprints":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@b4
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@b7
    move-result-object v2

    #@b8
    if-eqz v2, :cond_0

    #@ba
    .line 258
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@bc
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@bf
    move-result-object v2

    #@c0
    const-string/jumbo v3, "NO"

    #@c3
    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    #@c6
    goto/16 :goto_0

    #@c8
    .line 263
    :pswitch_4
    const-string/jumbo v2, "trigger_restart_min_framework"

    #@cb
    .line 264
    const-string/jumbo v3, "vold.decrypt"

    #@ce
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@d1
    move-result-object v3

    #@d2
    .line 263
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v2

    #@d6
    if-eqz v2, :cond_3

    #@d8
    .line 265
    const-string/jumbo v2, "UsbDebuggingManager"

    #@db
    const-string/jumbo v3, "Deferring adb confirmation until after vold decrypt"

    #@de
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 266
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@e3
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@e6
    move-result-object v2

    #@e7
    if-eqz v2, :cond_0

    #@e9
    .line 267
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@eb
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@ee
    move-result-object v2

    #@ef
    const-string/jumbo v3, "NO"

    #@f2
    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    #@f5
    goto/16 :goto_0

    #@f7
    .line 271
    :cond_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f9
    check-cast v1, Ljava/lang/String;

    #@fb
    .line 272
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@fd
    invoke-static {v2, v1}, Lcom/android/server/usb/UsbDebuggingManager;->-wrap0(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    #@100
    move-result-object v0

    #@101
    .line 273
    .restart local v0    # "fingerprints":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@104
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@107
    move-result v2

    #@108
    if-eqz v2, :cond_4

    #@10a
    .line 274
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@10c
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@10f
    move-result-object v2

    #@110
    if-eqz v2, :cond_0

    #@112
    .line 275
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@114
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-get3(Lcom/android/server/usb/UsbDebuggingManager;)Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;

    #@117
    move-result-object v2

    #@118
    const-string/jumbo v3, "NO"

    #@11b
    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingThread;->sendResponse(Ljava/lang/String;)V

    #@11e
    goto/16 :goto_0

    #@120
    .line 279
    :cond_4
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@122
    invoke-static {v2, v0}, Lcom/android/server/usb/UsbDebuggingManager;->-set1(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;

    #@125
    .line 280
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@127
    iget-object v3, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@129
    invoke-static {v3}, Lcom/android/server/usb/UsbDebuggingManager;->-get1(Lcom/android/server/usb/UsbDebuggingManager;)Ljava/lang/String;

    #@12c
    move-result-object v3

    #@12d
    invoke-static {v2, v1, v3}, Lcom/android/server/usb/UsbDebuggingManager;->-wrap2(Lcom/android/server/usb/UsbDebuggingManager;Ljava/lang/String;Ljava/lang/String;)V

    #@130
    goto/16 :goto_0

    #@132
    .line 285
    .end local v0    # "fingerprints":Ljava/lang/String;
    .end local v1    # "key":Ljava/lang/String;
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/usb/UsbDebuggingManager$UsbDebuggingHandler;->this$0:Lcom/android/server/usb/UsbDebuggingManager;

    #@134
    invoke-static {v2}, Lcom/android/server/usb/UsbDebuggingManager;->-wrap1(Lcom/android/server/usb/UsbDebuggingManager;)V

    #@137
    goto/16 :goto_0

    #@139
    .line 211
    nop

    #@13a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
