.class Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;
.super Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;
.source "PublishControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCapabilitiesStatusChanged(I)V
    .registers 5
    .param p1, "capabilities"    # I

    .line 145
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;->this$0:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;

    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->-$$Nest$fgetmPublishHandler(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendRcsCapabilitiesStatusChangedMsg(I)V

    .line 147
    return-void
.end method

.method public blacklist onChangeCapabilityConfigurationError(III)V
    .registers 4
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "reason"    # I

    .line 151
    return-void
.end method

.method public blacklist onQueryCapabilityConfiguration(IIZ)V
    .registers 4
    .param p1, "resultCapability"    # I
    .param p2, "resultRadioTech"    # I
    .param p3, "enabled"    # Z

    .line 142
    return-void
.end method
