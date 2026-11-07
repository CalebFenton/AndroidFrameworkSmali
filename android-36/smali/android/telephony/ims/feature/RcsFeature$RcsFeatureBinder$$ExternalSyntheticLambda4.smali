.class public final synthetic Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput-object p2, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda4;->f$1:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda4;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda4;->f$1:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-static {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->$r8$lambda$NT4e-ddkO5Xifg7rn30Bj-Fkh4o(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)V

    return-void
.end method
