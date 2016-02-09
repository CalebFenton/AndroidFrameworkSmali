.class Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
.super Ljava/lang/Object;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;
    }
.end annotation


# instance fields
.field public mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

.field public mFlags:I

.field public mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

.field public final mPi:Landroid/app/PendingIntent;

.field public mRccListener:Landroid/media/session/MediaSession$Callback;

.field public final mSession:Landroid/media/session/MediaSession;

.field final synthetic this$0:Landroid/media/session/MediaSessionLegacyHelper;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionLegacyHelper;Landroid/media/session/MediaSession;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/session/MediaSessionLegacyHelper;
    .param p2, "session"    # Landroid/media/session/MediaSession;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 462
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 463
    iput-object p2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    #@7
    .line 464
    iput-object p3, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mPi:Landroid/app/PendingIntent;

    #@9
    .line 462
    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 468
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    #@3
    if-nez v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 469
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    #@b
    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    #@e
    .line 470
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    #@10
    invoke-virtual {v1}, Landroid/media/session/MediaSession;->release()V

    #@13
    .line 471
    iput-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    #@15
    .line 472
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    #@17
    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->-get1(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/util/ArrayMap;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mPi:Landroid/app/PendingIntent;

    #@1d
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 467
    :cond_0
    :goto_0
    return-void

    #@21
    .line 473
    :cond_1
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    #@23
    if-nez v1, :cond_0

    #@25
    .line 474
    new-instance v1, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    #@27
    invoke-direct {v1, p0, v2}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;-><init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;)V

    #@2a
    iput-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    #@2c
    .line 475
    new-instance v0, Landroid/os/Handler;

    #@2e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@31
    move-result-object v1

    #@32
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@35
    .line 476
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    #@37
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    #@39
    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    #@3c
    goto :goto_0
.end method
