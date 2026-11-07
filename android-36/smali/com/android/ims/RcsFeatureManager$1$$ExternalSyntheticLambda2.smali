.class public final synthetic Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/Uri;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:Landroid/telephony/ims/aidl/IOptionsRequestCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda2;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda2;->f$2:Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda2;->f$0:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/ims/RcsFeatureManager$1$$ExternalSyntheticLambda2;->f$2:Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    check-cast p1, Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    invoke-static {v0, v1, v2, p1}, Lcom/android/ims/RcsFeatureManager$1;->lambda$onRemoteCapabilityRequest$3(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V

    return-void
.end method
