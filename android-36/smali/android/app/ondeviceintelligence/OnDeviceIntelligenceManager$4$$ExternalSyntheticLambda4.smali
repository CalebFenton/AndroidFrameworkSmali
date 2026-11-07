.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ondeviceintelligence/DownloadCallback;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ondeviceintelligence/DownloadCallback;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda4;->f$0:Landroid/app/ondeviceintelligence/DownloadCallback;

    iput-wide p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda4;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda4;->f$0:Landroid/app/ondeviceintelligence/DownloadCallback;

    iget-wide v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda4;->f$1:J

    invoke-static {v0, v1, v2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->lambda$onDownloadProgress$2(Landroid/app/ondeviceintelligence/DownloadCallback;J)V

    return-void
.end method
