.class public Landroid/app/ActivityClient;
.super Ljava/lang/Object;
.source "ActivityClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityClient$ActivityClientControllerSingleton;
    }
.end annotation


# static fields
.field private static final blacklist INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/ActivityClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 682
    new-instance v0, Landroid/app/ActivityClient$1;

    invoke-direct {v0}, Landroid/app/ActivityClient$1;-><init>()V

    sput-object v0, Landroid/app/ActivityClient;->sInstance:Landroid/util/Singleton;

    .line 689
    new-instance v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;-><init>(Landroid/app/ActivityClient-IA;)V

    sput-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityClient-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ActivityClient;-><init>()V

    return-void
.end method

.method private static blacklist getActivityClientController()Landroid/app/IActivityClientController;
    .registers 2

    .line 678
    sget-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    iget-object v0, v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->mKnownInstance:Landroid/app/IActivityClientController;

    .line 679
    .local v0, "controller":Landroid/app/IActivityClientController;
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_10

    :cond_8
    sget-object v1, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    invoke-virtual {v1}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityClientController;

    :goto_10
    return-object v1
.end method

.method public static blacklist getInstance()Landroid/app/ActivityClient;
    .registers 1

    .line 663
    sget-object v0, Landroid/app/ActivityClient;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityClient;

    return-object v0
.end method

.method public static blacklist setActivityClientController(Landroid/app/IActivityClientController;)Landroid/app/IActivityClientController;
    .registers 2
    .param p0, "activityClientController"    # Landroid/app/IActivityClientController;

    .line 674
    sget-object v0, Landroid/app/ActivityClient;->INTERFACE_SINGLETON:Landroid/app/ActivityClient$ActivityClientControllerSingleton;

    iput-object p0, v0, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->mKnownInstance:Landroid/app/IActivityClientController;

    return-object p0
.end method


# virtual methods
.method public blacklist activityDestroyed(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 110
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityDestroyed(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 113
    goto :goto_c

    .line 111
    :catch_8
    move-exception v0

    .line 112
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "stopProfiling"    # Z

    .line 51
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 54
    goto :goto_c

    .line 52
    :catch_8
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 55
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist activityLocalRelaunch(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 119
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityLocalRelaunch(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 122
    goto :goto_c

    .line 120
    :catch_8
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist activityPaused(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 90
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityPaused(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 93
    goto :goto_c

    .line 91
    :catch_8
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 94
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist activityRefreshed(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 69
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityRefreshed(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 72
    goto :goto_c

    .line 70
    :catch_8
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 73
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist activityRelaunched(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 128
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->activityRelaunched(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 131
    goto :goto_c

    .line 129
    :catch_8
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 132
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist activityResumed(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "handleSplashScreenExit"    # Z

    .line 60
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->activityResumed(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 63
    goto :goto_c

    .line 61
    :catch_8
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 64
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "state"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .line 100
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityClientController;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 104
    goto :goto_c

    .line 102
    :catch_8
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist activityTopResumedStateLost()V
    .registers 2

    .line 81
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityClientController;->activityTopResumedStateLost()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 84
    goto :goto_c

    .line 82
    :catch_8
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 85
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;I)I
    .registers 11
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "callerToken"    # Landroid/os/IBinder;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I

    .line 325
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    .line 326
    invoke-static {p3}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 327
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {p3, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_1b

    .line 325
    move-object v1, p1

    move-object v2, p2

    move v4, p4

    .end local p1    # "activityToken":Landroid/os/IBinder;
    .end local p2    # "callerToken":Landroid/os/IBinder;
    .end local p4    # "modeFlags":I
    .local v1, "activityToken":Landroid/os/IBinder;
    .local v2, "callerToken":Landroid/os/IBinder;
    .local v4, "modeFlags":I
    :try_start_13
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityClientController;->checkActivityCallerContentUriPermission(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/net/Uri;II)I

    move-result p1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_17} :catch_18

    return p1

    .line 328
    :catch_18
    move-exception v0

    move-object p1, v0

    goto :goto_20

    .end local v1    # "activityToken":Landroid/os/IBinder;
    .end local v2    # "callerToken":Landroid/os/IBinder;
    .end local v4    # "modeFlags":I
    .restart local p1    # "activityToken":Landroid/os/IBinder;
    .restart local p2    # "callerToken":Landroid/os/IBinder;
    .restart local p4    # "modeFlags":I
    :catch_1b
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object p1, v0

    .line 329
    .end local p2    # "callerToken":Landroid/os/IBinder;
    .end local p4    # "modeFlags":I
    .restart local v1    # "activityToken":Landroid/os/IBinder;
    .restart local v2    # "callerToken":Landroid/os/IBinder;
    .restart local v4    # "modeFlags":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_20
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method blacklist clearOverrideActivityTransition(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "open"    # Z

    .line 545
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->clearOverrideActivityTransition(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 548
    goto :goto_c

    .line 546
    :catch_8
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 549
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist convertFromTranslucent(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 351
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 352
    :catch_9
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 359
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 360
    :catch_9
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 587
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 590
    goto :goto_c

    .line 588
    :catch_8
    move-exception v0

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 591
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist enableTaskLocaleOverride(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 630
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->enableTaskLocaleOverride(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 633
    goto :goto_c

    .line 631
    :catch_8
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 634
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 391
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 392
    :catch_9
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "finishTask"    # I

    .line 179
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IActivityClientController;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 181
    :catch_9
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist finishActivityAffinity(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 188
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 189
    :catch_9
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .line 196
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 199
    goto :goto_c

    .line 197
    :catch_8
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 200
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "callerToken"    # Landroid/os/IBinder;

    .line 314
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->getActivityCallerPackage(Landroid/os/IBinder;Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 316
    :catch_9
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "callerToken"    # Landroid/os/IBinder;

    .line 304
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->getActivityCallerUid(Landroid/os/IBinder;Landroid/os/IBinder;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 306
    :catch_9
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 263
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 264
    :catch_9
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 271
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 272
    :catch_9
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 279
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 280
    :catch_9
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDisplayId(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 229
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getDisplayId(Landroid/os/IBinder;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 230
    :catch_9
    move-exception v0

    .line 231
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 295
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 296
    :catch_9
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLaunchedFromUid(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 287
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 288
    :catch_9
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist getRequestedOrientation(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 343
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 344
    :catch_9
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 250
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->getTaskConfiguration(Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 251
    :catch_9
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTaskForActivity(Landroid/os/IBinder;Z)I
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyRoot"    # Z

    .line 237
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 238
    :catch_9
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "homeToken"    # Landroid/os/IBinder;

    .line 578
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 581
    goto :goto_c

    .line 579
    :catch_8
    move-exception v0

    .line 580
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 582
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist isImmersive(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 375
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 376
    :catch_9
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isRequestedToLaunchInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "taskFragmentToken"    # Landroid/os/IBinder;

    .line 646
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->isRequestedToLaunchInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 648
    :catch_9
    move-exception v0

    .line 649
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 471
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 472
    :catch_9
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isTopOfTask(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 213
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 214
    :catch_9
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z

    .line 144
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 145
    :catch_9
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "resultCode"    # I
    .param p5, "resultData"    # Landroid/content/Intent;

    .line 161
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "destIntent":Landroid/content/Intent;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "resultCode":I
    .end local p5    # "resultData":Landroid/content/Intent;
    .local v1, "token":Landroid/os/IBinder;
    .local v2, "destIntent":Landroid/content/Intent;
    .local v3, "resolvedType":Ljava/lang/String;
    .local v4, "resultCode":I
    .local v5, "resultData":Landroid/content/Intent;
    :try_start_9
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityClientController;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/Intent;)Z

    move-result p1
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_e

    return p1

    .line 163
    :catch_e
    move-exception v0

    move-object p1, v0

    goto :goto_18

    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "destIntent":Landroid/content/Intent;
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v4    # "resultCode":I
    .end local v5    # "resultData":Landroid/content/Intent;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "destIntent":Landroid/content/Intent;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "resultCode":I
    .restart local p5    # "resultData":Landroid/content/Intent;
    :catch_11
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object p1, v0

    .line 164
    .end local p2    # "destIntent":Landroid/content/Intent;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "resultCode":I
    .end local p5    # "resultData":Landroid/content/Intent;
    .restart local v1    # "token":Landroid/os/IBinder;
    .restart local v2    # "destIntent":Landroid/content/Intent;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    .restart local v4    # "resultCode":I
    .restart local v5    # "resultData":Landroid/content/Intent;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2
.end method

.method blacklist onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/app/IRequestFinishCallback;

    .line 611
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->onBackPressed(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 614
    goto :goto_c

    .line 612
    :catch_8
    move-exception v0

    .line 613
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 615
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist overrideActivityTransition(Landroid/os/IBinder;ZIII)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "open"    # Z
    .param p3, "enterAnim"    # I
    .param p4, "exitAnim"    # I
    .param p5, "backgroundColor"    # I

    .line 536
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_10

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "open":Z
    .end local p3    # "enterAnim":I
    .end local p4    # "exitAnim":I
    .end local p5    # "backgroundColor":I
    .local v1, "token":Landroid/os/IBinder;
    .local v2, "open":Z
    .local v3, "enterAnim":I
    .local v4, "exitAnim":I
    .local v5, "backgroundColor":I
    :try_start_9
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityClientController;->overrideActivityTransition(Landroid/os/IBinder;ZIII)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 540
    goto :goto_1a

    .line 538
    :catch_d
    move-exception v0

    move-object p1, v0

    goto :goto_17

    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "open":Z
    .end local v3    # "enterAnim":I
    .end local v4    # "exitAnim":I
    .end local v5    # "backgroundColor":I
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "open":Z
    .restart local p3    # "enterAnim":I
    .restart local p4    # "exitAnim":I
    .restart local p5    # "backgroundColor":I
    :catch_10
    move-exception v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object p1, v0

    .line 539
    .end local p2    # "open":Z
    .end local p3    # "enterAnim":I
    .end local p4    # "exitAnim":I
    .end local p5    # "backgroundColor":I
    .restart local v1    # "token":Landroid/os/IBinder;
    .restart local v2    # "open":Z
    .restart local v3    # "enterAnim":I
    .restart local v4    # "exitAnim":I
    .restart local v5    # "backgroundColor":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_17
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 541
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method blacklist overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "enterAnim"    # I
    .param p4, "exitAnim"    # I
    .param p5, "backgroundColor"    # I

    .line 554
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_10

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "enterAnim":I
    .end local p4    # "exitAnim":I
    .end local p5    # "backgroundColor":I
    .local v1, "token":Landroid/os/IBinder;
    .local v2, "packageName":Ljava/lang/String;
    .local v3, "enterAnim":I
    .local v4, "exitAnim":I
    .local v5, "backgroundColor":I
    :try_start_9
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityClientController;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 558
    goto :goto_1a

    .line 556
    :catch_d
    move-exception v0

    move-object p1, v0

    goto :goto_17

    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "enterAnim":I
    .end local v4    # "exitAnim":I
    .end local v5    # "backgroundColor":I
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "enterAnim":I
    .restart local p4    # "exitAnim":I
    .restart local p5    # "backgroundColor":I
    :catch_10
    move-exception v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object p1, v0

    .line 557
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "enterAnim":I
    .end local p4    # "exitAnim":I
    .end local p5    # "backgroundColor":I
    .restart local v1    # "token":Landroid/os/IBinder;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "enterAnim":I
    .restart local v4    # "exitAnim":I
    .restart local v5    # "backgroundColor":I
    .local p1, "e":Landroid/os/RemoteException;
    :goto_17
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 559
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method blacklist registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 595
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 598
    goto :goto_c

    .line 596
    :catch_8
    move-exception v0

    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 599
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist releaseActivityInstance(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 170
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 171
    :catch_9
    move-exception v0

    .line 172
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "restoredFromBundle"    # Z

    .line 367
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 370
    goto :goto_c

    .line 368
    :catch_8
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 371
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sizeConfigurations"    # Landroid/window/SizeConfigurationBuckets;

    .line 136
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 139
    goto :goto_c

    .line 137
    :catch_8
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist reportSplashScreenAttached(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 622
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->splashScreenAttached(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 625
    goto :goto_c

    .line 623
    :catch_8
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 626
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "request"    # I
    .param p3, "callback"    # Landroid/os/IRemoteCallback;

    .line 423
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 426
    goto :goto_c

    .line 424
    :catch_8
    move-exception v0

    .line 425
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 427
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z

    .line 656
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setActivityRecordInputSinkEnabled(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 659
    goto :goto_c

    .line 657
    :catch_8
    move-exception v0

    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 660
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "allowed"    # Z

    .line 519
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setAllowCrossUidActivitySwitchFromBelow(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 522
    goto :goto_c

    .line 520
    :catch_8
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 523
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist setForceSendResultForMediaProjection(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 205
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->setForceSendResultForMediaProjection(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 208
    nop

    .line 209
    return-void

    .line 206
    :catch_9
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist setImmersive(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immersive"    # Z

    .line 383
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setImmersive(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 386
    goto :goto_c

    .line 384
    :catch_8
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "inheritShowWhenLocked"    # Z

    .line 503
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 506
    goto :goto_c

    .line 504
    :catch_8
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 507
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "params"    # Landroid/app/PictureInPictureParams;

    .line 399
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 402
    goto :goto_c

    .line 400
    :catch_8
    move-exception v0

    .line 401
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 403
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z

    .line 563
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 566
    goto :goto_c

    .line 564
    :catch_8
    move-exception v0

    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 567
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setRequestedOrientation(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestedOrientation"    # I

    .line 335
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setRequestedOrientation(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 338
    goto :goto_c

    .line 336
    :catch_8
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 339
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "shouldDockBigOverlays"    # Z

    .line 407
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 410
    goto :goto_c

    .line 408
    :catch_8
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 411
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist setShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "showWhenLocked"    # Z

    .line 495
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setShowWhenLocked(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 498
    goto :goto_c

    .line 496
    :catch_8
    move-exception v0

    .line 497
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 499
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 455
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 458
    goto :goto_c

    .line 456
    :catch_8
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 459
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist setTurnScreenOn(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "turnScreenOn"    # Z

    .line 511
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->setTurnScreenOn(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 514
    goto :goto_c

    .line 512
    :catch_8
    move-exception v0

    .line 513
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 515
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "enabled"    # Z
    .param p3, "packageName"    # Landroid/content/ComponentName;

    .line 527
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityClientController;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 528
    :catch_9
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .line 152
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 153
    :catch_9
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 463
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 464
    :catch_9
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method blacklist showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 447
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 450
    goto :goto_c

    .line 448
    :catch_8
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 451
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "callingActivity"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 479
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityClientController;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 482
    goto :goto_c

    .line 480
    :catch_8
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 483
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist startLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 431
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->startLockTaskModeByToken(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 434
    goto :goto_c

    .line 432
    :catch_8
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "callingActivity"    # Landroid/os/IBinder;

    .line 487
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 490
    goto :goto_c

    .line 488
    :catch_8
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 491
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 439
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->stopLockTaskModeByToken(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 442
    goto :goto_c

    .line 440
    :catch_8
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 415
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 418
    goto :goto_c

    .line 416
    :catch_8
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 419
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist unregisterRemoteAnimations(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 603
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->unregisterRemoteAnimations(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 606
    goto :goto_c

    .line 604
    :catch_8
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 607
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method blacklist willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 221
    :try_start_0
    invoke-static {}, Landroid/app/ActivityClient;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityClientController;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 222
    :catch_9
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
