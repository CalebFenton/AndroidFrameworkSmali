.class Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field final synthetic val$session:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;
    .param p2, "val$session"    # Lcom/android/server/pm/PackageInstallerSession;

    #@0
    .prologue
    .line 1234
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 1237
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@2
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@4
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->-get3(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    #@7
    move-result-object v2

    #@8
    monitor-enter v2

    #@9
    .line 1238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@b
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@d
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->-get3(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    #@10
    move-result-object v1

    #@11
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    #@13
    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@15
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    #@18
    .line 1239
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@1a
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@1c
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->-get1(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    #@1f
    move-result-object v1

    #@20
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    #@22
    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@24
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    #@26
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@29
    .line 1241
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@2b
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@2d
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    #@2f
    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@31
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageInstallerService;->-wrap1(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;

    #@34
    move-result-object v0

    #@35
    .line 1242
    .local v0, "appIconFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_0

    #@3b
    .line 1243
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@3e
    .line 1246
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    #@40
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@42
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->-wrap3(Lcom/android/server/pm/PackageInstallerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    monitor-exit v2

    #@46
    .line 1236
    return-void

    #@47
    .line 1237
    .end local v0    # "appIconFile":Ljava/io/File;
    :catchall_0
    move-exception v1

    #@48
    monitor-exit v2

    #@49
    throw v1
.end method
