.class public Landroid/app/FullscreenRequestHandler;
.super Ljava/lang/Object;
.source "FullscreenRequestHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FullscreenRequestHandler$RequestResult;
    }
.end annotation


# static fields
.field public static final blacklist REMOTE_CALLBACK_RESULT_KEY:Ljava/lang/String; = "result"

.field public static final blacklist RESULT_APPROVED:I = 0x0

.field public static final blacklist RESULT_FAILED_ALREADY_FULLY_EXPANDED:I = 0x3

.field public static final blacklist RESULT_FAILED_NOT_IN_FULLSCREEN_WITH_HISTORY:I = 0x1

.field public static final blacklist RESULT_FAILED_NOT_TOP_FOCUSED:I = 0x2


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnotifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/FullscreenRequestHandler;->notifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist earlyCheckRequestMatchesWindowingMode(II)I
    .registers 5
    .param p0, "request"    # I
    .param p1, "windowingMode"    # I

    .line 107
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_8

    .line 108
    if-eq p1, v1, :cond_7

    .line 109
    return v1

    .line 111
    :cond_7
    return v0

    .line 113
    :cond_8
    sget-object v2, Landroid/window/DesktopModeFlags;->ENABLE_REQUEST_FULLSCREEN_BUGFIX:Landroid/window/DesktopModeFlags;

    invoke-virtual {v2}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_17

    if-eq p1, v1, :cond_15

    const/4 v1, 0x6

    if-ne p1, v1, :cond_17

    .line 116
    :cond_15
    const/4 v0, 0x3

    return v0

    .line 118
    :cond_17
    return v0
.end method

.method private static blacklist notifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V
    .registers 5
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            ">;I)V"
        }
    .end annotation

    .line 85
    .local p0, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    .line 86
    .local v0, "e":Ljava/lang/Throwable;
    packed-switch p1, :pswitch_data_2a

    .line 98
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    goto :goto_24

    .line 95
    :pswitch_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The window is already fully expanded."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 96
    goto :goto_24

    .line 92
    :pswitch_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The window is not the top focused window."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 93
    goto :goto_24

    .line 88
    :pswitch_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The window is not in fullscreen by calling the requestFullscreenMode API before, such that cannot be restored."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 90
    nop

    .line 101
    :goto_24
    if-eqz v0, :cond_29

    .line 102
    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 104
    :cond_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_12
        :pswitch_9
    .end packed-switch
.end method

.method static blacklist requestFullscreenMode(ILandroid/os/OutcomeReceiver;Landroid/content/res/Configuration;Landroid/os/IBinder;)V
    .registers 7
    .param p0, "request"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            ">;",
            "Landroid/content/res/Configuration;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 55
    .local p1, "approvalCallback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Ljava/lang/Void;Ljava/lang/Throwable;>;"
    iget-object v0, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 56
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 55
    invoke-static {p0, v0}, Landroid/app/FullscreenRequestHandler;->earlyCheckRequestMatchesWindowingMode(II)I

    move-result v0

    .line 57
    .local v0, "earlyCheck":I
    if-eqz v0, :cond_12

    .line 58
    if-eqz p1, :cond_11

    .line 59
    invoke-static {p1, v0}, Landroid/app/FullscreenRequestHandler;->notifyFullscreenRequestResult(Landroid/os/OutcomeReceiver;I)V

    .line 61
    :cond_11
    return-void

    .line 64
    :cond_12
    if-eqz p1, :cond_21

    .line 65
    :try_start_14
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    new-instance v2, Landroid/app/FullscreenRequestHandler$1;

    invoke-direct {v2, p1}, Landroid/app/FullscreenRequestHandler$1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-virtual {v1, p3, p0, v2}, Landroid/app/ActivityClient;->requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V

    goto :goto_29

    .line 74
    :cond_21
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p0, v2}, Landroid/app/ActivityClient;->requestMultiwindowFullscreen(Landroid/os/IBinder;ILandroid/os/IRemoteCallback;)V
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_2a

    .line 80
    :goto_29
    goto :goto_30

    .line 76
    :catchall_2a
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Throwable;
    if-eqz p1, :cond_30

    .line 78
    invoke-interface {p1, v1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 81
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_30
    :goto_30
    return-void
.end method
