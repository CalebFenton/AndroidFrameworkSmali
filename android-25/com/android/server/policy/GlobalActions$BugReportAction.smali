.class Lcom/android/server/policy/GlobalActions$BugReportAction;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BugReportAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    #@0
    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    .line 417
    const v0, 0x1080372

    #@5
    const v1, 0x1040130

    #@8
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    #@b
    .line 416
    return-void
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    new-array v1, v1, [Ljava/lang/Object;

    #@9
    .line 475
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    #@b
    const/4 v3, 0x0

    #@c
    aput-object v2, v1, v3

    #@e
    .line 476
    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    .line 474
    const v2, 0x1040136

    #@16
    .line 473
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public onLongPress()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 449
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 450
    return v3

    #@8
    .line 454
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@a
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get4(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    #@d
    move-result-object v1

    #@e
    const/16 v2, 0x125

    #@10
    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    #@13
    .line 455
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@16
    move-result-object v1

    #@17
    .line 456
    const/4 v2, 0x0

    #@18
    .line 455
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 459
    :goto_0
    return v3

    #@1c
    .line 457
    :catch_0
    move-exception v0

    #@1d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onPress()V
    .locals 4

    #@0
    .prologue
    .line 424
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 425
    return-void

    #@7
    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$BugReportAction;->this$0:Lcom/android/server/policy/GlobalActions;

    #@9
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    #@c
    move-result-object v0

    #@d
    new-instance v1, Lcom/android/server/policy/GlobalActions$BugReportAction$1;

    #@f
    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$BugReportAction$1;-><init>(Lcom/android/server/policy/GlobalActions$BugReportAction;)V

    #@12
    .line 442
    const-wide/16 v2, 0x1f4

    #@14
    .line 430
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    #@17
    .line 421
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    #@0
    .prologue
    .line 468
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    #@0
    .prologue
    .line 463
    const/4 v0, 0x1

    #@1
    return v0
.end method
