.class Lcom/android/server/am/ActivityManagerService$PermissionController;
.super Landroid/os/IPermissionController$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PermissionController"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 6982
    invoke-direct {p0}, Landroid/os/IPermissionController$Stub;-><init>()V

    #@3
    .line 6983
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@5
    .line 6982
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6988
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@3
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 6994
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public isRuntimePermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 7001
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$PermissionController;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@4
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9
    move-result-object v4

    #@a
    .line 7002
    const/4 v5, 0x0

    #@b
    .line 7001
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    #@e
    move-result-object v0

    #@f
    .line 7003
    .local v0, "info":Landroid/content/pm/PermissionInfo;
    iget v4, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    if-ne v4, v2, :cond_0

    #@13
    :goto_0
    return v2

    #@14
    :cond_0
    move v2, v3

    #@15
    goto :goto_0

    #@16
    .line 7004
    .end local v0    # "info":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v1

    #@17
    .line 7005
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "ActivityManager"

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "No such permission: "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    .line 7007
    return v3
.end method
