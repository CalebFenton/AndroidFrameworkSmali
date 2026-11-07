.class public Landroid/view/InsetsState;
.super Ljava/lang/Object;
.source "InsetsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsState$OnTraverseCallbacks;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

.field private final blacklist mDisplayFrame:Landroid/graphics/Rect;

.field private blacklist mDisplayShape:Landroid/view/DisplayShape;

.field private blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private final blacklist mRoundedCornerFrame:Landroid/graphics/Rect;

.field private blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private blacklist mSeq:I

.field private final blacklist mSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 814
    new-instance v0, Landroid/view/InsetsState$1;

    invoke-direct {v0}, Landroid/view/InsetsState$1;-><init>()V

    sput-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 92
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 95
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 99
    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 102
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsState;->mSeq:I

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 92
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 95
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 99
    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 102
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsState;->mSeq:I

    .line 790
    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->readFromParcel(Landroid/os/Parcel;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 791
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsState;)V
    .registers 3
    .param p1, "copy"    # Landroid/view/InsetsState;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    .line 110
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsState;Z)V
    .registers 5
    .param p1, "copy"    # Landroid/view/InsetsState;
    .param p2, "copySources"    # Z

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 78
    new-instance v0, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 92
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 95
    new-instance v0, Landroid/view/PrivacyIndicatorBounds;

    invoke-direct {v0}, Landroid/view/PrivacyIndicatorBounds;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 99
    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 102
    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsState;->mSeq:I

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 114
    invoke-virtual {p0, p1, p2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 115
    return-void
.end method

.method private blacklist calculateRelativeCutout(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .registers 8
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 199
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 200
    .local v0, "raw":Landroid/view/DisplayCutout;
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 201
    return-object v0

    .line 203
    :cond_f
    if-nez p1, :cond_14

    .line 204
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v1

    .line 206
    :cond_14
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 207
    .local v1, "insetLeft":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 208
    .local v2, "insetTop":I
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 209
    .local v3, "insetRight":I
    iget-object v4, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 210
    .local v4, "insetBottom":I
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v5

    if-lt v1, v5, :cond_4b

    .line 211
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    if-lt v2, v5, :cond_4b

    .line 212
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v5

    if-lt v3, v5, :cond_4b

    .line 213
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v5

    if-lt v4, v5, :cond_4b

    .line 214
    sget-object v5, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v5

    .line 216
    :cond_4b
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v5

    return-object v5
.end method

.method private blacklist calculateRelativeDisplayShape(Landroid/graphics/Rect;)Landroid/view/DisplayShape;
    .registers 5
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 261
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 262
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    return-object v0

    .line 264
    :cond_b
    if-nez p1, :cond_10

    .line 265
    sget-object v0, Landroid/view/DisplayShape;->NONE:Landroid/view/DisplayShape;

    return-object v0

    .line 267
    :cond_10
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/DisplayShape;->setOffset(II)Landroid/view/DisplayShape;

    move-result-object v0

    return-object v0
.end method

.method private blacklist calculateRelativePrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;
    .registers 7
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 247
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 248
    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object v0

    .line 250
    :cond_b
    if-nez p1, :cond_f

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_f
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 254
    .local v0, "insetLeft":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 255
    .local v1, "insetTop":I
    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    .line 256
    .local v2, "insetRight":I
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 257
    .local v3, "insetBottom":I
    iget-object v4, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/PrivacyIndicatorBounds;->inset(IIII)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v4

    return-object v4
.end method

.method private blacklist calculateRelativeRoundedCorners(Landroid/graphics/Rect;)Landroid/view/RoundedCorners;
    .registers 8
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 220
    if-nez p1, :cond_5

    .line 221
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    return-object v0

    .line 225
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 226
    .local v0, "roundedCornerFrame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_30

    .line 227
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    .line 228
    .local v2, "source":Landroid/view/InsetsSource;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 229
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v3

    .line 230
    .local v3, "insets":Landroid/graphics/Insets;
    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 226
    .end local v2    # "source":Landroid/view/InsetsSource;
    .end local v3    # "insets":Landroid/graphics/Insets;
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 233
    .end local v1    # "i":I
    :cond_30
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 234
    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, p1, v0}, Landroid/view/RoundedCorners;->insetWithFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/RoundedCorners;

    move-result-object v1

    return-object v1

    .line 236
    :cond_45
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 237
    iget-object v1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object v1

    .line 239
    :cond_50
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 240
    .local v1, "insetLeft":I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 241
    .local v2, "insetTop":I
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 242
    .local v3, "insetRight":I
    iget-object v4, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 243
    .local v4, "insetBottom":I
    iget-object v5, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/view/RoundedCorners;->inset(IIII)Landroid/view/RoundedCorners;

    move-result-object v5

    return-object v5
.end method

.method private static blacklist canControlSource(Landroid/graphics/Rect;Landroid/view/InsetsSource;)Z
    .registers 8
    .param p0, "frame"    # Landroid/graphics/Rect;
    .param p1, "source"    # Landroid/view/InsetsSource;

    .line 338
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v1

    .line 339
    .local v1, "insets":Landroid/graphics/Insets;
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 340
    .local v2, "sourceFrame":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 341
    .local v3, "sourceWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 342
    .local v4, "sourceHeight":I
    iget v5, v1, Landroid/graphics/Insets;->left:I

    if-eq v5, v3, :cond_23

    iget v5, v1, Landroid/graphics/Insets;->right:I

    if-eq v5, v3, :cond_23

    iget v5, v1, Landroid/graphics/Insets;->top:I

    if-eq v5, v4, :cond_23

    iget v5, v1, Landroid/graphics/Insets;->bottom:I

    if-ne v5, v4, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :cond_23
    :goto_23
    return v0
.end method

.method public static blacklist clearsCompatInsets(IIII)Z
    .registers 5
    .param p0, "windowType"    # I
    .param p1, "windowFlags"    # I
    .param p2, "activityType"    # I
    .param p3, "forceConsumingTypes"    # I

    .line 670
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_12

    const/16 v0, 0x7dd

    if-eq p0, v0, :cond_12

    const/16 v0, 0x7da

    if-eq p0, v0, :cond_12

    const/4 v0, 0x1

    if-eqz p3, :cond_11

    if-eq p2, v0, :cond_12

    :cond_11
    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static blacklist concatenate([Landroid/graphics/Rect;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;
    .registers 6
    .param p0, "a"    # [Landroid/graphics/Rect;
    .param p1, "b"    # [Landroid/graphics/Rect;

    .line 418
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 419
    .local v0, "c":[Landroid/graphics/Rect;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    return-object v0
.end method

.method private blacklist processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;)V
    .registers 18
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "relativeFrame"    # Landroid/graphics/Rect;
    .param p3, "ignoreVisibility"    # Z
    .param p4, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p5, "idSideMap"    # Landroid/util/SparseIntArray;
    .param p6, "typeVisibilityMap"    # [Z
    .param p7, "typeBoundingRectsMap"    # [[Landroid/graphics/Rect;

    .line 349
    invoke-virtual/range {p1 .. p3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v6

    .line 350
    .local v6, "insets":Landroid/graphics/Insets;
    invoke-virtual/range {p1 .. p3}, Landroid/view/InsetsSource;->calculateBoundingRects(Landroid/graphics/Rect;Z)[Landroid/graphics/Rect;

    move-result-object v7

    .line 352
    .local v7, "boundingRects":[Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v8

    .line 353
    .local v8, "type":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    .line 356
    move v9, v8

    .end local v8    # "type":I
    .local v9, "type":I
    const/16 v0, 0x20

    if-ne v9, v0, :cond_29

    .line 362
    const/16 v8, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    .line 365
    :cond_29
    const/4 v0, 0x4

    if-ne v9, v0, :cond_43

    .line 369
    const/16 v8, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    .line 371
    const/16 v8, 0x20

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    .line 373
    const/16 v8, 0x40

    invoke-direct/range {v0 .. v8}, Landroid/view/InsetsState;->processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V

    .line 376
    :cond_43
    return-void
.end method

.method private blacklist processSourceAsPublicType(Landroid/view/InsetsSource;[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p3, "idSideMap"    # Landroid/util/SparseIntArray;
    .param p4, "typeVisibilityMap"    # [Z
    .param p5, "typeBoundingRectsMap"    # [[Landroid/graphics/Rect;
    .param p6, "insets"    # Landroid/graphics/Insets;
    .param p7, "boundingRects"    # [Landroid/graphics/Rect;
    .param p8, "type"    # I

    .line 382
    invoke-static {p8}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    .line 387
    .local v0, "index":I
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v1, p6}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 388
    aget-object v1, p2, v0

    .line 389
    .local v1, "existing":Landroid/graphics/Insets;
    if-nez v1, :cond_13

    .line 390
    aput-object p6, p2, v0

    goto :goto_19

    .line 392
    :cond_13
    invoke-static {v1, p6}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v2

    aput-object v2, p2, v0

    .line 396
    .end local v1    # "existing":Landroid/graphics/Insets;
    :cond_19
    :goto_19
    if-eqz p4, :cond_21

    .line 397
    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    aput-boolean v1, p4, v0

    .line 400
    :cond_21
    if-eqz p3, :cond_31

    .line 401
    invoke-static {p6}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v1

    .line 402
    .local v1, "insetSide":I
    const/4 v2, 0x5

    if-eq v1, v2, :cond_31

    .line 403
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result v2

    invoke-virtual {p3, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 407
    .end local v1    # "insetSide":I
    :cond_31
    if-eqz p5, :cond_43

    array-length v1, p7

    if-lez v1, :cond_43

    .line 408
    aget-object v1, p5, v0

    .line 409
    .local v1, "existing":[Landroid/graphics/Rect;
    if-nez v1, :cond_3d

    .line 410
    aput-object p7, p5, v0

    goto :goto_43

    .line 412
    :cond_3d
    invoke-static {v1, p7}, Landroid/view/InsetsState;->concatenate([Landroid/graphics/Rect;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, p5, v0

    .line 415
    .end local v1    # "existing":[Landroid/graphics/Rect;
    :cond_43
    :goto_43
    return-void
.end method

.method public static blacklist traverse(Landroid/view/InsetsState;Landroid/view/InsetsState;Landroid/view/InsetsState$OnTraverseCallbacks;)V
    .registers 11
    .param p0, "state1"    # Landroid/view/InsetsState;
    .param p1, "state2"    # Landroid/view/InsetsState;
    .param p2, "cb"    # Landroid/view/InsetsState$OnTraverseCallbacks;

    .line 879
    invoke-interface {p2, p0, p1}, Landroid/view/InsetsState$OnTraverseCallbacks;->onStart(Landroid/view/InsetsState;Landroid/view/InsetsState;)V

    .line 880
    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    .line 881
    .local v0, "size1":I
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v1

    .line 882
    .local v1, "size2":I
    const/4 v2, 0x0

    .line 883
    .local v2, "index1":I
    const/4 v3, 0x0

    .line 884
    .local v3, "index2":I
    :goto_d
    if-ge v2, v0, :cond_53

    if-ge v3, v1, :cond_53

    .line 885
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v4

    .line 886
    .local v4, "id1":I
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v5

    .line 887
    .local v5, "id2":I
    :goto_19
    if-eq v4, v5, :cond_3d

    .line 888
    if-ge v4, v5, :cond_2d

    .line 889
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v6

    invoke-interface {p2, v2, v6}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState2(ILandroid/view/InsetsSource;)V

    .line 890
    add-int/lit8 v2, v2, 0x1

    .line 891
    if-ge v2, v0, :cond_3d

    .line 892
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v4

    goto :goto_19

    .line 897
    :cond_2d
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v6

    invoke-interface {p2, v3, v6}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState1(ILandroid/view/InsetsSource;)V

    .line 898
    add-int/lit8 v3, v3, 0x1

    .line 899
    if-ge v3, v1, :cond_3d

    .line 900
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceIdAt(I)I

    move-result v5

    goto :goto_19

    .line 906
    :cond_3d
    if-ge v2, v0, :cond_53

    if-lt v3, v1, :cond_42

    .line 907
    goto :goto_53

    .line 909
    :cond_42
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v6

    .line 910
    .local v6, "source1":Landroid/view/InsetsSource;
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v7

    .line 911
    .local v7, "source2":Landroid/view/InsetsSource;
    invoke-interface {p2, v6, v7}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdMatch(Landroid/view/InsetsSource;Landroid/view/InsetsSource;)V

    .line 912
    add-int/lit8 v2, v2, 0x1

    .line 913
    nop

    .end local v4    # "id1":I
    .end local v5    # "id2":I
    .end local v6    # "source1":Landroid/view/InsetsSource;
    .end local v7    # "source2":Landroid/view/InsetsSource;
    add-int/lit8 v3, v3, 0x1

    .line 914
    goto :goto_d

    .line 915
    :cond_53
    :goto_53
    if-ge v3, v1, :cond_5f

    .line 916
    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState1(ILandroid/view/InsetsSource;)V

    .line 917
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 919
    :cond_5f
    :goto_5f
    if-ge v2, v0, :cond_6b

    .line 920
    invoke-virtual {p0, v2}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Landroid/view/InsetsState$OnTraverseCallbacks;->onIdNotFoundInState2(ILandroid/view/InsetsSource;)V

    .line 921
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 923
    :cond_6b
    invoke-interface {p2, p0, p1}, Landroid/view/InsetsState$OnTraverseCallbacks;->onFinish(Landroid/view/InsetsState;Landroid/view/InsetsState;)V

    .line 924
    return-void
.end method


# virtual methods
.method public blacklist addSource(Landroid/view/InsetsSource;)V
    .registers 4
    .param p1, "source"    # Landroid/view/InsetsSource;

    .line 665
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 666
    return-void
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;II)Landroid/graphics/Insets;
    .registers 9
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "types"    # I
    .param p3, "requestedVisibleTypes"    # I

    .line 284
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 285
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_28

    .line 286
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    .line 287
    .local v3, "source":Landroid/view/InsetsSource;
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p2

    and-int/2addr v4, p3

    if-nez v4, :cond_1d

    .line 288
    goto :goto_25

    .line 290
    :cond_1d
    invoke-virtual {v3, p1, v2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 285
    .end local v3    # "source":Landroid/view/InsetsSource;
    :goto_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 292
    .end local v1    # "i":I
    :cond_28
    return-object v0
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;
    .registers 8
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "types"    # I
    .param p3, "ignoreVisibility"    # Z

    .line 271
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 272
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_27

    .line 273
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    .line 274
    .local v2, "source":Landroid/view/InsetsSource;
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    and-int/2addr v3, p2

    if-nez v3, :cond_1c

    .line 275
    goto :goto_24

    .line 277
    :cond_1c
    invoke-virtual {v2, p1, p3}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 272
    .end local v2    # "source":Landroid/view/InsetsSource;
    :goto_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 279
    .end local v1    # "i":I
    :cond_27
    return-object v0
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;
    .registers 40
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "ignoringVisibilityState"    # Landroid/view/InsetsState;
    .param p3, "isScreenRound"    # Z
    .param p4, "legacySoftInputMode"    # I
    .param p5, "legacyWindowFlags"    # I
    .param p6, "legacySystemUiFlags"    # I
    .param p7, "windowType"    # I
    .param p8, "activityType"    # I
    .param p9, "idSideMap"    # Landroid/util/SparseIntArray;

    .line 130
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    const/16 v1, 0xa

    new-array v12, v1, [Landroid/graphics/Insets;

    .line 131
    .local v12, "typeInsetsMap":[Landroid/graphics/Insets;
    new-array v13, v1, [Landroid/graphics/Insets;

    .line 132
    .local v13, "typeMaxInsetsMap":[Landroid/graphics/Insets;
    new-array v6, v1, [Z

    .line 133
    .local v6, "typeVisibilityMap":[Z
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 134
    .local v2, "relativeFrame":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v11, v3

    .line 135
    .local v11, "relativeFrameMax":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 136
    .local v3, "forceConsumingTypes":I
    const/4 v4, 0x0

    .line 137
    .local v4, "forceConsumingOpaqueCaptionBar":Z
    const/4 v5, 0x0

    .line 138
    .local v5, "suppressScrimTypes":I
    new-array v7, v1, [[Landroid/graphics/Rect;

    .line 139
    .local v7, "typeBoundingRectsMap":[[Landroid/graphics/Rect;
    new-array v14, v1, [[Landroid/graphics/Rect;

    .line 140
    .local v14, "typeMaxBoundingRectsMap":[[Landroid/graphics/Rect;
    iget-object v1, v0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    move/from16 v17, v4

    move/from16 v18, v5

    .end local v4    # "forceConsumingOpaqueCaptionBar":Z
    .end local v5    # "suppressScrimTypes":I
    .local v1, "i":I
    .local v17, "forceConsumingOpaqueCaptionBar":Z
    .local v18, "suppressScrimTypes":I
    :goto_2e
    if-ltz v1, :cond_ab

    .line 141
    iget-object v4, v0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsSource;

    .line 142
    .local v4, "source":Landroid/view/InsetsSource;
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    .line 143
    .local v5, "type":I
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFlags()I

    move-result v16

    .line 145
    .local v16, "flags":I
    and-int/lit8 v19, v16, 0x4

    if-eqz v19, :cond_48

    .line 146
    or-int/2addr v3, v5

    move/from16 v19, v3

    goto :goto_4a

    .line 145
    :cond_48
    move/from16 v19, v3

    .line 149
    .end local v3    # "forceConsumingTypes":I
    .local v19, "forceConsumingTypes":I
    :goto_4a
    sget-object v3, Landroid/window/DesktopModeFlags;->ENABLE_CAPTION_COMPAT_INSET_FORCE_CONSUMPTION_ALWAYS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v3}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v3

    if-eqz v3, :cond_59

    and-int/lit8 v3, v16, 0x10

    if-eqz v3, :cond_59

    .line 151
    const/4 v3, 0x1

    move/from16 v17, v3

    .line 154
    :cond_59
    and-int/lit8 v3, v16, 0x1

    if-eqz v3, :cond_61

    .line 155
    or-int v3, v18, v5

    move/from16 v18, v3

    .line 158
    :cond_61
    const/4 v3, 0x0

    move-object v15, v12

    move v12, v1

    move-object v1, v4

    move-object v4, v15

    move v15, v5

    move-object/from16 v5, p9

    .end local v5    # "type":I
    .local v1, "source":Landroid/view/InsetsSource;
    .local v4, "typeInsetsMap":[Landroid/graphics/Insets;
    .local v12, "i":I
    .local v15, "type":I
    invoke-direct/range {v0 .. v7}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;)V

    .line 163
    move-object/from16 v21, v1

    move-object/from16 v29, v2

    move-object/from16 v25, v7

    move/from16 v22, v12

    move-object v7, v14

    move-object v12, v4

    move-object v14, v6

    .end local v1    # "source":Landroid/view/InsetsSource;
    .end local v2    # "relativeFrame":Landroid/graphics/Rect;
    .end local v4    # "typeInsetsMap":[Landroid/graphics/Insets;
    .end local v6    # "typeVisibilityMap":[Z
    .local v7, "typeMaxBoundingRectsMap":[[Landroid/graphics/Rect;
    .local v12, "typeInsetsMap":[Landroid/graphics/Insets;
    .local v14, "typeVisibilityMap":[Z
    .local v21, "source":Landroid/view/InsetsSource;
    .local v22, "i":I
    .local v25, "typeBoundingRectsMap":[[Landroid/graphics/Rect;
    .local v29, "relativeFrame":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    if-eq v15, v0, :cond_9b

    .line 164
    if-eqz v9, :cond_89

    .line 165
    invoke-virtual/range {v21 .. v21}, Landroid/view/InsetsSource;->getId()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    move-object v1, v4

    goto :goto_8b

    .line 166
    :cond_89
    move-object/from16 v1, v21

    :goto_8b
    nop

    .line 167
    .local v1, "ignoringVisibilitySource":Landroid/view/InsetsSource;
    if-nez v1, :cond_90

    .line 168
    move-object v2, v11

    goto :goto_9c

    .line 170
    :cond_90
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object v2, v11

    move-object v4, v13

    .end local v11    # "relativeFrameMax":Landroid/graphics/Rect;
    .end local v13    # "typeMaxInsetsMap":[Landroid/graphics/Insets;
    .local v2, "relativeFrameMax":Landroid/graphics/Rect;
    .local v4, "typeMaxInsetsMap":[Landroid/graphics/Insets;
    invoke-direct/range {v0 .. v7}, Landroid/view/InsetsState;->processSource(Landroid/view/InsetsSource;Landroid/graphics/Rect;Z[Landroid/graphics/Insets;Landroid/util/SparseIntArray;[Z[[Landroid/graphics/Rect;)V

    .end local v4    # "typeMaxInsetsMap":[Landroid/graphics/Insets;
    .restart local v13    # "typeMaxInsetsMap":[Landroid/graphics/Insets;
    goto :goto_9c

    .line 163
    .end local v1    # "ignoringVisibilitySource":Landroid/view/InsetsSource;
    .end local v2    # "relativeFrameMax":Landroid/graphics/Rect;
    .restart local v11    # "relativeFrameMax":Landroid/graphics/Rect;
    :cond_9b
    move-object v2, v11

    .line 140
    .end local v11    # "relativeFrameMax":Landroid/graphics/Rect;
    .end local v15    # "type":I
    .end local v16    # "flags":I
    .end local v21    # "source":Landroid/view/InsetsSource;
    .restart local v2    # "relativeFrameMax":Landroid/graphics/Rect;
    :goto_9c
    add-int/lit8 v1, v22, -0x1

    move-object/from16 v0, p0

    move-object v11, v2

    move-object v6, v14

    move/from16 v3, v19

    move-object/from16 v2, v29

    const/4 v15, 0x1

    move-object v14, v7

    move-object/from16 v7, v25

    .end local v22    # "i":I
    .local v1, "i":I
    goto :goto_2e

    .end local v19    # "forceConsumingTypes":I
    .end local v25    # "typeBoundingRectsMap":[[Landroid/graphics/Rect;
    .end local v29    # "relativeFrame":Landroid/graphics/Rect;
    .local v2, "relativeFrame":Landroid/graphics/Rect;
    .restart local v3    # "forceConsumingTypes":I
    .restart local v6    # "typeVisibilityMap":[Z
    .local v7, "typeBoundingRectsMap":[[Landroid/graphics/Rect;
    .restart local v11    # "relativeFrameMax":Landroid/graphics/Rect;
    .local v14, "typeMaxBoundingRectsMap":[[Landroid/graphics/Rect;
    :cond_ab
    move/from16 v22, v1

    move-object/from16 v29, v2

    move-object/from16 v25, v7

    move-object v2, v11

    move-object v7, v14

    move-object v14, v6

    .line 175
    .end local v1    # "i":I
    .end local v6    # "typeVisibilityMap":[Z
    .end local v11    # "relativeFrameMax":Landroid/graphics/Rect;
    .local v2, "relativeFrameMax":Landroid/graphics/Rect;
    .local v7, "typeMaxBoundingRectsMap":[[Landroid/graphics/Rect;
    .local v14, "typeVisibilityMap":[Z
    .restart local v25    # "typeBoundingRectsMap":[[Landroid/graphics/Rect;
    .restart local v29    # "relativeFrame":Landroid/graphics/Rect;
    move/from16 v0, p4

    and-int/lit16 v1, v0, 0xf0

    .line 177
    .local v1, "softInputAdjustMode":I
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v5

    or-int/2addr v4, v5

    .line 178
    .local v4, "compatInsetsTypes":I
    const/16 v5, 0x10

    if-ne v1, v5, :cond_ca

    .line 179
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    or-int/2addr v4, v5

    .line 181
    :cond_ca
    and-int/lit16 v5, v10, 0x400

    if-eqz v5, :cond_d4

    .line 182
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    not-int v5, v5

    and-int/2addr v4, v5

    .line 184
    :cond_d4
    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static {v5, v10, v6, v3}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    move-result v11

    if-eqz v11, :cond_e2

    .line 185
    const/4 v4, 0x0

    move/from16 v23, v4

    goto :goto_e4

    .line 184
    :cond_e2
    move/from16 v23, v4

    .line 188
    .end local v4    # "compatInsetsTypes":I
    .local v23, "compatInsetsTypes":I
    :goto_e4
    new-instance v11, Landroid/view/WindowInsets;

    .line 190
    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeCutout(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v19

    .line 191
    const/4 v4, 0x1

    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeRoundedCorners(Landroid/graphics/Rect;)Landroid/view/RoundedCorners;

    move-result-object v20

    .line 192
    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativePrivacyIndicatorBounds(Landroid/graphics/Rect;)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v21

    .line 193
    invoke-direct/range {p0 .. p1}, Landroid/view/InsetsState;->calculateRelativeDisplayShape(Landroid/graphics/Rect;)Landroid/view/DisplayShape;

    move-result-object v22

    move/from16 v15, p6

    and-int/lit16 v4, v15, 0x100

    if-eqz v4, :cond_100

    const/16 v24, 0x1

    goto :goto_103

    :cond_100
    const/4 v4, 0x0

    move/from16 v24, v4

    .line 195
    :goto_103
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v27

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v28

    move/from16 v15, p3

    move/from16 v16, v3

    move-object/from16 v26, v7

    .end local v3    # "forceConsumingTypes":I
    .end local v7    # "typeMaxBoundingRectsMap":[[Landroid/graphics/Rect;
    .local v16, "forceConsumingTypes":I
    .local v26, "typeMaxBoundingRectsMap":[[Landroid/graphics/Rect;
    invoke-direct/range {v11 .. v28}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 188
    .end local v26    # "typeMaxBoundingRectsMap":[[Landroid/graphics/Rect;
    .restart local v7    # "typeMaxBoundingRectsMap":[[Landroid/graphics/Rect;
    return-object v11
.end method

.method public blacklist calculateUncontrollableInsetsFromFrame(Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "blocked":I
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_21

    .line 329
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    .line 330
    .local v2, "source":Landroid/view/InsetsSource;
    invoke-static {p1, v2}, Landroid/view/InsetsState;->canControlSource(Landroid/graphics/Rect;Landroid/view/InsetsSource;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 331
    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    or-int/2addr v0, v3

    .line 328
    .end local v2    # "source":Landroid/view/InsetsSource;
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 334
    .end local v1    # "i":I
    :cond_21
    return v0
.end method

.method public blacklist calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;
    .registers 13
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "windowType"    # I
    .param p3, "activityType"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 297
    and-int/lit16 v0, p4, 0xf0

    .line 298
    .local v0, "softInputAdjustMode":I
    const/16 v1, 0x30

    if-eq v0, v1, :cond_15

    .line 299
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1e

    .line 300
    :cond_15
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    :goto_1e
    nop

    .line 301
    .local v1, "visibleInsetsTypes":I
    const/4 v2, 0x0

    .line 302
    .local v2, "forceConsumingTypes":I
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 303
    .local v3, "insets":Landroid/graphics/Insets;
    iget-object v4, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_2a
    if-ltz v4, :cond_53

    .line 304
    iget-object v5, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InsetsSource;

    .line 305
    .local v5, "source":Landroid/view/InsetsSource;
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    move-result v6

    and-int/2addr v6, v1

    if-nez v6, :cond_3c

    .line 306
    goto :goto_50

    .line 308
    :cond_3c
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 309
    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    move-result v6

    or-int/2addr v2, v6

    .line 311
    :cond_48
    invoke-virtual {v5, p1}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v3

    .line 303
    .end local v5    # "source":Landroid/view/InsetsSource;
    :goto_50
    add-int/lit8 v4, v4, -0x1

    goto :goto_2a

    .line 313
    .end local v4    # "i":I
    :cond_53
    invoke-static {p2, p5, p3, v2}, Landroid/view/InsetsState;->clearsCompatInsets(IIII)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 314
    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_5d

    .line 315
    :cond_5c
    move-object v4, v3

    .line 313
    :goto_5d
    return-object v4
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "newPrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "InsetsState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDisplayFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDisplayCutout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mRoundedCorners="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mRoundedCornerFrame="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mPrivacyIndicatorBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDisplayShape="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_dc
    if-ge v2, v3, :cond_fd

    .line 689
    iget-object v4, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InsetsSource;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p2}, Landroid/view/InsetsSource;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 688
    add-int/lit8 v2, v2, 0x1

    goto :goto_dc

    .line 691
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_fd
    return-void
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 694
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 695
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    sget v3, Landroid/view/InsetsSource;->ID_IME:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    .line 696
    .local v2, "source":Landroid/view/InsetsSource;
    if-eqz v2, :cond_18

    .line 697
    const-wide v3, 0x20b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/InsetsSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 699
    :cond_18
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 700
    iget-object v3, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v3

    const-wide v4, 0x10b00000003L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/DisplayCutout;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 701
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 702
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZ)Z

    move-result v0

    return v0
.end method

.method public blacklist equals(Ljava/lang/Object;ZZ)Z
    .registers 20
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "excludesCaptionBar"    # Z
    .param p3, "excludesInvisibleIme"    # Z

    .line 721
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_8

    return v2

    .line 722
    :cond_8
    const/4 v3, 0x0

    if-eqz v1, :cond_f7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_17

    goto/16 :goto_f7

    .line 724
    :cond_17
    move-object v4, v1

    check-cast v4, Landroid/view/InsetsState;

    .line 726
    .local v4, "state":Landroid/view/InsetsState;
    iget-object v5, v0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v6, v4, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    iget-object v5, v0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v6, v4, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 727
    invoke-virtual {v5, v6}, Landroid/view/DisplayCutout$ParcelableWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    iget-object v5, v0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v6, v4, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 728
    invoke-virtual {v5, v6}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    iget-object v5, v0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v6, v4, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    .line 729
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    iget-object v5, v0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v6, v4, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 730
    invoke-virtual {v5, v6}, Landroid/view/PrivacyIndicatorBounds;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f6

    iget-object v5, v0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v6, v4, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 731
    invoke-virtual {v5, v6}, Landroid/view/DisplayShape;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    goto/16 :goto_f6

    .line 736
    :cond_58
    iget-object v5, v0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 737
    .local v5, "thisSources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    iget-object v6, v4, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 738
    .local v6, "thatSources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    if-nez p2, :cond_65

    if-nez p3, :cond_65

    .line 739
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v2

    return v2

    .line 741
    :cond_65
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 742
    .local v7, "thisSize":I
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 743
    .local v8, "thatSize":I
    const/4 v9, 0x0

    .line 744
    .local v9, "thisIndex":I
    const/4 v10, 0x0

    .line 745
    .local v10, "thatIndex":I
    :goto_6f
    if-lt v9, v7, :cond_75

    if-ge v10, v8, :cond_74

    goto :goto_75

    .line 779
    :cond_74
    return v2

    .line 746
    :cond_75
    :goto_75
    const/4 v11, 0x0

    if-ge v9, v7, :cond_7f

    .line 747
    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/InsetsSource;

    goto :goto_80

    .line 748
    :cond_7f
    move-object v12, v11

    :goto_80
    nop

    .line 751
    .local v12, "thisSource":Landroid/view/InsetsSource;
    :goto_81
    if-eqz v12, :cond_af

    if-eqz p2, :cond_8f

    .line 752
    invoke-virtual {v12}, Landroid/view/InsetsSource;->getType()I

    move-result v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v14

    if-eq v13, v14, :cond_a1

    :cond_8f
    if-eqz p3, :cond_af

    .line 753
    invoke-virtual {v12}, Landroid/view/InsetsSource;->getType()I

    move-result v13

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v14

    if-ne v13, v14, :cond_af

    .line 754
    invoke-virtual {v12}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v13

    if-nez v13, :cond_af

    .line 755
    :cond_a1
    add-int/lit8 v9, v9, 0x1

    .line 756
    if-ge v9, v7, :cond_ac

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/InsetsSource;

    goto :goto_ad

    :cond_ac
    move-object v13, v11

    :goto_ad
    move-object v12, v13

    goto :goto_81

    .line 759
    :cond_af
    if-ge v10, v8, :cond_b8

    .line 760
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/InsetsSource;

    goto :goto_b9

    .line 761
    :cond_b8
    move-object v13, v11

    :goto_b9
    nop

    .line 764
    .local v13, "thatSource":Landroid/view/InsetsSource;
    :goto_ba
    if-eqz v13, :cond_e8

    if-eqz p2, :cond_c8

    .line 765
    invoke-virtual {v13}, Landroid/view/InsetsSource;->getType()I

    move-result v14

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v15

    if-eq v14, v15, :cond_da

    :cond_c8
    if-eqz p3, :cond_e8

    .line 766
    invoke-virtual {v13}, Landroid/view/InsetsSource;->getType()I

    move-result v14

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v15

    if-ne v14, v15, :cond_e8

    .line 767
    invoke-virtual {v13}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v14

    if-nez v14, :cond_e8

    .line 768
    :cond_da
    add-int/lit8 v10, v10, 0x1

    .line 769
    if-ge v10, v8, :cond_e5

    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/InsetsSource;

    goto :goto_e6

    :cond_e5
    move-object v14, v11

    :goto_e6
    move-object v13, v14

    goto :goto_ba

    .line 772
    :cond_e8
    invoke-static {v12, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_ef

    .line 773
    return v3

    .line 776
    :cond_ef
    add-int/lit8 v9, v9, 0x1

    .line 777
    nop

    .end local v12    # "thisSource":Landroid/view/InsetsSource;
    .end local v13    # "thatSource":Landroid/view/InsetsSource;
    add-int/lit8 v10, v10, 0x1

    .line 778
    goto/16 :goto_6f

    .line 733
    .end local v5    # "thisSources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    .end local v6    # "thatSources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    .end local v7    # "thisSize":I
    .end local v8    # "thatSize":I
    .end local v9    # "thisIndex":I
    .end local v10    # "thatIndex":I
    :cond_f6
    :goto_f6
    return v3

    .line 722
    .end local v4    # "state":Landroid/view/InsetsState;
    :cond_f7
    :goto_f7
    return v3
.end method

.method public blacklist getDisplayCutout()Landroid/view/DisplayCutout;
    .registers 2

    .line 493
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayCutoutSafe(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 497
    const v0, -0x186a0

    const v1, 0x186a0

    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 499
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 500
    .local v0, "cutout":Landroid/view/DisplayCutout;
    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 501
    .local v1, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_53

    .line 502
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    if-lez v2, :cond_26

    .line 503
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 505
    :cond_26
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    if-lez v2, :cond_35

    .line 506
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 508
    :cond_35
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    if-lez v2, :cond_44

    .line 509
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 511
    :cond_44
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    if-lez v2, :cond_53

    .line 512
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 515
    :cond_53
    return-void
.end method

.method public blacklist getDisplayFrame()Landroid/graphics/Rect;
    .registers 2

    .line 485
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getDisplayShape()Landroid/view/DisplayShape;
    .registers 2

    .line 547
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    return-object v0
.end method

.method public blacklist getOrCreateSource(II)Landroid/view/InsetsSource;
    .registers 5
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 428
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    .line 429
    .local v0, "source":Landroid/view/InsetsSource;
    if-eqz v0, :cond_b

    .line 430
    return-object v0

    .line 432
    :cond_b
    new-instance v1, Landroid/view/InsetsSource;

    invoke-direct {v1, p1, p2}, Landroid/view/InsetsSource;-><init>(II)V

    .line 433
    .end local v0    # "source":Landroid/view/InsetsSource;
    .local v1, "source":Landroid/view/InsetsSource;
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    return-object v1
.end method

.method public blacklist getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;
    .registers 2

    .line 539
    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object v0
.end method

.method public blacklist getRoundedCorners()Landroid/view/RoundedCorners;
    .registers 2

    .line 522
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object v0
.end method

.method public blacklist getSeq()I
    .registers 2

    .line 604
    iget v0, p0, Landroid/view/InsetsState;->mSeq:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 785
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->contentHashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v4, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v5, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isSourceOrDefaultVisible(II)Z
    .registers 5
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 476
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    .line 477
    .local v0, "source":Landroid/view/InsetsSource;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    goto :goto_19

    :cond_f
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    and-int/2addr v1, p2

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public blacklist peekSource(I)Landroid/view/InsetsSource;
    .registers 3
    .param p1, "id"    # I

    .line 441
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)Landroid/util/SparseArray;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation

    .line 826
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 827
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->readFromParcel(Landroid/os/Parcel;)V

    .line 828
    sget-object v0, Landroid/view/RoundedCorners;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RoundedCorners;

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 829
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    .line 830
    sget-object v0, Landroid/view/PrivacyIndicatorBounds;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/PrivacyIndicatorBounds;

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 831
    sget-object v0, Landroid/view/DisplayShape;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/DisplayShape;

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 832
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsState;->mSeq:I

    .line 833
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 835
    .local v0, "size":I
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    if-nez v1, :cond_41

    .line 837
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    .local v1, "sources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    goto :goto_46

    .line 839
    .end local v1    # "sources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    :cond_41
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    .line 840
    .restart local v1    # "sources":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSource;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 842
    :goto_46
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    if-ge v2, v0, :cond_5b

    .line 843
    sget-object v3, Landroid/view/InsetsSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    .line 844
    .local v3, "source":Landroid/view/InsetsSource;
    invoke-virtual {v3}, Landroid/view/InsetsSource;->getId()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 842
    .end local v3    # "source":Landroid/view/InsetsSource;
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 846
    .end local v2    # "i":I
    :cond_5b
    return-object v1
.end method

.method public blacklist removeSource(I)V
    .registers 3
    .param p1, "id"    # I

    .line 556
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 557
    return-void
.end method

.method public blacklist removeSourceAt(I)V
    .registers 3
    .param p1, "index"    # I

    .line 565
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 566
    return-void
.end method

.method public blacklist scale(F)V
    .registers 5
    .param p1, "scale"    # F

    .line 587
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 588
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->scale(F)V

    .line 589
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1}, Landroid/view/RoundedCorners;->scale(F)Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 590
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 591
    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0, p1}, Landroid/view/PrivacyIndicatorBounds;->scale(F)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 592
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v0, p1}, Landroid/view/DisplayShape;->setScale(F)Landroid/view/DisplayShape;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 593
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_2f
    if-ltz v0, :cond_4c

    .line 594
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSource;

    .line 595
    .local v1, "source":Landroid/view/InsetsSource;
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 596
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v2

    .line 597
    .local v2, "visibleFrame":Landroid/graphics/Rect;
    if-eqz v2, :cond_49

    .line 598
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 593
    .end local v1    # "source":Landroid/view/InsetsSource;
    .end local v2    # "visibleFrame":Landroid/graphics/Rect;
    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 601
    .end local v0    # "i":I
    :cond_4c
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;)V
    .registers 3
    .param p1, "other"    # Landroid/view/InsetsState;

    .line 612
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 613
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;I)V
    .registers 7
    .param p1, "other"    # Landroid/view/InsetsState;
    .param p2, "types"    # I

    .line 640
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 641
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 642
    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 643
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 644
    invoke-virtual {p1}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 645
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayShape()Landroid/view/DisplayShape;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 646
    iget v0, p1, Landroid/view/InsetsState;->mSeq:I

    iput v0, p0, Landroid/view/InsetsState;->mSeq:I

    .line 647
    if-nez p2, :cond_2e

    .line 648
    return-void

    .line 650
    :cond_2e
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_36
    if-ltz v0, :cond_4f

    .line 651
    iget-object v1, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSource;

    .line 652
    .local v1, "source":Landroid/view/InsetsSource;
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_4c

    .line 653
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 650
    .end local v1    # "source":Landroid/view/InsetsSource;
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    .line 656
    .end local v0    # "i":I
    :cond_4f
    iget-object v0, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_57
    if-ltz v0, :cond_74

    .line 657
    iget-object v1, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSource;

    .line 658
    .local v1, "otherSource":Landroid/view/InsetsSource;
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    and-int/2addr v2, p2

    if-eqz v2, :cond_71

    .line 659
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 656
    .end local v1    # "otherSource":Landroid/view/InsetsSource;
    :cond_71
    add-int/lit8 v0, v0, -0x1

    goto :goto_57

    .line 662
    .end local v0    # "i":I
    :cond_74
    return-void
.end method

.method public blacklist set(Landroid/view/InsetsState;Z)V
    .registers 9
    .param p1, "other"    # Landroid/view/InsetsState;
    .param p2, "copySources"    # Z

    .line 616
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 617
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v1, p1, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 618
    invoke-virtual {p1}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 619
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 620
    invoke-virtual {p1}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 621
    invoke-virtual {p1}, Landroid/view/InsetsState;->getDisplayShape()Landroid/view/DisplayShape;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 622
    iget v0, p1, Landroid/view/InsetsState;->mSeq:I

    iput v0, p0, Landroid/view/InsetsState;->mSeq:I

    .line 623
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 624
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_37
    if-ge v0, v1, :cond_56

    .line 625
    iget-object v2, p1, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    .line 626
    .local v2, "otherSource":Landroid/view/InsetsSource;
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getId()I

    move-result v4

    if-eqz p2, :cond_4f

    .line 627
    new-instance v5, Landroid/view/InsetsSource;

    invoke-direct {v5, v2}, Landroid/view/InsetsSource;-><init>(Landroid/view/InsetsSource;)V

    goto :goto_50

    .line 628
    :cond_4f
    move-object v5, v2

    .line 626
    :goto_50
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 624
    .end local v2    # "otherSource":Landroid/view/InsetsSource;
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 630
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_56
    return-void
.end method

.method public blacklist setDisplayCutout(Landroid/view/DisplayCutout;)V
    .registers 3
    .param p1, "cutout"    # Landroid/view/DisplayCutout;

    .line 489
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    .line 490
    return-void
.end method

.method public blacklist setDisplayFrame(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 481
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 482
    return-void
.end method

.method public blacklist setDisplayShape(Landroid/view/DisplayShape;)V
    .registers 2
    .param p1, "displayShape"    # Landroid/view/DisplayShape;

    .line 543
    iput-object p1, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    .line 544
    return-void
.end method

.method public blacklist setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)V
    .registers 2
    .param p1, "bounds"    # Landroid/view/PrivacyIndicatorBounds;

    .line 535
    iput-object p1, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 536
    return-void
.end method

.method public blacklist setRoundedCornerFrame(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 531
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 532
    return-void
.end method

.method public blacklist setRoundedCorners(Landroid/view/RoundedCorners;)V
    .registers 2
    .param p1, "roundedCorners"    # Landroid/view/RoundedCorners;

    .line 518
    iput-object p1, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 519
    return-void
.end method

.method public blacklist setSeq(I)V
    .registers 2
    .param p1, "seq"    # I

    .line 608
    iput p1, p0, Landroid/view/InsetsState;->mSeq:I

    .line 609
    return-void
.end method

.method public blacklist setSourceVisible(IZ)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "visible"    # Z

    .line 575
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    .line 576
    .local v0, "source":Landroid/view/InsetsSource;
    if-eqz v0, :cond_d

    .line 577
    invoke-virtual {v0, p2}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    .line 579
    :cond_d
    return-void
.end method

.method public blacklist sourceAt(I)Landroid/view/InsetsSource;
    .registers 3
    .param p1, "index"    # I

    .line 457
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsSource;

    return-object v0
.end method

.method public blacklist sourceIdAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 449
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public blacklist sourceSize()I
    .registers 2

    .line 464
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 851
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 852
    .local v0, "joiner":Ljava/util/StringJoiner;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_e
    if-ge v1, v2, :cond_22

    .line 853
    iget-object v3, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSource;

    invoke-virtual {v3}, Landroid/view/InsetsSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 852
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 855
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsetsState: {mDisplayFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayCutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRoundedCorners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mRoundedCornerFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPrivacyIndicatorBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayShape="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSources= { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 800
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 801
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/view/DisplayCutout$ParcelableWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 802
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 803
    iget-object v0, p0, Landroid/view/InsetsState;->mRoundedCornerFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 804
    iget-object v0, p0, Landroid/view/InsetsState;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 805
    iget-object v0, p0, Landroid/view/InsetsState;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 806
    iget v0, p0, Landroid/view/InsetsState;->mSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    iget-object v0, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 808
    .local v0, "size":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-ge v1, v0, :cond_3d

    .line 810
    iget-object v2, p0, Landroid/view/InsetsState;->mSources:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSource;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 812
    .end local v1    # "i":I
    :cond_3d
    return-void
.end method
