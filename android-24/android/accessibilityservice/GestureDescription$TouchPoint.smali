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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/GestureDescription$TouchPoint$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_IS_END_OF_PATH:I = 0x2

.field private static final FLAG_IS_START_OF_PATH:I = 0x1


# instance fields
.field mIsEndOfPath:Z

.field mIsStartOfPath:Z

.field mPathIndex:I

.field mX:F

.field mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 363
    new-instance v0, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;

    #@2
    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;-><init>()V

    #@5
    .line 362
    sput-object v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 313
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .locals 0
    .param p1, "pointToCopy"    # Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@0
    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 327
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    #@6
    .line 326
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v1

    #@9
    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    #@b
    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v0

    #@f
    .line 333
    .local v0, "startEnd":I
    and-int/lit8 v1, v0, 0x1

    #@11
    if-eqz v1, :cond_0

    #@13
    move v1, v2

    #@14
    :goto_0
    iput-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    #@16
    .line 334
    and-int/lit8 v1, v0, 0x2

    #@18
    if-eqz v1, :cond_1

    #@1a
    :goto_1
    iput-boolean v2, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    #@1c
    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@1f
    move-result v1

    #@20
    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    #@22
    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@25
    move-result v1

    #@26
    iput v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    #@28
    .line 330
    return-void

    #@29
    :cond_0
    move v1, v3

    #@2a
    .line 333
    goto :goto_0

    #@2b
    :cond_1
    move v2, v3

    #@2c
    .line 334
    goto :goto_1
.end method


# virtual methods
.method copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .locals 1
    .param p1, "other"    # Landroid/accessibilityservice/GestureDescription$TouchPoint;

    #@0
    .prologue
    .line 340
    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    #@2
    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    #@4
    .line 341
    iget-boolean v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    #@6
    iput-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    #@8
    .line 342
    iget-boolean v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    #@a
    iput-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    #@c
    .line 343
    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    #@e
    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    #@10
    .line 344
    iget v0, p1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    #@12
    iput v0, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    #@14
    .line 339
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 349
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 354
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    #@2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 355
    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 356
    .local v0, "startEnd":I
    :goto_0
    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    #@c
    if-eqz v1, :cond_1

    #@e
    const/4 v1, 0x2

    #@f
    :goto_1
    or-int/2addr v0, v1

    #@10
    .line 357
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 358
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    #@15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@18
    .line 359
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    #@1a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@1d
    .line 353
    return-void

    #@1e
    .line 355
    .end local v0    # "startEnd":I
    :cond_0
    const/4 v0, 0x0

    #@1f
    .restart local v0    # "startEnd":I
    goto :goto_0

    #@20
    .line 356
    :cond_1
    const/4 v1, 0x0

    #@21
    goto :goto_1
.end method
