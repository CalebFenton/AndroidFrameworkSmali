.class public Landroid/window/ScreenCapture$CaptureArgs;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$CaptureArgs$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/ScreenCapture$CaptureArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mAllowProtected:Z

.field public final blacklist mCaptureSecureLayers:Z

.field final blacklist mExcludeLayers:[Landroid/view/SurfaceControl;

.field public final blacklist mFrameScaleX:F

.field public final blacklist mFrameScaleY:F

.field public final blacklist mGrayscale:Z

.field public final blacklist mHintForSeamlessTransition:Z

.field public final blacklist mPixelFormat:I

.field public final blacklist mSourceCrop:Landroid/graphics/Rect;

.field public final blacklist mUid:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 537
    new-instance v0, Landroid/window/ScreenCapture$CaptureArgs$1;

    invoke-direct {v0}, Landroid/window/ScreenCapture$CaptureArgs$1;-><init>()V

    sput-object v0, Landroid/window/ScreenCapture$CaptureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mPixelFormat:I

    .line 326
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleX:F

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleY:F

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mCaptureSecureLayers:Z

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mAllowProtected:Z

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mUid:J

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mGrayscale:Z

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .local v0, "excludeLayersLength":I
    if-lez v0, :cond_56

    .line 336
    new-array v1, v0, [Landroid/view/SurfaceControl;

    iput-object v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 337
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_44
    if-ge v1, v0, :cond_55

    .line 338
    iget-object v2, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    aput-object v3, v2, v1

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .end local v1    # "index":I
    :cond_55
    goto :goto_59

    .line 341
    :cond_56
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 343
    :goto_59
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/window/ScreenCapture$CaptureArgs;->mHintForSeamlessTransition:Z

    .line 344
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/ScreenCapture-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/ScreenCapture$CaptureArgs$Builder<",
            "+",
            "Landroid/window/ScreenCapture$CaptureArgs$Builder<",
            "*>;>;)V"
        }
    .end annotation

    .line 311
    .local p1, "builder":Landroid/window/ScreenCapture$CaptureArgs$Builder;, "Landroid/window/ScreenCapture$CaptureArgs$Builder<+Landroid/window/ScreenCapture$CaptureArgs$Builder<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    .line 312
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmPixelFormat(Landroid/window/ScreenCapture$CaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mPixelFormat:I

    .line 313
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmSourceCrop(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 314
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleX(Landroid/window/ScreenCapture$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleX:F

    .line 315
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmFrameScaleY(Landroid/window/ScreenCapture$CaptureArgs$Builder;)F

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleY:F

    .line 316
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmCaptureSecureLayers(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mCaptureSecureLayers:Z

    .line 317
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmAllowProtected(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mAllowProtected:Z

    .line 318
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmUid(Landroid/window/ScreenCapture$CaptureArgs$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mUid:J

    .line 319
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmGrayscale(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mGrayscale:Z

    .line 320
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmExcludeLayers(Landroid/window/ScreenCapture$CaptureArgs$Builder;)[Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    .line 321
    invoke-static {p1}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->-$$Nest$fgetmHintForSeamlessTransition(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mHintForSeamlessTransition:Z

    .line 322
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;Landroid/window/ScreenCapture-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;)V

    return-void
.end method

.method private blacklist getNativeExcludeLayers()[J
    .registers 5

    .line 364
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_21

    .line 368
    :cond_a
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    new-array v0, v0, [J

    .line 369
    .local v0, "nativeExcludeLayers":[J
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_10
    iget-object v2, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v2, v2

    if-ge v1, v2, :cond_20

    .line 370
    iget-object v2, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    aget-object v2, v2, v1

    iget-wide v2, v2, Landroid/view/SurfaceControl;->mNativeObject:J

    aput-wide v2, v0, v1

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 373
    .end local v1    # "index":I
    :cond_20
    return-object v0

    .line 365
    .end local v0    # "nativeExcludeLayers":[J
    :cond_21
    :goto_21
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist release()V
    .registers 5

    .line 348
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_1b

    .line 352
    :cond_a
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 353
    .local v3, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v3, :cond_17

    .line 354
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    .line 352
    .end local v3    # "surfaceControl":Landroid/view/SurfaceControl;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 357
    :cond_1a
    return-void

    .line 349
    :cond_1b
    :goto_1b
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 518
    iget v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mPixelFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 520
    iget v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 521
    iget v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mFrameScaleY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 522
    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mCaptureSecureLayers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 523
    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mAllowProtected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 524
    iget-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mUid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 525
    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mGrayscale:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 526
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 527
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeLayers:[Landroid/view/SurfaceControl;

    array-length v2, v0

    :goto_36
    if-ge v1, v2, :cond_43

    aget-object v3, v0, v1

    .line 529
    .local v3, "excludeLayer":Landroid/view/SurfaceControl;
    invoke-virtual {v3, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 528
    .end local v3    # "excludeLayer":Landroid/view/SurfaceControl;
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 532
    :cond_40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    :cond_43
    iget-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs;->mHintForSeamlessTransition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 535
    return-void
.end method
