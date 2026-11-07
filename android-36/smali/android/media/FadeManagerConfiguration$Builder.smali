.class public final Landroid/media/FadeManagerConfiguration$Builder;
.super Ljava/lang/Object;
.source "FadeManagerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/FadeManagerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist DEFAULT_DELAY_FADE_IN_OFFENDERS_MS:J = 0x7d0L

.field private static final blacklist DEFAULT_FADEABLE_USAGES:Landroid/util/IntArray;

.field private static final blacklist DEFAULT_UNFADEABLE_CONTENT_TYPES:Landroid/util/IntArray;

.field private static final blacklist DEFAULT_UNFADEABLE_PLAYER_TYPES:Landroid/util/IntArray;

.field private static final blacklist INVALID_INDEX:I = -0x1

.field private static final blacklist IS_BUILDER_USED_FIELD_SET:J = 0x1L

.field private static final blacklist IS_FADEABLE_USAGES_FIELD_SET:J = 0x2L

.field private static final blacklist IS_UNFADEABLE_CONTENT_TYPE_FIELD_SET:J = 0x4L


# instance fields
.field private blacklist mAttrToFadeWrapperMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioAttributes;",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mFadeInDelayForOffendersMillis:J

.field private blacklist mFadeInDurationMillis:J

.field private blacklist mFadeOutDurationMillis:J

.field private blacklist mFadeState:I

.field private blacklist mFadeableUsages:Landroid/util/IntArray;

.field private blacklist mUnfadeableAudioAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnfadeableContentTypes:Landroid/util/IntArray;

.field private blacklist mUnfadeablePlayerTypes:Landroid/util/IntArray;

.field private blacklist mUnfadeableUids:Landroid/util/IntArray;

.field private blacklist mUsageToFadeWrapperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 780
    const/16 v0, 0xd

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    sput-object v0, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Landroid/util/IntArray;

    .line 785
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    sput-object v1, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_CONTENT_TYPES:Landroid/util/IntArray;

    .line 789
    const/16 v1, 0xe

    filled-new-array {v1, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v0

    sput-object v0, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_FADEABLE_USAGES:Landroid/util/IntArray;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    .line 795
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDelayForOffendersMillis:J

    .line 800
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    .line 802
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    .line 804
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    .line 805
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    .line 807
    sget-object v2, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Landroid/util/IntArray;

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    .line 808
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    .line 809
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    .line 816
    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeOutDurationMillis:J

    .line 817
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDurationMillis:J

    .line 818
    return-void
.end method

.method public constructor whitelist <init>(JJ)V
    .registers 7
    .param p1, "fadeOutDurationMillis"    # J
    .param p3, "fadeInDurationMills"    # J

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    .line 795
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDelayForOffendersMillis:J

    .line 800
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    .line 802
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    .line 804
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    .line 805
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    .line 807
    sget-object v0, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    .line 808
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    .line 828
    iput-wide p1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeOutDurationMillis:J

    .line 829
    iput-wide p3, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDurationMillis:J

    .line 830
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/FadeManagerConfiguration;)V
    .registers 4
    .param p1, "fmc"    # Landroid/media/FadeManagerConfiguration;

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    .line 795
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDelayForOffendersMillis:J

    .line 800
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    .line 802
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    .line 804
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    .line 805
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    .line 807
    sget-object v0, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    .line 808
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    .line 839
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmFadeState(Landroid/media/FadeManagerConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    .line 840
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmUsageToFadeWrapperMap(Landroid/media/FadeManagerConfiguration;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/FadeManagerConfiguration$Builder;->copyUsageToFadeWrapperMapInternal(Landroid/util/SparseArray;)V

    .line 841
    new-instance v0, Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmAttrToFadeWrapperMap(Landroid/media/FadeManagerConfiguration;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    .line 843
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmFadeableUsages(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    .line 844
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    .line 845
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmUnfadeableContentTypes(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    .line 846
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    .line 847
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmUnfadeablePlayerTypes(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    .line 848
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmUnfadeableUids(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    .line 849
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmUnfadeableAudioAttributes(Landroid/media/FadeManagerConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    .line 850
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmFadeOutDurationMillis(Landroid/media/FadeManagerConfiguration;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeOutDurationMillis:J

    .line 851
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$fgetmFadeInDurationMillis(Landroid/media/FadeManagerConfiguration;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDurationMillis:J

    .line 852
    return-void
.end method

.method private blacklist checkNotSet(J)Z
    .registers 7
    .param p1, "flag"    # J

    .line 1386
    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private blacklist cleanupInactiveWrapperEntries(I)V
    .registers 4
    .param p1, "usage"    # I

    .line 1429
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    .line 1431
    .local v0, "fmcw":Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isInactive()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1432
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1434
    :cond_15
    return-void
.end method

.method private blacklist cleanupInactiveWrapperEntries(Landroid/media/AudioAttributes;)V
    .registers 4
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 1437
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    .line 1439
    .local v0, "fmcw":Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isInactive()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1440
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    :cond_15
    return-void
.end method

.method private blacklist copyUsageToFadeWrapperMapInternal(Landroid/util/SparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;)V"
        }
    .end annotation

    .line 1465
    .local p1, "usageToFadeWrapperMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1466
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    .line 1467
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    invoke-direct {v3, v4}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;-><init>(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V

    .line 1466
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1465
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1469
    .end local v0    # "index":I
    :cond_1e
    return-void
.end method

.method private blacklist createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;
    .registers 7
    .param p1, "duration"    # J
    .param p3, "isFadeIn"    # Z

    .line 1408
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 1409
    const/4 v0, 0x0

    return-object v0

    .line 1412
    :cond_8
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 1413
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 1414
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 1415
    invoke-virtual {v0, p1, p2}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 1417
    .local v0, "builder":Landroid/media/VolumeShaper$Configuration$Builder;
    const/4 v1, 0x3

    if-eqz p3, :cond_2b

    .line 1418
    new-array v2, v1, [F

    fill-array-data v2, :array_3e

    new-array v1, v1, [F

    fill-array-data v1, :array_48

    invoke-virtual {v0, v2, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    goto :goto_38

    .line 1421
    :cond_2b
    new-array v2, v1, [F

    fill-array-data v2, :array_52

    new-array v1, v1, [F

    fill-array-data v1, :array_5c

    invoke-virtual {v0, v2, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 1425
    :goto_38
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v1

    return-object v1

    nop

    :array_3e
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_48
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    :array_52
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_5c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
        0x0
    .end array-data
.end method

.method private blacklist getFadeVolShaperConfigWrapperForAttr(Landroid/media/AudioAttributes;)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;
    .registers 4
    .param p1, "attr"    # Landroid/media/AudioAttributes;

    .line 1399
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1400
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    new-instance v1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    invoke-direct {v1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    :cond_12
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    return-object v0
.end method

.method private blacklist getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;
    .registers 4
    .param p1, "usage"    # I

    .line 1390
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1391
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    new-instance v1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    invoke-direct {v1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1393
    :cond_12
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    return-object v0
.end method

.method private static blacklist isGeneric(Landroid/media/AudioAttributes;)Z
    .registers 2
    .param p0, "attr"    # Landroid/media/AudioAttributes;

    .line 1549
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1550
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    if-nez v0, :cond_1e

    .line 1551
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 1552
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 1549
    :goto_1f
    return v0
.end method

.method private blacklist setFlag(J)V
    .registers 5
    .param p1, "flag"    # J

    .line 1382
    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mBuilderFieldsSet:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mBuilderFieldsSet:J

    .line 1383
    return-void
.end method

.method private blacklist setMissingVolShaperConfigsForWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V
    .registers 5
    .param p1, "wrapper"    # Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    .line 1453
    invoke-virtual {p1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isFadeOutConfigActive()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1454
    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeOutDurationMillis:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeOutVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    .line 1457
    :cond_10
    invoke-virtual {p1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isFadeInConfigActive()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1458
    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDurationMillis:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeInVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    .line 1461
    :cond_20
    return-void
.end method

.method private blacklist setVolShaperConfigsForUsages(Landroid/util/IntArray;)V
    .registers 4
    .param p1, "usages"    # Landroid/util/IntArray;

    .line 1446
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 1447
    nop

    .line 1448
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v1

    .line 1447
    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setMissingVolShaperConfigsForWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V

    .line 1446
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1450
    .end local v0    # "index":I
    :cond_16
    return-void
.end method

.method private blacklist validateContentType(I)V
    .registers 5
    .param p1, "contentType"    # I

    .line 1494
    invoke-static {p1}, Landroid/media/AudioAttributes;->isSdkContentType(I)Z

    move-result v0

    .line 1495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1494
    const-string v2, "Invalid content type: "

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1496
    return-void
.end method

.method private blacklist validateContentTypes(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1488
    .local p1, "contentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1489
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->validateContentType(I)V

    .line 1488
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1491
    .end local v0    # "index":I
    :cond_17
    return-void
.end method

.method private blacklist validateFadeConfigurations()V
    .registers 1

    .line 1499
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration$Builder;->validateFadeableUsages()V

    .line 1500
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration$Builder;->validateFadeVolumeShaperConfigsWrappers()V

    .line 1501
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration$Builder;->validateUnfadeableAudioAttributes()V

    .line 1502
    return-void
.end method

.method private blacklist validateFadeState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 1472
    packed-switch p1, :pswitch_data_1e

    .line 1477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fade state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1475
    :pswitch_1c
    nop

    .line 1479
    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private blacklist validateFadeVolumeShaperConfigsWrappers()V
    .registers 3

    .line 1520
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1521
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    .line 1522
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v1

    .line 1521
    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setMissingVolShaperConfigsForWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V

    .line 1520
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1526
    .end local v0    # "index":I
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_1a
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1527
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    .line 1528
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForAttr(Landroid/media/AudioAttributes;)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v1

    .line 1527
    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setMissingVolShaperConfigsForWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V

    .line 1526
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1530
    .end local v0    # "index":I
    :cond_34
    return-void
.end method

.method private blacklist validateFadeableUsages()V
    .registers 3

    .line 1507
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    const-string v1, "Fadeable usage list cannot be empty when state set to enabled"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    .line 1510
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_c
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 1511
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    .line 1512
    invoke-virtual {v1, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v1

    .line 1511
    invoke-direct {p0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setMissingVolShaperConfigsForWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1514
    .end local v0    # "index":I
    :cond_24
    return-void
.end method

.method private blacklist validateUnfadeableAudioAttributes()V
    .registers 7

    .line 1537
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 1538
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioAttributes;

    .line 1539
    .local v1, "targetAttr":Landroid/media/AudioAttributes;
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result v2

    .line 1540
    .local v2, "usage":I
    iget-object v3, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->contains(I)Z

    move-result v3

    .line 1542
    .local v3, "isFadeableUsage":Z
    if-eqz v3, :cond_28

    if-eqz v3, :cond_26

    .line 1543
    invoke-static {v1}, Landroid/media/FadeManagerConfiguration$Builder;->isGeneric(Landroid/media/AudioAttributes;)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_28

    :cond_26
    const/4 v4, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v4, 0x1

    .line 1542
    :goto_29
    const-string v5, "Unfadeable audio attributes cannot be generic of the fadeable usage"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1537
    .end local v1    # "targetAttr":Landroid/media/AudioAttributes;
    .end local v2    # "usage":I
    .end local v3    # "isFadeableUsage":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1546
    .end local v0    # "index":I
    :cond_31
    return-void
.end method

.method private blacklist validateUsages(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1482
    .local p1, "usages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 1483
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    .line 1482
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1485
    .end local v0    # "index":I
    :cond_17
    return-void
.end method


# virtual methods
.method public whitelist addFadeableUsage(I)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 4
    .param p1, "usage"    # I

    .line 1137
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    .line 1138
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    .line 1139
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1140
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 1142
    :cond_15
    return-object p0
.end method

.method public whitelist addUnfadeableAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 3
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 1309
    const-string v0, "Audio attributes cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1310
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1311
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    :cond_12
    return-object p0
.end method

.method public whitelist addUnfadeableContentType(I)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 4
    .param p1, "contentType"    # I

    .line 1197
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->validateContentType(I)V

    .line 1198
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    .line 1199
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1200
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 1202
    :cond_15
    return-object p0
.end method

.method public whitelist addUnfadeableUid(I)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 3
    .param p1, "uid"    # I

    .line 1249
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1250
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 1252
    :cond_d
    return-object p0
.end method

.method public whitelist build()Landroid/media/FadeManagerConfiguration;
    .registers 19

    .line 1357
    move-object/from16 v0, p0

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->checkNotSet(J)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1362
    invoke-direct {v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    .line 1364
    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->checkNotSet(J)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1365
    sget-object v1, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_FADEABLE_USAGES:Landroid/util/IntArray;

    iput-object v1, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    .line 1366
    iget-object v1, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-direct {v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setVolShaperConfigsForUsages(Landroid/util/IntArray;)V

    .line 1369
    :cond_1e
    const-wide/16 v1, 0x4

    invoke-direct {v0, v1, v2}, Landroid/media/FadeManagerConfiguration$Builder;->checkNotSet(J)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1370
    sget-object v1, Landroid/media/FadeManagerConfiguration$Builder;->DEFAULT_UNFADEABLE_CONTENT_TYPES:Landroid/util/IntArray;

    iput-object v1, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    .line 1373
    :cond_2a
    invoke-direct {v0}, Landroid/media/FadeManagerConfiguration$Builder;->validateFadeConfigurations()V

    .line 1375
    new-instance v2, Landroid/media/FadeManagerConfiguration;

    iget v3, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    iget-wide v4, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeOutDurationMillis:J

    iget-wide v6, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDurationMillis:J

    iget-wide v8, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDelayForOffendersMillis:J

    iget-object v10, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    iget-object v11, v0, Landroid/media/FadeManagerConfiguration$Builder;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    iget-object v12, v0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    iget-object v13, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    iget-object v14, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    iget-object v15, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    iget-object v1, v0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    const/16 v17, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v2 .. v17}, Landroid/media/FadeManagerConfiguration;-><init>(IJJJLandroid/util/SparseArray;Landroid/util/ArrayMap;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Ljava/util/List;Landroid/media/FadeManagerConfiguration-IA;)V

    return-object v2

    .line 1358
    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist clearFadeableUsages()Landroid/media/FadeManagerConfiguration$Builder;
    .registers 3

    .line 1156
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    .line 1157
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1158
    return-object p0
.end method

.method public whitelist clearUnfadeableAudioAttributes()Landroid/media/FadeManagerConfiguration$Builder;
    .registers 2

    .line 1326
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1327
    return-object p0
.end method

.method public whitelist clearUnfadeableContentTypes()Landroid/media/FadeManagerConfiguration$Builder;
    .registers 3

    .line 1216
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    .line 1217
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1218
    return-object p0
.end method

.method public whitelist clearUnfadeableUids()Landroid/media/FadeManagerConfiguration$Builder;
    .registers 2

    .line 1266
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1267
    return-object p0
.end method

.method public whitelist setFadeInDelayForOffenders(J)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 5
    .param p1, "delayMillis"    # J

    .line 1344
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "Delay cannot be negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1345
    iput-wide p1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeInDelayForOffendersMillis:J

    .line 1346
    return-object p0
.end method

.method public whitelist setFadeInDurationForAudioAttributes(Landroid/media/AudioAttributes;J)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 5
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p2, "fadeInDurationMillis"    # J

    .line 1094
    const-string v0, "Audio attribute cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1095
    nop

    .line 1096
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    .line 1097
    .local v0, "fadeInVShaperConfig":Landroid/media/VolumeShaper$Configuration;
    invoke-virtual {p0, p1, v0}, Landroid/media/FadeManagerConfiguration$Builder;->setFadeInVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;Landroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;

    .line 1098
    return-object p0
.end method

.method public whitelist setFadeInDurationForUsage(IJ)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 5
    .param p1, "usage"    # I
    .param p2, "fadeInDurationMillis"    # J

    .line 977
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    .line 978
    nop

    .line 979
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    .line 980
    .local v0, "fadeInVShaperConfig":Landroid/media/VolumeShaper$Configuration;
    invoke-virtual {p0, p1, v0}, Landroid/media/FadeManagerConfiguration$Builder;->setFadeInVolumeShaperConfigForUsage(ILandroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;

    .line 981
    return-object p0
.end method

.method public whitelist setFadeInVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;Landroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 4
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p2, "fadeInVShaperConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 1028
    const-string v0, "Audio attribute cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1029
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForAttr(Landroid/media/AudioAttributes;)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v0

    .line 1030
    invoke-virtual {v0, p2}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeInVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    .line 1031
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->cleanupInactiveWrapperEntries(Landroid/media/AudioAttributes;)V

    .line 1032
    return-object p0
.end method

.method public whitelist setFadeInVolumeShaperConfigForUsage(ILandroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 4
    .param p1, "usage"    # I
    .param p2, "fadeInVShaperConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 915
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    .line 916
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v0

    .line 917
    invoke-virtual {v0, p2}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeInVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    .line 918
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->cleanupInactiveWrapperEntries(I)V

    .line 919
    return-object p0
.end method

.method public whitelist setFadeOutDurationForAudioAttributes(Landroid/media/AudioAttributes;J)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 5
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p2, "fadeOutDurationMillis"    # J

    .line 1062
    const-string v0, "Audio attribute cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1063
    nop

    .line 1064
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    .line 1065
    .local v0, "fadeOutVShaperConfig":Landroid/media/VolumeShaper$Configuration;
    invoke-virtual {p0, p1, v0}, Landroid/media/FadeManagerConfiguration$Builder;->setFadeOutVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;Landroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;

    .line 1066
    return-object p0
.end method

.method public whitelist setFadeOutDurationForUsage(IJ)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 5
    .param p1, "usage"    # I
    .param p2, "fadeOutDurationMillis"    # J

    .line 946
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    .line 947
    nop

    .line 948
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/media/FadeManagerConfiguration$Builder;->createVolShaperConfigForDuration(JZ)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    .line 949
    .local v0, "fadeOutVShaperConfig":Landroid/media/VolumeShaper$Configuration;
    invoke-virtual {p0, p1, v0}, Landroid/media/FadeManagerConfiguration$Builder;->setFadeOutVolumeShaperConfigForUsage(ILandroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;

    .line 950
    return-object p0
.end method

.method public whitelist setFadeOutVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;Landroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 4
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;
    .param p2, "fadeOutVShaperConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 1002
    const-string v0, "Audio attribute cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1003
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForAttr(Landroid/media/AudioAttributes;)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v0

    .line 1004
    invoke-virtual {v0, p2}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeOutVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    .line 1005
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->cleanupInactiveWrapperEntries(Landroid/media/AudioAttributes;)V

    .line 1006
    return-object p0
.end method

.method public whitelist setFadeOutVolumeShaperConfigForUsage(ILandroid/media/VolumeShaper$Configuration;)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 4
    .param p1, "usage"    # I
    .param p2, "fadeOutVShaperConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 889
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smvalidateUsage(I)V

    .line 890
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->getFadeVolShaperConfigWrapperForUsage(I)Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    move-result-object v0

    .line 891
    invoke-virtual {v0, p2}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->setFadeOutVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    .line 892
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->cleanupInactiveWrapperEntries(I)V

    .line 893
    return-object p0
.end method

.method public whitelist setFadeState(I)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 2
    .param p1, "state"    # I

    .line 865
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->validateFadeState(I)V

    .line 866
    iput p1, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeState:I

    .line 867
    return-object p0
.end method

.method public whitelist setFadeableUsages(Ljava/util/List;)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/media/FadeManagerConfiguration$Builder;"
        }
    .end annotation

    .line 1118
    .local p1, "usages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "List of usages cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1119
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->validateUsages(Ljava/util/List;)V

    .line 1120
    const-wide/16 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    .line 1121
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1122
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mFadeableUsages:Landroid/util/IntArray;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smconvertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 1123
    return-object p0
.end method

.method public whitelist setUnfadeableAudioAttributes(Ljava/util/List;)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;)",
            "Landroid/media/FadeManagerConfiguration$Builder;"
        }
    .end annotation

    .line 1293
    .local p1, "attrs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioAttributes;>;"
    const-string v0, "List of audio attributes cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1294
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1295
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1296
    return-object p0
.end method

.method public whitelist setUnfadeableContentTypes(Ljava/util/List;)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/media/FadeManagerConfiguration$Builder;"
        }
    .end annotation

    .line 1177
    .local p1, "contentTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "List of content types cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1178
    invoke-direct {p0, p1}, Landroid/media/FadeManagerConfiguration$Builder;->validateContentTypes(Ljava/util/List;)V

    .line 1179
    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration$Builder;->setFlag(J)V

    .line 1180
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1181
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smconvertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 1182
    return-object p0
.end method

.method public whitelist setUnfadeableUids(Ljava/util/List;)Landroid/media/FadeManagerConfiguration$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/media/FadeManagerConfiguration$Builder;"
        }
    .end annotation

    .line 1233
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "List of uids cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1234
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 1235
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$Builder;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->-$$Nest$smconvertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 1236
    return-object p0
.end method
