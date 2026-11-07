.class Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;
.super Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub;
.source "PublishRequestResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IPublishResponseCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCommandError(I)V
    .registers 3
    .param p1, "code"    # I

    .line 95
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->-$$Nest$monCommandError(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;I)V

    .line 96
    return-void
.end method

.method public blacklist onNetworkResponse(Landroid/telephony/ims/SipDetails;)V
    .registers 3
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 100
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->-$$Nest$monNetworkResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;Landroid/telephony/ims/SipDetails;)V

    .line 101
    return-void
.end method
