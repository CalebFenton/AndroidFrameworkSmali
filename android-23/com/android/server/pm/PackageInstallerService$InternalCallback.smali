.class Lcom/android/server/pm/PackageInstallerService$InternalCallback;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerService;

    #@0
    .prologue
    .line 1217
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "active"    # Z

    #@0
    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get0(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    #@5
    move-result-object v0

    #@6
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@8
    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@a
    invoke-static {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->-wrap0(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIZ)V

    #@d
    .line 1223
    return-void
.end method

.method public onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    #@0
    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get0(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    #@5
    move-result-object v0

    #@6
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@8
    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@a
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->-wrap1(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    #@d
    .line 1220
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@f
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-wrap2(Lcom/android/server/pm/PackageInstallerService;)V

    #@12
    .line 1218
    return-void
.end method

.method public onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "success"    # Z

    #@0
    .prologue
    .line 1232
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get0(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    #@5
    move-result-object v0

    #@6
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@8
    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@a
    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionFinished(IIZ)V

    #@d
    .line 1234
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@f
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get2(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;

    #@12
    move-result-object v0

    #@13
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;

    #@15
    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Lcom/android/server/pm/PackageInstallerSession;)V

    #@18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@1b
    .line 1231
    return-void
.end method

.method public onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    #@0
    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-wrap2(Lcom/android/server/pm/PackageInstallerService;)V

    #@5
    .line 1252
    return-void
.end method

.method public onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "progress"    # F

    #@0
    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get0(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    #@5
    move-result-object v0

    #@6
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    #@8
    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    #@a
    invoke-static {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->-wrap3(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIF)V

    #@d
    .line 1227
    return-void
.end method

.method public onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 2
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    #@0
    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-get3(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1263
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    #@9
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-wrap3(Lcom/android/server/pm/PackageInstallerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit v1

    #@d
    .line 1258
    return-void

    #@e
    .line 1262
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method
