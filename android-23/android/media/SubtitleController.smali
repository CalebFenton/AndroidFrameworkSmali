.class public Landroid/media/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleController$Renderer;,
        Landroid/media/SubtitleController$Anchor;,
        Landroid/media/SubtitleController$Listener;,
        Landroid/media/SubtitleController$1;,
        Landroid/media/SubtitleController$2;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final WHAT_HIDE:I = 0x2

.field private static final WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final WHAT_SELECT_TRACK:I = 0x3

.field private static final WHAT_SHOW:I = 0x1


# instance fields
.field private mAnchor:Landroid/media/SubtitleController$Anchor;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/media/SubtitleController$Listener;

.field private mRenderers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTrack:Landroid/media/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroid/media/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityIsExplicit:Z


# direct methods
.method static synthetic -wrap0(Landroid/media/SubtitleController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/SubtitleController;->doHide()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/media/SubtitleController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/SubtitleController;->doSelectDefaultTrack()V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V
    .locals 0
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/SubtitleController;->doSelectTrack(Landroid/media/SubtitleTrack;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/media/SubtitleController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/SubtitleController;->doShow()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/media/SubtitleController;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/media/SubtitleController;->-assertionsDisabled:Z

    #@b
    .line 37
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeProvider"    # Landroid/media/MediaTimeProvider;
    .param p3, "listener"    # Landroid/media/SubtitleController$Listener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 51
    new-instance v0, Landroid/media/SubtitleController$1;

    #@6
    invoke-direct {v0, p0}, Landroid/media/SubtitleController$1;-><init>(Landroid/media/SubtitleController;)V

    #@9
    iput-object v0, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    #@b
    .line 74
    new-instance v0, Landroid/media/SubtitleController$2;

    #@d
    invoke-direct {v0, p0}, Landroid/media/SubtitleController$2;-><init>(Landroid/media/SubtitleController;)V

    #@10
    .line 73
    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@12
    .line 261
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    #@14
    .line 262
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    #@16
    .line 98
    iput-object p2, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@18
    .line 99
    iput-object p3, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    #@1a
    .line 101
    new-instance v0, Ljava/util/Vector;

    #@1c
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    #@21
    .line 102
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mShowing:Z

    #@23
    .line 103
    new-instance v0, Ljava/util/Vector;

    #@25
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@28
    iput-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    #@2a
    .line 105
    const-string/jumbo v0, "captioning"

    #@2d
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v0

    #@31
    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    #@33
    .line 104
    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    #@35
    .line 97
    return-void
.end method

.method private checkAnchorLooper()V
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 483
    sget-boolean v2, Landroid/media/SubtitleController;->-assertionsDisabled:Z

    #@4
    if-nez v2, :cond_1

    #@6
    iget-object v2, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@8
    if-eqz v2, :cond_0

    #@a
    move v2, v0

    #@b
    :goto_0
    if-nez v2, :cond_1

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    const-string/jumbo v1, "Should have a looper already"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@15
    throw v0

    #@16
    :cond_0
    move v2, v1

    #@17
    goto :goto_0

    #@18
    .line 484
    :cond_1
    sget-boolean v2, Landroid/media/SubtitleController;->-assertionsDisabled:Z

    #@1a
    if-nez v2, :cond_3

    #@1c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1f
    move-result-object v2

    #@20
    iget-object v3, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@22
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@25
    move-result-object v3

    #@26
    if-ne v2, v3, :cond_2

    #@28
    :goto_1
    if-nez v0, :cond_3

    #@2a
    new-instance v0, Ljava/lang/AssertionError;

    #@2c
    const-string/jumbo v1, "Must be called from the anchor\'s looper"

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@32
    throw v0

    #@33
    :cond_2
    move v0, v1

    #@34
    goto :goto_1

    #@35
    .line 482
    :cond_3
    return-void
.end method

.method private doHide()V
    .locals 1

    #@0
    .prologue
    .line 369
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    #@3
    .line 370
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 371
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@9
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    #@c
    .line 373
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    #@f
    .line 368
    return-void
.end method

.method private doSelectDefaultTrack()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 270
    iget-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    #@3
    if-eqz v1, :cond_4

    #@5
    .line 273
    iget-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    #@7
    if-nez v1, :cond_2

    #@9
    .line 274
    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    #@b
    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 275
    iget-object v1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@13
    if-eqz v1, :cond_3

    #@15
    .line 276
    iget-object v1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@17
    invoke-virtual {v1}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    #@1a
    move-result-object v1

    #@1b
    .line 277
    const-string/jumbo v2, "is-forced-subtitle"

    #@1e
    .line 276
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    #@27
    .line 283
    :cond_1
    :goto_0
    iput-boolean v3, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    #@29
    .line 285
    :cond_2
    return-void

    #@2a
    .line 279
    :cond_3
    iget-object v1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 280
    iget-object v1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@30
    invoke-virtual {v1}, Landroid/media/SubtitleTrack;->getTrackType()I

    #@33
    move-result v1

    #@34
    const/4 v2, 0x4

    #@35
    if-ne v1, v2, :cond_1

    #@37
    .line 281
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    #@3a
    goto :goto_0

    #@3b
    .line 291
    :cond_4
    invoke-virtual {p0}, Landroid/media/SubtitleController;->getDefaultTrack()Landroid/media/SubtitleTrack;

    #@3e
    move-result-object v0

    #@3f
    .line 292
    .local v0, "track":Landroid/media/SubtitleTrack;
    if-eqz v0, :cond_5

    #@41
    .line 293
    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    #@44
    .line 294
    iput-boolean v3, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    #@46
    .line 295
    iget-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    #@48
    if-nez v1, :cond_5

    #@4a
    .line 296
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    #@4d
    .line 297
    iput-boolean v3, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    #@4f
    .line 269
    :cond_5
    return-void
.end method

.method private doSelectTrack(Landroid/media/SubtitleTrack;)V
    .locals 2
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 163
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    #@4
    .line 164
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@6
    if-ne v0, p1, :cond_0

    #@8
    .line 165
    return-void

    #@9
    .line 168
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 169
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@f
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    #@12
    .line 170
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@14
    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    #@17
    .line 173
    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@19
    .line 174
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 175
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    #@1f
    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    #@26
    .line 178
    :cond_2
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@28
    if-eqz v0, :cond_3

    #@2a
    .line 179
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@2c
    iget-object v1, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    #@2e
    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    #@31
    .line 180
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@33
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    #@36
    .line 183
    :cond_3
    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    #@38
    if-eqz v0, :cond_4

    #@3a
    .line 184
    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    #@3c
    invoke-interface {v0, p1}, Landroid/media/SubtitleController$Listener;->onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V

    #@3f
    .line 162
    :cond_4
    return-void
.end method

.method private doShow()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 352
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    #@3
    .line 353
    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    #@5
    .line 354
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 355
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@b
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    #@e
    .line 351
    :cond_0
    return-void
.end method

.method private getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 136
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 137
    return-object v1

    #@6
    .line 139
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@8
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Message;

    #@0
    .prologue
    .line 488
    sget-boolean v0, Landroid/media/SubtitleController;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v1, "Should have a looper already"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0

    #@16
    .line 489
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@19
    move-result-object v0

    #@1a
    iget-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@1c
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@1f
    move-result-object v1

    #@20
    if-ne v0, v1, :cond_2

    #@22
    .line 490
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@24
    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    #@27
    .line 487
    :goto_1
    return-void

    #@28
    .line 492
    :cond_2
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@2a
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@2d
    goto :goto_1
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 7
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 322
    iget-object v4, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    #@3
    monitor-enter v4

    #@4
    .line 323
    :try_start_0
    iget-object v3, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    #@6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "renderer$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_2

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/media/SubtitleController$Renderer;

    #@16
    .line 324
    .local v0, "renderer":Landroid/media/SubtitleController$Renderer;
    invoke-virtual {v0, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 325
    invoke-virtual {v0, p1}, Landroid/media/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    #@1f
    move-result-object v2

    #@20
    .line 326
    .local v2, "track":Landroid/media/SubtitleTrack;
    if-eqz v2, :cond_0

    #@22
    .line 327
    iget-object v5, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    #@24
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@25
    .line 328
    :try_start_1
    iget-object v3, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    #@27
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_1

    #@2d
    .line 329
    iget-object v3, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    #@2f
    .line 330
    iget-object v6, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@31
    .line 329
    invoke-virtual {v3, v6}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    #@34
    .line 332
    :cond_1
    iget-object v3, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    #@36
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3a
    monitor-exit v4

    #@3b
    .line 334
    return-object v2

    #@3c
    .line 327
    :catchall_0
    move-exception v3

    #@3d
    :try_start_3
    monitor-exit v5

    #@3e
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@3f
    .line 322
    .end local v0    # "renderer":Landroid/media/SubtitleController$Renderer;
    .end local v1    # "renderer$iterator":Ljava/util/Iterator;
    .end local v2    # "track":Landroid/media/SubtitleTrack;
    :catchall_1
    move-exception v3

    #@40
    monitor-exit v4

    #@41
    throw v3

    #@42
    .restart local v1    # "renderer$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    #@43
    .line 339
    return-object v5
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    #@2
    .line 111
    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@4
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    #@7
    .line 112
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@a
    .line 109
    return-void
.end method

.method public getDefaultTrack()Landroid/media/SubtitleTrack;
    .locals 18

    #@0
    .prologue
    .line 212
    const/4 v3, 0x0

    #@1
    .line 213
    .local v3, "bestTrack":Landroid/media/SubtitleTrack;
    const/4 v2, -0x1

    #@2
    .line 215
    .local v2, "bestScore":I
    move-object/from16 v0, p0

    #@4
    iget-object v15, v0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    #@6
    invoke-virtual {v15}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    #@9
    move-result-object v12

    #@a
    .line 216
    .local v12, "selectedLocale":Ljava/util/Locale;
    move-object v9, v12

    #@b
    .line 217
    .local v9, "locale":Ljava/util/Locale;
    if-nez v9, :cond_0

    #@d
    .line 218
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@10
    move-result-object v9

    #@11
    .line 220
    :cond_0
    move-object/from16 v0, p0

    #@13
    iget-object v15, v0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    #@15
    invoke-virtual {v15}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    #@18
    move-result v15

    #@19
    if-eqz v15, :cond_5

    #@1b
    const/4 v11, 0x0

    #@1c
    .line 222
    .local v11, "selectForced":Z
    :goto_0
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    #@20
    move-object/from16 v17, v0

    #@22
    monitor-enter v17

    #@23
    .line 223
    :try_start_0
    move-object/from16 v0, p0

    #@25
    iget-object v15, v0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    #@27
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v14

    #@2b
    .end local v3    # "bestTrack":Landroid/media/SubtitleTrack;
    .local v14, "track$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v15

    #@2f
    if-eqz v15, :cond_e

    #@31
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v13

    #@35
    check-cast v13, Landroid/media/SubtitleTrack;

    #@37
    .line 224
    .local v13, "track":Landroid/media/SubtitleTrack;
    invoke-virtual {v13}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    #@3a
    move-result-object v5

    #@3b
    .line 225
    .local v5, "format":Landroid/media/MediaFormat;
    const-string/jumbo v15, "language"

    #@3e
    invoke-virtual {v5, v15}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    .line 227
    .local v7, "language":Ljava/lang/String;
    const-string/jumbo v15, "is-forced-subtitle"

    #@45
    const/16 v16, 0x0

    #@47
    move/from16 v0, v16

    #@49
    invoke-virtual {v5, v15, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    #@4c
    move-result v15

    #@4d
    if-eqz v15, :cond_6

    #@4f
    const/4 v4, 0x1

    #@50
    .line 229
    .local v4, "forced":Z
    :goto_2
    const-string/jumbo v15, "is-autoselect"

    #@53
    const/16 v16, 0x1

    #@55
    move/from16 v0, v16

    #@57
    invoke-virtual {v5, v15, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    #@5a
    move-result v15

    #@5b
    if-eqz v15, :cond_7

    #@5d
    const/4 v1, 0x1

    #@5e
    .line 231
    .local v1, "autoselect":Z
    :goto_3
    const-string/jumbo v15, "is-default"

    #@61
    const/16 v16, 0x0

    #@63
    move/from16 v0, v16

    #@65
    invoke-virtual {v5, v15, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    #@68
    move-result v15

    #@69
    if-eqz v15, :cond_8

    #@6b
    const/4 v6, 0x1

    #@6c
    .line 234
    .local v6, "is_default":Z
    :goto_4
    if-eqz v9, :cond_9

    #@6e
    .line 235
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@71
    move-result-object v15

    #@72
    const-string/jumbo v16, ""

    #@75
    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v15

    #@79
    .line 234
    if-nez v15, :cond_9

    #@7b
    .line 236
    invoke-virtual {v9}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    #@7e
    move-result-object v15

    #@7f
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@82
    move-result v15

    #@83
    .line 234
    if-nez v15, :cond_9

    #@85
    .line 237
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@88
    move-result-object v15

    #@89
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8c
    move-result v8

    #@8d
    .line 239
    :goto_5
    if-eqz v4, :cond_a

    #@8f
    const/4 v15, 0x0

    #@90
    move/from16 v16, v15

    #@92
    .line 240
    :goto_6
    if-nez v12, :cond_b

    #@94
    if-eqz v6, :cond_b

    #@96
    const/4 v15, 0x4

    #@97
    .line 239
    :goto_7
    add-int v16, v16, v15

    #@99
    .line 241
    if-eqz v1, :cond_c

    #@9b
    const/4 v15, 0x0

    #@9c
    .line 239
    :goto_8
    add-int v16, v16, v15

    #@9e
    .line 241
    if-eqz v8, :cond_d

    #@a0
    const/4 v15, 0x1

    #@a1
    .line 239
    :goto_9
    add-int v10, v16, v15

    #@a3
    .line 243
    .local v10, "score":I
    if-eqz v11, :cond_2

    #@a5
    if-eqz v4, :cond_1

    #@a7
    .line 248
    :cond_2
    if-nez v12, :cond_3

    #@a9
    if-nez v6, :cond_4

    #@ab
    .line 249
    :cond_3
    if-eqz v8, :cond_1

    #@ad
    .line 250
    if-nez v1, :cond_4

    #@af
    if-nez v4, :cond_4

    #@b1
    if-eqz v12, :cond_1

    #@b3
    .line 251
    :cond_4
    if-le v10, v2, :cond_1

    #@b5
    .line 252
    move v2, v10

    #@b6
    .line 253
    move-object v3, v13

    #@b7
    .local v3, "bestTrack":Landroid/media/SubtitleTrack;
    goto/16 :goto_1

    #@b9
    .line 220
    .end local v1    # "autoselect":Z
    .end local v4    # "forced":Z
    .end local v5    # "format":Landroid/media/MediaFormat;
    .end local v6    # "is_default":Z
    .end local v7    # "language":Ljava/lang/String;
    .end local v10    # "score":I
    .end local v11    # "selectForced":Z
    .end local v13    # "track":Landroid/media/SubtitleTrack;
    .end local v14    # "track$iterator":Ljava/util/Iterator;
    .local v3, "bestTrack":Landroid/media/SubtitleTrack;
    :cond_5
    const/4 v11, 0x1

    #@ba
    .restart local v11    # "selectForced":Z
    goto/16 :goto_0

    #@bc
    .line 227
    .end local v3    # "bestTrack":Landroid/media/SubtitleTrack;
    .restart local v5    # "format":Landroid/media/MediaFormat;
    .restart local v7    # "language":Ljava/lang/String;
    .restart local v13    # "track":Landroid/media/SubtitleTrack;
    .restart local v14    # "track$iterator":Ljava/util/Iterator;
    :cond_6
    const/4 v4, 0x0

    #@bd
    .restart local v4    # "forced":Z
    goto :goto_2

    #@be
    .line 229
    :cond_7
    const/4 v1, 0x0

    #@bf
    .restart local v1    # "autoselect":Z
    goto :goto_3

    #@c0
    .line 231
    :cond_8
    const/4 v6, 0x0

    #@c1
    .restart local v6    # "is_default":Z
    goto :goto_4

    #@c2
    .line 234
    :cond_9
    const/4 v8, 0x1

    #@c3
    .local v8, "languageMatches":Z
    goto :goto_5

    #@c4
    .line 239
    .end local v8    # "languageMatches":Z
    :cond_a
    const/16 v15, 0x8

    #@c6
    move/from16 v16, v15

    #@c8
    goto :goto_6

    #@c9
    .line 240
    :cond_b
    const/4 v15, 0x0

    #@ca
    goto :goto_7

    #@cb
    .line 241
    :cond_c
    const/4 v15, 0x2

    #@cc
    goto :goto_8

    #@cd
    :cond_d
    const/4 v15, 0x0

    #@ce
    goto :goto_9

    #@cf
    .end local v1    # "autoselect":Z
    .end local v4    # "forced":Z
    .end local v5    # "format":Landroid/media/MediaFormat;
    .end local v6    # "is_default":Z
    .end local v7    # "language":Ljava/lang/String;
    .end local v13    # "track":Landroid/media/SubtitleTrack;
    :cond_e
    monitor-exit v17

    #@d0
    .line 258
    return-object v3

    #@d1
    .line 222
    .end local v14    # "track$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v15

    #@d2
    monitor-exit v17

    #@d3
    throw v15
.end method

.method public getSelectedTrack()Landroid/media/SubtitleTrack;
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    #@2
    return-object v0
.end method

.method public getTracks()[Landroid/media/SubtitleTrack;
    .locals 3

    #@0
    .prologue
    .line 121
    iget-object v2, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    #@2
    monitor-enter v2

    #@3
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    #@5
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@8
    move-result v1

    #@9
    new-array v0, v1, [Landroid/media/SubtitleTrack;

    #@b
    .line 123
    .local v0, "tracks":[Landroid/media/SubtitleTrack;
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v2

    #@11
    .line 124
    return-object v0

    #@12
    .line 121
    .end local v0    # "tracks":[Landroid/media/SubtitleTrack;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit v2

    #@14
    throw v1
.end method

.method public hasRendererFor(Landroid/media/MediaFormat;)Z
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 427
    iget-object v3, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    #@2
    monitor-enter v3

    #@3
    .line 429
    :try_start_0
    iget-object v2, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "renderer$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/media/SubtitleController$Renderer;

    #@15
    .line 430
    .local v0, "renderer":Landroid/media/SubtitleController$Renderer;
    invoke-virtual {v0, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 431
    const/4 v2, 0x1

    #@1c
    monitor-exit v3

    #@1d
    return v2

    #@1e
    .line 434
    .end local v0    # "renderer":Landroid/media/SubtitleController$Renderer;
    :cond_1
    const/4 v2, 0x0

    #@1f
    monitor-exit v3

    #@20
    return v2

    #@21
    .line 427
    .end local v1    # "renderer$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@22
    monitor-exit v3

    #@23
    throw v2
.end method

.method public hide()V
    .locals 2

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    #@a
    .line 364
    return-void
.end method

.method public registerRenderer(Landroid/media/SubtitleController$Renderer;)V
    .locals 2
    .param p1, "renderer"    # Landroid/media/SubtitleController$Renderer;

    #@0
    .prologue
    .line 416
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    #@2
    monitor-enter v1

    #@3
    .line 418
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    #@5
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 420
    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    monitor-exit v1

    #@11
    .line 415
    return-void

    #@12
    .line 416
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 304
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    #@4
    .line 305
    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    #@7
    .line 306
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    #@b
    .line 307
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    #@d
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    #@10
    .line 308
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    #@12
    .line 309
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    #@14
    .line 310
    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    #@16
    .line 311
    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    #@18
    .line 310
    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    #@1b
    .line 303
    return-void
.end method

.method public selectDefaultTrack()V
    .locals 2

    #@0
    .prologue
    .line 266
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    #@a
    .line 265
    return-void
.end method

.method public selectTrack(Landroid/media/SubtitleTrack;)Z
    .locals 2
    .param p1, "track"    # Landroid/media/SubtitleTrack;

    #@0
    .prologue
    .line 154
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 158
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@c
    const/4 v1, 0x3

    #@d
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    #@14
    .line 159
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 155
    :cond_1
    const/4 v0, 0x0

    #@17
    return v0
.end method

.method public setAnchor(Landroid/media/SubtitleController$Anchor;)V
    .locals 3
    .param p1, "anchor"    # Landroid/media/SubtitleController$Anchor;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 465
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    #@3
    if-ne v0, p1, :cond_0

    #@5
    .line 466
    return-void

    #@6
    .line 469
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 470
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    #@d
    .line 471
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    #@f
    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    #@12
    .line 473
    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    #@14
    .line 474
    iput-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@16
    .line 475
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 476
    new-instance v0, Landroid/os/Handler;

    #@1c
    iget-object v1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    #@1e
    invoke-interface {v1}, Landroid/media/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    #@24
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@27
    iput-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@29
    .line 477
    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    #@2c
    .line 478
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    #@2e
    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    #@31
    move-result-object v1

    #@32
    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    #@35
    .line 464
    :cond_2
    return-void
.end method

.method public show()V
    .locals 2

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    #@a
    .line 347
    return-void
.end method
