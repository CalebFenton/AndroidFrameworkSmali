.class public final Landroid/media/MediaSession2$Builder;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/media/MediaSession2$SessionCallback;

.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mSessionActivity:Landroid/app/PendingIntent;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 2

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 531
    iput-object p1, p0, Landroid/media/MediaSession2$Builder;->mContext:Landroid/content/Context;

    return-void

    .line 529
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/media/MediaSession2;
    .registers 9

    .line 612
    iget-object v0, p0, Landroid/media/MediaSession2$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_c

    .line 613
    iget-object v0, p0, Landroid/media/MediaSession2$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaSession2$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 615
    :cond_c
    iget-object v0, p0, Landroid/media/MediaSession2$Builder;->mCallback:Landroid/media/MediaSession2$SessionCallback;

    if-nez v0, :cond_17

    .line 616
    new-instance v0, Landroid/media/MediaSession2$Builder$1;

    invoke-direct {v0, p0}, Landroid/media/MediaSession2$Builder$1;-><init>(Landroid/media/MediaSession2$Builder;)V

    iput-object v0, p0, Landroid/media/MediaSession2$Builder;->mCallback:Landroid/media/MediaSession2$SessionCallback;

    .line 618
    :cond_17
    iget-object v0, p0, Landroid/media/MediaSession2$Builder;->mId:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 619
    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaSession2$Builder;->mId:Ljava/lang/String;

    .line 621
    :cond_1f
    iget-object v0, p0, Landroid/media/MediaSession2$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_27

    .line 622
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/MediaSession2$Builder;->mExtras:Landroid/os/Bundle;

    .line 624
    :cond_27
    new-instance v1, Landroid/media/MediaSession2;

    iget-object v2, p0, Landroid/media/MediaSession2$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/media/MediaSession2$Builder;->mId:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/MediaSession2$Builder;->mSessionActivity:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroid/media/MediaSession2$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Landroid/media/MediaSession2$Builder;->mCallback:Landroid/media/MediaSession2$SessionCallback;

    iget-object v7, p0, Landroid/media/MediaSession2$Builder;->mExtras:Landroid/os/Bundle;

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaSession2;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;Landroid/os/Bundle;)V

    .line 630
    :try_start_38
    invoke-static {}, Landroid/media/internal/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 631
    iget-object p0, p0, Landroid/media/MediaSession2$Builder;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/MediaCommunicationManager;

    .line 632
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaCommunicationManager;

    .line 633
    invoke-virtual {v1}, Landroid/media/MediaSession2;->getToken()Landroid/media/Session2Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaCommunicationManager;->notifySession2Created(Landroid/media/Session2Token;)V

    return-object v1

    :catch_50
    move-exception v0

    move-object p0, v0

    goto :goto_65

    .line 635
    :cond_53
    iget-object p0, p0, Landroid/media/MediaSession2$Builder;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/session/MediaSessionManager;

    .line 636
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/session/MediaSessionManager;

    .line 637
    invoke-virtual {v1}, Landroid/media/MediaSession2;->getToken()Landroid/media/Session2Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/session/MediaSessionManager;->notifySession2Created(Landroid/media/Session2Token;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_64} :catch_50

    return-object v1

    .line 640
    :goto_65
    invoke-virtual {v1}, Landroid/media/MediaSession2;->close()V

    .line 641
    throw p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/MediaSession2$Builder;
    .registers 3

    if-eqz p1, :cond_18

    .line 595
    invoke-static {p1}, Landroid/media/MediaSession2;->hasCustomParcelable(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 599
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaSession2$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0

    .line 596
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "extras shouldn\'t contain any custom parcelables"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 593
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "extras shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setId(Ljava/lang/String;)Landroid/media/MediaSession2$Builder;
    .registers 2

    if-eqz p1, :cond_5

    .line 563
    iput-object p1, p0, Landroid/media/MediaSession2$Builder;->mId:Ljava/lang/String;

    return-object p0

    .line 561
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id shouldn\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setSessionActivity(Landroid/app/PendingIntent;)Landroid/media/MediaSession2$Builder;
    .registers 2

    .line 544
    iput-object p1, p0, Landroid/media/MediaSession2$Builder;->mSessionActivity:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public whitelist setSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;)Landroid/media/MediaSession2$Builder;
    .registers 3

    .line 577
    iput-object p1, p0, Landroid/media/MediaSession2$Builder;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 578
    iput-object p2, p0, Landroid/media/MediaSession2$Builder;->mCallback:Landroid/media/MediaSession2$SessionCallback;

    return-object p0
.end method
