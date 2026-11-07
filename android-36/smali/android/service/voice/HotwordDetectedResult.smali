.class public final Landroid/service/voice/HotwordDetectedResult;
.super Ljava/lang/Object;
.source "HotwordDetectedResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetectedResult$Builder;,
        Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;,
        Landroid/service/voice/HotwordDetectedResult$Proximity;,
        Landroid/service/voice/HotwordDetectedResult$Limit;,
        Landroid/service/voice/HotwordDetectedResult$ConfidenceLevel;,
        Landroid/service/voice/HotwordDetectedResult$BaseBuilder;,
        Landroid/service/voice/HotwordDetectedResult$ProximityValue;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CHANNEL_UNSET:I = -0x1

.field public static final whitelist BACKGROUND_AUDIO_POWER_UNSET:I = -0x1

.field public static final whitelist CONFIDENCE_LEVEL_HIGH:I = 0x5

.field public static final whitelist CONFIDENCE_LEVEL_LOW:I = 0x1

.field public static final whitelist CONFIDENCE_LEVEL_LOW_MEDIUM:I = 0x2

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM:I = 0x3

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM_HIGH:I = 0x4

.field public static final whitelist CONFIDENCE_LEVEL_NONE:I = 0x0

.field public static final whitelist CONFIDENCE_LEVEL_VERY_HIGH:I = 0x6

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/HotwordDetectedResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXTRA_PROXIMITY:Ljava/lang/String; = "android.service.voice.extra.PROXIMITY"

.field public static final whitelist HOTWORD_OFFSET_UNSET:I = -0x1

.field private static final blacklist LIMIT_AUDIO_CHANNEL_MAX_VALUE:I = 0x3f

.field private static final blacklist LIMIT_HOTWORD_OFFSET_MAX_VALUE:I = 0x36ee80

.field public static final whitelist PROXIMITY_FAR:I = 0x2

.field public static final whitelist PROXIMITY_NEAR:I = 0x1

.field public static final whitelist PROXIMITY_UNKNOWN:I = -0x1

.field private static blacklist sMaxBundleSize:I


# instance fields
.field private blacklist mAudioChannel:I

.field private final blacklist mAudioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBackgroundAudioPower:I

.field private final blacklist mConfidenceLevel:I

.field private final blacklist mExtras:Landroid/os/PersistableBundle;

.field private blacklist mHotwordDetectionPersonalized:Z

.field private blacklist mHotwordDurationMillis:I

.field private blacklist mHotwordOffsetMillis:I

.field private final blacklist mHotwordPhraseId:I

.field private blacklist mMediaSyncEvent:Landroid/media/MediaSyncEvent;

.field private final blacklist mPersonalizedScore:I

.field private final blacklist mScore:I

.field private final blacklist mSpeakerId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultAudioStreams()Ljava/util/List;
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultAudioStreams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultBackgroundAudioPower()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultBackgroundAudioPower()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultConfidenceLevel()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultConfidenceLevel()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultExtras()Landroid/os/PersistableBundle;
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultHotwordPhraseId()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultHotwordPhraseId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultPersonalizedScore()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultPersonalizedScore()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultScore()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultScore()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultSpeakerId()I
    .registers 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultSpeakerId()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 279
    const/4 v0, -0x1

    sput v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    .line 945
    new-instance v0, Landroid/service/voice/HotwordDetectedResult$1;

    invoke-direct {v0}, Landroid/service/voice/HotwordDetectedResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IILandroid/media/MediaSyncEvent;IIIZIIILjava/util/List;Landroid/os/PersistableBundle;I)V
    .registers 30
    .param p1, "speakerId"    # I
    .param p2, "confidenceLevel"    # I
    .param p3, "mediaSyncEvent"    # Landroid/media/MediaSyncEvent;
    .param p4, "hotwordOffsetMillis"    # I
    .param p5, "hotwordDurationMillis"    # I
    .param p6, "audioChannel"    # I
    .param p7, "hotwordDetectionPersonalized"    # Z
    .param p8, "score"    # I
    .param p9, "personalizedScore"    # I
    .param p10, "hotwordPhraseId"    # I
    .param p12, "extras"    # Landroid/os/PersistableBundle;
    .param p13, "backgroundAudioPower"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/MediaSyncEvent;",
            "IIIZIII",
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;",
            "Landroid/os/PersistableBundle;",
            "I)V"
        }
    .end annotation

    .line 638
    .local p11, "audioStreams":Ljava/util/List;, "Ljava/util/List<Landroid/service/voice/HotwordAudioStream;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 170
    const/4 v2, -0x1

    iput v2, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    .line 178
    const/4 v3, 0x0

    iput v3, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    .line 185
    iput v2, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    .line 191
    iput-boolean v3, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    .line 639
    move/from16 v2, p1

    iput v2, v0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    .line 640
    move/from16 v3, p2

    iput v3, v0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    .line 641
    const-class v4, Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;

    iget v5, v0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    invoke-static {v4, v1, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 643
    move-object/from16 v4, p3

    iput-object v4, v0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 644
    move/from16 v5, p4

    iput v5, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    .line 645
    move/from16 v6, p5

    iput v6, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    .line 646
    move/from16 v7, p6

    iput v7, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    .line 647
    move/from16 v8, p7

    iput-boolean v8, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    .line 648
    move/from16 v9, p8

    iput v9, v0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    .line 649
    move/from16 v10, p9

    iput v10, v0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    .line 650
    move/from16 v11, p10

    iput v11, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    .line 651
    move-object/from16 v12, p11

    iput-object v12, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    .line 652
    const-class v13, Landroid/annotation/NonNull;

    iget-object v14, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-static {v13, v1, v14}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 654
    move-object/from16 v13, p12

    iput-object v13, v0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    .line 655
    const-class v14, Landroid/annotation/NonNull;

    iget-object v15, v0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v14, v1, v15}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 657
    move/from16 v1, p13

    iput v1, v0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    .line 659
    invoke-direct {v0}, Landroid/service/voice/HotwordDetectedResult;->onConstructed()V

    .line 660
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 20
    .param p1, "in"    # Landroid/os/Parcel;

    .line 901
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 161
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 170
    const/4 v3, -0x1

    iput v3, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    .line 178
    const/4 v4, 0x0

    iput v4, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    .line 185
    iput v3, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    .line 191
    iput-boolean v4, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    .line 905
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 906
    .local v3, "flg":I
    and-int/lit8 v5, v3, 0x40

    if-eqz v5, :cond_1d

    const/4 v4, 0x1

    .line 907
    .local v4, "hotwordDetectionPersonalized":Z
    :cond_1d
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 908
    .local v5, "speakerId":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 909
    .local v6, "confidenceLevel":I
    and-int/lit8 v7, v3, 0x4

    if-nez v7, :cond_2b

    move-object v7, v2

    goto :goto_33

    :cond_2b
    sget-object v7, Landroid/media/MediaSyncEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/MediaSyncEvent;

    .line 910
    .local v7, "mediaSyncEvent":Landroid/media/MediaSyncEvent;
    :goto_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 911
    .local v8, "hotwordOffsetMillis":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 912
    .local v9, "hotwordDurationMillis":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 913
    .local v10, "audioChannel":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 914
    .local v11, "score":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 915
    .local v12, "personalizedScore":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 916
    .local v13, "hotwordPhraseId":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .local v14, "audioStreams":Ljava/util/List;, "Ljava/util/List<Landroid/service/voice/HotwordAudioStream;>;"
    const-class v15, Landroid/service/voice/HotwordAudioStream;

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 918
    sget-object v15, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v15}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/PersistableBundle;

    .line 919
    .local v15, "extras":Landroid/os/PersistableBundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 921
    .local v2, "backgroundAudioPower":I
    iput v5, v0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    .line 922
    iput v6, v0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    .line 923
    const-class v1, Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;

    move/from16 v16, v3

    .end local v3    # "flg":I
    .local v16, "flg":I
    iget v3, v0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    move/from16 v17, v5

    const/4 v5, 0x0

    .end local v5    # "speakerId":I
    .local v17, "speakerId":I
    invoke-static {v1, v5, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 925
    iput-object v7, v0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 926
    iput v8, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    .line 927
    iput v9, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    .line 928
    iput v10, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    .line 929
    iput-boolean v4, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    .line 930
    iput v11, v0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    .line 931
    iput v12, v0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    .line 932
    iput v13, v0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    .line 933
    iput-object v14, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    .line 934
    const-class v1, Landroid/annotation/NonNull;

    iget-object v3, v0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    const/4 v5, 0x0

    invoke-static {v1, v5, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 936
    iput-object v15, v0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    .line 937
    const-class v1, Landroid/annotation/NonNull;

    iget-object v3, v0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v1, v5, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 939
    iput v2, v0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    .line 941
    invoke-direct {v0}, Landroid/service/voice/HotwordDetectedResult;->onConstructed()V

    .line 942
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1239
    return-void
.end method

.method private static blacklist bitCount(J)I
    .registers 5
    .param p0, "value"    # J

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "bits":I
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_c

    .line 390
    add-int/lit8 v0, v0, 0x1

    .line 391
    const/4 v1, 0x1

    shr-long/2addr p0, v1

    goto :goto_1

    .line 393
    :cond_c
    return v0
.end method

.method public static blacklist confidenceLevelToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 560
    packed-switch p0, :pswitch_data_1e

    .line 575
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 574
    :pswitch_8
    const-string v0, "CONFIDENCE_LEVEL_VERY_HIGH"

    return-object v0

    .line 572
    :pswitch_b
    const-string v0, "CONFIDENCE_LEVEL_HIGH"

    return-object v0

    .line 570
    :pswitch_e
    const-string v0, "CONFIDENCE_LEVEL_MEDIUM_HIGH"

    return-object v0

    .line 568
    :pswitch_11
    const-string v0, "CONFIDENCE_LEVEL_MEDIUM"

    return-object v0

    .line 566
    :pswitch_14
    const-string v0, "CONFIDENCE_LEVEL_LOW_MEDIUM"

    return-object v0

    .line 564
    :pswitch_17
    const-string v0, "CONFIDENCE_LEVEL_LOW"

    return-object v0

    .line 562
    :pswitch_1a
    const-string v0, "CONFIDENCE_LEVEL_NONE"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist convertToProximityLevel(D)I
    .registers 5
    .param p1, "distance"    # D

    .line 482
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_8

    .line 483
    const/4 v0, -0x1

    return v0

    .line 484
    :cond_8
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_10

    .line 485
    const/4 v0, 0x1

    return v0

    .line 487
    :cond_10
    const/4 v0, 0x2

    return v0
.end method

.method private static blacklist defaultAudioStreams()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;"
        }
    .end annotation

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist defaultBackgroundAudioPower()I
    .registers 1

    .line 319
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist defaultConfidenceLevel()I
    .registers 1

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultExtras()Landroid/os/PersistableBundle;
    .registers 1

    .line 276
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    return-object v0
.end method

.method private static blacklist defaultHotwordPhraseId()I
    .registers 1

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultPersonalizedScore()I
    .registers 1

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultScore()I
    .registers 1

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultSpeakerId()I
    .registers 1

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getMaxBackgroundAudioPower()I
    .registers 1

    .line 326
    const/16 v0, 0xff

    return v0
.end method

.method public static whitelist getMaxBundleSize()I
    .registers 2

    .line 288
    sget v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    if-gez v0, :cond_11

    .line 289
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    .line 292
    :cond_11
    sget v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    return v0
.end method

.method public static whitelist getMaxHotwordPhraseId()I
    .registers 1

    .line 236
    const/16 v0, 0x3f

    return v0
.end method

.method public static whitelist getMaxScore()I
    .registers 1

    .line 219
    const/16 v0, 0xff

    return v0
.end method

.method public static whitelist getMaxSpeakerId()I
    .registers 1

    .line 146
    const/16 v0, 0xf

    return v0
.end method

.method public static blacklist getParcelableSize(Landroid/os/Parcelable;)I
    .registers 3
    .param p0, "parcelable"    # Landroid/os/Parcelable;

    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 337
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 339
    .local v1, "size":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    return v1
.end method

.method public static blacklist getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I
    .registers 6
    .param p0, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;

    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, "totalBits":I
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getConfidenceLevel()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultConfidenceLevel()I

    move-result v2

    if-eq v1, v2, :cond_12

    .line 352
    const-wide/16 v1, 0x6

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    :cond_12
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordOffsetMillis()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    .line 355
    const-wide/32 v3, 0x36ee80

    invoke-static {v3, v4}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    :cond_21
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordDurationMillis()I

    move-result v1

    if-eqz v1, :cond_30

    .line 358
    invoke-static {}, Landroid/media/AudioRecord;->getMaxSharedAudioHistoryMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 360
    :cond_30
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getAudioChannel()I

    move-result v1

    if-eq v1, v2, :cond_3d

    .line 361
    const-wide/16 v1, 0x3f

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    .line 367
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getScore()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultScore()I

    move-result v2

    if-eq v1, v2, :cond_53

    .line 368
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    :cond_53
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getPersonalizedScore()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultPersonalizedScore()I

    move-result v2

    if-eq v1, v2, :cond_67

    .line 371
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    :cond_67
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordPhraseId()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultHotwordPhraseId()I

    move-result v2

    if-eq v1, v2, :cond_7b

    .line 374
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxHotwordPhraseId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 376
    :cond_7b
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 377
    .local v1, "persistableBundle":Landroid/os/PersistableBundle;
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 378
    invoke-static {v1}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 380
    :cond_8c
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getBackgroundAudioPower()I

    move-result v2

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultBackgroundAudioPower()I

    move-result v3

    if-eq v2, v3, :cond_a0

    .line 381
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBackgroundAudioPower()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 384
    :cond_a0
    return v0
.end method

.method static blacklist limitToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 591
    sparse-switch p0, :sswitch_data_e

    .line 596
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 593
    :sswitch_8
    const-string v0, "LIMIT_HOTWORD_OFFSET_MAX_VALUE"

    return-object v0

    .line 595
    :sswitch_b
    const-string v0, "LIMIT_AUDIO_CHANNEL_MAX_VALUE"

    return-object v0

    :sswitch_data_e
    .sparse-switch
        0x3f -> :sswitch_b
        0x36ee80 -> :sswitch_8
    .end sparse-switch
.end method

.method private blacklist onConstructed()V
    .registers 12

    .line 397
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxSpeakerId()I

    move-result v1

    const-string/jumbo v2, "speakerId"

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 398
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    const-string/jumbo v2, "score"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 399
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    const-string/jumbo v2, "personalizedScore"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 401
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxHotwordPhraseId()I

    move-result v1

    const-string/jumbo v2, "hotwordPhraseId"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 403
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_41

    .line 404
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    .line 405
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBackgroundAudioPower()I

    move-result v2

    .line 404
    const-string v4, "backgroundAudioPower"

    invoke-static {v0, v3, v2, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 407
    :cond_41
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    int-to-long v4, v0

    .line 408
    invoke-static {}, Landroid/media/AudioRecord;->getMaxSharedAudioHistoryMillis()J

    move-result-wide v8

    .line 407
    const-wide/16 v6, 0x0

    const-string/jumbo v10, "hotwordDurationMillis"

    invoke-static/range {v4 .. v10}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 409
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    if-eq v0, v1, :cond_5f

    .line 410
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    const v2, 0x36ee80

    const-string/jumbo v4, "hotwordOffsetMillis"

    invoke-static {v0, v3, v2, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 413
    :cond_5f
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    if-eq v0, v1, :cond_6c

    .line 414
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    const/16 v1, 0x3f

    const-string v2, "audioChannel"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 417
    :cond_6c
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 421
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "android.service.voice.extra.PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "extras"

    if-eqz v0, :cond_a6

    .line 422
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 423
    .local v0, "proximityValue":I
    iget-object v4, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v4, v1}, Landroid/os/PersistableBundle;->remove(Ljava/lang/String;)V

    .line 426
    iget-object v4, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->size()I

    move-result v4

    if-lez v4, :cond_a0

    .line 427
    iget-object v4, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v4}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v4

    .line 428
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBundleSize()I

    move-result v5

    .line 427
    invoke-static {v4, v3, v5, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 430
    :cond_a0
    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v1, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 431
    .end local v0    # "proximityValue":I
    goto :goto_b3

    .line 432
    :cond_a6
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v0}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v0

    .line 433
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBundleSize()I

    move-result v1

    .line 432
    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 436
    :cond_b3
    :goto_b3
    return-void
.end method

.method public static blacklist proximityToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 613
    packed-switch p0, :pswitch_data_12

    .line 620
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 619
    :pswitch_8
    const-string v0, "PROXIMITY_FAR"

    return-object v0

    .line 617
    :pswitch_b
    const-string v0, "PROXIMITY_NEAR"

    return-object v0

    .line 615
    :pswitch_e
    const-string v0, "PROXIMITY_UNKNOWN"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_e
        :pswitch_3
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist buildUpon()Landroid/service/voice/HotwordDetectedResult$Builder;
    .registers 3

    .line 512
    new-instance v0, Landroid/service/voice/HotwordDetectedResult$Builder;

    invoke-direct {v0}, Landroid/service/voice/HotwordDetectedResult$Builder;-><init>()V

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    .line 513
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setConfidenceLevel(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 514
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setMediaSyncEvent(Landroid/media/MediaSyncEvent;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    .line 515
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setHotwordOffsetMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    .line 516
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setHotwordDurationMillis(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    .line 517
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setAudioChannel(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    .line 518
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setHotwordDetectionPersonalized(Z)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    .line 519
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    .line 520
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setPersonalizedScore(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    .line 521
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setHotwordPhraseId(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    .line 522
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    .line 523
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    .line 524
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setBackgroundAudioPower(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    .line 525
    invoke-virtual {v0, v1}, Landroid/service/voice/HotwordDetectedResult$Builder;->setSpeakerId(I)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    .line 512
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 896
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 826
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 827
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_72

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_72

    .line 829
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/voice/HotwordDetectedResult;

    .line 831
    .local v2, "that":Landroid/service/voice/HotwordDetectedResult;
    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    if-ne v3, v4, :cond_70

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iget-object v4, v2, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 834
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    if-ne v3, v4, :cond_70

    iget-boolean v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    iget-boolean v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    if-ne v3, v4, :cond_70

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    if-ne v3, v4, :cond_70

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    if-ne v3, v4, :cond_70

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    iget-object v4, v2, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    .line 842
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    .line 843
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    if-ne v3, v4, :cond_70

    goto :goto_71

    :cond_70
    move v0, v1

    .line 831
    :goto_71
    return v0

    .line 827
    .end local v2    # "that":Landroid/service/voice/HotwordDetectedResult;
    :cond_72
    :goto_72
    return v1
.end method

.method public whitelist getAudioChannel()I
    .registers 2

    .line 710
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    return v0
.end method

.method public whitelist getAudioStreams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/voice/HotwordAudioStream;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBackgroundAudioPower()I
    .registers 2

    .line 793
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    return v0
.end method

.method public whitelist getConfidenceLevel()I
    .registers 2

    .line 678
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 779
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getHotwordDurationMillis()I
    .registers 2

    .line 700
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    return v0
.end method

.method public whitelist getHotwordOffsetMillis()I
    .registers 2

    .line 689
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    return v0
.end method

.method public whitelist getHotwordPhraseId()I
    .registers 2

    .line 749
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    return v0
.end method

.method public whitelist getMediaSyncEvent()Landroid/media/MediaSyncEvent;
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    return-object v0
.end method

.method public whitelist getPersonalizedScore()I
    .registers 2

    .line 739
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    return v0
.end method

.method public whitelist getProximity()I
    .registers 4

    .line 469
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    const-string v1, "android.service.voice.extra.PROXIMITY"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist getScore()I
    .registers 2

    .line 729
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    return v0
.end method

.method public whitelist getSpeakerId()I
    .registers 2

    .line 670
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 853
    const/4 v0, 0x1

    .line 854
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    add-int/2addr v1, v2

    .line 855
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    add-int/2addr v0, v2

    .line 856
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 857
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    add-int/2addr v0, v2

    .line 858
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    add-int/2addr v1, v2

    .line 859
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    add-int/2addr v0, v2

    .line 860
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 861
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    add-int/2addr v0, v2

    .line 862
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    add-int/2addr v1, v2

    .line 863
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    add-int/2addr v0, v2

    .line 864
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 865
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 866
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    add-int/2addr v1, v2

    .line 867
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method

.method public whitelist isHotwordDetectionPersonalized()Z
    .registers 2

    .line 719
    iget-boolean v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    return v0
.end method

.method public blacklist setProximity(D)V
    .registers 6
    .param p1, "distance"    # D

    .line 456
    invoke-direct {p0, p1, p2}, Landroid/service/voice/HotwordDetectedResult;->convertToProximityLevel(D)I

    move-result v0

    .line 457
    .local v0, "proximityLevel":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 458
    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    const-string v2, "android.service.voice.extra.PROXIMITY"

    invoke-virtual {v1, v2, v0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 460
    :cond_e
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordDetectedResult { speakerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidenceLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaSyncEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordOffsetMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordDetectionPersonalized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", personalizedScore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordPhraseId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioStreams = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundAudioPower = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 876
    const/4 v0, 0x0

    .line 877
    .local v0, "flg":I
    iget-boolean v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x40

    .line 878
    :cond_7
    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x4

    .line 879
    :cond_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 880
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mSpeakerId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 883
    :cond_23
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioStreams:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 890
    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 891
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mBackgroundAudioPower:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    return-void
.end method
