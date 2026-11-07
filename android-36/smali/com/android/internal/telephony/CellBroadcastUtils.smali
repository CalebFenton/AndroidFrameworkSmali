.class public Lcom/android/internal/telephony/CellBroadcastUtils;
.super Ljava/lang/Object;
.source "CellBroadcastUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CellBroadcastUtils"

.field private static final blacklist VDBG:Z = false


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDefaultCellBroadcastAlertDialogComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    nop

    .line 72
    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastUtils;->getDefaultCellBroadcastReceiverPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "cellBroadcastReceiverPackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 74
    const/4 v1, 0x0

    return-object v1

    .line 76
    :cond_d
    const-string v1, "com.android.cellbroadcastreceiver.CellBroadcastAlertDialog"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getDefaultCellBroadcastReceiverPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 40
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 45
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    const-string v3, "CellBroadcastUtils"

    if-nez v1, :cond_1c

    .line 46
    const-string v4, "getDefaultCellBroadcastReceiverPackageName: no package found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-object v2

    .line 50
    :cond_1c
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 56
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    const-string v5, "android.permission.READ_CELL_BROADCASTS"

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_32

    goto :goto_33

    .line 64
    :cond_32
    return-object v4

    .line 59
    :cond_33
    :goto_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultCellBroadcastReceiverPackageName: returning null; permission check failed for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v2
.end method
