.class Lcom/android/server/print/UserState$PrintJobForAppCache$1;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field final synthetic val$appId:I

.field final synthetic val$creator:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/print/UserState$PrintJobForAppCache;
    .param p2, "val$creator"    # Landroid/os/IBinder;
    .param p3, "val$appId"    # I

    #@0
    .prologue
    .line 1573
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@2
    iput-object p2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$creator:Landroid/os/IBinder;

    #@4
    iput p3, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$appId:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$creator:Landroid/os/IBinder;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@6
    .line 1577
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@8
    iget-object v0, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    #@a
    invoke-static {v0}, Lcom/android/server/print/UserState;->-get2(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    monitor-enter v1

    #@f
    .line 1578
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    #@11
    invoke-static {v0}, Lcom/android/server/print/UserState$PrintJobForAppCache;->-get0(Lcom/android/server/print/UserState$PrintJobForAppCache;)Landroid/util/SparseArray;

    #@14
    move-result-object v0

    #@15
    iget v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$appId:I

    #@17
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 1575
    return-void

    #@1c
    .line 1577
    :catchall_0
    move-exception v0

    #@1d
    monitor-exit v1

    #@1e
    throw v0
.end method
