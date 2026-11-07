.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ims/aidl/ISrvccStartedCallback;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ims/aidl/ISrvccStartedCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda25;->f$0:Landroid/telephony/ims/aidl/ISrvccStartedCallback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda25;->f$0:Landroid/telephony/ims/aidl/ISrvccStartedCallback;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$notifySrvccStarted$26(Landroid/telephony/ims/aidl/ISrvccStartedCallback;Ljava/util/List;)V

    return-void
.end method
