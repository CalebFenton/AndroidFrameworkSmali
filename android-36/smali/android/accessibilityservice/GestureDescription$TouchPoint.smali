.class public Landroid/accessibilityservice/GestureDescription$TouchPoint;
.super Ljava/lang/Object;
.source "GestureDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchPoint"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o FLAG_IS_END_OF_PATH:I = 0x2

.field private static final greylist-max-o FLAG_IS_START_OF_PATH:I = 0x1


# instance fields
.field public greylist-max-o mContinuedStrokeId:I

.field public greylist-max-o mIsEndOfPath:Z

.field public greylist-max-o mIsStartOfPath:Z

.field public greylist-max-o mStrokeId:I

.field public greylist-max-o mX:F

.field public greylist-max-o mY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 493
    new-instance v0, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .registers 2
    .param p1, "pointToCopy"    # Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 444
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 450
    .local v0, "startEnd":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    iput-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 451
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_23

    move v2, v3

    :cond_23
    iput-boolean v2, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 454
    return-void
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .registers 3
    .param p1, "other"    # Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 457
    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 458
    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 459
    iget-boolean v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    iput-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 460
    iget-boolean v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    iput-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 461
    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 462
    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 463
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TouchPoint{mStrokeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mContinuedStrokeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsStartOfPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsEndOfPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 484
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 487
    .local v0, "startEnd":I
    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v1, :cond_12

    const/4 v1, 0x2

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    or-int/2addr v0, v1

    .line 488
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 490
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 491
    return-void
.end method
