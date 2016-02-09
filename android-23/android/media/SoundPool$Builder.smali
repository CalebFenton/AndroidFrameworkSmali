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
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mMaxStreams:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 563
    const/4 v0, 0x1

    #@4
    iput v0, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    #@6
    .line 573
    return-void
.end method


# virtual methods
.method public build()Landroid/media/SoundPool;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 607
    iget-object v0, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 608
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    #@7
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    #@a
    .line 609
    const/4 v1, 0x1

    #@b
    .line 608
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@15
    .line 611
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    #@17
    iget v1, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    #@19
    iget-object v2, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@1b
    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;Landroid/media/SoundPool;)V

    #@1e
    return-object v0
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 599
    if-nez p1, :cond_0

    #@2
    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Invalid null AudioAttributes"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 602
    :cond_0
    iput-object p1, p0, Landroid/media/SoundPool$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@d
    .line 603
    return-object p0
.end method

.method public setMaxStreams(I)Landroid/media/SoundPool$Builder;
    .locals 2
    .param p1, "maxStreams"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 583
    if-gtz p1, :cond_0

    #@2
    .line 584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 585
    const-string/jumbo v1, "Strictly positive value required for the maximum number of streams"

    #@7
    .line 584
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 587
    :cond_0
    iput p1, p0, Landroid/media/SoundPool$Builder;->mMaxStreams:I

    #@d
    .line 588
    return-object p0
.end method
