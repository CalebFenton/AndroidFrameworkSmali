.class final Landroid/view/ViewRootImpl$QueuedInputEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueuedInputEvent"
.end annotation


# static fields
.field public static final greylist-max-o FLAG_DEFERRED:I = 0x2

.field public static final greylist-max-o FLAG_DELIVER_POST_IME:I = 0x1

.field public static final greylist-max-o FLAG_FINISHED:I = 0x4

.field public static final greylist-max-o FLAG_FINISHED_HANDLED:I = 0x8

.field public static final blacklist FLAG_MODIFIED_FOR_COMPATIBILITY:I = 0x40

.field public static final blacklist FLAG_PRE_IME_ONLY:I = 0x80

.field public static final greylist-max-o FLAG_RESYNTHESIZED:I = 0x10

.field public static final greylist-max-o FLAG_UNHANDLED:I = 0x20


# instance fields
.field public greylist-max-o mEvent:Landroid/view/InputEvent;

.field public greylist-max-o mFlags:I

.field public greylist-max-o mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field public greylist-max-o mReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 10311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>()V

    return-void
.end method

.method private greylist-max-o flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "hasPrevious"    # Z
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .line 10372
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_12

    .line 10373
    if-eqz p3, :cond_d

    .line 10374
    const-string/jumbo v0, "|"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10376
    :cond_d
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10377
    const/4 v0, 0x1

    return v0

    .line 10379
    :cond_12
    return p3
.end method


# virtual methods
.method public blacklist forPreImeOnly()Z
    .registers 2

    .line 10328
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    .line 10329
    const/4 v0, 0x1

    return v0

    .line 10331
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o shouldSendToSynthesizer()Z
    .registers 2

    .line 10343
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    .line 10344
    const/4 v0, 0x1

    return v0

    .line 10347
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o shouldSkipIme()Z
    .registers 4

    .line 10335
    iget v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 10336
    return v1

    .line 10338
    :cond_7
    iget-object v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 10339
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 10338
    :goto_18
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 10352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueuedInputEvent{flags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10353
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 10354
    .local v1, "hasPrevious":Z
    const-string v2, "DELIVER_POST_IME"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10355
    const-string v2, "DEFERRED"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10356
    const-string v2, "FINISHED"

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10357
    const-string v2, "FINISHED_HANDLED"

    const/16 v3, 0x8

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10358
    const-string v2, "RESYNTHESIZED"

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10359
    const-string v2, "UNHANDLED"

    const/16 v3, 0x20

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10360
    const-string v2, "FLAG_PRE_IME_ONLY"

    const/16 v3, 0x80

    invoke-direct {p0, v2, v3, v1, v0}, Landroid/view/ViewRootImpl$QueuedInputEvent;->flagToString(Ljava/lang/String;IZLjava/lang/StringBuilder;)Z

    move-result v1

    .line 10361
    if-nez v1, :cond_44

    .line 10362
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10364
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", hasNextQueuedEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const-string/jumbo v4, "true"

    const-string v5, "false"

    if-eqz v3, :cond_5a

    move-object v3, v4

    goto :goto_5b

    :cond_5a
    move-object v3, v5

    :goto_5b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", hasInputEventReceiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v3, :cond_76

    goto :goto_77

    :cond_76
    move-object v4, v5

    :goto_77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", mEvent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
