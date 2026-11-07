.class public Landroid/view/RoundedCorners;
.super Ljava/lang/Object;
.source "RoundedCorners.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/RoundedCorners;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

.field public static final blacklist ROUNDED_CORNER_POSITION_LENGTH:I = 0x4

.field private static blacklist sCachedDisplayHeight:I

.field private static blacklist sCachedDisplayWidth:I

.field private static blacklist sCachedPhysicalPixelDisplaySizeRatio:F

.field private static blacklist sCachedRadii:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCachedRoundedCorners:Landroid/view/RoundedCorners;


# instance fields
.field public final blacklist mRoundedCorners:[Landroid/view/RoundedCorner;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 51
    new-instance v0, Landroid/view/RoundedCorners;

    new-instance v1, Landroid/view/RoundedCorner;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v2, Landroid/view/RoundedCorner;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v3, Landroid/view/RoundedCorner;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(I)V

    new-instance v4, Landroid/view/RoundedCorner;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/view/RoundedCorner;-><init>(I)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/RoundedCorners;-><init>(Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;)V

    sput-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    .line 596
    new-instance v0, Landroid/view/RoundedCorners$1;

    invoke-direct {v0}, Landroid/view/RoundedCorners$1;-><init>()V

    sput-object v0, Landroid/view/RoundedCorners;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;Landroid/view/RoundedCorner;)V
    .registers 7
    .param p1, "topLeft"    # Landroid/view/RoundedCorner;
    .param p2, "topRight"    # Landroid/view/RoundedCorner;
    .param p3, "bottomRight"    # Landroid/view/RoundedCorner;
    .param p4, "bottomLeft"    # Landroid/view/RoundedCorner;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/RoundedCorner;

    iput-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    .line 83
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 84
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 85
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 86
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/RoundedCorners;)V
    .registers 7
    .param p1, "roundedCorners"    # Landroid/view/RoundedCorners;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    iput-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    .line 91
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 92
    iget-object v2, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    new-instance v3, Landroid/view/RoundedCorner;

    iget-object v4, p1, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    aput-object v3, v2, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 94
    .end local v1    # "i":I
    :cond_1b
    return-void
.end method

.method public constructor blacklist <init>([Landroid/view/RoundedCorner;)V
    .registers 2
    .param p1, "roundedCorners"    # [Landroid/view/RoundedCorner;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    .line 78
    return-void
.end method

.method private static blacklist createRoundedCorner(IIII)Landroid/view/RoundedCorner;
    .registers 8
    .param p0, "position"    # I
    .param p1, "radius"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .line 520
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_5e

    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :pswitch_1d
    new-instance v1, Landroid/view/RoundedCorner;

    .line 543
    if-lez p1, :cond_23

    move v2, p1

    goto :goto_24

    :cond_23
    move v2, v0

    .line 544
    :goto_24
    if-lez p1, :cond_28

    sub-int v0, p3, p1

    :cond_28
    const/4 v3, 0x3

    invoke-direct {v1, v3, p1, v2, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 540
    return-object v1

    .line 534
    :pswitch_2d
    new-instance v1, Landroid/view/RoundedCorner;

    .line 537
    if-lez p1, :cond_34

    sub-int v2, p2, p1

    goto :goto_35

    :cond_34
    move v2, v0

    .line 538
    :goto_35
    if-lez p1, :cond_39

    sub-int v0, p3, p1

    :cond_39
    const/4 v3, 0x2

    invoke-direct {v1, v3, p1, v2, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 534
    return-object v1

    .line 528
    :pswitch_3e
    new-instance v1, Landroid/view/RoundedCorner;

    .line 531
    if-lez p1, :cond_45

    sub-int v2, p2, p1

    goto :goto_46

    :cond_45
    move v2, v0

    .line 532
    :goto_46
    if-lez p1, :cond_49

    move v0, p1

    :cond_49
    const/4 v3, 0x1

    invoke-direct {v1, v3, p1, v2, v0}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 528
    return-object v1

    .line 522
    :pswitch_4e
    new-instance v1, Landroid/view/RoundedCorner;

    .line 525
    if-lez p1, :cond_54

    move v2, p1

    goto :goto_55

    :cond_54
    move v2, v0

    .line 526
    :goto_55
    if-lez p1, :cond_59

    move v3, p1

    goto :goto_5a

    :cond_59
    move v3, v0

    :goto_5a
    invoke-direct {v1, v0, p1, v2, v3}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 522
    return-object v1

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_3e
        :pswitch_2d
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist fromRadii(Landroid/util/Pair;II)Landroid/view/RoundedCorners;
    .registers 4
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Landroid/view/RoundedCorners;"
        }
    .end annotation

    .line 113
    .local p0, "radii":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2, p1, p2}, Landroid/view/RoundedCorners;->fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;
    .registers 14
    .param p1, "physicalDisplayWidth"    # I
    .param p2, "physicalDisplayHeight"    # I
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIII)",
            "Landroid/view/RoundedCorners;"
        }
    .end annotation

    .line 118
    .local p0, "radii":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez p0, :cond_4

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_4
    invoke-static {p1, p2, p3, p4}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result v0

    .line 125
    .local v0, "physicalPixelDisplaySizeRatio":F
    sget-object v1, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_b
    sget-object v2, Landroid/view/RoundedCorners;->sCachedRadii:Landroid/util/Pair;

    invoke-virtual {p0, v2}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    sget v2, Landroid/view/RoundedCorners;->sCachedDisplayWidth:I

    if-ne v2, p3, :cond_25

    sget v2, Landroid/view/RoundedCorners;->sCachedDisplayHeight:I

    if-ne v2, p4, :cond_25

    sget v2, Landroid/view/RoundedCorners;->sCachedPhysicalPixelDisplaySizeRatio:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_25

    .line 129
    sget-object v2, Landroid/view/RoundedCorners;->sCachedRoundedCorners:Landroid/view/RoundedCorners;

    monitor-exit v1

    return-object v2

    .line 131
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_8d

    .line 133
    const/4 v1, 0x4

    new-array v2, v1, [Landroid/view/RoundedCorner;

    .line 134
    .local v2, "roundedCorners":[Landroid/view/RoundedCorner;
    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_3d

    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_3e

    :cond_3d
    move v3, v4

    .line 135
    .local v3, "topRadius":I
    :goto_3e
    iget-object v5, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_50

    iget-object v4, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 136
    .local v4, "bottomRadius":I
    :cond_50
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_62

    .line 137
    int-to-float v5, v3

    mul-float/2addr v5, v0

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-int v3, v5

    .line 138
    int-to-float v5, v4

    mul-float/2addr v5, v0

    float-to-double v5, v5

    add-double/2addr v5, v7

    double-to-int v4, v5

    .line 140
    :cond_62
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_63
    if-ge v5, v1, :cond_75

    .line 141
    nop

    .line 143
    const/4 v6, 0x1

    if-gt v5, v6, :cond_6b

    move v6, v3

    goto :goto_6c

    :cond_6b
    move v6, v4

    .line 141
    :goto_6c
    invoke-static {v5, v6, p3, p4}, Landroid/view/RoundedCorners;->createRoundedCorner(IIII)Landroid/view/RoundedCorner;

    move-result-object v6

    aput-object v6, v2, v5

    .line 140
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 148
    .end local v5    # "i":I
    :cond_75
    new-instance v1, Landroid/view/RoundedCorners;

    invoke-direct {v1, v2}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    move-object v5, v1

    .line 149
    .local v5, "result":Landroid/view/RoundedCorners;
    sget-object v6, Landroid/view/RoundedCorners;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 150
    :try_start_7e
    sput p3, Landroid/view/RoundedCorners;->sCachedDisplayWidth:I

    .line 151
    sput p4, Landroid/view/RoundedCorners;->sCachedDisplayHeight:I

    .line 152
    sput-object p0, Landroid/view/RoundedCorners;->sCachedRadii:Landroid/util/Pair;

    .line 153
    sput-object v5, Landroid/view/RoundedCorners;->sCachedRoundedCorners:Landroid/view/RoundedCorners;

    .line 154
    sput v0, Landroid/view/RoundedCorners;->sCachedPhysicalPixelDisplaySizeRatio:F

    .line 155
    monitor-exit v6

    .line 156
    return-object v5

    .line 155
    :catchall_8a
    move-exception v1

    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_8a

    throw v1

    .line 131
    .end local v2    # "roundedCorners":[Landroid/view/RoundedCorner;
    .end local v3    # "topRadius":I
    .end local v4    # "bottomRadius":I
    .end local v5    # "result":Landroid/view/RoundedCorners;
    :catchall_8d
    move-exception v2

    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v2
.end method

.method public static blacklist fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;
    .registers 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;
    .param p2, "physicalDisplayWidth"    # I
    .param p3, "physicalDisplayHeight"    # I
    .param p4, "displayWidth"    # I
    .param p5, "displayHeight"    # I

    .line 103
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->loadRoundedCornerRadii(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/view/RoundedCorners;->fromRadii(Landroid/util/Pair;IIII)Landroid/view/RoundedCorners;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getBuiltInDisplayIsRound(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 334
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, "index":I
    const v1, 0x107002b

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 337
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_19

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 338
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .local v2, "isRound":Z
    goto :goto_20

    .line 340
    .end local v2    # "isRound":Z
    :cond_19
    const v2, 0x11101ee

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 342
    .restart local v2    # "isRound":Z
    :goto_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    return v2
.end method

.method private static blacklist getRotatedIndex(II)I
    .registers 3
    .param p0, "position"    # I
    .param p1, "rotation"    # I

    .line 552
    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static blacklist getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 242
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 243
    .local v0, "index":I
    const v1, 0x10700b7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 246
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_19

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 247
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_20

    .line 249
    .end local v2    # "radius":I
    :cond_19
    const v2, 0x105033c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 251
    .restart local v2    # "radius":I
    :goto_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    return v2
.end method

.method public static blacklist getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 192
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, "index":I
    const v1, 0x10700b9

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 195
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_19

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 196
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_20

    .line 198
    .end local v2    # "radius":I
    :cond_19
    const v2, 0x105033a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 200
    .restart local v2    # "radius":I
    :goto_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    if-nez v2, :cond_37

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 205
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v3, 0x2

    .line 207
    :cond_37
    return v2
.end method

.method public static blacklist getRoundedCornerRadiusAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 265
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 266
    .local v0, "index":I
    const v1, 0x10700b8

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 269
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_19

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_20

    .line 272
    .end local v2    # "radius":I
    :cond_19
    const v2, 0x105033b

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 274
    .restart local v2    # "radius":I
    :goto_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    return v2
.end method

.method public static blacklist getRoundedCornerRadiusBottomAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 312
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 313
    .local v0, "index":I
    const v1, 0x10700b6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 316
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_19

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 317
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_20

    .line 319
    .end local v2    # "radius":I
    :cond_19
    const v2, 0x105033d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 321
    .restart local v2    # "radius":I
    :goto_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 322
    return v2
.end method

.method public static blacklist getRoundedCornerRadiusTopAdjustment(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 288
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, "index":I
    const v1, 0x10700ba

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 292
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_19

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 293
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_20

    .line 295
    .end local v2    # "radius":I
    :cond_19
    const v2, 0x105033f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 297
    .restart local v2    # "radius":I
    :goto_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    return v2
.end method

.method public static blacklist getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 220
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "index":I
    const v1, 0x10700bb

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 223
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_19

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 224
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .local v2, "radius":I
    goto :goto_20

    .line 226
    .end local v2    # "radius":I
    :cond_19
    const v2, 0x105033e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 228
    .restart local v2    # "radius":I
    :goto_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    return v2
.end method

.method private blacklist insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;
    .registers 13
    .param p1, "position"    # I
    .param p2, "radius"    # I
    .param p3, "centerX"    # I
    .param p4, "centerY"    # I
    .param p5, "insetLeft"    # I
    .param p6, "insetTop"    # I
    .param p7, "insetRight"    # I
    .param p8, "insetBottom"    # I

    .line 410
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 411
    new-instance v0, Landroid/view/RoundedCorner;

    invoke-direct {v0, p1}, Landroid/view/RoundedCorner;-><init>(I)V

    return-object v0

    .line 415
    :cond_10
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_5a

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :pswitch_2e
    if-le p2, p8, :cond_33

    if-le p2, p5, :cond_33

    goto :goto_34

    :cond_33
    move v0, v1

    .line 427
    .local v0, "hasRoundedCorner":Z
    :goto_34
    goto :goto_4a

    .line 423
    .end local v0    # "hasRoundedCorner":Z
    :pswitch_35
    if-le p2, p8, :cond_3a

    if-le p2, p7, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 424
    .restart local v0    # "hasRoundedCorner":Z
    :goto_3b
    goto :goto_4a

    .line 420
    .end local v0    # "hasRoundedCorner":Z
    :pswitch_3c
    if-le p2, p6, :cond_41

    if-le p2, p7, :cond_41

    goto :goto_42

    :cond_41
    move v0, v1

    .line 421
    .restart local v0    # "hasRoundedCorner":Z
    :goto_42
    goto :goto_4a

    .line 417
    .end local v0    # "hasRoundedCorner":Z
    :pswitch_43
    if-le p2, p6, :cond_48

    if-le p2, p5, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    .line 418
    .restart local v0    # "hasRoundedCorner":Z
    :goto_49
    nop

    .line 432
    :goto_4a
    new-instance v2, Landroid/view/RoundedCorner;

    .line 434
    if-eqz v0, :cond_51

    sub-int v3, p3, p5

    goto :goto_52

    :cond_51
    move v3, v1

    .line 435
    :goto_52
    if-eqz v0, :cond_56

    sub-int v1, p4, p6

    :cond_56
    invoke-direct {v2, p1, p2, v3, v1}, Landroid/view/RoundedCorner;-><init>(IIII)V

    .line 432
    return-object v2

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3c
        :pswitch_35
        :pswitch_2e
    .end packed-switch
.end method

.method private static blacklist loadRoundedCornerRadii(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, "radiusDefault":I
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerTopRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    .line 172
    .local v1, "radiusTop":I
    invoke-static {p0, p1}, Landroid/view/RoundedCorners;->getRoundedCornerBottomRadius(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, "radiusBottom":I
    if-nez v0, :cond_14

    if-nez v1, :cond_14

    if-nez v2, :cond_14

    .line 174
    const/4 v3, 0x0

    return-object v3

    .line 176
    :cond_14
    new-instance v3, Landroid/util/Pair;

    .line 177
    if-lez v1, :cond_1a

    move v4, v1

    goto :goto_1b

    :cond_1a
    move v4, v0

    :goto_1b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 178
    if-lez v2, :cond_23

    move v5, v2

    goto :goto_24

    :cond_23
    move v5, v0

    :goto_24
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    .local v3, "radii":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    return-object v3
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 583
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 566
    if-ne p1, p0, :cond_4

    .line 567
    const/4 v0, 0x1

    return v0

    .line 569
    :cond_4
    instance-of v0, p1, Landroid/view/RoundedCorners;

    if-eqz v0, :cond_14

    .line 570
    move-object v0, p1

    check-cast v0, Landroid/view/RoundedCorners;

    .line 571
    .local v0, "r":Landroid/view/RoundedCorners;
    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    iget-object v2, v0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 573
    .end local v0    # "r":Landroid/view/RoundedCorners;
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllRoundedCorners()[Landroid/view/RoundedCorner;
    .registers 6

    .line 469
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    .line 470
    .local v1, "roundedCorners":[Landroid/view/RoundedCorner;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_12

    .line 471
    new-instance v3, Landroid/view/RoundedCorner;

    aget-object v4, v1, v2

    invoke-direct {v3, v4}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    aput-object v3, v1, v2

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 473
    .end local v2    # "i":I
    :cond_12
    return-object v1
.end method

.method public blacklist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .registers 4
    .param p1, "position"    # I

    .line 447
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 448
    const/4 v0, 0x0

    goto :goto_15

    :cond_c
    new-instance v0, Landroid/view/RoundedCorner;

    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Landroid/view/RoundedCorner;-><init>(Landroid/view/RoundedCorner;)V

    .line 447
    :goto_15
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, "result":I
    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    .line 559
    .local v4, "roundedCorner":Landroid/view/RoundedCorner;
    mul-int/lit8 v5, v0, 0x1f

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->hashCode()I

    move-result v6

    add-int v0, v5, v6

    .line 558
    .end local v4    # "roundedCorner":Landroid/view/RoundedCorner;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 561
    :cond_14
    return v0
.end method

.method public blacklist inset(IIII)Landroid/view/RoundedCorners;
    .registers 16
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

    .line 399
    const/4 v9, 0x4

    new-array v10, v9, [Landroid/view/RoundedCorner;

    .line 400
    .local v10, "roundedCorners":[Landroid/view/RoundedCorner;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v9, :cond_30

    .line 401
    iget-object v2, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v2

    iget-object v3, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v3, v3, v1

    .line 402
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 401
    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/RoundedCorners;->insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;

    move-result-object v2

    aput-object v2, v10, v1

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 405
    .end local v1    # "i":I
    :cond_30
    new-instance v0, Landroid/view/RoundedCorners;

    invoke-direct {v0, v10}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v0
.end method

.method public blacklist insetWithFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/RoundedCorners;
    .registers 15
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "roundedCornerFrame"    # Landroid/graphics/Rect;

    .line 354
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v7, v0, v1

    .line 355
    .local v7, "insetLeft":I
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int v8, v0, v1

    .line 356
    .local v8, "insetTop":I
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v9, v0, v1

    .line 357
    .local v9, "insetRight":I
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v0, v1

    .line 358
    .local v10, "insetBottom":I
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    .line 360
    .local v1, "roundedCorners":[Landroid/view/RoundedCorner;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1d
    if-ge v3, v0, :cond_82

    .line 361
    iget-object v2, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/RoundedCorner;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 362
    new-instance v2, Landroid/view/RoundedCorner;

    invoke-direct {v2, v3}, Landroid/view/RoundedCorner;-><init>(I)V

    aput-object v2, v1, v3

    .line 363
    goto :goto_7f

    .line 365
    :cond_31
    iget-object v2, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    .line 366
    .local v4, "radius":I
    packed-switch v3, :pswitch_data_88

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The position is not one of the RoundedCornerPosition ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :pswitch_55
    move v2, v4

    .line 381
    .local v2, "centerX":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v4

    .line 382
    .local v5, "centerY":I
    move v6, v5

    move v5, v2

    goto :goto_78

    .line 376
    .end local v2    # "centerX":I
    .end local v5    # "centerY":I
    :pswitch_5e
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v4

    .line 377
    .restart local v2    # "centerX":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v5, v4

    .line 378
    .restart local v5    # "centerY":I
    move v6, v5

    move v5, v2

    goto :goto_78

    .line 372
    .end local v2    # "centerX":I
    .end local v5    # "centerY":I
    :pswitch_6b
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v2, v4

    .line 373
    .restart local v2    # "centerX":I
    move v5, v4

    .line 374
    .restart local v5    # "centerY":I
    move v6, v5

    move v5, v2

    goto :goto_78

    .line 368
    .end local v2    # "centerX":I
    .end local v5    # "centerY":I
    :pswitch_74
    move v2, v4

    .line 369
    .restart local v2    # "centerX":I
    move v5, v4

    .line 370
    .restart local v5    # "centerY":I
    move v6, v5

    move v5, v2

    .line 387
    .end local v2    # "centerX":I
    .local v5, "centerX":I
    .local v6, "centerY":I
    :goto_78
    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/view/RoundedCorners;->insetRoundedCorner(IIIIIIII)Landroid/view/RoundedCorner;

    move-result-object v11

    aput-object v11, v1, v3

    .line 360
    .end local v4    # "radius":I
    .end local v5    # "centerX":I
    .end local v6    # "centerY":I
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 390
    .end local v3    # "i":I
    :cond_82
    new-instance v0, Landroid/view/RoundedCorners;

    invoke-direct {v0, v1}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v0

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_74
        :pswitch_6b
        :pswitch_5e
        :pswitch_55
    .end packed-switch
.end method

.method public blacklist rotate(III)Landroid/view/RoundedCorners;
    .registers 11
    .param p1, "rotation"    # I
    .param p2, "initialDisplayWidth"    # I
    .param p3, "initialDisplayHeight"    # I

    .line 501
    if-nez p1, :cond_3

    .line 502
    return-object p0

    .line 504
    :cond_3
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v1, 0x3

    if-ne p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 505
    .local v0, "isSizeFlipped":Z
    :cond_b
    :goto_b
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/RoundedCorner;

    .line 507
    .local v1, "newCorners":[Landroid/view/RoundedCorner;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    array-length v3, v3

    if-ge v2, v3, :cond_33

    .line 508
    invoke-static {v2, p1}, Landroid/view/RoundedCorners;->getRotatedIndex(II)I

    move-result v3

    .line 509
    .local v3, "newPosistion":I
    iget-object v4, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v4, v4, v2

    .line 511
    invoke-virtual {v4}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v4

    .line 512
    if-eqz v0, :cond_24

    move v5, p3

    goto :goto_25

    :cond_24
    move v5, p2

    .line 513
    :goto_25
    if-eqz v0, :cond_29

    move v6, p2

    goto :goto_2a

    :cond_29
    move v6, p3

    .line 509
    :goto_2a
    invoke-static {v3, v4, v5, v6}, Landroid/view/RoundedCorners;->createRoundedCorner(IIII)Landroid/view/RoundedCorner;

    move-result-object v4

    aput-object v4, v1, v3

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 515
    .end local v2    # "i":I
    .end local v3    # "newPosistion":I
    :cond_33
    new-instance v2, Landroid/view/RoundedCorners;

    invoke-direct {v2, v1}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v2
.end method

.method public blacklist scale(F)Landroid/view/RoundedCorners;
    .registers 10
    .param p1, "scale"    # F

    .line 480
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    .line 481
    return-object p0

    .line 484
    :cond_7
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/RoundedCorner;

    .line 485
    .local v1, "roundedCorners":[Landroid/view/RoundedCorner;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_34

    .line 486
    iget-object v3, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    aget-object v3, v3, v2

    .line 487
    .local v3, "roundedCorner":Landroid/view/RoundedCorner;
    new-instance v4, Landroid/view/RoundedCorner;

    .line 489
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getRadius()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    .line 490
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    float-to-int v6, v6

    .line 491
    invoke-virtual {v3}, Landroid/view/RoundedCorner;->getCenter()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    invoke-direct {v4, v2, v5, v6, v7}, Landroid/view/RoundedCorner;-><init>(IIII)V

    aput-object v4, v1, v2

    .line 485
    .end local v3    # "roundedCorner":Landroid/view/RoundedCorner;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 493
    .end local v2    # "i":I
    :cond_34
    new-instance v0, Landroid/view/RoundedCorners;

    invoke-direct {v0, v1}, Landroid/view/RoundedCorners;-><init>([Landroid/view/RoundedCorner;)V

    return-object v0
.end method

.method public blacklist setRoundedCorner(ILandroid/view/RoundedCorner;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "roundedCorner"    # Landroid/view/RoundedCorner;

    .line 458
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    if-nez p2, :cond_a

    .line 459
    new-instance v1, Landroid/view/RoundedCorner;

    invoke-direct {v1, p1}, Landroid/view/RoundedCorner;-><init>(I)V

    goto :goto_b

    :cond_a
    move-object v1, p2

    :goto_b
    aput-object v1, v0, p1

    .line 460
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoundedCorners{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 588
    sget-object v0, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    invoke-virtual {p0, v0}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 589
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_16

    .line 591
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    iget-object v0, p0, Landroid/view/RoundedCorners;->mRoundedCorners:[Landroid/view/RoundedCorner;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 594
    :goto_16
    return-void
.end method
