.class Lcom/android/commands/pm/Pm$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1849
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1855
    monitor-enter p0

    #@1
    .line 1856
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/commands/pm/Pm$ClearCacheObserver;->finished:Z

    #@4
    .line 1857
    iput-boolean p2, p0, Lcom/android/commands/pm/Pm$ClearCacheObserver;->result:Z

    #@6
    .line 1858
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm$ClearCacheObserver;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 1854
    return-void

    #@b
    .line 1855
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method
