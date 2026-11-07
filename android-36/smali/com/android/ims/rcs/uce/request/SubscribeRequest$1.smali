.class Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;
.super Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;
.source "SubscribeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/SubscribeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/request/SubscribeRequest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/request/SubscribeRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ISubscribeResponseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCommandError(I)V
    .registers 3
    .param p1, "code"    # I

    .line 58
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->-$$Nest$monCommandError(Lcom/android/ims/rcs/uce/request/SubscribeRequest;I)V

    .line 59
    return-void
.end method

.method public blacklist onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    .registers 3
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 62
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->-$$Nest$monNetworkResponse(Lcom/android/ims/rcs/uce/request/SubscribeRequest;Landroid/telephony/ims/SipDetails;)V

    .line 63
    return-void
.end method

.method public blacklist onNotifyCapabilitiesUpdate(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "pidfXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->-$$Nest$monCapabilitiesUpdate(Lcom/android/ims/rcs/uce/request/SubscribeRequest;Ljava/util/List;)V

    .line 67
    return-void
.end method

.method public blacklist onResourceTerminated(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactTerminatedReason;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p1, "terminatedList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RcsContactTerminatedReason;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->-$$Nest$monResourceTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;Ljava/util/List;)V

    .line 71
    return-void
.end method

.method public blacklist onTerminated(Ljava/lang/String;J)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "retryAfterMillis"    # J

    .line 74
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequest$1;->this$0:Lcom/android/ims/rcs/uce/request/SubscribeRequest;

    invoke-static {v0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/SubscribeRequest;->-$$Nest$monTerminated(Lcom/android/ims/rcs/uce/request/SubscribeRequest;Ljava/lang/String;J)V

    .line 75
    return-void
.end method
