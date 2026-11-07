.class public final Landroid/media/MediaController2$Builder;
.super Ljava/lang/Object;
.source "MediaController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/media/MediaController2$ControllerCallback;

.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mConnectionHints:Landroid/os/Bundle;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mToken:Landroid/media/Session2Token;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/media/Session2Token;)V
    .registers 3

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    .line 441
    iput-object p1, p0, Landroid/media/MediaController2$Builder;->mContext:Landroid/content/Context;

    .line 442
    iput-object p2, p0, Landroid/media/MediaController2$Builder;->mToken:Landroid/media/Session2Token;

    return-void

    .line 439
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "token shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 436
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/media/MediaController2;
    .registers 8

    .line 498
    iget-object v0, p0, Landroid/media/MediaController2$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_c

    .line 499
    iget-object v0, p0, Landroid/media/MediaController2$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaController2$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 501
    :cond_c
    iget-object v0, p0, Landroid/media/MediaController2$Builder;->mCallback:Landroid/media/MediaController2$ControllerCallback;

    if-nez v0, :cond_17

    .line 502
    new-instance v0, Landroid/media/MediaController2$Builder$1;

    invoke-direct {v0, p0}, Landroid/media/MediaController2$Builder$1;-><init>(Landroid/media/MediaController2$Builder;)V

    iput-object v0, p0, Landroid/media/MediaController2$Builder;->mCallback:Landroid/media/MediaController2$ControllerCallback;

    .line 504
    :cond_17
    iget-object v0, p0, Landroid/media/MediaController2$Builder;->mConnectionHints:Landroid/os/Bundle;

    if-nez v0, :cond_1f

    .line 505
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/MediaController2$Builder;->mConnectionHints:Landroid/os/Bundle;

    .line 507
    :cond_1f
    new-instance v1, Landroid/media/MediaController2;

    iget-object v2, p0, Landroid/media/MediaController2$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/MediaController2$Builder;->mToken:Landroid/media/Session2Token;

    iget-object v4, p0, Landroid/media/MediaController2$Builder;->mConnectionHints:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/media/MediaController2$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Landroid/media/MediaController2$Builder;->mCallback:Landroid/media/MediaController2$ControllerCallback;

    invoke-direct/range {v1 .. v6}, Landroid/media/MediaController2;-><init>(Landroid/content/Context;Landroid/media/Session2Token;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)V

    return-object v1
.end method

.method public whitelist setConnectionHints(Landroid/os/Bundle;)Landroid/media/MediaController2$Builder;
    .registers 3

    if-eqz p1, :cond_18

    .line 462
    invoke-static {p1}, Landroid/media/MediaSession2;->hasCustomParcelable(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaController2$Builder;->mConnectionHints:Landroid/os/Bundle;

    return-object p0

    .line 463
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectionHints shouldn\'t contain any custom parcelables"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 460
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "connectionHints shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/MediaController2$Builder;
    .registers 3

    if-eqz p1, :cond_11

    if-eqz p2, :cond_9

    .line 486
    iput-object p1, p0, Landroid/media/MediaController2$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 487
    iput-object p2, p0, Landroid/media/MediaController2$Builder;->mCallback:Landroid/media/MediaController2$ControllerCallback;

    return-object p0

    .line 484
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 481
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "executor shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
