.class public Lcom/android/server/am/UnsupportedDisplaySizeDialog;
.super Ljava/lang/Object;
.source "UnsupportedDisplaySizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;
    }
.end annotation


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 35
    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@6
    iput-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    #@8
    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v3

    #@c
    .line 38
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p3, v3}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    .line 39
    .local v1, "label":Ljava/lang/CharSequence;
    new-array v5, v8, [Ljava/lang/Object;

    #@12
    .line 40
    const/4 v6, 0x0

    #@13
    aput-object v1, v5, v6

    #@15
    const v6, 0x10403a3

    #@18
    .line 39
    invoke-virtual {p2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 42
    .local v2, "message":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    #@1e
    invoke-direct {v5, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@21
    .line 43
    const v6, 0x104000a

    #@24
    const/4 v7, 0x0

    #@25
    .line 42
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@2c
    move-result-object v5

    #@2d
    .line 45
    const v6, 0x1090103

    #@30
    .line 42
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    #@33
    move-result-object v5

    #@34
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    #@37
    move-result-object v5

    #@38
    iput-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    #@3a
    .line 49
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    #@3c
    invoke-virtual {v5}, Landroid/app/AlertDialog;->create()V

    #@3f
    .line 51
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    #@41
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    #@44
    move-result-object v4

    #@45
    .line 52
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x7d2

    #@47
    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    #@4a
    .line 55
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@4d
    move-result-object v5

    #@4e
    const-string/jumbo v6, "UnsupportedDisplaySizeDialog"

    #@51
    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    #@54
    .line 57
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    #@56
    const v6, 0x1020332

    #@59
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    #@5c
    move-result-object v0

    #@5d
    check-cast v0, Landroid/widget/CheckBox;

    #@5f
    .line 58
    .local v0, "alwaysShow":Landroid/widget/CheckBox;
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    #@62
    .line 59
    new-instance v5, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;

    #@64
    invoke-direct {v5, p0, p1}, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;-><init>(Lcom/android/server/am/UnsupportedDisplaySizeDialog;Lcom/android/server/am/ActivityManagerService;)V

    #@67
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    #@6a
    .line 34
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_am_UnsupportedDisplaySizeDialog_lambda$1(Lcom/android/server/am/ActivityManagerService;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    #@0
    .prologue
    .line 60
    monitor-enter p1

    #@1
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@4
    .line 61
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    #@6
    .line 62
    iget-object v1, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    #@8
    .line 61
    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/CompatModePackages;->setPackageNotifyUnsupportedZoomLocked(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p1

    #@c
    .line 60
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@f
    .line 0
    return-void

    #@10
    .line 60
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p1

    #@12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@15
    throw v0
.end method

.method public dismiss()V
    .locals 1

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    #@2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    #@5
    .line 75
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public show()V
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    #@2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    #@5
    .line 71
    return-void
.end method
