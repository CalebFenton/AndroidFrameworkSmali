.class Lcom/android/server/am/CompatModeDialog$1;
.super Ljava/lang/Object;
.source "CompatModeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/CompatModeDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CompatModeDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/CompatModeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/CompatModeDialog;

    #@0
    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    #@2
    iget-object v1, v0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v1

    #@5
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    #@8
    .line 56
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    #@a
    iget-object v0, v0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    #@e
    .line 57
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    #@10
    iget-object v0, v0, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    #@12
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@14
    .line 58
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    #@16
    iget-object v0, v0, Lcom/android/server/am/CompatModeDialog;->mCompatEnabled:Landroid/widget/Switch;

    #@18
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_0

    #@1e
    const/4 v0, 0x1

    #@1f
    .line 56
    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/android/server/am/CompatModePackages;->setPackageScreenCompatModeLocked(Ljava/lang/String;I)V

    #@22
    .line 60
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$1;->this$0:Lcom/android/server/am/CompatModeDialog;

    #@24
    invoke-virtual {v0}, Lcom/android/server/am/CompatModeDialog;->updateControls()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    monitor-exit v1

    #@28
    .line 55
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@2b
    .line 54
    return-void

    #@2c
    .line 59
    :cond_0
    const/4 v0, 0x0

    #@2d
    goto :goto_0

    #@2e
    .line 55
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit v1

    #@30
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    #@33
    throw v0
.end method
