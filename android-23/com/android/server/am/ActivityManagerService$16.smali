.class Lcom/android/server/am/ActivityManagerService$16;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->logStrictModeViolationToDropBox(Lcom/android/server/am/ProcessRecord;Landroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$dbox"    # Landroid/os/DropBoxManager;
    .param p4, "val$dropboxTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 12221
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dbox:Landroid/os/DropBoxManager;

    #@4
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dropboxTag:Ljava/lang/String;

    #@6
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 12226
    const-wide/16 v2, 0x1388

    #@2
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 12230
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@7
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v3

    #@b
    monitor-enter v3

    #@c
    .line 12231
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@e
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 12232
    .local v1, "errorReport":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    monitor-exit v3

    #@1d
    .line 12233
    return-void

    #@1e
    .line 12227
    .end local v1    # "errorReport":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1f
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    #@20
    .line 12235
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "errorReport":Ljava/lang/String;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@22
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@28
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@2f
    move-result v4

    #@30
    const/4 v5, 0x0

    #@31
    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@34
    .line 12236
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@36
    invoke-static {v2}, Lcom/android/server/am/ActivityManagerService;->-get2(Lcom/android/server/am/ActivityManagerService;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->trimToSize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    monitor-exit v3

    #@3e
    .line 12238
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dbox:Landroid/os/DropBoxManager;

    #@40
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$16;->val$dropboxTag:Ljava/lang/String;

    #@42
    invoke-virtual {v2, v3, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@45
    .line 12223
    return-void

    #@46
    .line 12230
    .end local v1    # "errorReport":Ljava/lang/String;
    :catchall_0
    move-exception v2

    #@47
    monitor-exit v3

    #@48
    throw v2
.end method
