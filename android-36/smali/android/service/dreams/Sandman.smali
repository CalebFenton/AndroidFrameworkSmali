.class public final Landroid/service/dreams/Sandman;
.super Ljava/lang/Object;
.source "Sandman.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Sandman"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static greylist-max-o isScreenSaverActivatedOnDock(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110157

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 117
    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 118
    .local v0, "def":I
    :goto_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screensaver_activate_on_dock"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1
.end method

.method private static greylist-max-o isScreenSaverEnabled(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 109
    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 110
    .local v0, "def":I
    :goto_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screensaver_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    return v1
.end method

.method public static greylist-max-o shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 49
    nop

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 52
    .local v0, "somnambulatorComponent":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 53
    .local v1, "name":Landroid/content/ComponentName;
    if-eqz v1, :cond_22

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x1

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    return v2
.end method

.method private static greylist-max-o startDream(Landroid/content/Context;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "docked"    # Z

    .line 79
    const-string v0, "Sandman"

    :try_start_2
    const-string v1, "dreams"

    .line 80
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    .line 81
    .local v1, "dreamManagerService":Landroid/service/dreams/IDreamManager;
    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v2

    if-nez v2, :cond_36

    .line 82
    if-eqz p1, :cond_2e

    .line 83
    const-string v2, "Activating dream while docked."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-class v2, Landroid/os/PowerManager;

    .line 91
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 92
    .local v2, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v5, "android.service.dreams:DREAM"

    const/4 v6, 0x3

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 95
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    goto :goto_33

    .line 96
    :cond_2e
    const-string v2, "Activating dream by user request."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_33
    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_36} :catch_37

    .line 104
    .end local v1    # "dreamManagerService":Landroid/service/dreams/IDreamManager;
    :cond_36
    goto :goto_3d

    .line 102
    :catch_37
    move-exception v1

    .line 103
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "Could not start dream when docked."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_3d
    return-void
.end method

.method public static greylist-max-o startDreamByUserRequest(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    .line 61
    return-void
.end method

.method public static greylist-max-o startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 68
    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 69
    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverActivatedOnDock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_12

    .line 74
    :cond_d
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    .line 75
    return-void

    .line 70
    :cond_12
    :goto_12
    const-string v0, "Sandman"

    const-string v1, "Dreams currently disabled for docks."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
