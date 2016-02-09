.class Lcom/android/server/am/CompatModeDialog$2;
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
    .line 65
    iput-object p1, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

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
    .line 68
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    #@2
    iget-object v1, v0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    monitor-enter v1

    #@5
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    #@7
    iget-object v0, v0, Lcom/android/server/am/CompatModeDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    #@b
    .line 70
    iget-object v2, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    #@d
    iget-object v2, v2, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    #@f
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@11
    iget-object v3, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    #@13
    iget-object v3, v3, Lcom/android/server/am/CompatModeDialog;->mAlwaysShow:Landroid/widget/CheckBox;

    #@15
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    #@18
    move-result v3

    #@19
    .line 69
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    #@1c
    .line 71
    iget-object v0, p0, Lcom/android/server/am/CompatModeDialog$2;->this$0:Lcom/android/server/am/CompatModeDialog;

    #@1e
    invoke-virtual {v0}, Lcom/android/server/am/CompatModeDialog;->updateControls()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit v1

    #@22
    .line 67
    return-void

    #@23
    .line 68
    :catchall_0
    move-exception v0

    #@24
    monitor-exit v1

    #@25
    throw v0
.end method
