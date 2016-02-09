.class public final Landroid/service/dreams/Sandman;
.super Ljava/lang/Object;
.source "Sandman.java"


# static fields
.field private static final SOMNAMBULATOR_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "Sandman"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 43
    new-instance v0, Landroid/content/ComponentName;

    #@2
    const-string/jumbo v1, "com.android.systemui"

    #@5
    const-string/jumbo v2, "com.android.systemui.Somnambulator"

    #@8
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 42
    sput-object v0, Landroid/service/dreams/Sandman;->SOMNAMBULATOR_COMPONENT:Landroid/content/ComponentName;

    #@d
    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static isScreenSaverActivatedOnDock(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v2

    #@5
    .line 119
    const v3, 0x1120066

    #@8
    .line 118
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 119
    const/4 v0, 0x1

    #@f
    .line 120
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v2

    #@13
    .line 121
    const-string/jumbo v3, "screensaver_activate_on_dock"

    #@16
    .line 122
    const/4 v4, -0x2

    #@17
    .line 120
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    const/4 v1, 0x1

    #@1e
    :cond_0
    return v1

    #@1f
    .line 119
    .end local v0    # "def":I
    :cond_1
    const/4 v0, 0x0

    #@20
    .restart local v0    # "def":I
    goto :goto_0
.end method

.method private static isScreenSaverEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4
    move-result-object v2

    #@5
    .line 111
    const v3, 0x1120065

    #@8
    .line 110
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 111
    const/4 v0, 0x1

    #@f
    .line 112
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@12
    move-result-object v2

    #@13
    .line 113
    const-string/jumbo v3, "screensaver_enabled"

    #@16
    .line 114
    const/4 v4, -0x2

    #@17
    .line 112
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_0

    #@1d
    const/4 v1, 0x1

    #@1e
    :cond_0
    return v1

    #@1f
    .line 111
    .end local v0    # "def":I
    :cond_1
    const/4 v0, 0x0

    #@20
    .restart local v0    # "def":I
    goto :goto_0
.end method

.method public static shouldStartDockApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    #@8
    move-result-object v0

    #@9
    .line 56
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@b
    sget-object v2, Landroid/service/dreams/Sandman;->SOMNAMBULATOR_COMPONENT:Landroid/content/ComponentName;

    #@d
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    :cond_0
    :goto_0
    return v1

    #@14
    :cond_1
    const/4 v1, 0x1

    #@15
    goto :goto_0
.end method

.method private static startDream(Landroid/content/Context;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "docked"    # Z

    #@0
    .prologue
    .line 83
    :try_start_0
    const-string/jumbo v3, "dreams"

    #@3
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v3

    #@7
    .line 82
    invoke-static {v3}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    #@a
    move-result-object v0

    #@b
    .line 84
    .local v0, "dreamManagerService":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    #@d
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 80
    .end local v0    # "dreamManagerService":Landroid/service/dreams/IDreamManager;
    :cond_0
    :goto_0
    return-void

    #@14
    .line 85
    .restart local v0    # "dreamManagerService":Landroid/service/dreams/IDreamManager;
    :cond_1
    if-eqz p1, :cond_2

    #@16
    .line 86
    const-string/jumbo v3, "Sandman"

    #@19
    const-string/jumbo v4, "Activating dream while docked."

    #@1c
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    .line 94
    const-string/jumbo v3, "power"

    #@22
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/os/PowerManager;

    #@28
    .line 95
    .local v2, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@2b
    move-result-wide v4

    #@2c
    .line 96
    const-string/jumbo v3, "android.service.dreams:DREAM"

    #@2f
    .line 95
    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    #@32
    .line 102
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :goto_1
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    goto :goto_0

    #@36
    .line 104
    .end local v0    # "dreamManagerService":Landroid/service/dreams/IDreamManager;
    :catch_0
    move-exception v1

    #@37
    .line 105
    .local v1, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "Sandman"

    #@3a
    const-string/jumbo v4, "Could not start dream when docked."

    #@3d
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40
    goto :goto_0

    #@41
    .line 98
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "dreamManagerService":Landroid/service/dreams/IDreamManager;
    :cond_2
    :try_start_1
    const-string/jumbo v3, "Sandman"

    #@44
    const-string/jumbo v4, "Activating dream by user request."

    #@47
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@4a
    goto :goto_1
.end method

.method public static startDreamByUserRequest(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 63
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    #@4
    .line 62
    return-void
.end method

.method public static startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 71
    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverEnabled(Landroid/content/Context;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 72
    invoke-static {p0}, Landroid/service/dreams/Sandman;->isScreenSaverActivatedOnDock(Landroid/content/Context;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 77
    const/4 v0, 0x1

    #@d
    invoke-static {p0, v0}, Landroid/service/dreams/Sandman;->startDream(Landroid/content/Context;Z)V

    #@10
    .line 70
    return-void

    #@11
    .line 73
    :cond_0
    const-string/jumbo v0, "Sandman"

    #@14
    const-string/jumbo v1, "Dreams currently disabled for docks."

    #@17
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 74
    return-void
.end method
