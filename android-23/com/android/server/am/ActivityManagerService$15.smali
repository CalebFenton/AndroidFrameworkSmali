.class Lcom/android/server/am/ActivityManagerService$15;
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

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$sb"    # Ljava/lang/StringBuilder;
    .param p4, "val$dbox"    # Landroid/os/DropBoxManager;
    .param p5, "val$dropboxTag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 12194
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$15;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    #@4
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$15;->val$dbox:Landroid/os/DropBoxManager;

    #@6
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$15;->val$dropboxTag:Ljava/lang/String;

    #@8
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #@b
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    #@0
    .prologue
    .line 12198
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    #@2
    monitor-enter v2

    #@3
    .line 12199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    #@5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    .line 12200
    .local v0, "report":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    #@b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    #@d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    #@10
    move-result v3

    #@11
    const/4 v4, 0x0

    #@12
    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    #@15
    .line 12201
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$15;->val$sb:Ljava/lang/StringBuilder;

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->trimToSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    monitor-exit v2

    #@1b
    .line 12203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 12204
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$15;->val$dbox:Landroid/os/DropBoxManager;

    #@23
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$15;->val$dropboxTag:Ljava/lang/String;

    #@25
    invoke-virtual {v1, v2, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 12196
    :cond_0
    return-void

    #@29
    .line 12198
    .end local v0    # "report":Ljava/lang/String;
    :catchall_0
    move-exception v1

    #@2a
    monitor-exit v2

    #@2b
    throw v1
.end method
