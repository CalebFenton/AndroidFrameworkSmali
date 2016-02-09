.class final Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDeathRecipient"
.end annotation


# instance fields
.field final mApp:Lcom/android/server/am/ProcessRecord;

.field final mAppThread:Landroid/app/IApplicationThread;

.field final mPid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "pid"    # I
    .param p4, "thread"    # Landroid/app/IApplicationThread;

    #@0
    .prologue
    .line 1290
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1295
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    #@7
    .line 1296
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mPid:I

    #@9
    .line 1297
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mAppThread:Landroid/app/IApplicationThread;

    #@b
    .line 1291
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    #@0
    .prologue
    .line 1305
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    monitor-enter v1

    #@3
    .line 1306
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    #@7
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mPid:I

    #@9
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mAppThread:Landroid/app/IApplicationThread;

    #@b
    const/4 v5, 0x1

    #@c
    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 1301
    return-void

    #@11
    .line 1305
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method
