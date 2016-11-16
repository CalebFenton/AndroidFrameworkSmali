.class final Lcom/android/server/am/AppNotRespondingDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppNotRespondingDialog$1;
    }
.end annotation


# static fields
.field public static final ALREADY_SHOWING:I = -0x2

.field public static final CANT_SHOW:I = -0x1

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
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 56
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    #@5
    .line 141
    new-instance v6, Lcom/android/server/am/AppNotRespondingDialog$1;

    #@7
    invoke-direct {v6, p0}, Lcom/android/server/am/AppNotRespondingDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    #@a
    iput-object v6, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    #@c
    .line 58
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e
    .line 59
    iput-object p3, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    #@10
    .line 60
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object v4

    #@14
    .line 62
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {p0, v8}, Lcom/android/server/am/AppNotRespondingDialog;->setCancelable(Z)V

    #@17
    .line 65
    if-eqz p4, :cond_1

    #@19
    .line 66
    iget-object v6, p4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1b
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {v6, v7}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    .line 68
    :goto_0
    const/4 v3, 0x0

    #@24
    .line 69
    .local v3, "name2":Ljava/lang/CharSequence;
    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    #@26
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    #@29
    move-result v6

    #@2a
    if-ne v6, v9, :cond_3

    #@2c
    .line 70
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2f
    move-result-object v6

    #@30
    iget-object v7, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@32
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@35
    move-result-object v3

    #@36
    .local v3, "name2":Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    #@38
    .line 71
    if-eqz v2, :cond_2

    #@3a
    .line 72
    const v5, 0x104039e

    #@3d
    .line 88
    .end local v3    # "name2":Ljava/lang/CharSequence;
    .local v5, "resid":I
    :goto_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    #@40
    move-result-object v1

    #@41
    .line 90
    .local v1, "bidi":Landroid/text/BidiFormatter;
    if-eqz v3, :cond_5

    #@43
    .line 91
    const/4 v6, 0x2

    #@44
    new-array v6, v6, [Ljava/lang/Object;

    #@46
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v1, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    #@4d
    move-result-object v7

    #@4e
    aput-object v7, v6, v8

    #@50
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    invoke-virtual {v1, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    #@57
    move-result-object v7

    #@58
    aput-object v7, v6, v9

    #@5a
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    .line 90
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/server/am/AppNotRespondingDialog;->setTitle(Ljava/lang/CharSequence;)V

    #@61
    .line 94
    if-eqz p5, :cond_0

    #@63
    .line 95
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    #@66
    move-result-object v6

    #@67
    const/16 v7, 0x7da

    #@69
    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    #@6c
    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@73
    move-result-object v0

    #@74
    .line 98
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v6, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v7, "Application Not Responding: "

    #@7c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    iget-object v7, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    #@82
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    #@84
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v6

    #@8c
    invoke-virtual {v0, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@8f
    .line 99
    const/16 v6, 0x110

    #@91
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@93
    .line 101
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getWindow()Landroid/view/Window;

    #@96
    move-result-object v6

    #@97
    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@9a
    .line 55
    return-void

    #@9b
    .line 67
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "bidi":Landroid/text/BidiFormatter;
    .end local v5    # "resid":I
    :cond_1
    const/4 v2, 0x0

    #@9c
    .local v2, "name1":Ljava/lang/CharSequence;
    goto :goto_0

    #@9d
    .line 74
    .end local v2    # "name1":Ljava/lang/CharSequence;
    .restart local v3    # "name2":Ljava/lang/CharSequence;
    :cond_2
    move-object v2, v3

    #@9e
    .line 75
    .local v2, "name1":Ljava/lang/CharSequence;
    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@a0
    .line 76
    const v5, 0x10403a0

    #@a3
    .restart local v5    # "resid":I
    goto :goto_1

    #@a4
    .line 79
    .end local v2    # "name1":Ljava/lang/CharSequence;
    .end local v3    # "name2":Ljava/lang/CharSequence;
    .end local v5    # "resid":I
    :cond_3
    if-eqz v2, :cond_4

    #@a6
    .line 80
    iget-object v3, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@a8
    .line 81
    .restart local v3    # "name2":Ljava/lang/CharSequence;
    const v5, 0x104039f

    #@ab
    .restart local v5    # "resid":I
    goto :goto_1

    #@ac
    .line 83
    .end local v3    # "name2":Ljava/lang/CharSequence;
    .end local v5    # "resid":I
    :cond_4
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    #@ae
    .line 84
    .restart local v2    # "name1":Ljava/lang/CharSequence;
    const v5, 0x10403a1

    #@b1
    .restart local v5    # "resid":I
    goto :goto_1

    #@b2
    .line 92
    .end local v2    # "name1":Ljava/lang/CharSequence;
    .restart local v1    # "bidi":Landroid/text/BidiFormatter;
    :cond_5
    new-array v6, v9, [Ljava/lang/Object;

    #@b4
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v1, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    #@bb
    move-result-object v7

    #@bc
    aput-object v7, v6, v8

    #@be
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@c1
    move-result-object v6

    #@c2
    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 125
    :goto_0
    return-void

    #@8
    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    #@a
    const/4 v1, 0x3

    #@b
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    goto :goto_0

    #@13
    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    #@15
    const/4 v1, 0x1

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@1d
    goto :goto_0

    #@1e
    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog;->mHandler:Landroid/os/Handler;

    #@20
    const/4 v1, 0x2

    #@21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@28
    goto :goto_0

    #@29
    .line 126
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x102033a
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 106
    invoke-super {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->onCreate(Landroid/os/Bundle;)V

    #@5
    .line 107
    const v6, 0x102002b

    #@8
    invoke-virtual {p0, v6}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/widget/FrameLayout;

    #@e
    .line 108
    .local v2, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    #@11
    move-result-object v1

    #@12
    .line 109
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@15
    move-result-object v6

    #@16
    .line 110
    const v8, 0x1090033

    #@19
    .line 109
    invoke-virtual {v6, v8, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@1c
    .line 112
    const v6, 0x102033c

    #@1f
    invoke-virtual {p0, v6}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    #@22
    move-result-object v4

    #@23
    check-cast v4, Landroid/widget/TextView;

    #@25
    .line 113
    .local v4, "report":Landroid/widget/TextView;
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@28
    .line 114
    iget-object v6, p0, Lcom/android/server/am/AppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    #@2a
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    #@2c
    if-eqz v6, :cond_0

    #@2e
    .line 115
    .local v3, "hasReceiver":Z
    :goto_0
    if-eqz v3, :cond_1

    #@30
    move v6, v7

    #@31
    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    #@34
    .line 116
    const v6, 0x102033a

    #@37
    invoke-virtual {p0, v6}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/widget/TextView;

    #@3d
    .line 117
    .local v0, "close":Landroid/widget/TextView;
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@40
    .line 118
    const v6, 0x102033b

    #@43
    invoke-virtual {p0, v6}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    #@46
    move-result-object v5

    #@47
    check-cast v5, Landroid/widget/TextView;

    #@49
    .line 119
    .local v5, "wait":Landroid/widget/TextView;
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@4c
    .line 121
    const v6, 0x102032c

    #@4f
    invoke-virtual {p0, v6}, Lcom/android/server/am/AppNotRespondingDialog;->findViewById(I)Landroid/view/View;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    #@56
    .line 105
    return-void

    #@57
    .end local v0    # "close":Landroid/widget/TextView;
    .end local v3    # "hasReceiver":Z
    .end local v5    # "wait":Landroid/widget/TextView;
    :cond_0
    move v3, v7

    #@58
    .line 114
    goto :goto_0

    #@59
    .line 115
    .restart local v3    # "hasReceiver":Z
    :cond_1
    const/16 v6, 0x8

    #@5b
    goto :goto_1
.end method
