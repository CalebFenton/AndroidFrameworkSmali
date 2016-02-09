.class final Lcom/android/server/am/StrictModeViolationDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "StrictModeViolationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/StrictModeViolationDialog$1;
    }
.end annotation


# static fields
.field static final ACTION_OK:I = 0x0

.field static final ACTION_OK_AND_REPORT:I = 0x1

.field static final DISMISS_TIMEOUT:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "StrictModeViolationDialog"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    #@5
    .line 86
    new-instance v2, Lcom/android/server/am/StrictModeViolationDialog$1;

    #@7
    invoke-direct {v2, p0}, Lcom/android/server/am/StrictModeViolationDialog$1;-><init>(Lcom/android/server/am/StrictModeViolationDialog;)V

    #@a
    iput-object v2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    #@c
    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v1

    #@10
    .line 48
    .local v1, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12
    .line 49
    iput-object p4, p0, Lcom/android/server/am/StrictModeViolationDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    #@14
    .line 50
    iput-object p3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    #@16
    .line 52
    iget-object v2, p4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@1b
    move-result v2

    #@1c
    if-ne v2, v6, :cond_1

    #@1e
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@21
    move-result-object v2

    #@22
    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@24
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@27
    move-result-object v0

    #@28
    .local v0, "name":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    #@2a
    .line 54
    const/4 v2, 0x2

    #@2b
    new-array v2, v2, [Ljava/lang/Object;

    #@2d
    .line 56
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    aput-object v3, v2, v5

    #@33
    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@35
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@37
    aput-object v3, v2, v6

    #@39
    .line 55
    const v3, 0x1040369

    #@3c
    .line 54
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {p0, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@43
    .line 64
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/server/am/StrictModeViolationDialog;->setCancelable(Z)V

    #@46
    .line 67
    const v2, 0x10403d7

    #@49
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@4c
    move-result-object v2

    #@4d
    .line 68
    iget-object v3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    #@4f
    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@52
    move-result-object v3

    #@53
    .line 66
    const/4 v4, -0x1

    #@54
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@57
    .line 70
    iget-object v2, p4, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@59
    if-eqz v2, :cond_0

    #@5b
    .line 72
    const v2, 0x1040360

    #@5e
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@61
    move-result-object v2

    #@62
    .line 73
    iget-object v3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    #@64
    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@67
    move-result-object v3

    #@68
    .line 71
    const/4 v4, -0x2

    #@69
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/am/StrictModeViolationDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@6c
    .line 76
    :cond_0
    const v2, 0x1040357

    #@6f
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {p0, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    #@79
    move-result-object v2

    #@7a
    const/16 v3, 0x100

    #@7c
    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    #@7f
    .line 78
    invoke-virtual {p0}, Lcom/android/server/am/StrictModeViolationDialog;->getWindow()Landroid/view/Window;

    #@82
    move-result-object v2

    #@83
    new-instance v3, Ljava/lang/StringBuilder;

    #@85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@88
    const-string/jumbo v4, "Strict Mode Violation: "

    #@8b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@91
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v3

    #@97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v3

    #@9b
    invoke-virtual {v2, v3}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    #@9e
    .line 81
    iget-object v2, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    #@a0
    .line 82
    iget-object v3, p0, Lcom/android/server/am/StrictModeViolationDialog;->mHandler:Landroid/os/Handler;

    #@a2
    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@a5
    move-result-object v3

    #@a6
    .line 83
    const-wide/32 v4, 0xea60

    #@a9
    .line 81
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@ac
    .line 43
    return-void

    #@ad
    .line 58
    .end local v0    # "name":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@af
    .line 59
    .restart local v0    # "name":Ljava/lang/CharSequence;
    new-array v2, v6, [Ljava/lang/Object;

    #@b1
    .line 61
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b4
    move-result-object v3

    #@b5
    aput-object v3, v2, v5

    #@b7
    .line 60
    const v3, 0x104036a

    #@ba
    .line 59
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@bd
    move-result-object v2

    #@be
    invoke-virtual {p0, v2}, Lcom/android/server/am/StrictModeViolationDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@c1
    goto :goto_0
.end method
