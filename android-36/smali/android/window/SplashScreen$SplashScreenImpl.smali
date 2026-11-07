.class public Landroid/window/SplashScreen$SplashScreenImpl;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Landroid/window/SplashScreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SplashScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplashScreenImpl"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SplashScreenImpl"


# instance fields
.field private final blacklist mActivityToken:Landroid/os/IBinder;

.field private blacklist mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

.field private final blacklist mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityToken(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExitAnimationListener(Landroid/window/SplashScreen$SplashScreenImpl;)Landroid/window/SplashScreen$OnExitAnimationListener;
    .registers 1

    iget-object p0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    .line 147
    invoke-static {}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->getInstance()Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist clearOnExitAnimationListener()V
    .registers 3

    .line 167
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 169
    return-void

    .line 171
    :cond_5
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$fgetmGlobalLock(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 172
    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    .line 173
    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v1, p0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$mremoveImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw v1
.end method

.method public whitelist setOnExitAnimationListener(Landroid/window/SplashScreen$OnExitAnimationListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/window/SplashScreen$OnExitAnimationListener;

    .line 153
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 155
    return-void

    .line 157
    :cond_5
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$fgetmGlobalLock(Landroid/window/SplashScreen$SplashScreenManagerGlobal;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 158
    if-eqz p1, :cond_15

    .line 159
    :try_start_e
    iput-object p1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mExitAnimationListener:Landroid/window/SplashScreen$OnExitAnimationListener;

    .line 160
    iget-object v1, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mGlobal:Landroid/window/SplashScreen$SplashScreenManagerGlobal;

    invoke-static {v1, p0}, Landroid/window/SplashScreen$SplashScreenManagerGlobal;->-$$Nest$maddImpl(Landroid/window/SplashScreen$SplashScreenManagerGlobal;Landroid/window/SplashScreen$SplashScreenImpl;)V

    .line 162
    :cond_15
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw v1
.end method

.method public whitelist setSplashScreenTheme(I)V
    .registers 8
    .param p1, "themeId"    # I

    .line 178
    iget-object v0, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    const-string v1, "SplashScreenImpl"

    if-nez v0, :cond_c

    .line 179
    const-string v0, "Couldn\'t persist the starting theme. This instance is not an Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 183
    :cond_c
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v2, p0, Landroid/window/SplashScreen$SplashScreenImpl;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    .line 185
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_19

    .line 186
    return-void

    .line 188
    :cond_19
    if-eqz p1, :cond_24

    .line 189
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 192
    .local v2, "themeName":Ljava/lang/String;
    :goto_25
    :try_start_25
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 193
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-virtual {v0}, Landroid/app/Activity;->getUserId()I

    move-result v5

    .line 192
    invoke-interface {v3, v4, v2, v5}, Landroid/content/pm/IPackageManager;->setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_38} :catch_39

    .line 197
    goto :goto_3f

    .line 195
    :catch_39
    move-exception v3

    .line 196
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Couldn\'t persist the starting theme"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_3f
    return-void
.end method
