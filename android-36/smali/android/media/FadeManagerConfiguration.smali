.class public final Landroid/media/FadeManagerConfiguration;
.super Ljava/lang/Object;
.source "FadeManagerConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;,
        Landroid/media/FadeManagerConfiguration$Builder;,
        Landroid/media/FadeManagerConfiguration$FadeStateEnum;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/FadeManagerConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_FADE_IN_DURATION_MS:J = 0x3e8L

.field private static final blacklist DEFAULT_FADE_OUT_DURATION_MS:J = 0x7d0L

.field public static final whitelist DURATION_NOT_SET:J = 0x0L

.field public static final whitelist FADE_STATE_DISABLED:I = 0x0

.field public static final whitelist FADE_STATE_ENABLED_DEFAULT:I = 0x1

.field public static final whitelist TAG:Ljava/lang/String; = "FadeManagerConfiguration"

.field public static final whitelist VOLUME_SHAPER_SYSTEM_FADE_ID:I = 0x2


# instance fields
.field private final blacklist mAttrToFadeWrapperMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioAttributes;",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFadeInDelayForOffendersMillis:J

.field private final blacklist mFadeInDurationMillis:J

.field private final blacklist mFadeOutDurationMillis:J

.field private final blacklist mFadeState:I

.field private final blacklist mFadeableUsages:Landroid/util/IntArray;

.field private final blacklist mUnfadeableAudioAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUnfadeableContentTypes:Landroid/util/IntArray;

.field private final blacklist mUnfadeablePlayerTypes:Landroid/util/IntArray;

.field private final blacklist mUnfadeableUids:Landroid/util/IntArray;

.field private final blacklist mUsageToFadeWrapperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttrToFadeWrapperMap(Landroid/media/FadeManagerConfiguration;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeInDurationMillis(Landroid/media/FadeManagerConfiguration;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeOutDurationMillis(Landroid/media/FadeManagerConfiguration;)J
    .registers 3

    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeState(Landroid/media/FadeManagerConfiguration;)I
    .registers 1

    iget p0, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFadeableUsages(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfadeableAudioAttributes(Landroid/media/FadeManagerConfiguration;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfadeableContentTypes(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfadeablePlayerTypes(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnfadeableUids(Landroid/media/FadeManagerConfiguration;)Landroid/util/IntArray;
    .registers 1

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsageToFadeWrapperMap(Landroid/media/FadeManagerConfiguration;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;
    .registers 1

    invoke-static {p0}, Landroid/media/FadeManagerConfiguration;->convertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateUsage(I)V
    .registers 1

    invoke-static {p0}, Landroid/media/FadeManagerConfiguration;->validateUsage(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 658
    new-instance v0, Landroid/media/FadeManagerConfiguration$1;

    invoke-direct {v0}, Landroid/media/FadeManagerConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/FadeManagerConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IJJJLandroid/util/SparseArray;Landroid/util/ArrayMap;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Ljava/util/List;)V
    .registers 16
    .param p1, "fadeState"    # I
    .param p2, "fadeOutDurationMillis"    # J
    .param p4, "fadeInDurationMillis"    # J
    .param p6, "offendersFadeInDelayMillis"    # J
    .param p10, "fadeableUsages"    # Landroid/util/IntArray;
    .param p11, "unfadeableContentTypes"    # Landroid/util/IntArray;
    .param p12, "unfadeablePlayerTypes"    # Landroid/util/IntArray;
    .param p13, "unfadeableUids"    # Landroid/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJ",
            "Landroid/util/SparseArray<",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioAttributes;",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;",
            "Landroid/util/IntArray;",
            "Landroid/util/IntArray;",
            "Landroid/util/IntArray;",
            "Landroid/util/IntArray;",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p8, "usageToFadeWrapperMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;>;"
    .local p9, "attrToFadeWrapperMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/media/AudioAttributes;Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;>;"
    .local p14, "unfadeableAudioAttributes":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioAttributes;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    .line 182
    iput-wide p2, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    .line 183
    iput-wide p4, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    .line 184
    iput-wide p6, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    .line 185
    const-string v0, "Usage to fade wrapper map cannot be null"

    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    .line 187
    const-string v0, "Attribute to fade wrapper map cannot be null"

    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    .line 189
    const-string v0, "List of fadeable usages cannot be null"

    invoke-static {p10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    .line 191
    const-string v0, "List of unfadeable content types cannot be null"

    invoke-static {p11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    .line 193
    const-string v0, "List of unfadeable player types cannot be null"

    invoke-static {p12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    .line 195
    const-string v0, "List of unfadeable uids cannot be null"

    invoke-static {p13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    .line 197
    const-string v0, "List of unfadeable audio attributes cannot be null"

    invoke-static {p14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    .line 199
    return-void
.end method

.method synthetic constructor blacklist <init>(IJJJLandroid/util/SparseArray;Landroid/util/ArrayMap;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Ljava/util/List;Landroid/media/FadeManagerConfiguration-IA;)V
    .registers 16

    invoke-direct/range {p0 .. p14}, Landroid/media/FadeManagerConfiguration;-><init>(IJJJLandroid/util/SparseArray;Landroid/util/ArrayMap;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Landroid/util/IntArray;Ljava/util/List;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 19
    .param p1, "in"    # Landroid/os/Parcel;

    .line 626
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 627
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 628
    .local v2, "fadeState":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 629
    .local v3, "fadeOutDurationMillis":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 630
    .local v5, "fadeInDurationMillis":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 631
    .local v7, "fadeInDelayForOffenders":J
    sget-object v9, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 632
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->createTypedSparseArray(Landroid/os/Parcelable$Creator;)Landroid/util/SparseArray;

    move-result-object v9

    .line 633
    .local v9, "usageToWrapperMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;>;"
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    .line 635
    .local v10, "attrToFadeWrapperMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/media/AudioAttributes;Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-class v12, Landroid/media/AudioAttributes;

    const-class v13, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 637
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v11

    .line 638
    .local v11, "fadeableUsages":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v12

    .line 639
    .local v12, "unfadeableContentTypes":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    .line 640
    .local v13, "unfadeablePlayerTypes":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v14

    .line 641
    .local v14, "unfadeableUids":[I
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v15, "unfadeableAudioAttributes":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioAttributes;>;"
    move-object/from16 v16, v11

    .end local v11    # "fadeableUsages":[I
    .local v16, "fadeableUsages":[I
    sget-object v11, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v15, v11}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 644
    iput v2, v0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    .line 645
    iput-wide v3, v0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    .line 646
    iput-wide v5, v0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    .line 647
    iput-wide v7, v0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    .line 648
    iput-object v9, v0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    .line 649
    iput-object v10, v0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    .line 650
    invoke-static/range {v16 .. v16}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v11

    iput-object v11, v0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    .line 651
    invoke-static {v12}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v11

    iput-object v11, v0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    .line 652
    invoke-static {v13}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v11

    iput-object v11, v0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    .line 653
    invoke-static {v14}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v11

    iput-object v11, v0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    .line 654
    iput-object v15, v0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    .line 655
    return-void
.end method

.method private static blacklist convertIntArrayToIntegerList(Landroid/util/IntArray;)Ljava/util/List;
    .registers 4
    .param p0, "intArray"    # Landroid/util/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IntArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 725
    if-nez p0, :cond_8

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 729
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 730
    .local v0, "integerArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_12
    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 731
    invoke-virtual {p0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 733
    .end local v1    # "index":I
    :cond_26
    return-object v0
.end method

.method private static blacklist convertIntegerListToIntArray(Ljava/util/List;)Landroid/util/IntArray;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/IntArray;"
        }
    .end annotation

    .line 713
    .local p0, "integerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_8

    .line 714
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    return-object v0

    .line 717
    :cond_8
    new-instance v0, Landroid/util/IntArray;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    .line 718
    .local v0, "intArray":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 719
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    .line 718
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 721
    .end local v1    # "index":I
    :cond_28
    return-object v0
.end method

.method private blacklist ensureFadingIsEnabled()V
    .registers 3

    .line 703
    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 706
    return-void

    .line 704
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method call not allowed when fade is disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist fadeStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "fadeState"    # I

    .line 555
    packed-switch p0, :pswitch_data_1e

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown fade state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 559
    :pswitch_17
    const-string v0, "FADE_STATE_ENABLED_DEFAULT"

    return-object v0

    .line 557
    :pswitch_1a
    const-string v0, "FADE_STATE_DISABLED"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private blacklist getAudioAttributesInternal()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 691
    .local v0, "attrs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioAttributes;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_c
    iget-object v2, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 692
    iget-object v2, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 694
    .end local v1    # "index":I
    :cond_22
    return-object v0
.end method

.method public static whitelist getDefaultFadeInDurationMillis()J
    .registers 2

    .line 529
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public static whitelist getDefaultFadeOutDurationMillis()J
    .registers 2

    .line 522
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method private blacklist getDurationForVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)J
    .registers 4
    .param p1, "config"    # Landroid/media/VolumeShaper$Configuration;

    .line 673
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getDuration()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x0

    :goto_9
    return-wide v0
.end method

.method private blacklist getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;
    .registers 4
    .param p1, "wrapper"    # Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;
    .param p2, "isFadeIn"    # Z

    .line 680
    if-nez p1, :cond_4

    .line 681
    const/4 v0, 0x0

    return-object v0

    .line 683
    :cond_4
    if-eqz p2, :cond_b

    .line 684
    invoke-virtual {p1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->getFadeInVolShaperConfig()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0

    .line 686
    :cond_b
    invoke-virtual {p1}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->getFadeOutVolShaperConfig()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist isUsageValid(I)Z
    .registers 2
    .param p0, "usage"    # I

    .line 698
    invoke-static {p0}, Landroid/media/AudioAttributes;->isSdkUsage(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Landroid/media/AudioAttributes;->isSystemUsage(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 699
    invoke-static {p0}, Landroid/media/AudioAttributes;->isHiddenUsage(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 698
    :goto_16
    return v0
.end method

.method private static blacklist validateUsage(I)V
    .registers 4
    .param p0, "usage"    # I

    .line 709
    invoke-static {p0}, Landroid/media/FadeManagerConfiguration;->isUsageValid(I)Z

    move-result v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid usage: %s"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 710
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 572
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 573
    return v0

    .line 576
    :cond_4
    instance-of v1, p1, Landroid/media/FadeManagerConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 577
    return v2

    .line 580
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/FadeManagerConfiguration;

    .line 582
    .local v1, "rhs":Landroid/media/FadeManagerConfiguration;
    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    .line 583
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    .line 584
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    .line 585
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    .line 586
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    .line 585
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    .line 587
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    .line 588
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    .line 587
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    .line 589
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v3

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    iget-object v4, v1, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    .line 590
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    iget v3, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    iget v4, v1, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    if-ne v3, v4, :cond_92

    iget-wide v3, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    iget-wide v5, v1, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_92

    iget-wide v3, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    iget-wide v5, v1, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_92

    iget-wide v3, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    iget-wide v5, v1, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_92

    goto :goto_93

    :cond_92
    move v0, v2

    .line 582
    :goto_93
    return v0
.end method

.method public whitelist getAudioAttributesWithVolumeShaperConfigs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation

    .line 419
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->getAudioAttributesInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFadeInDelayForOffenders()J
    .registers 3

    .line 434
    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    return-wide v0
.end method

.method public whitelist getFadeInDurationForAudioAttributes(Landroid/media/AudioAttributes;)J
    .registers 4
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 367
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 368
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    .line 369
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    .line 368
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/FadeManagerConfiguration;->getDurationForVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFadeInDurationForUsage(I)J
    .registers 4
    .param p1, "usage"    # I

    .line 296
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 297
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->validateUsage(I)V

    .line 298
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    .line 299
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    .line 298
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/FadeManagerConfiguration;->getDurationForVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFadeInVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .registers 4
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 404
    const-string v0, "Audio attributes cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 405
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 406
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFadeInVolumeShaperConfigForUsage(I)Landroid/media/VolumeShaper$Configuration;
    .registers 4
    .param p1, "usage"    # I

    .line 334
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 335
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->validateUsage(I)V

    .line 336
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFadeOutDurationForAudioAttributes(Landroid/media/AudioAttributes;)J
    .registers 4
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 351
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 352
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    .line 353
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    .line 352
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/FadeManagerConfiguration;->getDurationForVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFadeOutDurationForUsage(I)J
    .registers 4
    .param p1, "usage"    # I

    .line 280
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 281
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->validateUsage(I)V

    .line 282
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    .line 283
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    .line 282
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/FadeManagerConfiguration;->getDurationForVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getFadeOutVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .registers 4
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 385
    const-string v0, "Audio attributes cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 386
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 387
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFadeOutVolumeShaperConfigForUsage(I)Landroid/media/VolumeShaper$Configuration;
    .registers 4
    .param p1, "usage"    # I

    .line 315
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 316
    invoke-static {p1}, Landroid/media/FadeManagerConfiguration;->validateUsage(I)V

    .line 317
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/FadeManagerConfiguration;->getVolumeShaperConfigFromWrapper(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;Z)Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFadeState()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    return v0
.end method

.method public whitelist getFadeableUsages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 217
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 218
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    invoke-static {v0}, Landroid/media/FadeManagerConfiguration;->convertIntArrayToIntegerList(Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUnfadeableAudioAttributes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 267
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getUnfadeableContentTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 243
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-static {v0}, Landroid/media/FadeManagerConfiguration;->convertIntArrayToIntegerList(Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUnfadeablePlayerTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 231
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    invoke-static {v0}, Landroid/media/FadeManagerConfiguration;->convertIntArrayToIntegerList(Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUnfadeableUids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Landroid/media/FadeManagerConfiguration;->ensureFadingIsEnabled()V

    .line 255
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-static {v0}, Landroid/media/FadeManagerConfiguration;->convertIntArrayToIntegerList(Landroid/util/IntArray;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 13

    .line 599
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    iget-object v3, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    iget-object v4, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    iget-object v5, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    iget-object v6, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    iget v7, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    .line 601
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-wide v8, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    .line 602
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 599
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAudioAttributesUnfadeable(Landroid/media/AudioAttributes;)Z
    .registers 3
    .param p1, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 497
    const-string v0, "Audio attributes cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 498
    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 499
    const/4 v0, 0x1

    return v0

    .line 501
    :cond_d
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist isContentTypeUnfadeable(I)Z
    .registers 3
    .param p1, "contentType"    # I

    .line 468
    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 469
    const/4 v0, 0x1

    return v0

    .line 471
    :cond_8
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isFadeEnabled()Z
    .registers 2

    .line 443
    iget v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isPlayerTypeUnfadeable(I)Z
    .registers 3
    .param p1, "playerType"    # I

    .line 482
    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 483
    const/4 v0, 0x1

    return v0

    .line 485
    :cond_8
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isUidUnfadeable(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 512
    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 513
    const/4 v0, 0x1

    return v0

    .line 515
    :cond_8
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isUsageFadeable(I)Z
    .registers 3
    .param p1, "usage"    # I

    .line 454
    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration;->isFadeEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 455
    const/4 v0, 0x0

    return v0

    .line 457
    :cond_8
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->contains(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FadeManagerConfiguration { fade state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    invoke-static {v1}, Landroid/media/FadeManagerConfiguration;->fadeStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fade out duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fade in duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offenders fade in delay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fade volume shapers for audio attributes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fadeable usages = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    .line 539
    invoke-virtual {v1}, Landroid/util/IntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unfadeable content types = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    .line 540
    invoke-virtual {v1}, Landroid/util/IntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unfadeable player types = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    .line 541
    invoke-virtual {v1}, Landroid/util/IntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unfadeable uids = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    .line 542
    invoke-virtual {v1}, Landroid/util/IntArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unfadeable audio attributes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 607
    iget v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeOutDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 609
    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 610
    iget-wide v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeInDelayForOffendersMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 611
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUsageToFadeWrapperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedSparseArray(Landroid/util/SparseArray;I)V

    .line 612
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mAttrToFadeWrapperMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 613
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mFadeableUsages:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 614
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableContentTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 615
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeablePlayerTypes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 616
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableUids:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 617
    iget-object v0, p0, Landroid/media/FadeManagerConfiguration;->mUnfadeableAudioAttributes:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 618
    return-void
.end method
