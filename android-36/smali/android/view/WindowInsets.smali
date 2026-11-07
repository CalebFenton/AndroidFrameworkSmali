.class public final Landroid/view/WindowInsets;
.super Ljava/lang/Object;
.source "WindowInsets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowInsets$Type;,
        Landroid/view/WindowInsets$Builder;,
        Landroid/view/WindowInsets$Side;
    }
.end annotation


# static fields
.field public static final whitelist CONSUMED:Landroid/view/WindowInsets;


# instance fields
.field private final blacklist mCompatIgnoreVisibility:Z

.field private final blacklist mCompatInsetsTypes:I

.field private final greylist-max-o mDisplayCutout:Landroid/view/DisplayCutout;

.field private final greylist-max-o mDisplayCutoutConsumed:Z

.field private final blacklist mDisplayShape:Landroid/view/DisplayShape;

.field private final blacklist mForceConsumingOpaqueCaptionBar:Z

.field private final blacklist mForceConsumingTypes:I

.field private final blacklist mFrameHeight:I

.field private final blacklist mFrameWidth:I

.field private final greylist-max-o mIsRound:Z

.field private final blacklist mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

.field private final blacklist mRoundedCorners:Landroid/view/RoundedCorners;

.field private final greylist-max-o mStableInsetsConsumed:Z

.field private final blacklist mSuppressScrimTypes:I

.field private final greylist-max-o mSystemWindowInsetsConsumed:Z

.field private greylist-max-o mTempRect:Landroid/graphics/Rect;

.field private final blacklist mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

.field private final blacklist mTypeMaxInsetsMap:[Landroid/graphics/Insets;

.field private final blacklist mTypeVisibilityMap:[Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplayShape(Landroid/view/WindowInsets;)Landroid/view/DisplayShape;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceConsumingOpaqueCaptionBar(Landroid/view/WindowInsets;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceConsumingTypes(Landroid/view/WindowInsets;)I
    .registers 1

    iget p0, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameHeight(Landroid/view/WindowInsets;)I
    .registers 1

    iget p0, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameWidth(Landroid/view/WindowInsets;)I
    .registers 1

    iget p0, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRound(Landroid/view/WindowInsets;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrivacyIndicatorBounds(Landroid/view/WindowInsets;)Landroid/view/PrivacyIndicatorBounds;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRoundedCorners(Landroid/view/WindowInsets;)Landroid/view/RoundedCorners;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStableInsetsConsumed(Landroid/view/WindowInsets;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuppressScrimTypes(Landroid/view/WindowInsets;)I
    .registers 1

    iget p0, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemWindowInsetsConsumed(Landroid/view/WindowInsets;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeMaxBoundingRectsMap(Landroid/view/WindowInsets;)[[Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeMaxInsetsMap(Landroid/view/WindowInsets;)[Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTypeVisibilityMap(Landroid/view/WindowInsets;)[Z
    .registers 1

    iget-object p0, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdisplayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;
    .registers 1

    invoke-static {p0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/view/WindowInsets;->setInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 18

    .line 126
    new-instance v0, Landroid/view/WindowInsets;

    const/4 v1, 0x0

    move-object v2, v1

    invoke-static {v2}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v1

    move-object v3, v2

    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v2

    .line 127
    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3}, Landroid/view/WindowInsets;->createCompatVisibilityMap([Landroid/graphics/Insets;)[Z

    move-result-object v3

    .line 128
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v0 .. v17}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    sput-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 129
    return-void
.end method

.method public constructor greylist <init>(Landroid/graphics/Rect;)V
    .registers 20
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;

    .line 265
    invoke-static/range {p1 .. p1}, Landroid/view/WindowInsets;->createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;

    move-result-object v1

    const/16 v0, 0xa

    new-array v3, v0, [Z

    .line 266
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v12

    new-array v14, v0, [[Landroid/graphics/Rect;

    .line 265
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v17}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 268
    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/WindowInsets;)V
    .registers 23
    .param p1, "src"    # Landroid/view/WindowInsets;

    .line 199
    move-object/from16 v0, p1

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v4, v2

    goto :goto_c

    :cond_9
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    move-object v4, v1

    .line 200
    :goto_c
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_12

    move-object v5, v2

    goto :goto_15

    :cond_12
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    move-object v5, v1

    :goto_15
    iget-object v6, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v7, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v8, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v9, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v10, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    .line 205
    invoke-static {v0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v11

    iget-object v12, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v13, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v14, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v15, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    .line 211
    iget-boolean v3, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v3, :cond_34

    move-object/from16 v17, v2

    goto :goto_38

    :cond_34
    iget-object v3, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v17, v3

    .line 212
    :goto_38
    iget-boolean v3, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v3, :cond_3d

    goto :goto_3f

    :cond_3d
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    :goto_3f
    move-object/from16 v18, v2

    iget v2, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v3, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    .line 199
    move/from16 v16, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v20}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 215
    return-void
.end method

.method public constructor blacklist <init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V
    .registers 29
    .param p1, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p2, "typeMaxInsetsMap"    # [Landroid/graphics/Insets;
    .param p3, "typeVisibilityMap"    # [Z
    .param p4, "isRound"    # Z
    .param p5, "forceConsumingTypes"    # I
    .param p6, "forceConsumingOpaqueCaptionBar"    # Z
    .param p7, "suppressScrimTypes"    # I
    .param p8, "displayCutout"    # Landroid/view/DisplayCutout;
    .param p9, "roundedCorners"    # Landroid/view/RoundedCorners;
    .param p10, "privacyIndicatorBounds"    # Landroid/view/PrivacyIndicatorBounds;
    .param p11, "displayShape"    # Landroid/view/DisplayShape;
    .param p12, "compatInsetsTypes"    # I
    .param p13, "compatIgnoreVisibility"    # Z
    .param p14, "typeBoundingRectsMap"    # [[Landroid/graphics/Rect;
    .param p15, "typeMaxBoundingRectsMap"    # [[Landroid/graphics/Rect;
    .param p16, "frameWidth"    # I
    .param p17, "frameHeight"    # I

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 159
    iget-boolean v2, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/16 v3, 0xa

    if-eqz v2, :cond_15

    .line 160
    new-array v2, v3, [Landroid/graphics/Insets;

    goto :goto_1b

    .line 161
    :cond_15
    invoke-virtual {p1}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Insets;

    :goto_1b
    iput-object v2, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 163
    if-nez p2, :cond_21

    move v2, v0

    goto :goto_22

    :cond_21
    move v2, v1

    :goto_22
    iput-boolean v2, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    .line 164
    iget-boolean v2, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v2, :cond_2b

    .line 165
    new-array v2, v3, [Landroid/graphics/Insets;

    goto :goto_31

    .line 166
    :cond_2b
    invoke-virtual {p2}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Insets;

    :goto_31
    iput-object v2, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 168
    iput-object p3, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    .line 169
    iput-boolean p4, p0, Landroid/view/WindowInsets;->mIsRound:Z

    .line 170
    move/from16 v4, p5

    iput v4, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    .line 171
    move/from16 v5, p6

    iput-boolean v5, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    .line 172
    move/from16 v6, p7

    iput v6, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    .line 173
    move/from16 v7, p12

    iput v7, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    .line 174
    move/from16 v8, p13

    iput-boolean v8, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    .line 176
    if-nez p8, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v1

    :goto_4f
    iput-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    .line 177
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-nez v0, :cond_5f

    invoke-virtual/range {p8 .. p8}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5c

    goto :goto_5f

    .line 178
    :cond_5c
    move-object/from16 v0, p8

    goto :goto_60

    :cond_5f
    :goto_5f
    const/4 v0, 0x0

    :goto_60
    iput-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 180
    move-object/from16 v0, p9

    iput-object v0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 181
    move-object/from16 v1, p10

    iput-object v1, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 182
    move-object/from16 v9, p11

    iput-object v9, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    .line 183
    iget-boolean v10, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-nez v10, :cond_7c

    if-nez p14, :cond_75

    goto :goto_7c

    .line 185
    :cond_75
    invoke-virtual/range {p14 .. p14}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Landroid/graphics/Rect;

    goto :goto_7e

    .line 184
    :cond_7c
    :goto_7c
    new-array v10, v3, [[Landroid/graphics/Rect;

    .line 185
    :goto_7e
    iput-object v10, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 186
    iget-boolean v10, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-nez v10, :cond_8e

    if-nez p15, :cond_87

    goto :goto_8e

    .line 188
    :cond_87
    invoke-virtual/range {p15 .. p15}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Landroid/graphics/Rect;

    goto :goto_90

    .line 187
    :cond_8e
    :goto_8e
    new-array v3, v3, [[Landroid/graphics/Rect;

    .line 188
    :goto_90
    iput-object v3, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 189
    move/from16 v3, p16

    iput v3, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    .line 190
    move/from16 v10, p17

    iput v10, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    .line 191
    return-void
.end method

.method public static blacklist assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V
    .registers 7
    .param p0, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 292
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    invoke-static {v2, v1, v2, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    aput-object v1, p0, v0

    .line 293
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 294
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    aput-object v1, p0, v0

    .line 295
    return-void
.end method

.method public static blacklist createCompatTypeMap(Landroid/graphics/Rect;)[Landroid/graphics/Insets;
    .registers 2
    .param p0, "insets"    # Landroid/graphics/Rect;

    .line 279
    if-nez p0, :cond_4

    .line 280
    const/4 v0, 0x0

    return-object v0

    .line 282
    :cond_4
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/Insets;

    .line 283
    .local v0, "typeInsetsMap":[Landroid/graphics/Insets;
    invoke-static {v0, p0}, Landroid/view/WindowInsets;->assignCompatInsets([Landroid/graphics/Insets;Landroid/graphics/Rect;)V

    .line 284
    return-object v0
.end method

.method private static blacklist createCompatVisibilityMap([Landroid/graphics/Insets;)[Z
    .registers 6
    .param p0, "typeInsetsMap"    # [Landroid/graphics/Insets;

    .line 302
    const/16 v0, 0xa

    new-array v0, v0, [Z

    .line 303
    .local v0, "typeVisibilityMap":[Z
    if-nez p0, :cond_7

    .line 304
    return-object v0

    .line 306
    :cond_7
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_8
    const/16 v2, 0x200

    if-gt v1, v2, :cond_20

    .line 307
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    .line 308
    .local v2, "index":I
    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 309
    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 306
    .end local v2    # "index":I
    :cond_1d
    shl-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 312
    .end local v1    # "i":I
    :cond_20
    return-object v0
.end method

.method private static blacklist displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;
    .registers 2
    .param p0, "w"    # Landroid/view/WindowInsets;

    .line 218
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v0, :cond_6

    .line 219
    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_6
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_d

    .line 221
    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v0

    .line 223
    :cond_d
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method private blacklist getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;
    .registers 10
    .param p1, "typeBoundingRectsMap"    # [[Landroid/graphics/Rect;
    .param p2, "typeMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Landroid/graphics/Rect;",
            "I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 580
    const/4 v0, 0x0

    .line 581
    .local v0, "allRects":[Landroid/graphics/Rect;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x200

    if-gt v1, v2, :cond_2b

    .line 582
    and-int v2, p2, v1

    if-nez v2, :cond_b

    .line 583
    goto :goto_28

    .line 585
    :cond_b
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aget-object v2, p1, v2

    .line 586
    .local v2, "rects":[Landroid/graphics/Rect;
    if-nez v2, :cond_14

    .line 587
    goto :goto_28

    .line 589
    :cond_14
    if-nez v0, :cond_18

    .line 590
    move-object v0, v2

    goto :goto_28

    .line 592
    :cond_18
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [Landroid/graphics/Rect;

    .line 593
    .local v3, "concat":[Landroid/graphics/Rect;
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 594
    array-length v4, v0

    array-length v6, v2

    invoke-static {v2, v5, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    move-object v0, v3

    .line 581
    .end local v2    # "rects":[Landroid/graphics/Rect;
    .end local v3    # "concat":[Landroid/graphics/Rect;
    :goto_28
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 598
    .end local v1    # "i":I
    :cond_2b
    if-nez v0, :cond_32

    .line 599
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 601
    :cond_32
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static blacklist getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .registers 5
    .param p0, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p1, "typeMask"    # I

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "result":Landroid/graphics/Insets;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x200

    if-gt v1, v2, :cond_1f

    .line 234
    and-int v2, p1, v1

    if-nez v2, :cond_b

    .line 235
    goto :goto_1c

    .line 237
    :cond_b
    invoke-static {v1}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aget-object v2, p0, v2

    .line 238
    .local v2, "insets":Landroid/graphics/Insets;
    if-nez v2, :cond_14

    .line 239
    goto :goto_1c

    .line 241
    :cond_14
    if-nez v0, :cond_18

    .line 242
    move-object v0, v2

    goto :goto_1c

    .line 244
    :cond_18
    invoke-static {v0, v2}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 233
    .end local v2    # "insets":Landroid/graphics/Insets;
    :goto_1c
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 247
    .end local v1    # "i":I
    :cond_1f
    if-nez v0, :cond_24

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_25

    :cond_24
    move-object v1, v0

    :goto_25
    return-object v1
.end method

.method static blacklist insetBoundingRects([Landroid/graphics/Rect;IIIIII)[Landroid/graphics/Rect;
    .registers 17
    .param p0, "boundingRects"    # [Landroid/graphics/Rect;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "frameWidth"    # I
    .param p6, "frameHeight"    # I

    .line 1327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1328
    .local v0, "insetBoundingRectsList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_1e

    .line 1329
    aget-object v3, p0, v1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v3 .. v9}, Landroid/view/WindowInsets;->insetRect(Landroid/graphics/Rect;IIIIII)Landroid/graphics/Rect;

    move-result-object v2

    .line 1331
    .local v2, "insetRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_1b

    .line 1332
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    .end local v2    # "insetRect":Landroid/graphics/Rect;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1335
    .end local v1    # "i":I
    :cond_1e
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Rect;

    return-object v1
.end method

.method static blacklist insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;
    .registers 17
    .param p0, "typeBoundingRectsMap"    # [[Landroid/graphics/Rect;
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I
    .param p5, "frameWidth"    # I
    .param p6, "frameHeight"    # I

    .line 1303
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    if-nez p3, :cond_9

    if-nez p4, :cond_9

    .line 1304
    return-object p0

    .line 1306
    :cond_9
    const/4 v0, 0x0

    .line 1307
    .local v0, "cloned":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    const/16 v2, 0xa

    if-ge v1, v2, :cond_34

    .line 1308
    aget-object v3, p0, v1

    .line 1309
    .local v3, "boundingRects":[Landroid/graphics/Rect;
    if-nez v3, :cond_14

    .line 1310
    goto :goto_31

    .line 1312
    :cond_14
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v3 .. v9}, Landroid/view/WindowInsets;->insetBoundingRects([Landroid/graphics/Rect;IIIIII)[Landroid/graphics/Rect;

    move-result-object v2

    .line 1314
    .local v2, "insetBoundingRects":[Landroid/graphics/Rect;
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1315
    if-nez v0, :cond_2f

    .line 1316
    invoke-virtual {p0}, [[Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object p0, v4

    check-cast p0, [[Landroid/graphics/Rect;

    .line 1317
    const/4 v0, 0x1

    .line 1319
    :cond_2f
    aput-object v2, p0, v1

    .line 1307
    .end local v2    # "insetBoundingRects":[Landroid/graphics/Rect;
    .end local v3    # "boundingRects":[Landroid/graphics/Rect;
    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1322
    .end local v1    # "i":I
    :cond_34
    return-object p0
.end method

.method static blacklist insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;
    .registers 10
    .param p0, "insets"    # Landroid/graphics/Insets;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1289
    iget v0, p0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1290
    .local v0, "newLeft":I
    iget v2, p0, Landroid/graphics/Insets;->top:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1291
    .local v2, "newTop":I
    iget v3, p0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1292
    .local v3, "newRight":I
    iget v4, p0, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1293
    .local v1, "newBottom":I
    iget v4, p0, Landroid/graphics/Insets;->left:I

    if-ne v0, v4, :cond_2e

    iget v4, p0, Landroid/graphics/Insets;->top:I

    if-ne v2, v4, :cond_2e

    iget v4, p0, Landroid/graphics/Insets;->right:I

    if-ne v3, v4, :cond_2e

    iget v4, p0, Landroid/graphics/Insets;->bottom:I

    if-ne v1, v4, :cond_2e

    .line 1295
    return-object p0

    .line 1297
    :cond_2e
    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;
    .registers 10
    .param p0, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1270
    const/4 v0, 0x0

    .line 1271
    .local v0, "cloned":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0xa

    if-ge v1, v2, :cond_20

    .line 1272
    aget-object v2, p0, v1

    .line 1273
    .local v2, "insets":Landroid/graphics/Insets;
    if-nez v2, :cond_b

    .line 1274
    goto :goto_1d

    .line 1276
    :cond_b
    invoke-static {v2, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetInsets(Landroid/graphics/Insets;IIII)Landroid/graphics/Insets;

    move-result-object v3

    .line 1277
    .local v3, "insetInsets":Landroid/graphics/Insets;
    if-eq v3, v2, :cond_1d

    .line 1278
    if-nez v0, :cond_1b

    .line 1279
    invoke-virtual {p0}, [Landroid/graphics/Insets;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object p0, v4

    check-cast p0, [Landroid/graphics/Insets;

    .line 1280
    const/4 v0, 0x1

    .line 1282
    :cond_1b
    aput-object v3, p0, v1

    .line 1271
    .end local v2    # "insets":Landroid/graphics/Insets;
    .end local v3    # "insetInsets":Landroid/graphics/Insets;
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1285
    .end local v1    # "i":I
    :cond_20
    return-object p0
.end method

.method private static blacklist insetRect(Landroid/graphics/Rect;IIIIII)Landroid/graphics/Rect;
    .registers 11
    .param p0, "orig"    # Landroid/graphics/Rect;
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I
    .param p5, "frameWidth"    # I
    .param p6, "frameHeight"    # I

    .line 1340
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1341
    return-object v0

    .line 1346
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    sub-int v2, p5, p3

    sub-int v3, p6, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1349
    .local v1, "insetFrame":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1350
    .local v2, "insetRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v1, p0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1354
    neg-int v0, p1

    neg-int v3, p2

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1355
    return-object v2

    .line 1358
    :cond_1e
    return-object v0
.end method

.method private static blacklist setInsets([Landroid/graphics/Insets;ILandroid/graphics/Insets;)V
    .registers 5
    .param p0, "typeInsetsMap"    # [Landroid/graphics/Insets;
    .param p1, "typeMask"    # I
    .param p2, "insets"    # Landroid/graphics/Insets;

    .line 254
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x200

    if-gt v0, v1, :cond_13

    .line 255
    and-int v1, p1, v0

    if-nez v1, :cond_a

    .line 256
    goto :goto_10

    .line 258
    :cond_a
    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v1

    aput-object p2, p0, v1

    .line 254
    :goto_10
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    .end local v0    # "i":I
    :cond_13
    return-void
.end method


# virtual methods
.method public whitelist consumeDisplayCutout()Landroid/view/WindowInsets;
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    move-object/from16 v0, p0

    new-instance v1, Landroid/view/WindowInsets;

    iget-boolean v2, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    move-object v2, v3

    goto :goto_d

    :cond_b
    iget-object v2, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 681
    :goto_d
    iget-boolean v4, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v4, :cond_13

    move-object v4, v3

    goto :goto_15

    :cond_13
    iget-object v4, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    :goto_15
    move-object v5, v3

    move-object v3, v4

    iget-object v4, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    move-object v6, v5

    iget-boolean v5, v0, Landroid/view/WindowInsets;->mIsRound:Z

    move-object v7, v6

    iget v6, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    move-object v8, v7

    iget-boolean v7, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    move-object v9, v8

    iget v8, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget-object v10, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v11, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v12, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v13, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v14, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    .line 686
    iget-boolean v15, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v15, :cond_35

    move-object v15, v9

    goto :goto_37

    :cond_35
    iget-object v15, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 687
    :goto_37
    iget-boolean v9, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v9, :cond_3e

    const/16 v16, 0x0

    goto :goto_42

    :cond_3e
    iget-object v9, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    move-object/from16 v16, v9

    :goto_42
    iget v9, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    move-object/from16 v17, v1

    iget v1, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v18, v1

    move-object/from16 v1, v17

    move/from16 v17, v9

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 680
    return-object v1
.end method

.method public whitelist consumeStableInsets()Landroid/view/WindowInsets;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1020
    return-object p0
.end method

.method public whitelist consumeSystemWindowInsets()Landroid/view/WindowInsets;
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 735
    move-object/from16 v0, p0

    new-instance v1, Landroid/view/WindowInsets;

    iget-object v4, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v5, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v6, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v7, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget v8, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    .line 741
    iget v2, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_19

    .line 742
    const/4 v2, 0x0

    goto :goto_1d

    :cond_19
    invoke-static {v0}, Landroid/view/WindowInsets;->displayCutoutCopyConstructorArgument(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v2

    :goto_1d
    move-object v9, v2

    iget-object v10, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v11, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v12, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget v13, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    iget-boolean v14, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    iget v2, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v3, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v17, v2

    const/4 v2, 0x0

    move/from16 v18, v3

    const/4 v3, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 735
    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1227
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1228
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_a3

    instance-of v2, p1, Landroid/view/WindowInsets;

    if-nez v2, :cond_d

    goto/16 :goto_a3

    .line 1229
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/view/WindowInsets;

    .line 1231
    .local v2, "that":Landroid/view/WindowInsets;
    iget-boolean v3, p0, Landroid/view/WindowInsets;->mIsRound:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mIsRound:Z

    if-ne v3, v4, :cond_a1

    iget v3, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget v4, v2, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    if-ne v3, v4, :cond_a1

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    if-ne v3, v4, :cond_a1

    iget v3, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    iget v4, v2, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    if-ne v3, v4, :cond_a1

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-ne v3, v4, :cond_a1

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-ne v3, v4, :cond_a1

    iget-boolean v3, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    iget-boolean v4, v2, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-ne v3, v4, :cond_a1

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    .line 1238
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 1239
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    .line 1240
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v3, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v4, v2, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 1241
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v3, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget-object v4, v2, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    .line 1242
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v3, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v4, v2, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    .line 1243
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v3, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v4, v2, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    .line 1244
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1245
    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget-object v3, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1246
    invoke-static {v3, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    iget v3, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v4, v2, Landroid/view/WindowInsets;->mFrameWidth:I

    if-ne v3, v4, :cond_a1

    iget v3, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    iget v4, v2, Landroid/view/WindowInsets;->mFrameHeight:I

    if-ne v3, v4, :cond_a1

    goto :goto_a2

    :cond_a1
    move v0, v1

    .line 1231
    :goto_a2
    return v0

    .line 1228
    .end local v2    # "that":Landroid/view/WindowInsets;
    :cond_a3
    :goto_a3
    return v1
.end method

.method public whitelist getBoundingRects(I)Ljava/util/List;
    .registers 3
    .param p1, "typeMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/WindowInsets;->getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRectsIgnoringVisibility(I)Ljava/util/List;
    .registers 4
    .param p1, "typeMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 573
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_b

    .line 576
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    invoke-direct {p0, v0, p1}, Landroid/view/WindowInsets;->getBoundingRects([[Landroid/graphics/Rect;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 574
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to query the bounding rects for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDisplayCutout()Landroid/view/DisplayCutout;
    .registers 2

    .line 618
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object v0
.end method

.method public whitelist getDisplayShape()Landroid/view/DisplayShape;
    .registers 2

    .line 666
    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    return-object v0
.end method

.method public blacklist getForceConsumingTypes()I
    .registers 2

    .line 1027
    iget v0, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    return v0
.end method

.method public whitelist getFrame()Landroid/util/Size;
    .registers 4

    .line 1181
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v2, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public whitelist getInsets(I)Landroid/graphics/Insets;
    .registers 3
    .param p1, "typeMask"    # I

    .line 367
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;
    .registers 4
    .param p1, "typeMask"    # I

    .line 391
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_b

    .line 394
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v0, p1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 392
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to query the maximum insets for IME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMandatorySystemGestureInsets()Landroid/graphics/Insets;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 976
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPrivacyIndicatorBounds()Landroid/graphics/Rect;
    .registers 2

    .line 654
    iget-object v0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    .line 655
    :cond_6
    iget-object v0, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v0}, Landroid/view/PrivacyIndicatorBounds;->getStaticPrivacyIndicatorBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 654
    :goto_c
    return-object v0
.end method

.method public whitelist getRoundedCorner(I)Landroid/view/RoundedCorner;
    .registers 3
    .param p1, "position"    # I

    .line 635
    iget-object v0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v0, p1}, Landroid/view/RoundedCorners;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getStableInsetBottom()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 889
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0
.end method

.method public whitelist getStableInsetLeft()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 853
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->left:I

    return v0
.end method

.method public whitelist getStableInsetRight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 871
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->right:I

    return v0
.end method

.method public whitelist getStableInsetTop()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 835
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    return v0
.end method

.method public whitelist getStableInsets()Landroid/graphics/Insets;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 817
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSuppressScrimTypes()I
    .registers 2

    .line 1041
    iget v0, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    return v0
.end method

.method public whitelist getSystemGestureInsets()Landroid/graphics/Insets;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 946
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSystemWindowInsetBottom()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 478
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    return v0
.end method

.method public whitelist getSystemWindowInsetLeft()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 430
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->left:I

    return v0
.end method

.method public whitelist getSystemWindowInsetRight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 462
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->right:I

    return v0
.end method

.method public whitelist getSystemWindowInsetTop()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    return v0
.end method

.method public whitelist getSystemWindowInsets()Landroid/graphics/Insets;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v0, :cond_11

    .line 348
    iget v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    goto :goto_17

    .line 349
    :cond_11
    iget v0, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    :goto_17
    nop

    .line 352
    .local v0, "result":Landroid/graphics/Insets;
    iget v1, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_31

    iget-boolean v1, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    if-eqz v1, :cond_31

    .line 353
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 355
    :cond_31
    return-object v0
.end method

.method public blacklist getSystemWindowInsetsAsRect()Landroid/graphics/Rect;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    iget-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    .line 326
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    .line 328
    :cond_b
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 329
    .local v0, "insets":Landroid/graphics/Insets;
    iget-object v1, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Insets;->left:I

    iget v3, v0, Landroid/graphics/Insets;->top:I

    iget v4, v0, Landroid/graphics/Insets;->right:I

    iget v5, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    iget-object v1, p0, Landroid/view/WindowInsets;->mTempRect:Landroid/graphics/Rect;

    return-object v1
.end method

.method public whitelist getTappableElementInsets()Landroid/graphics/Insets;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1005
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasInsets()Z
    .registers 3

    .line 503
    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    .line 504
    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/WindowInsets;->getInsets([Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_2f

    iget-object v0, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    .line 503
    :goto_30
    return v0
.end method

.method public whitelist hasStableInsets()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 907
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getStableInsets()Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist hasSystemWindowInsets()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 494
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 21

    .line 1253
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    .line 1254
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mIsRound:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v7, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    iget v1, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    .line 1255
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget v1, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    .line 1256
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-boolean v1, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iget-object v14, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    iget-object v15, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1257
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    .line 1258
    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v1, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v2 .. v19}, [Ljava/lang/Object;

    move-result-object v1

    .line 1253
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist inset(IIII)Landroid/view/WindowInsets;
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1155
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1156
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1157
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1158
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 1160
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->insetUnchecked(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist inset(Landroid/graphics/Insets;)Landroid/view/WindowInsets;
    .registers 6
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 1127
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    iget v0, p1, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->right:I

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o inset(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1107
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public blacklist insetUnchecked(IIII)Landroid/view/WindowInsets;
    .registers 29
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1190
    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    new-instance v8, Landroid/view/WindowInsets;

    .line 1191
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_13

    .line 1192
    move-object v10, v9

    goto :goto_1a

    .line 1193
    :cond_13
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/WindowInsets;->insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;

    move-result-object v1

    move-object v10, v1

    .line 1194
    :goto_1a
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_20

    .line 1195
    move-object v11, v9

    goto :goto_27

    .line 1196
    :cond_20
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/WindowInsets;->insetInsets([Landroid/graphics/Insets;IIII)[Landroid/graphics/Insets;

    move-result-object v1

    move-object v11, v1

    :goto_27
    iget-object v12, v0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    iget-boolean v13, v0, Landroid/view/WindowInsets;->mIsRound:Z

    iget v14, v0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    iget-boolean v15, v0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    move-object/from16 v16, v8

    iget v8, v0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    .line 1200
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v1, :cond_3a

    .line 1201
    move-object/from16 v17, v9

    goto :goto_4b

    .line 1202
    :cond_3a
    iget-object v1, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v1, :cond_43

    .line 1203
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    move-object/from16 v17, v1

    goto :goto_4b

    .line 1204
    :cond_43
    iget-object v1, v0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/DisplayCutout;->inset(IIII)Landroid/view/DisplayCutout;

    move-result-object v1

    move-object/from16 v17, v1

    .line 1205
    :goto_4b
    iget-object v1, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-nez v1, :cond_54

    .line 1206
    sget-object v1, Landroid/view/RoundedCorners;->NO_ROUNDED_CORNERS:Landroid/view/RoundedCorners;

    move-object/from16 v18, v1

    goto :goto_5c

    .line 1207
    :cond_54
    iget-object v1, v0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/RoundedCorners;->inset(IIII)Landroid/view/RoundedCorners;

    move-result-object v1

    move-object/from16 v18, v1

    .line 1208
    :goto_5c
    iget-object v1, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-nez v1, :cond_63

    .line 1209
    move-object/from16 v19, v9

    goto :goto_6b

    .line 1210
    :cond_63
    iget-object v1, v0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/PrivacyIndicatorBounds;->inset(IIII)Landroid/view/PrivacyIndicatorBounds;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_6b
    move-object/from16 v20, v12

    iget-object v12, v0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    move/from16 v21, v13

    iget v13, v0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    move/from16 v22, v14

    iget-boolean v14, v0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    .line 1213
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v1, :cond_7e

    .line 1214
    move-object/from16 v23, v9

    goto :goto_8a

    .line 1215
    :cond_7e
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    iget v6, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v7, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-static/range {v1 .. v7}, Landroid/view/WindowInsets;->insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;

    move-result-object v1

    move-object/from16 v23, v1

    .line 1217
    :goto_8a
    iget-boolean v1, v0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v1, :cond_8f

    .line 1218
    goto :goto_a1

    .line 1219
    :cond_8f
    iget-object v1, v0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    iget v6, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    iget v7, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v7}, Landroid/view/WindowInsets;->insetBoundingRects([[Landroid/graphics/Rect;IIIIII)[[Landroid/graphics/Rect;

    move-result-object v9

    :goto_a1
    iget v1, v0, Landroid/view/WindowInsets;->mFrameWidth:I

    sub-int v1, v1, p1

    sub-int v1, v1, p3

    .line 1221
    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v0, Landroid/view/WindowInsets;->mFrameHeight:I

    sub-int v3, v3, p2

    sub-int v3, v3, p4

    .line 1222
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v3, v17

    move/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v9

    move-object v9, v3

    move-object/from16 v3, v18

    move/from16 v18, v2

    move-object v2, v10

    move-object v10, v3

    move-object v3, v11

    move v7, v15

    move-object/from16 v11, v19

    move-object/from16 v4, v20

    move/from16 v5, v21

    move/from16 v6, v22

    move-object/from16 v15, v23

    invoke-direct/range {v1 .. v18}, Landroid/view/WindowInsets;-><init>([Landroid/graphics/Insets;[Landroid/graphics/Insets;[ZZIZILandroid/view/DisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Landroid/view/DisplayShape;IZ[[Landroid/graphics/Rect;[[Landroid/graphics/Rect;II)V

    .line 1190
    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist isConsumed()Z
    .registers 2

    .line 706
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist isForceConsumingOpaqueCaptionBar()Z
    .registers 2

    .line 1034
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    return v0
.end method

.method public whitelist isRound()Z
    .registers 2

    .line 721
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mIsRound:Z

    return v0
.end method

.method greylist-max-o isSystemWindowInsetsConsumed()Z
    .registers 2

    .line 1366
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    return v0
.end method

.method public whitelist isVisible(I)Z
    .registers 5
    .param p1, "typeMask"    # I

    .line 406
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x200

    if-gt v0, v1, :cond_19

    .line 407
    and-int v1, p1, v0

    if-nez v1, :cond_a

    .line 408
    goto :goto_16

    .line 410
    :cond_a
    iget-object v1, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    invoke-static {v0}, Landroid/view/WindowInsets$Type;->indexOf(I)I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_16

    .line 411
    const/4 v1, 0x0

    return v1

    .line 406
    :cond_16
    :goto_16
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 414
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
    .registers 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 772
    iget-boolean v0, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    if-eqz v0, :cond_5

    .line 773
    return-object p0

    .line 775
    :cond_5
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p0}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;
    .registers 6
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 797
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowInsets{\n    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    const/16 v2, 0xa

    const-string v3, "\n    "

    if-ge v1, v2, :cond_7e

    .line 1048
    iget-object v2, p0, Landroid/view/WindowInsets;->mTypeInsetsMap:[Landroid/graphics/Insets;

    aget-object v2, v2, v1

    .line 1049
    .local v2, "insets":Landroid/graphics/Insets;
    iget-object v4, p0, Landroid/view/WindowInsets;->mTypeMaxInsetsMap:[Landroid/graphics/Insets;

    aget-object v4, v4, v1

    .line 1050
    .local v4, "maxInsets":Landroid/graphics/Insets;
    iget-object v5, p0, Landroid/view/WindowInsets;->mTypeVisibilityMap:[Z

    aget-boolean v5, v5, v1

    .line 1051
    .local v5, "visible":Z
    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v6, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    sget-object v6, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v6, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    if-eqz v5, :cond_7b

    .line 1052
    :cond_2c
    const/4 v6, 0x1

    shl-int/2addr v6, v1

    invoke-static {v6}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1053
    const-string v7, " max="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1054
    const-string v7, " vis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1055
    const-string v7, " boundingRects="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/WindowInsets;->mTypeBoundingRectsMap:[[Landroid/graphics/Rect;

    aget-object v7, v7, v1

    .line 1056
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1057
    const-string v7, " maxBoundingRects="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/WindowInsets;->mTypeMaxBoundingRectsMap:[[Landroid/graphics/Rect;

    aget-object v7, v7, v1

    .line 1058
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1059
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    .end local v2    # "insets":Landroid/graphics/Insets;
    .end local v4    # "maxInsets":Landroid/graphics/Insets;
    .end local v5    # "visible":Z
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1063
    .end local v1    # "i":I
    :cond_7e
    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    const-string v2, ""

    if-eqz v1, :cond_9a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cutout="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/WindowInsets;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9b

    :cond_9a
    move-object v1, v2

    :goto_9b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    iget-object v1, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    if-eqz v1, :cond_bc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "roundedCorners="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/WindowInsets;->mRoundedCorners:Landroid/view/RoundedCorners;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_bd

    :cond_bc
    move-object v1, v2

    :goto_bd
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    iget-object v1, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    if-eqz v1, :cond_dd

    .line 1068
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "privacyIndicatorBounds="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/WindowInsets;->mPrivacyIndicatorBounds:Landroid/view/PrivacyIndicatorBounds;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_de

    :cond_dd
    move-object v1, v2

    .line 1067
    :goto_de
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    iget-object v1, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    if-eqz v1, :cond_fe

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayShape="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/view/WindowInsets;->mDisplayShape:Landroid/view/DisplayShape;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_ff

    :cond_fe
    move-object v1, v2

    :goto_ff
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceConsumingTypes="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowInsets;->mForceConsumingTypes:I

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceConsumingOpaqueCaptionBar="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mForceConsumingOpaqueCaptionBar:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "suppressScrimTypes="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowInsets;->mSuppressScrimTypes:I

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compatInsetsTypes="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/view/WindowInsets;->mCompatInsetsTypes:I

    invoke-static {v4}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compatIgnoreVisibility="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mCompatIgnoreVisibility:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "systemWindowInsetsConsumed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mSystemWindowInsetsConsumed:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stableInsetsConsumed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mStableInsetsConsumed:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayCutoutConsumed="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Landroid/view/WindowInsets;->mDisplayCutoutConsumed:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eqz v1, :cond_1f5

    const-string/jumbo v2, "round"

    :cond_1f5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInsets;->mFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/WindowInsets;->mFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
