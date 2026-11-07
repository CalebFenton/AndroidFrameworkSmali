.class Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;
.super Landroid/os/Handler;
.source "ImsPhoneConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V
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

    .line 179
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 185
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

    .line 192
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    return-void

    .line 189
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->-$$Nest$mprocessNextPostDialChar(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void

    .line 197
    :cond_1e
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->-$$Nest$fgetmDtmfToneDelay(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
