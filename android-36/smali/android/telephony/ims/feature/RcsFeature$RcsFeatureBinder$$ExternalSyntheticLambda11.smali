.class public final synthetic Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput-object p2, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    iput-object p3, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;->f$2:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    iget-object v2, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda11;->f$2:Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->$r8$lambda$rmvDkswTw71-uVWxMzzL3Vmu11Q(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Ljava/util/List;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V

    return-void
.end method
