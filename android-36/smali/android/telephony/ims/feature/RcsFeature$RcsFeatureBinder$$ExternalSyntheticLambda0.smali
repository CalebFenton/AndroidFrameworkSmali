.class public final synthetic Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

.field public final synthetic blacklist f$1:Landroid/telephony/ims/feature/CapabilityChangeRequest;

.field public final synthetic blacklist f$2:Landroid/telephony/ims/aidl/IImsCapabilityCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iput-object p2, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/feature/CapabilityChangeRequest;

    iput-object p3, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;

    iget-object v1, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/feature/CapabilityChangeRequest;

    iget-object v2, p0, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-static {v0, v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;->$r8$lambda$0HWq31EAu0T19aM5DFjYEuFu7zg(Landroid/telephony/ims/feature/RcsFeature$RcsFeatureBinder;Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method
