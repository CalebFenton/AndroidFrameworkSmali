.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/OutcomeReceiver;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda3;->f$0:Landroid/os/OutcomeReceiver;

    iput p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda3;->f$3:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda3;->f$0:Landroid/os/OutcomeReceiver;

    iget v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2$$ExternalSyntheticLambda3;->f$3:Landroid/os/PersistableBundle;

    invoke-static {v0, v1, v2, v3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;->lambda$onFailure$2(Landroid/os/OutcomeReceiver;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method
