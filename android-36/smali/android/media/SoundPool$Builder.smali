.class public Landroid/media/SoundPool$Builder;
.super Ljava/lang/Object;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o mAudioAttributes:Landroid/media/AudioAttributes;

.field private blacklist mContext:Landroid/content/Context;

.field private greylist-max-o mMaxStreams:I

.field private blacklist mSessionId:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    .line 569
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/SoundPool$Builder;->mSessionId:I

    .line 579
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/SoundPool;
    .registers 8

    .line 649
    iget-object v0, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-nez v0, :cond_14

    .line 650
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 651
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 653
    :cond_14
    new-instance v1, Landroid/media/SoundPool;

    iget-object v2, p0, Landroid/media/SoundPool$Builder;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    iget-object v4, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget v5, p0, Landroid/media/SoundPool$Builder;->mSessionId:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/media/SoundPool;-><init>(Landroid/content/Context;ILandroid/media/AudioAttributes;ILandroid/media/SoundPool-IA;)V

    return-object v1
.end method

.method public whitelist setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;
    .registers 4
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 604
    if-eqz p1, :cond_5

    .line 607
    iput-object p1, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 608
    return-object p0

    .line 605
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAudioSessionId(I)Landroid/media/SoundPool$Builder;
    .registers 5
    .param p1, "sessionId"    # I

    .line 625
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-lt p1, v0, :cond_6

    goto :goto_1f

    .line 626
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_1f
    :goto_1f
    iput p1, p0, Landroid/media/SoundPool$Builder;->mSessionId:I

    .line 629
    return-object p0
.end method

.method public whitelist setContext(Landroid/content/Context;)Landroid/media/SoundPool$Builder;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 644
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/media/SoundPool$Builder;->mContext:Landroid/content/Context;

    .line 645
    return-object p0
.end method

.method public whitelist setMaxStreams(I)Landroid/media/SoundPool$Builder;
    .registers 4
    .param p1, "maxStreams"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 588
    if-lez p1, :cond_5

    .line 592
    iput p1, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    .line 593
    return-object p0

    .line 589
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strictly positive value required for the maximum number of streams"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
