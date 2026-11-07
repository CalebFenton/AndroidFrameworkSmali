.class public final synthetic Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/concurrent/Executor;

.field public final synthetic blacklist f$1:Landroid/app/ondeviceintelligence/DownloadCallback;

.field public final synthetic blacklist f$2:J


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;J)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda6;->f$1:Landroid/app/ondeviceintelligence/DownloadCallback;

    iput-wide p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda6;->f$2:J

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda6;->f$0:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda6;->f$1:Landroid/app/ondeviceintelligence/DownloadCallback;

    iget-wide v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda6;->f$2:J

    invoke-static {v0, v1, v2, v3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->lambda$onDownloadStarted$1(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;J)V

    return-void
.end method
