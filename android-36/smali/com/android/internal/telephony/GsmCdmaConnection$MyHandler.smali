.class Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;
.super Landroid/os/Handler;
.source "GsmCdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GsmCdmaConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaConnection;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 112
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    const/4 v0, 0x4

    if-eq p1, v0, :cond_12

    if-eq p1, v1, :cond_18

    return-void

    .line 119
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->-$$Nest$mreleaseWakeLock(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    return-void

    .line 116
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->-$$Nest$mprocessNextPostDialChar(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    return-void

    .line 124
    :cond_1e
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    iget-object p1, p1, Lcom/android/internal/telephony/GsmCdmaConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaConnection$MyHandler;->this$0:Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/GsmCdmaConnection;->-$$Nest$fgetmDtmfToneDelay(Lcom/android/internal/telephony/GsmCdmaConnection;)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
