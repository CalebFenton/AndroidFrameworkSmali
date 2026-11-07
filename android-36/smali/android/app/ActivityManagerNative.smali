.class public abstract Landroid/app/ActivityManagerNative;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .registers 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    invoke-static {p0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static greylist broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 69
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 70
    return-void
.end method

.method public static greylist-max-o broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "userId"    # I

    .line 80
    invoke-static {p0, p2, p3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;II)V

    .line 81
    return-void
.end method

.method public static greylist getDefault()Landroid/app/IActivityManager;
    .registers 1

    .line 51
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static greylist isSystemReady()Z
    .registers 1

    .line 61
    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .registers 4
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/app/ActivityManager;->noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 103
    return-void
.end method

.method public static greylist-max-o noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .registers 4
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/app/ActivityManager;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 96
    return-void
.end method

.method public static greylist-max-o noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/app/ActivityManager;->noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
