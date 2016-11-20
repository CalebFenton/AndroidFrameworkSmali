.class Lcom/android/server/policy/GlobalActions$BugReportAction$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$BugReportAction;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$BugReportAction;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$BugReportAction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$BugReportAction;

    #@0
    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$BugReportAction$1;->this$1:Lcom/android/server/policy/GlobalActions$BugReportAction;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$BugReportAction$1;->this$1:Lcom/android/server/policy/GlobalActions$BugReportAction;

    #@2
    iget-object v1, v1, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@4
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    .line 394
    const/16 v2, 0x124

    #@a
    .line 393
    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    #@d
    .line 395
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@10
    move-result-object v1

    #@11
    .line 396
    const/4 v2, 0x1

    #@12
    .line 395
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 390
    :goto_0
    return-void

    #@16
    .line 397
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
