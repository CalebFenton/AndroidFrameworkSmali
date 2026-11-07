.class Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;
.super Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;
.source "TunerResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;


# direct methods
.method constructor blacklist <init>(Landroid/media/tv/tunerresourcemanager/TunerResourceManager;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 131
    iput-object p2, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$listener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-direct {p0}, Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onReclaimResources$0(Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V
    .registers 1
    .param p0, "listener"    # Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 136
    invoke-virtual {p0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;->onReclaimResources()V

    return-void
.end method


# virtual methods
.method public blacklist onReclaimResources()V
    .registers 6

    .line 134
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 136
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1;->val$listener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    new-instance v4, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 138
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    nop

    .line 140
    return-void

    .line 138
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    throw v2
.end method
