.class final Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserSwitchingDialog$1;
    }
.end annotation


# static fields
.field private static final MSG_START_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Z)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "oldUser"    # Landroid/content/pm/UserInfo;
    .param p4, "newUser"    # Landroid/content/pm/UserInfo;
    .param p5, "aboveSystem"    # Z

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 57
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    #@5
    .line 126
    new-instance v4, Lcom/android/server/am/UserSwitchingDialog$1;

    #@7
    invoke-direct {v4, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    #@a
    iput-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    #@c
    .line 59
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e
    .line 60
    iget v4, p4, Landroid/content/pm/UserInfo;->id:I

    #@10
    iput v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    #@12
    .line 63
    invoke-virtual {p0, v7}, Lcom/android/server/am/UserSwitchingDialog;->setCancelable(Z)V

    #@15
    .line 64
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c
    move-result-object v1

    #@1d
    .line 66
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    #@20
    move-result-object v4

    #@21
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@24
    move-result-object v4

    #@25
    const v5, 0x1090104

    #@28
    const/4 v6, 0x0

    #@29
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    #@2c
    move-result-object v2

    #@2d
    .line 69
    .local v2, "view":Landroid/view/View;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_1

    #@33
    iget v4, p4, Landroid/content/pm/UserInfo;->id:I

    #@35
    if-nez v4, :cond_1

    #@37
    .line 70
    new-array v4, v8, [Ljava/lang/Object;

    #@39
    iget-object v5, p3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@3b
    aput-object v5, v4, v7

    #@3d
    const v5, 0x1040534

    #@40
    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    .line 80
    .local v3, "viewMessage":Ljava/lang/String;
    :goto_0
    const v4, 0x102000b

    #@47
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@4a
    move-result-object v4

    #@4b
    check-cast v4, Landroid/widget/TextView;

    #@4d
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@50
    .line 81
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserSwitchingDialog;->setView(Landroid/view/View;)V

    #@53
    .line 83
    if-eqz p5, :cond_0

    #@55
    .line 84
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    #@58
    move-result-object v4

    #@59
    const/16 v5, 0x7da

    #@5b
    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    #@5e
    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@65
    move-result-object v0

    #@66
    .line 87
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x110

    #@68
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    #@6a
    .line 89
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    #@71
    .line 56
    return-void

    #@72
    .line 71
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "viewMessage":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    #@75
    move-result v4

    #@76
    if-eqz v4, :cond_3

    #@78
    .line 72
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->isDemo()Z

    #@7b
    move-result v4

    #@7c
    if-eqz v4, :cond_2

    #@7e
    .line 73
    const v4, 0x10405fb

    #@81
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    .restart local v3    # "viewMessage":Ljava/lang/String;
    goto :goto_0

    #@86
    .line 75
    .end local v3    # "viewMessage":Ljava/lang/String;
    :cond_2
    const v4, 0x10405fa

    #@89
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    .restart local v3    # "viewMessage":Ljava/lang/String;
    goto :goto_0

    #@8e
    .line 78
    .end local v3    # "viewMessage":Ljava/lang/String;
    :cond_3
    new-array v4, v8, [Ljava/lang/Object;

    #@90
    iget-object v5, p4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    #@92
    aput-object v5, v4, v7

    #@94
    const v5, 0x1040533

    #@97
    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@9a
    move-result-object v3

    #@9b
    .restart local v3    # "viewMessage":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onWindowShown()V
    .locals 0

    #@0
    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    #@3
    .line 107
    return-void
.end method

.method public show()V
    .locals 6

    #@0
    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    #@3
    .line 96
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    .line 97
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@d
    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    #@14
    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    #@16
    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    #@18
    const/4 v3, 0x1

    #@19
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@1c
    move-result-object v2

    #@1d
    .line 103
    const-wide/16 v4, 0xbb8

    #@1f
    .line 102
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@22
    .line 93
    return-void
.end method

.method startUser()V
    .locals 3

    #@0
    .prologue
    .line 113
    monitor-enter p0

    #@1
    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    #@3
    if-nez v1, :cond_1

    #@5
    .line 115
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@9
    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    #@b
    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/UserController;->startUserInForeground(ILandroid/app/Dialog;)Z

    #@e
    .line 116
    const/4 v1, 0x1

    #@f
    iput-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    #@11
    .line 117
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    #@18
    move-result-object v0

    #@19
    .line 118
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    #@1b
    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    #@22
    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    #@24
    const/4 v2, 0x1

    #@25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    .end local v0    # "decorView":Landroid/view/View;
    :cond_1
    monitor-exit p0

    #@29
    .line 112
    return-void

    #@2a
    .line 113
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit p0

    #@2c
    throw v1
.end method
