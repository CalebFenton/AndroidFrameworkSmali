.class public final Landroid/os/VibratorInfo$Builder;
.super Ljava/lang/Object;
.source "VibratorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibratorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCapabilities:J

.field private blacklist mCompositionSizeMax:I

.field private blacklist mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

.field private blacklist mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

.field private final blacklist mId:I

.field private blacklist mMaxEnvelopeEffectControlPointDurationMillis:I

.field private blacklist mMaxEnvelopeEffectSize:I

.field private blacklist mMinEnvelopeEffectControlPointDurationMillis:I

.field private blacklist mPrimitiveDelayMax:I

.field private blacklist mPwlePrimitiveDurationMax:I

.field private blacklist mPwleSizeMax:I

.field private blacklist mQFactor:F

.field private blacklist mSupportedBraking:Landroid/util/SparseBooleanArray;

.field private blacklist mSupportedEffects:Landroid/util/SparseBooleanArray;

.field private blacklist mSupportedPrimitives:Landroid/util/SparseIntArray;


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 5
    .param p1, "id"    # I

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1165
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/os/VibratorInfo$Builder;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    .line 1170
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/os/VibratorInfo$Builder;->mQFactor:F

    .line 1171
    new-instance v1, Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v0, v0, v2}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;-><init>(FFF[F)V

    iput-object v1, p0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    .line 1173
    new-instance v1, Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-direct {v1, v0, v2, v2}, Landroid/os/VibratorInfo$FrequencyProfile;-><init>(F[F[F)V

    iput-object v1, p0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    .line 1181
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mId:I

    .line 1182
    return-void
.end method

.method private static blacklist toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;
    .registers 6
    .param p0, "supportedKeys"    # [I

    .line 1314
    if-nez p0, :cond_4

    .line 1315
    const/4 v0, 0x0

    return-object v0

    .line 1317
    :cond_4
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1318
    .local v0, "array":Landroid/util/SparseBooleanArray;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_16

    aget v3, p0, v2

    .line 1319
    .local v3, "key":I
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1318
    .end local v3    # "key":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1321
    :cond_16
    return-object v0
.end method


# virtual methods
.method public blacklist build()Landroid/os/VibratorInfo;
    .registers 20

    .line 1299
    move-object/from16 v0, p0

    new-instance v1, Landroid/os/VibratorInfo;

    iget v2, v0, Landroid/os/VibratorInfo$Builder;->mId:I

    iget-wide v3, v0, Landroid/os/VibratorInfo$Builder;->mCapabilities:J

    iget-object v5, v0, Landroid/os/VibratorInfo$Builder;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v6, v0, Landroid/os/VibratorInfo$Builder;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget-object v7, v0, Landroid/os/VibratorInfo$Builder;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    iget v8, v0, Landroid/os/VibratorInfo$Builder;->mPrimitiveDelayMax:I

    iget v9, v0, Landroid/os/VibratorInfo$Builder;->mCompositionSizeMax:I

    iget v10, v0, Landroid/os/VibratorInfo$Builder;->mPwlePrimitiveDurationMax:I

    iget v11, v0, Landroid/os/VibratorInfo$Builder;->mPwleSizeMax:I

    iget v12, v0, Landroid/os/VibratorInfo$Builder;->mQFactor:F

    iget-object v13, v0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    iget-object v14, v0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    iget v15, v0, Landroid/os/VibratorInfo$Builder;->mMaxEnvelopeEffectSize:I

    move-object/from16 v16, v1

    iget v1, v0, Landroid/os/VibratorInfo$Builder;->mMinEnvelopeEffectControlPointDurationMillis:I

    move/from16 v17, v1

    iget v1, v0, Landroid/os/VibratorInfo$Builder;->mMaxEnvelopeEffectControlPointDurationMillis:I

    move/from16 v18, v17

    move/from16 v17, v1

    move-object/from16 v1, v16

    move/from16 v16, v18

    invoke-direct/range {v1 .. v17}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfileLegacy;Landroid/os/VibratorInfo$FrequencyProfile;III)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public blacklist setCapabilities(J)Landroid/os/VibratorInfo$Builder;
    .registers 3
    .param p1, "capabilities"    # J

    .line 1187
    iput-wide p1, p0, Landroid/os/VibratorInfo$Builder;->mCapabilities:J

    .line 1188
    return-object p0
.end method

.method public blacklist setCompositionSizeMax(I)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "compositionSizeMax"    # I

    .line 1236
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mCompositionSizeMax:I

    .line 1237
    return-object p0
.end method

.method public blacklist setFrequencyProfile(Landroid/os/VibratorInfo$FrequencyProfile;)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "frequencyProfile"    # Landroid/os/VibratorInfo$FrequencyProfile;

    .line 1260
    iput-object p1, p0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    .line 1261
    return-object p0
.end method

.method public blacklist setFrequencyProfileLegacy(Landroid/os/VibratorInfo$FrequencyProfileLegacy;)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "frequencyProfile"    # Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    .line 1250
    iput-object p1, p0, Landroid/os/VibratorInfo$Builder;->mFrequencyProfileLegacy:Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    .line 1251
    return-object p0
.end method

.method public blacklist setMaxEnvelopeEffectControlPointDurationMillis(I)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "maxEnvelopeEffectControlPointDuration"    # I

    .line 1292
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mMaxEnvelopeEffectControlPointDurationMillis:I

    .line 1293
    return-object p0
.end method

.method public blacklist setMaxEnvelopeEffectSize(I)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "maxEnvelopeEffectSize"    # I

    .line 1270
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mMaxEnvelopeEffectSize:I

    .line 1271
    return-object p0
.end method

.method public blacklist setMinEnvelopeEffectControlPointDurationMillis(I)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "minEnvelopeEffectControlPointDuration"    # I

    .line 1281
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mMinEnvelopeEffectControlPointDurationMillis:I

    .line 1282
    return-object p0
.end method

.method public blacklist setPrimitiveDelayMax(I)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "primitiveDelayMax"    # I

    .line 1229
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mPrimitiveDelayMax:I

    .line 1230
    return-object p0
.end method

.method public blacklist setPwlePrimitiveDurationMax(I)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "pwlePrimitiveDurationMax"    # I

    .line 1208
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mPwlePrimitiveDurationMax:I

    .line 1209
    return-object p0
.end method

.method public blacklist setPwleSizeMax(I)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "pwleSizeMax"    # I

    .line 1215
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mPwleSizeMax:I

    .line 1216
    return-object p0
.end method

.method public blacklist setQFactor(F)Landroid/os/VibratorInfo$Builder;
    .registers 2
    .param p1, "qFactor"    # F

    .line 1243
    iput p1, p0, Landroid/os/VibratorInfo$Builder;->mQFactor:F

    .line 1244
    return-object p0
.end method

.method public varargs blacklist setSupportedBraking([I)Landroid/os/VibratorInfo$Builder;
    .registers 3
    .param p1, "supportedBraking"    # [I

    .line 1201
    invoke-static {p1}, Landroid/os/VibratorInfo$Builder;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo$Builder;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    .line 1202
    return-object p0
.end method

.method public varargs blacklist setSupportedEffects([I)Landroid/os/VibratorInfo$Builder;
    .registers 3
    .param p1, "supportedEffects"    # [I

    .line 1194
    invoke-static {p1}, Landroid/os/VibratorInfo$Builder;->toSparseBooleanArray([I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo$Builder;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    .line 1195
    return-object p0
.end method

.method public blacklist setSupportedPrimitive(II)Landroid/os/VibratorInfo$Builder;
    .registers 4
    .param p1, "primitiveId"    # I
    .param p2, "duration"    # I

    .line 1222
    iget-object v0, p0, Landroid/os/VibratorInfo$Builder;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1223
    return-object p0
.end method
