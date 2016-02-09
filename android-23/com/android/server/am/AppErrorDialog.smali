.class final Lcom/android/server/am/AppErrorDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrorDialog$1;
    }
.end annotation


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/AppErrorDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "result"    # Lcom/android/server/am/AppErrorResult;
    .param p4, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    #@5
    .line 88
    new-instance v3, Lcom/android/server/am/AppErrorDialog$1;

    #@7
    invoke-direct {v3, p0}, Lcom/android/server/am/AppErrorDialog$1;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    #@a
    iput-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    #@c
    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@f
    move-result-object v2

    #@10
    .line 44
    .local v2, "res":Landroid/content/res/Resources;
    iput-object p2, p0, Lcom/android/server/am/AppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12
    .line 45
    iput-object p4, p0, Lcom/android/server/am/AppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    #@14
    .line 46
    iput-object p3, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    #@16
    .line 48
    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@18
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    #@1b
    move-result v3

    #@1c
    if-ne v3, v7, :cond_2

    #@1e
    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@21
    move-result-object v3

    #@22
    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@24
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@27
    move-result-object v1

    #@28
    .local v1, "name":Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    #@2a
    .line 50
    const/4 v3, 0x2

    #@2b
    new-array v3, v3, [Ljava/lang/Object;

    #@2d
    .line 52
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    aput-object v4, v3, v6

    #@33
    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@35
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@37
    aput-object v4, v3, v7

    #@39
    .line 51
    const v4, 0x1040358

    #@3c
    .line 50
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@43
    .line 60
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/server/am/AppErrorDialog;->setCancelable(Z)V

    #@46
    .line 63
    const v3, 0x104035f

    #@49
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@4c
    move-result-object v3

    #@4d
    .line 64
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    #@4f
    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@52
    move-result-object v4

    #@53
    .line 62
    const/4 v5, -0x1

    #@54
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@57
    .line 66
    iget-object v3, p4, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@59
    if-eqz v3, :cond_0

    #@5b
    .line 68
    const v3, 0x1040360

    #@5e
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@61
    move-result-object v3

    #@62
    .line 69
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    #@64
    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@67
    move-result-object v4

    #@68
    .line 67
    const/4 v5, -0x2

    #@69
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/server/am/AppErrorDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@6c
    .line 72
    :cond_0
    const v3, 0x1040357

    #@6f
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@72
    move-result-object v3

    #@73
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@76
    .line 73
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    #@79
    move-result-object v3

    #@7a
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@7d
    move-result-object v0

    #@7e
    .line 74
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v4, "Application Error: "

    #@86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    iget-object v4, p4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@8c
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@8e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@99
    .line 75
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@9b
    or-int/lit16 v3, v3, 0x110

    #@9d
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@9f
    .line 77
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@a6
    .line 78
    iget-boolean v3, p4, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@a8
    if-eqz v3, :cond_1

    #@aa
    .line 79
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorDialog;->getWindow()Landroid/view/Window;

    #@ad
    move-result-object v3

    #@ae
    const/16 v4, 0x7da

    #@b0
    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    #@b3
    .line 83
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    #@b5
    .line 84
    iget-object v4, p0, Lcom/android/server/am/AppErrorDialog;->mHandler:Landroid/os/Handler;

    #@b7
    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@ba
    move-result-object v4

    #@bb
    .line 85
    const-wide/32 v6, 0x493e0

    #@be
    .line 83
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@c1
    .line 39
    return-void

    #@c2
    .line 54
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "name":Ljava/lang/CharSequence;
    :cond_2
    iget-object v1, p4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@c4
    .line 55
    .restart local v1    # "name":Ljava/lang/CharSequence;
    new-array v3, v7, [Ljava/lang/Object;

    #@c6
    .line 57
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c9
    move-result-object v4

    #@ca
    aput-object v4, v3, v6

    #@cc
    .line 56
    const v4, 0x1040359

    #@cf
    .line 55
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@d2
    move-result-object v3

    #@d3
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppErrorDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@d6
    goto/16 :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    #@2
    iget-boolean v0, v0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 110
    iget-object v0, p0, Lcom/android/server/am/AppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    #@c
    .line 112
    :cond_0
    invoke-super {p0}, Lcom/android/server/am/BaseErrorDialog;->dismiss()V

    #@f
    .line 107
    return-void
.end method
