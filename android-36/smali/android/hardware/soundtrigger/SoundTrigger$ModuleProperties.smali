.class public final Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$AudioCapabilities;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CAPABILITY_ECHO_CANCELLATION:I = 0x1

.field public static final whitelist AUDIO_CAPABILITY_NOISE_SUPPRESSION:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAudioCapabilities:I

.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mId:I

.field private final blacklist mImplementor:Ljava/lang/String;

.field private final blacklist mMaxBufferMillis:I

.field private final blacklist mMaxKeyphrases:I

.field private final blacklist mMaxSoundModels:I

.field private final blacklist mMaxUsers:I

.field private final blacklist mPowerConsumptionMw:I

.field private final blacklist mRecognitionModes:I

.field private final blacklist mReturnsTriggerInEvent:Z

.field private final blacklist mSupportedModelArch:Ljava/lang/String;

.field private final blacklist mSupportsCaptureTransition:Z

.field private final blacklist mSupportsConcurrentCapture:Z

.field private final blacklist mUuid:Ljava/util/UUID;

.field private final blacklist mVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 1

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 284
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V
    .registers 28
    .param p1, "id"    # I
    .param p2, "implementor"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "supportedModelArch"    # Ljava/lang/String;
    .param p7, "maxSoundModels"    # I
    .param p8, "maxKeyphrases"    # I
    .param p9, "maxUsers"    # I
    .param p10, "recognitionModes"    # I
    .param p11, "supportsCaptureTransition"    # Z
    .param p12, "maxBufferMs"    # I
    .param p13, "supportsConcurrentCapture"    # Z
    .param p14, "powerConsumptionMw"    # I
    .param p15, "returnsTriggerInEvent"    # Z
    .param p16, "audioCapabilities"    # I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    .line 173
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    .line 174
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    .line 175
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    .line 176
    move/from16 v0, p5

    iput v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    .line 177
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    .line 178
    move/from16 v1, p7

    iput v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    .line 179
    move/from16 v2, p8

    iput v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    .line 180
    move/from16 v3, p9

    iput v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    .line 181
    move/from16 v4, p10

    iput v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    .line 182
    move/from16 v5, p11

    iput-boolean v5, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    .line 183
    move/from16 v6, p12

    iput v6, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    .line 184
    move/from16 v7, p13

    iput-boolean v7, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    .line 185
    move/from16 v8, p14

    iput v8, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    .line 186
    move/from16 v9, p15

    iput-boolean v9, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    .line 187
    move/from16 v10, p16

    iput v10, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    .line 188
    return-void
.end method

.method private static greylist-max-o fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 18
    .param p0, "in"    # Landroid/os/Parcel;

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .local v1, "id":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "implementor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "description":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 300
    .local v4, "uuid":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 301
    .local v5, "version":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, "supportedModelArch":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 303
    .local v7, "maxSoundModels":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 304
    .local v8, "maxKeyphrases":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 305
    .local v9, "maxUsers":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 306
    .local v10, "recognitionModes":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_31

    move v0, v12

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    .line 307
    .local v0, "supportsCaptureTransition":Z
    :goto_32
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 308
    .local v13, "maxBufferMs":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v14

    if-ne v14, v12, :cond_3e

    move v14, v12

    goto :goto_3f

    :cond_3e
    const/4 v14, 0x0

    .line 309
    .local v14, "supportsConcurrentCapture":Z
    :goto_3f
    move v15, v13

    move v13, v14

    .end local v14    # "supportsConcurrentCapture":Z
    .local v13, "supportsConcurrentCapture":Z
    .local v15, "maxBufferMs":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 310
    .local v14, "powerConsumptionMw":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v11

    if-ne v11, v12, :cond_4d

    move v11, v12

    goto :goto_4e

    :cond_4d
    const/4 v11, 0x0

    .line 311
    .local v11, "returnsTriggerInEvent":Z
    :goto_4e
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 312
    .local v16, "audioCapabilities":I
    move v12, v15

    move v15, v11

    move v11, v0

    .end local v0    # "supportsCaptureTransition":Z
    .local v11, "supportsCaptureTransition":Z
    .local v12, "maxBufferMs":I
    .local v15, "returnsTriggerInEvent":Z
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    invoke-direct/range {v0 .. v16}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 345
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 346
    return v0

    .line 348
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 349
    return v1

    .line 351
    :cond_8
    instance-of v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v2, :cond_d

    .line 352
    return v1

    .line 354
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 355
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    if-eq v3, v4, :cond_17

    .line 356
    return v1

    .line 358
    :cond_17
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 359
    return v1

    .line 361
    :cond_22
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 362
    return v1

    .line 364
    :cond_2d
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 365
    return v1

    .line 367
    :cond_38
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    if-eq v3, v4, :cond_3f

    .line 368
    return v1

    .line 370
    :cond_3f
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 371
    return v1

    .line 373
    :cond_4a
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    if-eq v3, v4, :cond_51

    .line 374
    return v1

    .line 376
    :cond_51
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    if-eq v3, v4, :cond_58

    .line 377
    return v1

    .line 379
    :cond_58
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    if-eq v3, v4, :cond_5f

    .line 380
    return v1

    .line 382
    :cond_5f
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    if-eq v3, v4, :cond_66

    .line 383
    return v1

    .line 385
    :cond_66
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    if-eq v3, v4, :cond_6d

    .line 386
    return v1

    .line 388
    :cond_6d
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    if-eq v3, v4, :cond_74

    .line 389
    return v1

    .line 391
    :cond_74
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    if-eq v3, v4, :cond_7b

    .line 392
    return v1

    .line 394
    :cond_7b
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    if-eq v3, v4, :cond_82

    .line 395
    return v1

    .line 397
    :cond_82
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    if-eq v3, v4, :cond_89

    .line 398
    return v1

    .line 400
    :cond_89
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    if-eq v3, v4, :cond_90

    .line 401
    return v1

    .line 403
    :cond_90
    return v0
.end method

.method public whitelist getAudioCapabilities()I
    .registers 2

    .line 281
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 192
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    return v0
.end method

.method public whitelist getImplementor()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxBufferMillis()I
    .registers 2

    .line 256
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    return v0
.end method

.method public whitelist getMaxKeyphrases()I
    .registers 2

    .line 235
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    return v0
.end method

.method public whitelist getMaxSoundModels()I
    .registers 2

    .line 230
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    return v0
.end method

.method public whitelist getMaxUsers()I
    .registers 2

    .line 240
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    return v0
.end method

.method public whitelist getPowerConsumptionMw()I
    .registers 2

    .line 266
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    return v0
.end method

.method public whitelist getRecognitionModes()I
    .registers 2

    .line 246
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    return v0
.end method

.method public whitelist getSupportedModelArch()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getVersion()I
    .registers 2

    .line 215
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 408
    const/16 v0, 0x1f

    .line 409
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 410
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    add-int/2addr v2, v3

    .line 411
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 412
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 413
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 414
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    add-int/2addr v2, v3

    .line 415
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 416
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    add-int/2addr v2, v3

    .line 417
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    add-int/2addr v1, v3

    .line 418
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    add-int/2addr v2, v3

    .line 419
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    add-int/2addr v1, v3

    .line 420
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    add-int/2addr v2, v3

    .line 421
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    add-int/2addr v1, v3

    .line 422
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    add-int/2addr v2, v3

    .line 423
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    add-int/2addr v1, v3

    .line 424
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    add-int/2addr v2, v3

    .line 425
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    add-int/2addr v1, v3

    .line 426
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist isCaptureTransitionSupported()Z
    .registers 2

    .line 251
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    return v0
.end method

.method public whitelist isConcurrentCaptureSupported()Z
    .registers 2

    .line 261
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    return v0
.end method

.method public whitelist isTriggerReturnedInEvent()Z
    .registers 2

    .line 272
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleProperties [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", implementor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , supportedModelArch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSoundModels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxSoundModels()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxKeyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxKeyphrases()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxUsers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxUsers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getRecognitionModes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsCaptureTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isCaptureTransitionSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBufferMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxBufferMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsConcurrentCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 438
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isConcurrentCaptureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", powerConsumptionMw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 439
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getPowerConsumptionMw()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnsTriggerInEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 440
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isTriggerReturnedInEvent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 441
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 320
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxSoundModels()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxKeyphrases()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxUsers()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getRecognitionModes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isCaptureTransitionSupported()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 331
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxBufferMillis()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isConcurrentCaptureSupported()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 333
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getPowerConsumptionMw()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isTriggerReturnedInEvent()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 335
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    return-void
.end method
