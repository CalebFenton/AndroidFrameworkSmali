.class final synthetic Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$forceRescan:Z

.field private synthetic val$this:Lcom/android/server/pm/ShortcutService;

.field private synthetic val$user:Lcom/android/server/pm/ShortcutUser;

.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;IZ)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    #@5
    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;->val$user:Lcom/android/server/pm/ShortcutUser;

    #@7
    iput p3, p0, Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;->val$userId:I

    #@9
    iput-boolean p4, p0, Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;->val$forceRescan:Z

    #@b
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    #@0
    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    #@2
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;->val$user:Lcom/android/server/pm/ShortcutUser;

    #@4
    iget v2, p0, Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;->val$userId:I

    #@6
    iget-boolean v3, p0, Lcom/android/server/pm/ShortcutService$-void_rescanUpdatedPackagesLocked_int_userId_long_lastScanTime_boolean_forceRescan_LambdaImpl0;->val$forceRescan:Z

    #@8
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    #@a
    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService_lambda$17(Lcom/android/server/pm/ShortcutUser;IZLandroid/content/pm/ApplicationInfo;)V

    #@d
    return-void
.end method
