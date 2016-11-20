.class public Lcom/android/server/content/ContentService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/content/ContentService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 85
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 99
    const/16 v0, 0x226

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 100
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    #@6
    invoke-virtual {v0}, Lcom/android/server/content/ContentService;->systemReady()V

    #@9
    .line 98
    :cond_0
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    #@2
    invoke-static {v0}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    #@9
    invoke-static {v0}, Lcom/android/server/content/ContentService;->-get0(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 105
    return-void

    #@12
    .line 106
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public onStart()V
    .locals 3

    #@0
    .prologue
    .line 91
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    #@3
    move-result v1

    #@4
    .line 92
    const/4 v2, 0x1

    #@5
    .line 91
    if-ne v1, v2, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    .line 93
    .local v0, "factoryTest":Z
    :goto_0
    new-instance v1, Lcom/android/server/content/ContentService;

    #@a
    invoke-virtual {p0}, Lcom/android/server/content/ContentService$Lifecycle;->getContext()Landroid/content/Context;

    #@d
    move-result-object v2

    #@e
    invoke-direct {v1, v2, v0}, Lcom/android/server/content/ContentService;-><init>(Landroid/content/Context;Z)V

    #@11
    iput-object v1, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    #@13
    .line 94
    const-string/jumbo v1, "content"

    #@16
    iget-object v2, p0, Lcom/android/server/content/ContentService$Lifecycle;->mService:Lcom/android/server/content/ContentService;

    #@18
    invoke-virtual {p0, v1, v2}, Lcom/android/server/content/ContentService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@1b
    .line 90
    return-void

    #@1c
    .line 91
    .end local v0    # "factoryTest":Z
    :cond_0
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "factoryTest":Z
    goto :goto_0
.end method
