.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Landroid/os/PersistableBundle;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda6;->f$0:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    iput p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda6;->f$3:Landroid/os/PersistableBundle;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda6;->f$0:Landroid/app/ondeviceintelligence/StreamingProcessingCallback;

    iget v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda6;->f$1:I

    iget-object v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7$$ExternalSyntheticLambda6;->f$3:Landroid/os/PersistableBundle;

    invoke-static {v0, v1, v2, v3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;->lambda$onFailure$4(Landroid/app/ondeviceintelligence/StreamingProcessingCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method
