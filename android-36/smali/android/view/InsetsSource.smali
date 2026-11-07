.class public Landroid/view/InsetsSource;
.super Ljava/lang/Object;
.source "InsetsSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSource$Flags;,
        Landroid/view/InsetsSource$InternalInsetsSide;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_ANIMATE_RESIZING:I = 0x8

.field public static final blacklist FLAG_FORCE_CONSUMING:I = 0x4

.field public static final blacklist FLAG_FORCE_CONSUMING_OPAQUE_CAPTION_BAR:I = 0x10

.field public static final blacklist FLAG_INSETS_ROUNDED_CORNER:I = 0x2

.field public static final blacklist FLAG_SUPPRESS_SCRIM:I = 0x1

.field public static final blacklist ID_IME:I

.field public static final blacklist ID_IME_CAPTION_BAR:I

.field private static final blacklist NO_BOUNDING_RECTS:[Landroid/graphics/Rect;

.field static final blacklist SIDE_BOTTOM:I = 0x4

.field static final blacklist SIDE_LEFT:I = 0x1

.field static final blacklist SIDE_NONE:I = 0x0

.field static final blacklist SIDE_RIGHT:I = 0x3

.field static final blacklist SIDE_TOP:I = 0x2

.field static final blacklist SIDE_UNKNOWN:I = 0x5


# instance fields
.field private blacklist mBoundingRects:[Landroid/graphics/Rect;

.field private blacklist mFlags:I

.field private final blacklist mFrame:Landroid/graphics/Rect;

.field private final blacklist mId:I

.field private blacklist mSideHint:I

.field private final blacklist mTmpBoundingRect:Landroid/graphics/Rect;

.field private final blacklist mTmpFrame:Landroid/graphics/Rect;

.field private final blacklist mType:I

.field private blacklist mVisible:Z

.field private blacklist mVisibleFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 71
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Landroid/view/InsetsSource;->ID_IME:I

    .line 74
    nop

    .line 75
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v0

    const/4 v3, 0x1

    invoke-static {v1, v3, v0}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    sput v0, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    .line 131
    new-array v0, v2, [Landroid/graphics/Rect;

    sput-object v0, Landroid/view/InsetsSource;->NO_BOUNDING_RECTS:[Landroid/graphics/Rect;

    .line 717
    new-instance v0, Landroid/view/InsetsSource$1;

    invoke-direct {v0}, Landroid/view/InsetsSource$1;-><init>()V

    sput-object v0, Landroid/view/InsetsSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "type"    # I

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 155
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    .line 156
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    .line 159
    iput p1, p0, Landroid/view/InsetsSource;->mId:I

    .line 160
    iput p2, p0, Landroid/view/InsetsSource;->mType:I

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 162
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v1

    and-int/2addr v1, p2

    if-eqz v1, :cond_27

    const/4 v0, 0x1

    :cond_27
    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 163
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mId:I

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mType:I

    .line 671
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 673
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    goto :goto_3e

    .line 675
    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 677
    :goto_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 680
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 681
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/InsetsSource;)V
    .registers 5
    .param p1, "other"    # Landroid/view/InsetsSource;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    .line 166
    iget v0, p1, Landroid/view/InsetsSource;->mId:I

    iput v0, p0, Landroid/view/InsetsSource;->mId:I

    .line 167
    iget v0, p1, Landroid/view/InsetsSource;->mType:I

    iput v0, p0, Landroid/view/InsetsSource;->mType:I

    .line 168
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 169
    iget-boolean v0, p1, Landroid/view/InsetsSource;->mVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 170
    iget-object v0, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_37

    .line 172
    :cond_36
    move-object v0, v1

    :goto_37
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 173
    iget v0, p1, Landroid/view/InsetsSource;->mFlags:I

    iput v0, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 174
    iget v0, p1, Landroid/view/InsetsSource;->mSideHint:I

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 175
    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_4f

    .line 176
    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {v0}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Landroid/graphics/Rect;

    goto :goto_50

    .line 177
    :cond_4f
    nop

    :goto_50
    iput-object v1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 178
    return-void
.end method

.method private blacklist calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;
    .registers 8
    .param p1, "relativeFrame"    # Landroid/graphics/Rect;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "ignoreVisibility"    # Z

    .line 300
    if-nez p3, :cond_9

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez v0, :cond_9

    .line 301
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v0

    .line 308
    :cond_9
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2e

    .line 309
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getId()I

    move-result v0

    sget v1, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v0, v1, :cond_25

    .line 310
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v2, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_2d

    .line 311
    :cond_25
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v0, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 309
    :goto_2d
    return-object v0

    .line 314
    :cond_2e
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 315
    iget-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-static {p2, p1, v0}, Landroid/view/InsetsSource;->getIntersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_41

    .line 316
    :cond_3b
    iget-object v0, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    :goto_41
    nop

    .line 317
    .local v0, "hasIntersection":Z
    if-nez v0, :cond_47

    .line 318
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v1

    .line 323
    :cond_47
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    if-ne v1, v3, :cond_5c

    .line 324
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 327
    :cond_5c
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 329
    iget v1, p0, Landroid/view/InsetsSource;->mSideHint:I

    packed-switch v1, :pswitch_data_160

    .line 332
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 338
    :pswitch_74
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 336
    :pswitch_7f
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v2, v2, v1, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 334
    :pswitch_8a
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 340
    :cond_95
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v1, v3, :cond_d8

    .line 342
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ne v1, v3, :cond_b4

    .line 343
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 344
    :cond_b4
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v3, :cond_c7

    .line 345
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 350
    :cond_c7
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_15c

    .line 351
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 353
    :cond_d8
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v1, v3, :cond_10a

    .line 355
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v1, v3, :cond_f7

    .line 356
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 357
    :cond_f7
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ne v1, v3, :cond_15c

    .line 358
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v2, v2, v1, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 363
    :cond_10a
    iget v1, p0, Landroid/view/InsetsSource;->mSideHint:I

    packed-switch v1, :pswitch_data_16a

    goto :goto_15c

    .line 380
    :pswitch_110
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v3, :cond_15c

    .line 381
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v2, v2, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 375
    :pswitch_123
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ne v1, v3, :cond_15c

    .line 376
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v2, v2, v1, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 370
    :pswitch_136
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ne v1, v3, :cond_15c

    .line 371
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 365
    :pswitch_149
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-ne v1, v3, :cond_15c

    .line 366
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 386
    :cond_15c
    :goto_15c
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    return-object v1

    nop

    :pswitch_data_160
    .packed-switch 0x2
        :pswitch_8a
        :pswitch_7f
        :pswitch_74
    .end packed-switch

    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_149
        :pswitch_136
        :pswitch_123
        :pswitch_110
    .end packed-switch
.end method

.method public static blacklist createId(Ljava/lang/Object;II)I
    .registers 5
    .param p0, "owner"    # Ljava/lang/Object;
    .param p1, "index"    # I
    .param p2, "type"    # I

    .line 544
    if-ltz p1, :cond_18

    const/16 v0, 0x800

    if-ge p1, v0, :cond_18

    .line 550
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const/high16 v1, 0x10000

    rem-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, p1, 0x5

    add-int/2addr v0, v1

    .line 552
    invoke-static {p2}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 550
    return v0

    .line 545
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static blacklist flagsToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "flags"    # I

    .line 581
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 582
    .local v0, "joiner":Ljava/util/StringJoiner;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_11

    .line 583
    const-string v1, "SUPPRESS_SCRIM"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 585
    :cond_11
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1a

    .line 586
    const-string v1, "INSETS_ROUNDED_CORNER"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 588
    :cond_1a
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_23

    .line 589
    const-string v1, "FORCE_CONSUMING"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 591
    :cond_23
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2c

    .line 592
    const-string v1, "ANIMATE_RESIZING"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 594
    :cond_2c
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_35

    .line 595
    const-string v1, "FORCE_CONSUMING_OPAQUE_CAPTION_BAR"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 597
    :cond_35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getIndex(I)I
    .registers 2
    .param p0, "id"    # I

    .line 564
    const v0, 0xffff

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x5

    return v0
.end method

.method static blacklist getInsetSide(Landroid/graphics/Insets;)I
    .registers 2
    .param p0, "insets"    # Landroid/graphics/Insets;

    .line 497
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, p0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 498
    const/4 v0, 0x0

    return v0

    .line 500
    :cond_a
    iget v0, p0, Landroid/graphics/Insets;->left:I

    if-eqz v0, :cond_10

    .line 501
    const/4 v0, 0x1

    return v0

    .line 503
    :cond_10
    iget v0, p0, Landroid/graphics/Insets;->top:I

    if-eqz v0, :cond_16

    .line 504
    const/4 v0, 0x2

    return v0

    .line 506
    :cond_16
    iget v0, p0, Landroid/graphics/Insets;->right:I

    if-eqz v0, :cond_1c

    .line 507
    const/4 v0, 0x3

    return v0

    .line 509
    :cond_1c
    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    if-eqz v0, :cond_22

    .line 510
    const/4 v0, 0x4

    return v0

    .line 512
    :cond_22
    const/4 v0, 0x5

    return v0
.end method

.method private static blacklist getIntersection(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p0, "a"    # Landroid/graphics/Rect;
    .param p1, "b"    # Landroid/graphics/Rect;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 481
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_42

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_42

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_42

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_42

    .line 482
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 483
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 484
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 485
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 486
    const/4 v0, 0x1

    return v0

    .line 488
    :cond_42
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist getType(I)I
    .registers 3
    .param p0, "id"    # I

    .line 577
    and-int/lit8 v0, p0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method static blacklist sideToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "side"    # I

    .line 516
    packed-switch p0, :pswitch_data_26

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 526
    :pswitch_17
    const-string v0, "BOTTOM"

    return-object v0

    .line 524
    :pswitch_1a
    const-string v0, "RIGHT"

    return-object v0

    .line 522
    :pswitch_1d
    const-string v0, "TOP"

    return-object v0

    .line 520
    :pswitch_20
    const-string v0, "LEFT"

    return-object v0

    .line 518
    :pswitch_23
    const-string v0, "NONE"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public blacklist calculateBoundingRects(Landroid/graphics/Rect;Z)[Landroid/graphics/Rect;
    .registers 16
    .param p1, "relativeFrame"    # Landroid/graphics/Rect;
    .param p2, "ignoreVisibility"    # Z

    .line 393
    if-nez p2, :cond_9

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez v0, :cond_9

    .line 394
    sget-object v0, Landroid/view/InsetsSource;->NO_BOUNDING_RECTS:[Landroid/graphics/Rect;

    return-object v0

    .line 397
    :cond_9
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 398
    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-nez v1, :cond_44

    .line 401
    iget-object v1, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 402
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v3, v1, v2

    goto :goto_43

    .line 410
    :cond_41
    sget-object v1, Landroid/view/InsetsSource;->NO_BOUNDING_RECTS:[Landroid/graphics/Rect;

    .line 401
    :goto_43
    return-object v1

    .line 419
    :cond_44
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v3

    if-ne v1, v3, :cond_90

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v1, "validBoundingRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v3, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    array-length v4, v3

    move v5, v2

    :goto_57
    if-ge v5, v4, :cond_83

    aget-object v6, v3, v5

    .line 426
    .local v6, "boundingRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 427
    .local v7, "frameHeight":I
    iget-object v8, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 428
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getId()I

    move-result v8

    sget v9, Landroid/view/InsetsSource;->ID_IME_CAPTION_BAR:I

    if-ne v8, v9, :cond_76

    .line 429
    iget-object v8, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v8, v2, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 431
    :cond_76
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .end local v6    # "boundingRect":Landroid/graphics/Rect;
    .end local v7    # "frameHeight":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 433
    :cond_83
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Rect;

    return-object v2

    .line 437
    .end local v1    # "validBoundingRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .restart local v1    # "validBoundingRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    iget-object v3, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    array-length v4, v3

    :goto_98
    if-ge v2, v4, :cond_e5

    aget-object v5, v3, v2

    .line 441
    .local v5, "boundingRect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v10, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 449
    .local v6, "absBoundingRect":Landroid/graphics/Rect;
    iget-object v7, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v6, p1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v7

    if-nez v7, :cond_be

    .line 454
    goto :goto_e2

    .line 459
    :cond_be
    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v10, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget v11, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/view/InsetsSource;->mTmpBoundingRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iget v12, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v5    # "boundingRect":Landroid/graphics/Rect;
    .end local v6    # "absBoundingRect":Landroid/graphics/Rect;
    :goto_e2
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 465
    :cond_e5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 466
    sget-object v2, Landroid/view/InsetsSource;->NO_BOUNDING_RECTS:[Landroid/graphics/Rect;

    return-object v2

    .line 468
    :cond_ee
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Rect;

    return-object v2
.end method

.method public blacklist calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;
    .registers 4
    .param p1, "relativeFrame"    # Landroid/graphics/Rect;
    .param p2, "ignoreVisibility"    # Z

    .line 288
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v0, p2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;
    .registers 4
    .param p1, "relativeFrame"    # Landroid/graphics/Rect;

    .line 295
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    :goto_9
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 622
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    const-string v0, "InsetsSource id="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSource;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    const-string v0, " type="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    const-string v0, " frame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_3f

    .line 627
    const-string v0, " visibleFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    :cond_3f
    const-string v0, " visible="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 630
    const-string v0, " flags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    invoke-static {v0}, Landroid/view/InsetsSource;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    const-string v0, " sideHint="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    invoke-static {v0}, Landroid/view/InsetsSource;->sideToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    const-string v0, " boundingRects="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 634
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 607
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 608
    .local v0, "token":J
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->androidOsBuildVanillaIceCream()Z

    move-result v2

    if-nez v2, :cond_18

    .line 610
    iget v2, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 612
    :cond_18
    iget-object v2, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 613
    iget-object v2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_30

    .line 614
    iget-object v2, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 616
    :cond_30
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 617
    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/view/InsetsSource;->mType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 618
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 619
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 638
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist equals(Ljava/lang/Object;Z)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "excludeInvisibleImeFrames"    # Z

    .line 646
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 647
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_66

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_66

    .line 649
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsSource;

    .line 651
    .local v2, "that":Landroid/view/InsetsSource;
    iget v3, p0, Landroid/view/InsetsSource;->mId:I

    iget v4, v2, Landroid/view/InsetsSource;->mId:I

    if-eq v3, v4, :cond_1c

    return v1

    .line 652
    :cond_1c
    iget v3, p0, Landroid/view/InsetsSource;->mType:I

    iget v4, v2, Landroid/view/InsetsSource;->mType:I

    if-eq v3, v4, :cond_23

    return v1

    .line 653
    :cond_23
    iget-boolean v3, p0, Landroid/view/InsetsSource;->mVisible:Z

    iget-boolean v4, v2, Landroid/view/InsetsSource;->mVisible:Z

    if-eq v3, v4, :cond_2a

    return v1

    .line 654
    :cond_2a
    iget v3, p0, Landroid/view/InsetsSource;->mFlags:I

    iget v4, v2, Landroid/view/InsetsSource;->mFlags:I

    if-eq v3, v4, :cond_31

    return v1

    .line 655
    :cond_31
    iget v3, p0, Landroid/view/InsetsSource;->mSideHint:I

    iget v4, v2, Landroid/view/InsetsSource;->mSideHint:I

    if-eq v3, v4, :cond_38

    return v1

    .line 656
    :cond_38
    if-eqz p2, :cond_47

    iget-boolean v3, p0, Landroid/view/InsetsSource;->mVisible:Z

    if-nez v3, :cond_47

    iget v3, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    if-ne v3, v4, :cond_47

    return v0

    .line 657
    :cond_47
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v3, v2, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    return v1

    .line 658
    :cond_52
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v3, v2, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    return v1

    .line 659
    :cond_5d
    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    iget-object v1, v2, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 647
    .end local v2    # "that":Landroid/view/InsetsSource;
    :cond_66
    :goto_66
    return v1
.end method

.method public blacklist getBoundingRects()[Landroid/graphics/Rect;
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 265
    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    return v0
.end method

.method public blacklist getFrame()Landroid/graphics/Rect;
    .registers 2

    .line 253
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 245
    iget v0, p0, Landroid/view/InsetsSource;->mId:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 249
    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    return v0
.end method

.method public blacklist getVisibleFrame()Landroid/graphics/Rect;
    .registers 2

    .line 257
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist hasFlags(I)Z
    .registers 3
    .param p1, "flags"    # I

    .line 269
    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 664
    iget v0, p0, Landroid/view/InsetsSource;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 665
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 664
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isVisible()Z
    .registers 2

    .line 261
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    return v0
.end method

.method public blacklist set(Landroid/view/InsetsSource;)V
    .registers 5
    .param p1, "other"    # Landroid/view/InsetsSource;

    .line 181
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 182
    iget-boolean v0, p1, Landroid/view/InsetsSource;->mVisible:Z

    iput-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 183
    iget-object v0, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 184
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_19

    .line 185
    :cond_18
    move-object v0, v1

    :goto_19
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 186
    iget v0, p1, Landroid/view/InsetsSource;->mFlags:I

    iput v0, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 187
    iget v0, p1, Landroid/view/InsetsSource;->mSideHint:I

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 188
    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    if-eqz v0, :cond_31

    .line 189
    iget-object v0, p1, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {v0}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Landroid/graphics/Rect;

    goto :goto_32

    .line 190
    :cond_31
    nop

    :goto_32
    iput-object v1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 191
    return-void
.end method

.method public blacklist setBoundingRects([Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .registers 3
    .param p1, "rects"    # [Landroid/graphics/Rect;

    .line 240
    if-eqz p1, :cond_9

    invoke-virtual {p1}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iput-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 241
    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/view/InsetsSource;
    .registers 2
    .param p1, "flags"    # I

    .line 214
    iput p1, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 215
    return-object p0
.end method

.method public blacklist setFlags(II)Landroid/view/InsetsSource;
    .registers 5
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 219
    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 220
    return-object p0
.end method

.method public blacklist setFrame(IIII)Landroid/view/InsetsSource;
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 194
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    return-object p0
.end method

.method public blacklist setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .registers 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 199
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 200
    return-object p0
.end method

.method public blacklist setVisible(Z)Landroid/view/InsetsSource;
    .registers 2
    .param p1, "visible"    # Z

    .line 209
    iput-boolean p1, p0, Landroid/view/InsetsSource;->mVisible:Z

    .line 210
    return-object p0
.end method

.method public blacklist setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .registers 3
    .param p1, "visibleFrame"    # Landroid/graphics/Rect;

    .line 204
    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    .line 205
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InsetsSource: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mType:I

    .line 708
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 709
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mFlags:I

    .line 711
    invoke-static {v1}, Landroid/view/InsetsSource;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSideHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 712
    invoke-static {v1}, Landroid/view/InsetsSource;->sideToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBoundingRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    .line 713
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    return-object v0
.end method

.method public blacklist updateSideHint(Landroid/graphics/Rect;)Landroid/view/InsetsSource;
    .registers 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 230
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    .line 231
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v0

    iput v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    .line 232
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 690
    iget v0, p0, Landroid/view/InsetsSource;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    iget v0, p0, Landroid/view/InsetsSource;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    iget-object v0, p0, Landroid/view/InsetsSource;->mFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 693
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1e

    .line 694
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget-object v0, p0, Landroid/view/InsetsSource;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_21

    .line 697
    :cond_1e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    :goto_21
    iget-boolean v0, p0, Landroid/view/InsetsSource;->mVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 700
    iget v0, p0, Landroid/view/InsetsSource;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    iget v0, p0, Landroid/view/InsetsSource;->mSideHint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    iget-object v0, p0, Landroid/view/InsetsSource;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 703
    return-void
.end method
