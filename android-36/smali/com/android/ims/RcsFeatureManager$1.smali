.class Lcom/android/ims/RcsFeatureManager$1;
.super Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;
.source "RcsFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/RcsFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/RcsFeatureManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/ims/RcsFeatureManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/ims/RcsFeatureManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/android/ims/RcsFeatureManager$1;->this$0:Lcom/android/ims/RcsFeatureManager;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onPublishUpdated$2(Landroid/telephony/ims/SipDetails;Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V
    .registers 2
    .param p0, "details"    # Landroid/telephony/ims/SipDetails;
    .param p1, "callback"    # Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    .line 129
    invoke-interface {p1, p0}, Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRemoteCapabilityRequest$3(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V
    .registers 4
    .param p0, "contactUri"    # Landroid/net/Uri;
    .param p1, "remoteCapabilities"    # Ljava/util/List;
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    .param p3, "callback"    # Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    .line 136
    invoke-interface {p3, p0, p1, p2}, Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$onRequestPublishCapabilities$0(ILcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V
    .registers 2
    .param p0, "type"    # I
    .param p1, "callback"    # Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    .line 118
    invoke-interface {p1, p0}, Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;->onRequestPublishCapabilities(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onUnpublish$1(Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V
    .registers 1
    .param p0, "callback"    # Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    .line 123
    invoke-interface {p0}, Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;->onUnpublish()V

    return-void
.end method


# virtual methods
.method public blacklist onPublishUpdated(Landroid/telephony/ims/SipDetails;)V
    .registers 4
    .param p1, "details"    # Landroid/telephony/ims/SipDetails;

    .line 128
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager$1;->this$0:Lcom/android/ims/RcsFeatureManager;

    invoke-static {v0}, Lcom/android/ims/RcsFeatureManager;->-$$Nest$fgetmCapabilityEventCallback(Lcom/android/ims/RcsFeatureManager;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/SipDetails;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 130
    return-void
.end method

.method public blacklist onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .registers 6
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "cb"    # Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .line 135
    .local p2, "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager$1;->this$0:Lcom/android/ims/RcsFeatureManager;

    invoke-static {v0}, Lcom/android/ims/RcsFeatureManager;->-$$Nest$fgetmCapabilityEventCallback(Lcom/android/ims/RcsFeatureManager;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda2;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 138
    return-void
.end method

.method public blacklist onRequestPublishCapabilities(I)V
    .registers 4
    .param p1, "type"    # I

    .line 117
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager$1;->this$0:Lcom/android/ims/RcsFeatureManager;

    invoke-static {v0}, Lcom/android/ims/RcsFeatureManager;->-$$Nest$fgetmCapabilityEventCallback(Lcom/android/ims/RcsFeatureManager;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 119
    return-void
.end method

.method public blacklist onUnpublish()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager$1;->this$0:Lcom/android/ims/RcsFeatureManager;

    invoke-static {v0}, Lcom/android/ims/RcsFeatureManager;->-$$Nest$fgetmCapabilityEventCallback(Lcom/android/ims/RcsFeatureManager;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 124
    return-void
.end method
