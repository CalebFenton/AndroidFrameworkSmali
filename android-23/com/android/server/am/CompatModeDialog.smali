.class public final Lcom/android/server/am/CompatModeDialog;
.super Landroid/app/Dialog;
.source "CompatModeDialog.java"


# instance fields
.field final mAlwaysShow:Landroid/widget/CheckBox;

.field final mAppInfo:Landroid/content/pm/ApplicationInfo;

.field final mCompatEnabled:Landroid/widget/Switch;

.field final mHint:Landroid/view/View;

.field final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 41
    const v0, 0x1030070

    #@4
    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@7
    .line 42
    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModeDialog;->setCancelable(Z)V

    #@a
    .line 43
    invoke-virtual {p0, v1}, Lcom/android/server/am/CompatModeDialog;->setCanceledOnTouchOutside(Z)V

    #@d
    .line 44
    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    #@14
    .line 45
    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    #@17
    move-result-object v0

    #@18
    const/16 v1, 0x7d2

    #@1a
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    #@1d
    .line 46
    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->getWindow()Landroid/view/Window;

    #@20
    move-result-object v0

    #@21
    const/16 v1, 0x51

    #@23
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    #@26
    .line 47
    iput-object p1, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@28
    .line 48
    iput-object p3, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    #@2a
    .line 50
    const v0, 0x1090032

    #@2d
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->setContentView(I)V

    #@30
    .line 51
    const v0, 0x1020301

    #@33
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->findViewById(I)Landroid/view/View;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/widget/Switch;

    #@39
    iput-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    #@3b
    .line 52
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    #@3d
    new-instance v1, Lcom/android/server/am/CompatModeDialog$1;

    #@3f
    invoke-direct {v1, p0}, Lcom/android/server/am/CompatModeDialog$1;-><init>(Lcom/android/server/am/CompatModeDialog;)V

    #@42
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    #@45
    .line 64
    const v0, 0x1020302

    #@48
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->findViewById(I)Landroid/view/View;

    #@4b
    move-result-object v0

    #@4c
    check-cast v0, Landroid/widget/CheckBox;

    #@4e
    iput-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    #@50
    .line 65
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    #@52
    new-instance v1, Lcom/android/server/am/CompatModeDialog$2;

    #@54
    invoke-direct {v1, p0}, Lcom/android/server/am/CompatModeDialog$2;-><init>(Lcom/android/server/am/CompatModeDialog;)V

    #@57
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    #@5a
    .line 75
    const v0, 0x1020303

    #@5d
    invoke-virtual {p0, v0}, Lcom/android/server/am/CompatModeDialog;->findViewById(I)Landroid/view/View;

    #@60
    move-result-object v0

    #@61
    iput-object v0, p0, Lcom/android/server/am/CompatModeDialog;->mHint:Landroid/view/View;

    #@63
    .line 77
    invoke-virtual {p0}, Lcom/android/server/am/CompatModeDialog;->updateControls()V

    #@66
    .line 40
    return-void
.end method


# virtual methods
.method updateControls()V
    .locals 7

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 81
    iget-object v4, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v4

    #@5
    .line 82
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    #@9
    iget-object v6, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    #@b
    invoke-virtual {v5, v6}, Lcom/android/server/am/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    #@e
    move-result v1

    #@f
    .line 83
    .local v1, "mode":I
    iget-object v5, p0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    #@11
    if-ne v1, v3, :cond_1

    #@13
    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    #@16
    .line 84
    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@18
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    #@1a
    .line 85
    iget-object v5, p0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    #@1c
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@1e
    .line 84
    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    .line 86
    .local v0, "ask":Z
    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    #@24
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    #@27
    .line 87
    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog;->mHint:Landroid/view/View;

    #@29
    if-eqz v0, :cond_0

    #@2b
    const/4 v2, 0x4

    #@2c
    :cond_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    monitor-exit v4

    #@30
    .line 80
    return-void

    #@31
    .end local v0    # "ask":Z
    :cond_1
    move v3, v2

    #@32
    .line 83
    goto :goto_0

    #@33
    .line 81
    .end local v1    # "mode":I
    :catchall_0
    move-exception v2

    #@34
    monitor-exit v4

    #@35
    throw v2
.end method
