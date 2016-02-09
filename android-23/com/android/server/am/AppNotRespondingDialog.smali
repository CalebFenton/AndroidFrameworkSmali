.class final Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppNotRespondingDialog$1;
    }
.end annotation


# static fields
.field static final FORCE_CLOSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V
    .locals 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "aboveSystem"    # Z

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    .line 42
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    #@6
    .line 105
    new-instance v5, Lcom/android/server/am/AppNotRespondingDialog$1;

    #@8
    invoke-direct {v5, p0}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    #@b
    iput-object v5, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    #@d
    .line 44
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@f
    .line 45
    iput-object p3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    #@11
    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@14
    move-result-object v3

    #@15
    .line 48
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0, v8}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    #@18
    .line 51
    if-eqz p4, :cond_2

    #@1a
    .line 52
    iget-object v5, p4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1c
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@23
    move-result-object v1

    #@24
    .line 54
    :goto_0
    const/4 v2, 0x0

    #@25
    .line 55
    .local v2, "name2":Ljava/lang/CharSequence;
    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    #@2a
    move-result v5

    #@2b
    if-ne v5, v7, :cond_4

    #@2d
    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@30
    move-result-object v5

    #@31
    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@33
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@36
    move-result-object v2

    #@37
    .local v2, "name2":Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    #@39
    .line 57
    if-eqz v1, :cond_3

    #@3b
    .line 58
    const v4, 0x104035b

    #@3e
    .line 74
    .end local v2    # "name2":Ljava/lang/CharSequence;
    .local v4, "resid":I
    :goto_1
    if-eqz v2, :cond_6

    #@40
    .line 75
    new-array v5, v9, [Ljava/lang/Object;

    #@42
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@45
    move-result-object v6

    #@46
    aput-object v6, v5, v8

    #@48
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    aput-object v6, v5, v7

    #@4e
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    .line 74
    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppNotRespondingDialog;->setMessage(Ljava/lang/CharSequence;)V

    #@55
    .line 79
    const v5, 0x104035f

    #@58
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@5b
    move-result-object v5

    #@5c
    .line 80
    iget-object v6, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    #@5e
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@61
    move-result-object v6

    #@62
    .line 78
    const/4 v7, -0x1

    #@63
    invoke-virtual {p0, v7, v5, v6}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@66
    .line 82
    const v5, 0x1040361

    #@69
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@6c
    move-result-object v5

    #@6d
    .line 83
    iget-object v6, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    #@6f
    invoke-virtual {v6, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@72
    move-result-object v6

    #@73
    .line 81
    const/4 v7, -0x2

    #@74
    invoke-virtual {p0, v7, v5, v6}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@77
    .line 85
    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@79
    if-eqz v5, :cond_0

    #@7b
    .line 87
    const v5, 0x1040360

    #@7e
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@81
    move-result-object v5

    #@82
    .line 88
    iget-object v6, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    #@84
    const/4 v7, 0x3

    #@85
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@88
    move-result-object v6

    #@89
    .line 86
    const/4 v7, -0x3

    #@8a
    invoke-virtual {p0, v7, v5, v6}, Lcom/android/server/am/AppNotRespondingDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    #@8d
    .line 91
    :cond_0
    const v5, 0x104035a

    #@90
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@93
    move-result-object v5

    #@94
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@97
    .line 92
    if-eqz p5, :cond_1

    #@99
    .line 93
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    #@9c
    move-result-object v5

    #@9d
    const/16 v6, 0x7da

    #@9f
    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    #@a2
    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    #@a5
    move-result-object v5

    #@a6
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@a9
    move-result-object v0

    #@aa
    .line 96
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v5, Ljava/lang/StringBuilder;

    #@ac
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@af
    const-string/jumbo v6, "Application Not Responding: "

    #@b2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v5

    #@b6
    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@b8
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@ba
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v5

    #@be
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v5

    #@c2
    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@c5
    .line 97
    const/16 v5, 0x110

    #@c7
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@c9
    .line 99
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    #@cc
    move-result-object v5

    #@cd
    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@d0
    .line 41
    return-void

    #@d1
    .line 53
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "resid":I
    :cond_2
    const/4 v1, 0x0

    #@d2
    .local v1, "name1":Ljava/lang/CharSequence;
    goto/16 :goto_0

    #@d4
    .line 60
    .end local v1    # "name1":Ljava/lang/CharSequence;
    .restart local v2    # "name2":Ljava/lang/CharSequence;
    :cond_3
    move-object v1, v2

    #@d5
    .line 61
    .local v1, "name1":Ljava/lang/CharSequence;
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@d7
    .line 62
    const v4, 0x104035d

    #@da
    .restart local v4    # "resid":I
    goto/16 :goto_1

    #@dc
    .line 65
    .end local v1    # "name1":Ljava/lang/CharSequence;
    .end local v2    # "name2":Ljava/lang/CharSequence;
    .end local v4    # "resid":I
    :cond_4
    if-eqz v1, :cond_5

    #@de
    .line 66
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@e0
    .line 67
    .restart local v2    # "name2":Ljava/lang/CharSequence;
    const v4, 0x104035c

    #@e3
    .restart local v4    # "resid":I
    goto/16 :goto_1

    #@e5
    .line 69
    .end local v2    # "name2":Ljava/lang/CharSequence;
    .end local v4    # "resid":I
    :cond_5
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@e7
    .line 70
    .restart local v1    # "name1":Ljava/lang/CharSequence;
    const v4, 0x104035e

    #@ea
    .restart local v4    # "resid":I
    goto/16 :goto_1

    #@ec
    .line 76
    .end local v1    # "name1":Ljava/lang/CharSequence;
    :cond_6
    new-array v5, v7, [Ljava/lang/Object;

    #@ee
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@f1
    move-result-object v6

    #@f2
    aput-object v6, v5, v8

    #@f4
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@f7
    move-result-object v5

    #@f8
    goto/16 :goto_2
.end method


# virtual methods
.method public onStop()V
    .locals 0

    #@0
    .prologue
    .line 102
    return-void
.end method
