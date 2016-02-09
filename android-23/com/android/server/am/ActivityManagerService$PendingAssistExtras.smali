.class public Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingAssistExtras"
.end annotation


# instance fields
.field public final activity:Lcom/android/server/am/ActivityRecord;

.field public content:Landroid/app/assist/AssistContent;

.field public final extras:Landroid/os/Bundle;

.field public haveResult:Z

.field public final hint:Ljava/lang/String;

.field public final intent:Landroid/content/Intent;

.field public final receiver:Lcom/android/internal/os/IResultReceiver;

.field public result:Landroid/os/Bundle;

.field public structure:Landroid/app/assist/AssistStructure;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "_extras"    # Landroid/os/Bundle;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_hint"    # Ljava/lang/String;
    .param p6, "_receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p7, "_userHandle"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 492
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@6
    .line 488
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->haveResult:Z

    #@9
    .line 489
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    #@b
    .line 490
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    #@d
    .line 491
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    #@f
    .line 494
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->activity:Lcom/android/server/am/ActivityRecord;

    #@11
    .line 495
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    #@13
    .line 496
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    #@15
    .line 497
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    #@17
    .line 498
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->receiver:Lcom/android/internal/os/IResultReceiver;

    #@19
    .line 499
    iput p7, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->userHandle:I

    #@1b
    .line 493
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 503
    const-string/jumbo v0, "ActivityManager"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "getAssistContextExtras failed: timeout retrieving from "

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->activity:Lcom/android/server/am/ActivityRecord;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 504
    monitor-enter p0

    #@1d
    .line 505
    const/4 v0, 0x1

    #@1e
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->haveResult:Z

    #@20
    .line 506
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 508
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@26
    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerService;->pendingAssistExtrasTimedOut(Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;)V

    #@29
    .line 502
    return-void

    #@2a
    .line 504
    :catchall_0
    move-exception v0

    #@2b
    monitor-exit p0

    #@2c
    throw v0
.end method
