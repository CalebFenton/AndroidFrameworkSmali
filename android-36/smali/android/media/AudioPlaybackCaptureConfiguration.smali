.class public final Landroid/media/AudioPlaybackCaptureConfiguration;
.super Ljava/lang/Object;
.source "AudioPlaybackCaptureConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPlaybackCaptureConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAudioMixingRule:Landroid/media/audiopolicy/AudioMixingRule;

.field private final blacklist mProjection:Landroid/media/projection/MediaProjection;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/projection/MediaProjection;)V
    .registers 3
    .param p1, "audioMixingRule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .param p2, "projection"    # Landroid/media/projection/MediaProjection;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Landroid/media/AudioPlaybackCaptureConfiguration;->mAudioMixingRule:Landroid/media/audiopolicy/AudioMixingRule;

    .line 81
    iput-object p2, p0, Landroid/media/AudioPlaybackCaptureConfiguration;->mProjection:Landroid/media/projection/MediaProjection;

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/projection/MediaProjection;Landroid/media/AudioPlaybackCaptureConfiguration-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/AudioPlaybackCaptureConfiguration;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/projection/MediaProjection;)V

    return-void
.end method

.method private blacklist getIntPredicates(ILjava/util/function/ToIntFunction;)[I
    .registers 5
    .param p1, "rule"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/ToIntFunction<",
            "Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;",
            ">;)[I"
        }
    .end annotation

    .line 120
    .local p2, "getPredicate":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;>;"
    iget-object v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration;->mAudioMixingRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMixingRule;->getCriteria()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda0;-><init>(I)V

    .line 121
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 122
    invoke-interface {v0, p2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 120
    return-object v0
.end method

.method static synthetic blacklist lambda$getExcludeUids$3(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)I
    .registers 2
    .param p0, "criterion"    # Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 115
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->getIntProp()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getExcludeUsages$2(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)I
    .registers 2
    .param p0, "criterion"    # Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 109
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getIntPredicates$4(ILandroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)Z
    .registers 3
    .param p0, "rule"    # I
    .param p1, "criterion"    # Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 121
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->getRule()I

    move-result v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static synthetic blacklist lambda$getMatchingUids$1(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)I
    .registers 2
    .param p0, "criterion"    # Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 102
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->getIntProp()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getMatchingUsages$0(Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;)I
    .registers 2
    .param p0, "criterion"    # Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;

    .line 96
    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioMixingRule$AudioMixMatchCriterion;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    return v0
.end method


# virtual methods
.method blacklist createAudioMix(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix;
    .registers 4
    .param p1, "audioFormat"    # Landroid/media/AudioFormat;

    .line 132
    new-instance v0, Landroid/media/audiopolicy/AudioMix$Builder;

    iget-object v1, p0, Landroid/media/AudioPlaybackCaptureConfiguration;->mAudioMixingRule:Landroid/media/audiopolicy/AudioMixingRule;

    invoke-direct {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>(Landroid/media/audiopolicy/AudioMixingRule;)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    .line 134
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v0

    .line 132
    return-object v0
.end method

.method public whitelist getExcludeUids()[I
    .registers 3

    .line 114
    new-instance v0, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda3;-><init>()V

    const v1, 0x8004

    invoke-direct {p0, v1, v0}, Landroid/media/AudioPlaybackCaptureConfiguration;->getIntPredicates(ILjava/util/function/ToIntFunction;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExcludeUsages()[I
    .registers 3

    .line 108
    new-instance v0, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda4;-><init>()V

    const v1, 0x8001

    invoke-direct {p0, v1, v0}, Landroid/media/AudioPlaybackCaptureConfiguration;->getIntPredicates(ILjava/util/function/ToIntFunction;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMatchingUids()[I
    .registers 3

    .line 101
    new-instance v0, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Landroid/media/AudioPlaybackCaptureConfiguration;->getIntPredicates(ILjava/util/function/ToIntFunction;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMatchingUsages()[I
    .registers 3

    .line 95
    new-instance v0, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/media/AudioPlaybackCaptureConfiguration$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/AudioPlaybackCaptureConfiguration;->getIntPredicates(ILjava/util/function/ToIntFunction;)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMediaProjection()Landroid/media/projection/MediaProjection;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/media/AudioPlaybackCaptureConfiguration;->mProjection:Landroid/media/projection/MediaProjection;

    return-object v0
.end method
