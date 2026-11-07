.class public final Landroid/graphics/Gainmap;
.super Ljava/lang/Object;
.source "Gainmap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Gainmap$NoImagePreloadHolder;,
        Landroid/graphics/Gainmap$GainmapDirection;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Gainmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GAINMAP_DIRECTION_HDR_TO_SDR:I = 0x1

.field public static final whitelist GAINMAP_DIRECTION_SDR_TO_HDR:I


# instance fields
.field private blacklist mGainmapContents:Landroid/graphics/Bitmap;

.field final blacklist mNativePtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetFinalizer()J
    .registers 2

    invoke-static {}, Landroid/graphics/Gainmap;->nGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnReadGainmapFromParcel(JLandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/Gainmap;->nReadGainmapFromParcel(JLandroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 408
    new-instance v0, Landroid/graphics/Gainmap$1;

    invoke-direct {v0}, Landroid/graphics/Gainmap$1;-><init>()V

    sput-object v0, Landroid/graphics/Gainmap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "gainmapContents"    # Landroid/graphics/Bitmap;

    .line 151
    invoke-static {}, Landroid/graphics/Gainmap;->nCreateEmpty()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;J)V

    .line 152
    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Bitmap;J)V
    .registers 6
    .param p1, "gainmapContents"    # Landroid/graphics/Bitmap;
    .param p2, "nativeGainmap"    # J

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_14

    .line 129
    iput-wide p2, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    .line 130
    invoke-virtual {p0, p1}, Landroid/graphics/Gainmap;->setGainmapContents(Landroid/graphics/Bitmap;)V

    .line 132
    sget-object v0, Landroid/graphics/Gainmap$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p2, p3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 133
    return-void

    .line 126
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "internal error: native gainmap is 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/graphics/Gainmap;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "gainmap"    # Landroid/graphics/Gainmap;
    .param p2, "gainmapContents"    # Landroid/graphics/Bitmap;

    .line 160
    iget-wide v0, p1, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Gainmap;->nCreateCopy(J)J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;J)V

    .line 161
    return-void
.end method

.method private static native blacklist nCreateCopy(J)J
.end method

.method private static native blacklist nCreateEmpty()J
.end method

.method private static native blacklist nGetAlternativeColorSpace(J)Landroid/graphics/ColorSpace;
.end method

.method private static native blacklist nGetDirection(J)I
.end method

.method private static native blacklist nGetDisplayRatioHdr(J)F
.end method

.method private static native blacklist nGetDisplayRatioSdr(J)F
.end method

.method private static native blacklist nGetEpsilonHdr(J[F)V
.end method

.method private static native blacklist nGetEpsilonSdr(J[F)V
.end method

.method private static native blacklist nGetFinalizer()J
.end method

.method private static native blacklist nGetGamma(J[F)V
.end method

.method private static native blacklist nGetRatioMax(J[F)V
.end method

.method private static native blacklist nGetRatioMin(J[F)V
.end method

.method private static native blacklist nReadGainmapFromParcel(JLandroid/os/Parcel;)V
.end method

.method private static native blacklist nSetAlternativeColorSpace(JJ)V
.end method

.method private static native blacklist nSetBitmap(JLandroid/graphics/Bitmap;)V
.end method

.method private static native blacklist nSetDirection(JI)V
.end method

.method private static native blacklist nSetDisplayRatioHdr(JF)V
.end method

.method private static native blacklist nSetDisplayRatioSdr(JF)V
.end method

.method private static native blacklist nSetEpsilonHdr(JFFF)V
.end method

.method private static native blacklist nSetEpsilonSdr(JFFF)V
.end method

.method private static native blacklist nSetGamma(JFFF)V
.end method

.method private static native blacklist nSetRatioMax(JFFF)V
.end method

.method private static native blacklist nSetRatioMin(JFFF)V
.end method

.method private static native blacklist nWriteGainmapToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public blacklist asShared()Landroid/graphics/Gainmap;
    .registers 5

    .line 167
    iget-object v0, p0, Landroid/graphics/Gainmap;->mGainmapContents:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->asShared()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    .local v0, "sharedContents":Landroid/graphics/Bitmap;
    iget-object v1, p0, Landroid/graphics/Gainmap;->mGainmapContents:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_b

    .line 169
    return-object p0

    .line 171
    :cond_b
    new-instance v1, Landroid/graphics/Gainmap;

    iget-wide v2, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/graphics/Gainmap;->nCreateCopy(J)J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;J)V

    return-object v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlternativeImagePrimaries()Landroid/graphics/ColorSpace;
    .registers 3

    .line 360
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Gainmap;->nGetAlternativeColorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayRatioForFullHdr()F
    .registers 3

    .line 311
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Gainmap;->nGetDisplayRatioHdr(J)F

    move-result v0

    return v0
.end method

.method public whitelist getEpsilonHdr()[F
    .registers 4

    .line 288
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 289
    .local v0, "ret":[F
    iget-wide v1, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Gainmap;->nGetEpsilonHdr(J[F)V

    .line 290
    return-object v0
.end method

.method public whitelist getEpsilonSdr()[F
    .registers 4

    .line 269
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 270
    .local v0, "ret":[F
    iget-wide v1, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Gainmap;->nGetEpsilonSdr(J[F)V

    .line 271
    return-object v0
.end method

.method public whitelist getGainmapContents()Landroid/graphics/Bitmap;
    .registers 2

    .line 183
    iget-object v0, p0, Landroid/graphics/Gainmap;->mGainmapContents:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getGainmapDirection()I
    .registers 3

    .line 380
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Gainmap;->nGetDirection(J)I

    move-result v0

    return v0
.end method

.method public whitelist getGamma()[F
    .registers 4

    .line 250
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 251
    .local v0, "ret":[F
    iget-wide v1, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Gainmap;->nGetGamma(J[F)V

    .line 252
    return-object v0
.end method

.method public whitelist getMinDisplayRatioForHdrTransition()F
    .registers 3

    .line 332
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/Gainmap;->nGetDisplayRatioSdr(J)F

    move-result v0

    return v0
.end method

.method public whitelist getRatioMax()[F
    .registers 4

    .line 232
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 233
    .local v0, "ret":[F
    iget-wide v1, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Gainmap;->nGetRatioMax(J[F)V

    .line 234
    return-object v0
.end method

.method public whitelist getRatioMin()[F
    .registers 4

    .line 214
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 215
    .local v0, "ret":[F
    iget-wide v1, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Gainmap;->nGetRatioMin(J[F)V

    .line 216
    return-object v0
.end method

.method public whitelist setAlternativeImagePrimaries(Landroid/graphics/ColorSpace;)V
    .registers 6
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .line 345
    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v0

    .line 346
    .local v0, "colorSpaceInstance":J
    :goto_9
    iget-wide v2, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Gainmap;->nSetAlternativeColorSpace(JJ)V

    .line 347
    return-void
.end method

.method public whitelist setDisplayRatioForFullHdr(F)V
    .registers 5
    .param p1, "max"    # F

    .line 299
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_12

    .line 303
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Gainmap;->nSetDisplayRatioHdr(JF)V

    .line 304
    return-void

    .line 300
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayRatioForFullHdr must be >= 1.0f, got = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setEpsilonHdr(FFF)V
    .registers 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 279
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Gainmap;->nSetEpsilonHdr(JFFF)V

    .line 280
    return-void
.end method

.method public whitelist setEpsilonSdr(FFF)V
    .registers 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 260
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Gainmap;->nSetEpsilonSdr(JFFF)V

    .line 261
    return-void
.end method

.method public whitelist setGainmapContents(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    .line 197
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Gainmap;->nSetBitmap(JLandroid/graphics/Bitmap;)V

    .line 198
    iput-object p1, p0, Landroid/graphics/Gainmap;->mGainmapContents:Landroid/graphics/Bitmap;

    .line 199
    return-void

    .line 196
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setGainmapDirection(I)V
    .registers 5
    .param p1, "direction"    # I

    .line 368
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 370
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid gainmap direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_1f
    :goto_1f
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Gainmap;->nSetDirection(JI)V

    .line 373
    return-void
.end method

.method public whitelist setGamma(FFF)V
    .registers 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 241
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Gainmap;->nSetGamma(JFFF)V

    .line 242
    return-void
.end method

.method public whitelist setMinDisplayRatioForHdrTransition(F)V
    .registers 5
    .param p1, "min"    # F

    .line 320
    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    if-eqz v0, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_12

    .line 324
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Gainmap;->nSetDisplayRatioSdr(JF)V

    .line 325
    return-void

    .line 321
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMinDisplayRatioForHdrTransition must be >= 1.0f, got = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRatioMax(FFF)V
    .registers 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 223
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Gainmap;->nSetRatioMax(JFFF)V

    .line 224
    return-void
.end method

.method public whitelist setRatioMin(FFF)V
    .registers 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .line 205
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/Gainmap;->nSetRatioMin(JFFF)V

    .line 206
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 400
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 403
    iget-object v0, p0, Landroid/graphics/Gainmap;->mGainmapContents:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 405
    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Gainmap;->nWriteGainmapToParcel(JLandroid/os/Parcel;)V

    .line 406
    return-void

    .line 401
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be written to a parcel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
