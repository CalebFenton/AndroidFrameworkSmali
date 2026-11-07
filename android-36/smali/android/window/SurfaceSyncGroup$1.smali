.class Landroid/window/SurfaceSyncGroup$1;
.super Landroid/window/ISurfaceSyncGroupCompletedListener$Stub;
.source "SurfaceSyncGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/SurfaceSyncGroup;->add(Landroid/window/ISurfaceSyncGroup;ZLjava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/window/SurfaceSyncGroup;


# direct methods
.method constructor blacklist <init>(Landroid/window/SurfaceSyncGroup;)V
    .registers 2
    .param p1, "this$0"    # Landroid/window/SurfaceSyncGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 438
    iput-object p1, p0, Landroid/window/SurfaceSyncGroup$1;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-direct {p0}, Landroid/window/ISurfaceSyncGroupCompletedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onSurfaceSyncGroupComplete()V
    .registers 3

    .line 441
    iget-object v0, p0, Landroid/window/SurfaceSyncGroup$1;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v0}, Landroid/window/SurfaceSyncGroup;->-$$Nest$fgetmLock(Landroid/window/SurfaceSyncGroup;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 442
    :try_start_7
    iget-object v1, p0, Landroid/window/SurfaceSyncGroup$1;->this$0:Landroid/window/SurfaceSyncGroup;

    invoke-static {v1}, Landroid/window/SurfaceSyncGroup;->-$$Nest$minvokeSyncCompleteCallbacks(Landroid/window/SurfaceSyncGroup;)V

    .line 443
    monitor-exit v0

    .line 444
    return-void

    .line 443
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
