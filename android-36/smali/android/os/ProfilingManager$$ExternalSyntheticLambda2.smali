.class public final synthetic Landroid/os/ProfilingManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# instance fields
.field public final synthetic blacklist f$0:Landroid/os/ProfilingManager;

.field public final synthetic blacklist f$1:Landroid/os/IProfilingService;

.field public final synthetic blacklist f$2:Ljava/util/UUID;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/os/ProfilingManager;Landroid/os/IProfilingService;Ljava/util/UUID;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/ProfilingManager$$ExternalSyntheticLambda2;->f$0:Landroid/os/ProfilingManager;

    iput-object p2, p0, Landroid/os/ProfilingManager$$ExternalSyntheticLambda2;->f$1:Landroid/os/IProfilingService;

    iput-object p3, p0, Landroid/os/ProfilingManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final whitelist onCancel()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/os/ProfilingManager$$ExternalSyntheticLambda2;->f$0:Landroid/os/ProfilingManager;

    iget-object v1, p0, Landroid/os/ProfilingManager$$ExternalSyntheticLambda2;->f$1:Landroid/os/IProfilingService;

    iget-object v2, p0, Landroid/os/ProfilingManager$$ExternalSyntheticLambda2;->f$2:Ljava/util/UUID;

    invoke-static {v0, v1, v2}, Landroid/os/ProfilingManager;->$r8$lambda$pBKPoNznrCqOVDGCuJtfgD762VI(Landroid/os/ProfilingManager;Landroid/os/IProfilingService;Ljava/util/UUID;)V

    return-void
.end method
