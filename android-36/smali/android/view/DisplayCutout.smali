.class public final Landroid/view/DisplayCutout;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayCutout$Bounds;,
        Landroid/view/DisplayCutout$CutoutPathParserInfo;,
        Landroid/view/DisplayCutout$Builder;,
        Landroid/view/DisplayCutout$ParcelableWrapper;,
        Landroid/view/DisplayCutout$BoundsPosition;
    }
.end annotation


# static fields
.field public static final blacklist BOUNDS_POSITION_BOTTOM:I = 0x3

.field public static final blacklist BOUNDS_POSITION_LEFT:I = 0x0

.field public static final blacklist BOUNDS_POSITION_LENGTH:I = 0x4

.field public static final blacklist BOUNDS_POSITION_RIGHT:I = 0x2

.field public static final blacklist BOUNDS_POSITION_TOP:I = 0x1

.field private static final greylist-max-o CACHE_LOCK:Ljava/lang/Object;

.field private static final blacklist EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

.field public static final greylist-max-o EMULATION_OVERLAY_CATEGORY:Ljava/lang/String; = "com.android.internal.display_cutout_emulation"

.field static final blacklist INVALID_OVERRIDES:[I

.field private static final blacklist INVALID_SIDE_OVERRIDE:I = -0x1

.field public static final greylist-max-o NO_CUTOUT:Landroid/view/DisplayCutout;

.field private static final greylist-max-o NULL_PAIR:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SIDE_STRING_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final blacklist SIDE_STRING_LEFT:Ljava/lang/String; = "left"

.field private static final blacklist SIDE_STRING_RIGHT:Ljava/lang/String; = "right"

.field private static final blacklist SIDE_STRING_TOP:Ljava/lang/String; = "top"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DisplayCutout"

.field private static final greylist-max-o ZERO_RECT:Landroid/graphics/Rect;

.field private static greylist-max-o sCachedCutout:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCachedCutoutPath:Landroid/graphics/Path;

.field private static blacklist sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

.field private static greylist-max-o sCachedDensity:F

.field private static greylist-max-o sCachedDisplayHeight:I

.field private static greylist-max-o sCachedDisplayWidth:I

.field private static blacklist sCachedPhysicalPixelDisplaySizeRatio:F

.field private static blacklist sCachedSideOverrides:[I

.field private static greylist-max-o sCachedSpec:Ljava/lang/String;

.field private static blacklist sCachedWaterfallInsets:Landroid/graphics/Insets;


# instance fields
.field private final blacklist mBounds:Landroid/view/DisplayCutout$Bounds;

.field private final blacklist mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

.field private final greylist-max-o mSafeInsets:Landroid/graphics/Rect;

.field private blacklist mSideOverrides:[I

.field private final blacklist mWaterfallInsets:Landroid/graphics/Insets;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBounds(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$Bounds;
    .registers 1

    iget-object p0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCutoutPathParserInfo(Landroid/view/DisplayCutout;)Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .registers 1

    iget-object p0, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSafeInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSideOverrides(Landroid/view/DisplayCutout;)[I
    .registers 1

    iget-object p0, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;
    .registers 1

    iget-object p0, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetCACHE_LOCK()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsCachedCutoutPath(Landroid/graphics/Path;)V
    .registers 1

    sput-object p0, Landroid/view/DisplayCutout;->sCachedCutoutPath:Landroid/graphics/Path;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsCachedCutoutPathParserInfo(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .registers 1

    sput-object p0, Landroid/view/DisplayCutout;->sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 2

    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 11

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    .line 84
    new-instance v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    sput-object v1, Landroid/view/DisplayCutout;->EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 95
    new-instance v2, Landroid/view/DisplayCutout;

    sget-object v3, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    sget-object v5, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v6, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v7, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v8, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v9, Landroid/view/DisplayCutout;->EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    sput-object v2, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    .line 100
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    .line 112
    sget-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    sput-object v0, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    .line 169
    const/4 v0, -0x1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Landroid/view/DisplayCutout;->INVALID_OVERRIDES:[I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 18
    .param p1, "safeInsets"    # Landroid/graphics/Insets;
    .param p2, "boundLeft"    # Landroid/graphics/Rect;
    .param p3, "boundTop"    # Landroid/graphics/Rect;
    .param p4, "boundRight"    # Landroid/graphics/Rect;
    .param p5, "boundBottom"    # Landroid/graphics/Rect;

    .line 424
    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v3

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    new-instance v5, Landroid/view/DisplayCutout$Bounds;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v5 .. v11}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 426
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;)V
    .registers 18
    .param p1, "safeInsets"    # Landroid/graphics/Insets;
    .param p2, "boundLeft"    # Landroid/graphics/Rect;
    .param p3, "boundTop"    # Landroid/graphics/Rect;
    .param p4, "boundRight"    # Landroid/graphics/Rect;
    .param p5, "boundBottom"    # Landroid/graphics/Rect;
    .param p6, "waterfallInsets"    # Landroid/graphics/Insets;

    .line 506
    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Landroid/view/DisplayCutout$Bounds;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v4 .. v10}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, v4

    move-object/from16 v4, p6

    invoke-direct/range {v2 .. v7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 508
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .registers 16
    .param p1, "safeInsets"    # Landroid/graphics/Insets;
    .param p2, "boundLeft"    # Landroid/graphics/Rect;
    .param p3, "boundTop"    # Landroid/graphics/Rect;
    .param p4, "boundRight"    # Landroid/graphics/Rect;
    .param p5, "boundBottom"    # Landroid/graphics/Rect;
    .param p6, "waterfallInsets"    # Landroid/graphics/Insets;
    .param p7, "info"    # Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 452
    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Landroid/view/DisplayCutout$Bounds;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p2    # "boundLeft":Landroid/graphics/Rect;
    .end local p3    # "boundTop":Landroid/graphics/Rect;
    .end local p4    # "boundRight":Landroid/graphics/Rect;
    .end local p5    # "boundBottom":Landroid/graphics/Rect;
    .local v2, "boundLeft":Landroid/graphics/Rect;
    .local v3, "boundTop":Landroid/graphics/Rect;
    .local v4, "boundRight":Landroid/graphics/Rect;
    .local v5, "boundBottom":Landroid/graphics/Rect;
    invoke-direct/range {v1 .. v7}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    move-object p4, p6

    move-object p6, p7

    move-object p5, v1

    .end local p7    # "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .local p4, "waterfallInsets":Landroid/graphics/Insets;
    .local p6, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    const/4 p7, 0x0

    move-object p2, p0

    move-object p3, v0

    invoke-direct/range {p2 .. p7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 454
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V
    .registers 16
    .param p1, "safeInsets"    # Landroid/graphics/Insets;
    .param p2, "boundLeft"    # Landroid/graphics/Rect;
    .param p3, "boundTop"    # Landroid/graphics/Rect;
    .param p4, "boundRight"    # Landroid/graphics/Rect;
    .param p5, "boundBottom"    # Landroid/graphics/Rect;
    .param p6, "waterfallInsets"    # Landroid/graphics/Insets;
    .param p7, "info"    # Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .param p8, "sideOverrides"    # [I

    .line 480
    move-object v2, p3

    .end local p3    # "boundTop":Landroid/graphics/Rect;
    .local v2, "boundTop":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p3

    new-instance v0, Landroid/view/DisplayCutout$Bounds;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p4

    move-object v4, p5

    .end local p2    # "boundLeft":Landroid/graphics/Rect;
    .end local p4    # "boundRight":Landroid/graphics/Rect;
    .end local p5    # "boundBottom":Landroid/graphics/Rect;
    .local v1, "boundLeft":Landroid/graphics/Rect;
    .local v3, "boundRight":Landroid/graphics/Rect;
    .local v4, "boundBottom":Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v6}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    move-object p2, p0

    move-object p4, p6

    move-object p6, p7

    move-object p7, p8

    move-object p5, v0

    .end local p8    # "sideOverrides":[I
    .local p4, "waterfallInsets":Landroid/graphics/Insets;
    .local p6, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .local p7, "sideOverrides":[I
    invoke-direct/range {p2 .. p7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 483
    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V
    .registers 16
    .param p1, "safeInsets"    # Landroid/graphics/Rect;
    .param p2, "waterfallInsets"    # Landroid/graphics/Insets;
    .param p3, "boundLeft"    # Landroid/graphics/Rect;
    .param p4, "boundTop"    # Landroid/graphics/Rect;
    .param p5, "boundRight"    # Landroid/graphics/Rect;
    .param p6, "boundBottom"    # Landroid/graphics/Rect;
    .param p7, "info"    # Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .param p8, "copyArguments"    # Z

    .line 550
    move-object v1, p3

    .end local p3    # "boundLeft":Landroid/graphics/Rect;
    .local v1, "boundLeft":Landroid/graphics/Rect;
    invoke-static {p1, p8}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object p3

    new-instance v0, Landroid/view/DisplayCutout$Bounds;

    const/4 v6, 0x0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p8

    .end local p4    # "boundTop":Landroid/graphics/Rect;
    .end local p5    # "boundRight":Landroid/graphics/Rect;
    .end local p6    # "boundBottom":Landroid/graphics/Rect;
    .end local p8    # "copyArguments":Z
    .local v2, "boundTop":Landroid/graphics/Rect;
    .local v3, "boundRight":Landroid/graphics/Rect;
    .local v4, "boundBottom":Landroid/graphics/Rect;
    .local v5, "copyArguments":Z
    invoke-direct/range {v0 .. v6}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    move-object p6, p7

    move-object p5, v0

    .end local p7    # "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .local p6, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    const/4 p7, 0x0

    move-object p4, p2

    move-object p2, p0

    .end local p2    # "waterfallInsets":Landroid/graphics/Insets;
    .local p4, "waterfallInsets":Landroid/graphics/Insets;
    invoke-direct/range {p2 .. p7}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 553
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;ZLandroid/view/DisplayCutout-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;)V
    .registers 11
    .param p1, "safeInsets"    # Landroid/graphics/Rect;
    .param p2, "waterfallInsets"    # Landroid/graphics/Insets;
    .param p3, "bounds"    # Landroid/view/DisplayCutout$Bounds;
    .param p4, "info"    # Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 563
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "safeInsets":Landroid/graphics/Rect;
    .end local p2    # "waterfallInsets":Landroid/graphics/Insets;
    .end local p3    # "bounds":Landroid/view/DisplayCutout$Bounds;
    .end local p4    # "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .local v1, "safeInsets":Landroid/graphics/Rect;
    .local v2, "waterfallInsets":Landroid/graphics/Insets;
    .local v3, "bounds":Landroid/view/DisplayCutout$Bounds;
    .local v4, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 564
    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V
    .registers 7
    .param p1, "safeInsets"    # Landroid/graphics/Rect;
    .param p2, "waterfallInsets"    # Landroid/graphics/Insets;
    .param p3, "bounds"    # Landroid/view/DisplayCutout$Bounds;
    .param p4, "info"    # Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .param p5, "sideOverrides"    # [I

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    .line 569
    if-nez p2, :cond_a

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_b

    :cond_a
    move-object v0, p2

    :goto_b
    iput-object v0, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 570
    iput-object p3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    .line 571
    if-nez p4, :cond_14

    sget-object v0, Landroid/view/DisplayCutout;->EMPTY_PARSER_INFO:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    goto :goto_15

    :cond_14
    move-object v0, p4

    :goto_15
    iput-object v0, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 572
    iput-object p5, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    .line 573
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[ILandroid/view/DisplayCutout-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V
    .registers 12
    .param p1, "safeInsets"    # Landroid/graphics/Rect;
    .param p2, "waterfallInsets"    # Landroid/graphics/Insets;
    .param p3, "bounds"    # [Landroid/graphics/Rect;
    .param p4, "info"    # Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .param p5, "copyArguments"    # Z

    .line 557
    invoke-static {p1, p5}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v3, Landroid/view/DisplayCutout$Bounds;

    const/4 v0, 0x0

    invoke-direct {v3, p3, p5, v0}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    .end local p2    # "waterfallInsets":Landroid/graphics/Insets;
    .end local p4    # "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .local v2, "waterfallInsets":Landroid/graphics/Insets;
    .local v4, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 559
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .registers 10
    .param p1, "safeInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 525
    .local p2, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/view/DisplayCutout;->getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    new-instance v4, Landroid/view/DisplayCutout$Bounds;

    .line 526
    invoke-static {p1, p2}, Landroid/view/DisplayCutout;->extractBoundsFromList(Landroid/graphics/Rect;Ljava/util/List;)[Landroid/graphics/Rect;

    move-result-object v1

    const/4 v5, 0x0

    invoke-direct {v4, v1, v0, v5}, Landroid/view/DisplayCutout$Bounds;-><init>([Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    .line 525
    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    .line 527
    return-void
.end method

.method private static greylist-max-o atLeastZero(I)I
    .registers 2
    .param p0, "value"    # I

    .line 1004
    if-gez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move v0, p0

    :goto_5
    return v0
.end method

.method private static blacklist computeSafeInsets(IILandroid/graphics/Insets;[Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 10
    .param p0, "displayW"    # I
    .param p1, "displayH"    # I
    .param p2, "waterFallInsets"    # Landroid/graphics/Insets;
    .param p3, "bounds"    # [Landroid/graphics/Rect;

    .line 1396
    iget v0, p2, Landroid/graphics/Insets;->left:I

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x3

    invoke-static {p0, p1, v1, v2}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1398
    .local v0, "leftInset":I
    iget v1, p2, Landroid/graphics/Insets;->top:I

    const/4 v3, 0x1

    aget-object v3, p3, v3

    const/16 v4, 0x30

    invoke-static {p0, p1, v3, v4}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1400
    .local v1, "topInset":I
    iget v3, p2, Landroid/graphics/Insets;->right:I

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const/4 v5, 0x5

    invoke-static {p0, p1, v4, v5}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1402
    .local v3, "rightInset":I
    iget v4, p2, Landroid/graphics/Insets;->bottom:I

    aget-object v2, p3, v2

    const/16 v5, 0x50

    invoke-static {p0, p1, v2, v5}, Landroid/view/DisplayCutout;->findCutoutInsetForSide(IILandroid/graphics/Rect;I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1405
    .local v2, "bottomInset":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public static blacklist computeSafeInsets(IILandroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .registers 5
    .param p0, "displayW"    # I
    .param p1, "displayH"    # I
    .param p2, "cutout"    # Landroid/view/DisplayCutout;

    .line 1389
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 1390
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v1

    .line 1389
    invoke-static {p0, p1, v0, v1}, Landroid/view/DisplayCutout;->computeSafeInsets(IILandroid/graphics/Insets;[Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist constructDisplayCutout([Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)Landroid/view/DisplayCutout;
    .registers 9
    .param p0, "bounds"    # [Landroid/graphics/Rect;
    .param p1, "waterfallInsets"    # Landroid/graphics/Insets;
    .param p2, "info"    # Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 1030
    new-instance v0, Landroid/view/DisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    .end local p0    # "bounds":[Landroid/graphics/Rect;
    .end local p1    # "waterfallInsets":Landroid/graphics/Insets;
    .end local p2    # "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .local v2, "waterfallInsets":Landroid/graphics/Insets;
    .local v3, "bounds":[Landroid/graphics/Rect;
    .local v4, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v0
.end method

.method public static blacklist extractBoundsFromList(Landroid/graphics/Rect;Ljava/util/List;)[Landroid/graphics/Rect;
    .registers 9
    .param p0, "safeInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)[",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 607
    .local p1, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 608
    .local v0, "sortedBounds":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, v0

    if-ge v1, v2, :cond_e

    .line 609
    sget-object v2, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    aput-object v2, v0, v1

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 611
    .end local v1    # "i":I
    :cond_e
    if-eqz p0, :cond_48

    if-eqz p1, :cond_48

    .line 615
    iget v1, p0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gtz v1, :cond_1f

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lez v1, :cond_1d

    goto :goto_1f

    :cond_1d
    move v1, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v1, v3

    .line 616
    .local v1, "topBottomInset":Z
    :goto_20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 617
    .local v5, "bound":Landroid/graphics/Rect;
    if-eqz v1, :cond_3d

    .line 618
    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_39

    .line 619
    aput-object v5, v0, v3

    goto :goto_47

    .line 621
    :cond_39
    const/4 v6, 0x3

    aput-object v5, v0, v6

    goto :goto_47

    .line 624
    :cond_3d
    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_44

    .line 625
    aput-object v5, v0, v2

    goto :goto_47

    .line 627
    :cond_44
    const/4 v6, 0x2

    aput-object v5, v0, v6

    .line 630
    .end local v5    # "bound":Landroid/graphics/Rect;
    :goto_47
    goto :goto_24

    .line 632
    .end local v1    # "topBottomInset":Z
    :cond_48
    return-object v0
.end method

.method private static blacklist findCutoutInsetForSide(IILandroid/graphics/Rect;I)I
    .registers 8
    .param p0, "displayW"    # I
    .param p1, "displayH"    # I
    .param p2, "boundingRect"    # Landroid/graphics/Rect;
    .param p3, "gravity"    # I

    .line 1410
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1411
    const/4 v0, 0x0

    return v0

    .line 1414
    :cond_8
    const/4 v0, 0x0

    .line 1415
    .local v0, "inset":I
    sparse-switch p3, :sswitch_data_46

    .line 1420
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown gravity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1417
    :sswitch_26
    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_45

    .line 1416
    :sswitch_2f
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_45

    .line 1419
    :sswitch_36
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, p0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_45

    .line 1418
    :sswitch_3f
    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1415
    :goto_45
    return v1

    :sswitch_data_46
    .sparse-switch
        0x3 -> :sswitch_3f
        0x5 -> :sswitch_36
        0x30 -> :sswitch_2f
        0x50 -> :sswitch_26
    .end sparse-switch
.end method

.method public static blacklist fromBoundingRect(IIIII)Landroid/view/DisplayCutout;
    .registers 12
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "pos"    # I

    .line 1016
    const/4 v0, 0x4

    new-array v4, v0, [Landroid/graphics/Rect;

    .line 1017
    .local v4, "bounds":[Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_16

    .line 1018
    new-instance v2, Landroid/graphics/Rect;

    if-ne p4, v1, :cond_e

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_11

    :cond_e
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :goto_11
    aput-object v2, v4, v1

    .line 1017
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1020
    .end local v1    # "i":I
    :cond_16
    new-instance v1, Landroid/view/DisplayCutout;

    sget-object v2, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v1
.end method

.method public static blacklist fromBounds([Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .registers 7
    .param p0, "bounds"    # [Landroid/graphics/Rect;

    .line 1040
    new-instance v0, Landroid/view/DisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    .end local p0    # "bounds":[Landroid/graphics/Rect;
    .local v3, "bounds":[Landroid/graphics/Rect;
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v0
.end method

.method public static blacklist fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayCutout;
    .registers 15
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;
    .param p2, "physicalDisplayWidth"    # I
    .param p3, "physicalDisplayHeight"    # I
    .param p4, "displayWidth"    # I
    .param p5, "displayHeight"    # I

    .line 1191
    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getDisplayCutoutPath(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1192
    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getDisplayCutoutApproximationRect(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float v6, v2, v3

    .line 1195
    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getWaterfallInsets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Insets;

    move-result-object v7

    .line 1196
    invoke-static {p0, p1}, Landroid/view/DisplayCutout;->getDisplayCutoutSideOverrides(Landroid/content/res/Resources;Ljava/lang/String;)[I

    move-result-object v8

    .line 1191
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p2    # "physicalDisplayWidth":I
    .end local p3    # "physicalDisplayHeight":I
    .end local p4    # "displayWidth":I
    .end local p5    # "displayHeight":I
    .local v2, "physicalDisplayWidth":I
    .local v3, "physicalDisplayHeight":I
    .local v4, "displayWidth":I
    .local v5, "displayHeight":I
    invoke-static/range {v0 .. v8}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;Ljava/lang/String;IIIIFLandroid/graphics/Insets;[I)Landroid/util/Pair;

    move-result-object p2

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Landroid/view/DisplayCutout;

    return-object p2
.end method

.method public static blacklist fromSpec(Ljava/lang/String;IIFLandroid/graphics/Insets;[I)Landroid/view/DisplayCutout;
    .registers 15
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "density"    # F
    .param p4, "waterfallInsets"    # Landroid/graphics/Insets;
    .param p5, "sideOverrides"    # [I

    .line 1207
    const/4 v1, 0x0

    move v4, p1

    move v5, p2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    .end local p0    # "pathSpec":Ljava/lang/String;
    .end local p1    # "displayWidth":I
    .end local p2    # "displayHeight":I
    .end local p3    # "density":F
    .end local p4    # "waterfallInsets":Landroid/graphics/Insets;
    .end local p5    # "sideOverrides":[I
    .local v0, "pathSpec":Ljava/lang/String;
    .local v2, "displayWidth":I
    .local v3, "displayHeight":I
    .local v6, "density":F
    .local v7, "waterfallInsets":Landroid/graphics/Insets;
    .local v8, "sideOverrides":[I
    invoke-static/range {v0 .. v8}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;Ljava/lang/String;IIIIFLandroid/graphics/Insets;[I)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/view/DisplayCutout;

    return-object p0
.end method

.method private static blacklist getCopyOrRef(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;
    .registers 3
    .param p0, "r"    # Landroid/graphics/Rect;
    .param p1, "copyArguments"    # Z

    .line 576
    if-nez p0, :cond_5

    .line 577
    sget-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    return-object v0

    .line 578
    :cond_5
    if-eqz p1, :cond_d

    .line 579
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0

    .line 581
    :cond_d
    return-object p0
.end method

.method private static blacklist getDisplayCutoutApproximationRect(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 1066
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 1067
    .local v0, "index":I
    const v1, 0x1070050

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "array":[Ljava/lang/String;
    if-ltz v0, :cond_13

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 1070
    aget-object v2, v1, v0

    return-object v2

    .line 1072
    :cond_13
    const v2, 0x1040293

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getDisplayCutoutPath(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 1051
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 1052
    .local v0, "index":I
    const v1, 0x1070051

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1053
    .local v1, "array":[Ljava/lang/String;
    if-ltz v0, :cond_13

    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 1054
    aget-object v2, v1, v0

    return-object v2

    .line 1056
    :cond_13
    const v2, 0x1040292

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getDisplayCutoutSideOverrides(Landroid/content/res/Resources;Ljava/lang/String;)[I
    .registers 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1152
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/window/flags/Flags;->movableCutoutConfiguration()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1153
    const/4 v0, 0x0

    return-object v0

    .line 1155
    :cond_8
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 1156
    .local v0, "index":I
    const v1, 0x1070052

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1158
    .local v1, "array":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    if-ltz v0, :cond_21

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_21

    .line 1159
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    goto :goto_22

    .line 1160
    :cond_21
    nop

    :goto_22
    nop

    .line 1161
    .local v2, "resourceId":I
    if-eqz v2, :cond_2e

    .line 1162
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    goto :goto_35

    .line 1163
    :cond_2e
    const v3, 0x1070091

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    :goto_35
    nop

    .line 1164
    .local v3, "rawOverrides":[I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1165
    array-length v4, v3

    if-nez v4, :cond_3f

    .line 1166
    sget-object v4, Landroid/view/DisplayCutout;->INVALID_OVERRIDES:[I

    return-object v4

    .line 1167
    :cond_3f
    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_70

    .line 1172
    const/4 v4, 0x0

    .local v4, "rotation":I
    :goto_44
    const/4 v6, 0x3

    if-gt v4, v6, :cond_6f

    .line 1173
    aget v6, v3, v4

    if-ltz v6, :cond_52

    aget v6, v3, v4

    if-ge v6, v5, :cond_52

    .line 1172
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 1175
    :cond_52
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid side override definition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1176
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1179
    .end local v4    # "rotation":I
    :cond_6f
    return-object v3

    .line 1168
    :cond_70
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid side override definition, exact 4 overrides required: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1170
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static blacklist getFillBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 1107
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 1108
    .local v0, "index":I
    const v1, 0x1070077

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1110
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_19

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 1111
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .local v2, "fillCutout":Z
    goto :goto_20

    .line 1113
    .end local v2    # "fillCutout":Z
    :cond_19
    const v2, 0x11101a9

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1115
    .restart local v2    # "fillCutout":Z
    :goto_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1116
    return v2
.end method

.method public static blacklist getMaskBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 1085
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 1086
    .local v0, "index":I
    const v1, 0x1070094

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1088
    .local v1, "array":Landroid/content/res/TypedArray;
    if-ltz v0, :cond_19

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 1089
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .local v2, "maskCutout":Z
    goto :goto_20

    .line 1091
    .end local v2    # "maskCutout":Z
    :cond_19
    const v2, 0x11101ef

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1093
    .restart local v2    # "maskCutout":Z
    :goto_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1094
    return v2
.end method

.method private static blacklist getRotationToOverride(I[Landroid/graphics/Rect;I)I
    .registers 7
    .param p0, "sideOverride"    # I
    .param p1, "bounds"    # [Landroid/graphics/Rect;
    .param p2, "defaultRotation"    # I

    .line 1359
    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    .line 1360
    return p2

    .line 1362
    :cond_4
    const/4 v1, -0x1

    .line 1363
    .local v1, "side":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    const/4 v3, 0x3

    if-gt v2, v3, :cond_19

    .line 1364
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1365
    goto :goto_16

    .line 1367
    :cond_12
    if-eq v1, v0, :cond_15

    .line 1369
    return p2

    .line 1371
    :cond_15
    move v1, v2

    .line 1363
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1373
    .end local v2    # "i":I
    :cond_19
    if-ne v1, v0, :cond_1c

    .line 1374
    return p2

    .line 1376
    :cond_1c
    sub-int v0, p0, v1

    .line 1377
    .local v0, "rotation":I
    if-gez v0, :cond_22

    .line 1378
    add-int/lit8 v0, v0, 0x4

    .line 1380
    :cond_22
    return v0
.end method

.method private static blacklist getSideOverride([II)I
    .registers 4
    .param p0, "sideOverrides"    # [I
    .param p1, "rotation"    # I

    .line 1350
    if-eqz p0, :cond_a

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    goto :goto_a

    .line 1353
    :cond_7
    aget v0, p0, p1

    return v0

    .line 1351
    :cond_a
    :goto_a
    const/4 v0, -0x1

    return v0
.end method

.method private static blacklist getWaterfallInsets(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Insets;
    .registers 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayUniqueId"    # Ljava/lang/String;

    .line 1130
    invoke-static {p0, p1}, Landroid/util/DisplayUtils;->getDisplayUniqueIdConfigIndex(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    .line 1131
    .local v0, "index":I
    const v1, 0x10700e8

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1132
    .local v1, "array":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    if-ltz v0, :cond_19

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_19

    .line 1133
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    goto :goto_1a

    .line 1134
    :cond_19
    move v3, v2

    :goto_1a
    nop

    .line 1135
    .local v3, "resourceId":I
    if-eqz v3, :cond_3d

    .line 1136
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1137
    .local v4, "waterfall":Landroid/content/res/TypedArray;
    nop

    .line 1138
    invoke-virtual {v4, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 1139
    const/4 v6, 0x1

    invoke-virtual {v4, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 1140
    const/4 v7, 0x2

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 1141
    const/4 v8, 0x3

    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 1137
    invoke-static {v5, v6, v7, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v2

    .line 1142
    .local v2, "insets":Landroid/graphics/Insets;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1143
    .end local v4    # "waterfall":Landroid/content/res/TypedArray;
    goto :goto_41

    .line 1144
    .end local v2    # "insets":Landroid/graphics/Insets;
    :cond_3d
    invoke-static {p0}, Landroid/view/DisplayCutout;->loadWaterfallInset(Landroid/content/res/Resources;)Landroid/graphics/Insets;

    move-result-object v2

    .line 1146
    .restart local v2    # "insets":Landroid/graphics/Insets;
    :goto_41
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1147
    return-object v2
.end method

.method private blacklist insetInsets(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I
    .param p5, "insets"    # Landroid/graphics/Rect;

    .line 975
    if-gtz p2, :cond_6

    iget v0, p5, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_f

    .line 976
    :cond_6
    iget v0, p5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->top:I

    .line 978
    :cond_f
    if-gtz p4, :cond_15

    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_1e

    .line 979
    :cond_15
    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p4

    invoke-static {v0}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    .line 981
    :cond_1e
    if-gtz p1, :cond_24

    iget v0, p5, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_2d

    .line 982
    :cond_24
    iget v0, p5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->left:I

    .line 984
    :cond_2d
    if-gtz p3, :cond_33

    iget v0, p5, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_3c

    .line 985
    :cond_33
    iget v0, p5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p3

    invoke-static {v0}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->right:I

    .line 987
    :cond_3c
    return-object p5
.end method

.method private static blacklist loadWaterfallInset(Landroid/content/res/Resources;)Landroid/graphics/Insets;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 1302
    nop

    .line 1303
    const v0, 0x10503b4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1304
    const v1, 0x10503b6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1305
    const v2, 0x10503b5

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1306
    const v3, 0x10503b3

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1302
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist pathAndDisplayCutoutFromSpec(Ljava/lang/String;Ljava/lang/String;IIIIFLandroid/graphics/Insets;[I)Landroid/util/Pair;
    .registers 37
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "rectSpec"    # Ljava/lang/String;
    .param p2, "physicalDisplayWidth"    # I
    .param p3, "physicalDisplayHeight"    # I
    .param p4, "displayWidth"    # I
    .param p5, "displayHeight"    # I
    .param p6, "density"    # F
    .param p7, "waterfallInsets"    # Landroid/graphics/Insets;
    .param p8, "sideOverrides"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIF",
            "Landroid/graphics/Insets;",
            "[I)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation

    .line 1231
    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v5, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    if-eqz p1, :cond_f

    move-object/from16 v0, p1

    goto :goto_11

    :cond_f
    move-object/from16 v0, p0

    :goto_11
    move-object v3, v0

    .line 1232
    .local v3, "spec":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v10, v0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1233
    sget-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object v0

    .line 1236
    :cond_23
    invoke-static/range {p2 .. p5}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result v9

    .line 1239
    .local v9, "physicalPixelDisplaySizeRatio":F
    sget-object v4, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 1240
    :try_start_2a
    sget-object v0, Landroid/view/DisplayCutout;->sCachedSpec:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_142

    if-eqz v0, :cond_61

    :try_start_32
    sget v0, Landroid/view/DisplayCutout;->sCachedDisplayWidth:I

    if-ne v0, v1, :cond_61

    sget v0, Landroid/view/DisplayCutout;->sCachedDisplayHeight:I

    if-ne v0, v2, :cond_61

    sget v0, Landroid/view/DisplayCutout;->sCachedDensity:F

    cmpl-float v0, v0, v5

    if-nez v0, :cond_61

    sget-object v0, Landroid/view/DisplayCutout;->sCachedWaterfallInsets:Landroid/graphics/Insets;

    .line 1243
    invoke-virtual {v10, v0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    sget v0, Landroid/view/DisplayCutout;->sCachedPhysicalPixelDisplaySizeRatio:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_61

    sget-object v0, Landroid/view/DisplayCutout;->sCachedSideOverrides:[I

    .line 1245
    invoke-static {v0, v11}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1246
    sget-object v0, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_32 .. :try_end_59} :catchall_5a

    return-object v0

    .line 1248
    :catchall_5a
    move-exception v0

    move v7, v1

    move v8, v2

    move/from16 v16, v9

    goto/16 :goto_147

    :cond_61
    :try_start_61
    monitor-exit v4
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_142

    .line 1250
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1252
    .end local v3    # "spec":Ljava/lang/String;
    .local v12, "spec":Ljava/lang/String;
    new-instance v0, Landroid/view/CutoutSpecification$Parser;

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v5, v3, v4, v9}, Landroid/view/CutoutSpecification$Parser;-><init>(FIIF)V

    .line 1254
    invoke-virtual {v0, v12}, Landroid/view/CutoutSpecification$Parser;->parse(Ljava/lang/String;)Landroid/view/CutoutSpecification;

    move-result-object v13

    .line 1255
    .local v13, "cutoutSpec":Landroid/view/CutoutSpecification;
    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getSafeInset()Landroid/graphics/Rect;

    move-result-object v14

    .line 1256
    .local v14, "safeInset":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getLeftBound()Landroid/graphics/Rect;

    move-result-object v15

    .line 1257
    .local v15, "boundLeft":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getTopBound()Landroid/graphics/Rect;

    move-result-object v16

    .line 1258
    .local v16, "boundTop":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getRightBound()Landroid/graphics/Rect;

    move-result-object v17

    .line 1259
    .local v17, "boundRight":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getBottomBound()Landroid/graphics/Rect;

    move-result-object v18

    .line 1261
    .local v18, "boundBottom":Landroid/graphics/Rect;
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v10, v0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 1262
    iget v0, v10, Landroid/graphics/Insets;->left:I

    iget v6, v14, Landroid/graphics/Rect;->left:I

    .line 1263
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v10, Landroid/graphics/Insets;->top:I

    iget v7, v14, Landroid/graphics/Rect;->top:I

    .line 1264
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v10, Landroid/graphics/Insets;->right:I

    iget v8, v14, Landroid/graphics/Rect;->right:I

    .line 1265
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v10, Landroid/graphics/Insets;->bottom:I

    iget v1, v14, Landroid/graphics/Rect;->bottom:I

    .line 1266
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1262
    invoke-virtual {v14, v0, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1269
    :cond_b2
    new-instance v0, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 1271
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v1, p4

    invoke-direct/range {v0 .. v9}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    move v7, v1

    move v8, v2

    move-object/from16 v19, v0

    .line 1272
    .local v19, "cutoutPathParserInfo":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    const/4 v0, 0x0

    invoke-static {v11, v0}, Landroid/view/DisplayCutout;->getSideOverride([II)I

    move-result v1

    .line 1273
    .local v1, "sideOverride":I
    move v2, v0

    new-instance v0, Landroid/view/DisplayCutout$Bounds;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v15

    move v15, v1

    move-object v1, v3

    move v3, v9

    move v9, v2

    move-object/from16 v2, v16

    move/from16 v16, v3

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    .end local v9    # "physicalPixelDisplaySizeRatio":F
    .end local v17    # "boundRight":Landroid/graphics/Rect;
    .end local v18    # "boundBottom":Landroid/graphics/Rect;
    .local v1, "boundLeft":Landroid/graphics/Rect;
    .local v2, "boundTop":Landroid/graphics/Rect;
    .local v3, "boundRight":Landroid/graphics/Rect;
    .local v4, "boundBottom":Landroid/graphics/Rect;
    .local v15, "sideOverride":I
    .local v16, "physicalPixelDisplaySizeRatio":F
    invoke-direct/range {v0 .. v6}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    .line 1274
    move-object v6, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    .end local v1    # "boundLeft":Landroid/graphics/Rect;
    .end local v2    # "boundTop":Landroid/graphics/Rect;
    .end local v3    # "boundRight":Landroid/graphics/Rect;
    .end local v4    # "boundBottom":Landroid/graphics/Rect;
    .local v6, "boundLeft":Landroid/graphics/Rect;
    .local v17, "boundTop":Landroid/graphics/Rect;
    .local v18, "boundRight":Landroid/graphics/Rect;
    .local v20, "boundBottom":Landroid/graphics/Rect;
    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v1

    .line 1275
    .local v1, "bounds":[Landroid/graphics/Rect;
    invoke-static {v15, v1, v9}, Landroid/view/DisplayCutout;->getRotationToOverride(I[Landroid/graphics/Rect;I)I

    move-result v2

    .line 1277
    .local v2, "rotateDistance":I
    if-eqz v2, :cond_f6

    .line 1278
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 1280
    :cond_f6
    move-object v3, v1

    .end local v1    # "bounds":[Landroid/graphics/Rect;
    .local v3, "bounds":[Landroid/graphics/Rect;
    invoke-static {v7, v8, v10, v3}, Landroid/view/DisplayCutout;->computeSafeInsets(IILandroid/graphics/Insets;[Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1282
    .local v1, "safeInsets":Landroid/graphics/Rect;
    new-instance v0, Landroid/view/DisplayCutout;

    new-instance v21, Landroid/view/DisplayCutout$Bounds;

    aget-object v22, v3, v9

    const/4 v4, 0x1

    aget-object v23, v3, v4

    const/4 v4, 0x2

    aget-object v24, v3, v4

    const/4 v4, 0x3

    aget-object v25, v3, v4

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v21 .. v27}, Landroid/view/DisplayCutout$Bounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/view/DisplayCutout-IA;)V

    move-object v4, v10

    move v10, v2

    move-object v2, v4

    move-object v9, v3

    move-object v5, v11

    move-object/from16 v4, v19

    move-object/from16 v3, v21

    .end local v2    # "rotateDistance":I
    .end local v3    # "bounds":[Landroid/graphics/Rect;
    .end local v19    # "cutoutPathParserInfo":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .local v4, "cutoutPathParserInfo":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .local v9, "bounds":[Landroid/graphics/Rect;
    .local v10, "rotateDistance":I
    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    move-object v2, v1

    move-object v1, v4

    .end local v4    # "cutoutPathParserInfo":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .local v1, "cutoutPathParserInfo":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .local v2, "safeInsets":Landroid/graphics/Rect;
    move-object v5, v0

    .line 1287
    .local v5, "cutout":Landroid/view/DisplayCutout;
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v13}, Landroid/view/CutoutSpecification;->getPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-direct {v0, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v11, v0

    .line 1288
    .local v11, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Path;Landroid/view/DisplayCutout;>;"
    sget-object v19, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v19

    .line 1289
    :try_start_12d
    sput-object v12, Landroid/view/DisplayCutout;->sCachedSpec:Ljava/lang/String;

    .line 1290
    sput v7, Landroid/view/DisplayCutout;->sCachedDisplayWidth:I

    .line 1291
    sput v8, Landroid/view/DisplayCutout;->sCachedDisplayHeight:I

    .line 1292
    sput p6, Landroid/view/DisplayCutout;->sCachedDensity:F

    .line 1293
    sput-object v11, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    .line 1294
    sput-object p7, Landroid/view/DisplayCutout;->sCachedWaterfallInsets:Landroid/graphics/Insets;

    .line 1295
    sput v16, Landroid/view/DisplayCutout;->sCachedPhysicalPixelDisplaySizeRatio:F

    .line 1296
    sput-object p8, Landroid/view/DisplayCutout;->sCachedSideOverrides:[I

    .line 1297
    monitor-exit v19

    .line 1298
    return-object v11

    .line 1297
    :catchall_13f
    move-exception v0

    monitor-exit v19
    :try_end_141
    .catchall {:try_start_12d .. :try_end_141} :catchall_13f

    throw v0

    .line 1248
    .end local v1    # "cutoutPathParserInfo":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .end local v2    # "safeInsets":Landroid/graphics/Rect;
    .end local v5    # "cutout":Landroid/view/DisplayCutout;
    .end local v6    # "boundLeft":Landroid/graphics/Rect;
    .end local v10    # "rotateDistance":I
    .end local v11    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Path;Landroid/view/DisplayCutout;>;"
    .end local v12    # "spec":Ljava/lang/String;
    .end local v13    # "cutoutSpec":Landroid/view/CutoutSpecification;
    .end local v14    # "safeInset":Landroid/graphics/Rect;
    .end local v15    # "sideOverride":I
    .end local v16    # "physicalPixelDisplaySizeRatio":F
    .end local v17    # "boundTop":Landroid/graphics/Rect;
    .end local v18    # "boundRight":Landroid/graphics/Rect;
    .end local v20    # "boundBottom":Landroid/graphics/Rect;
    .local v3, "spec":Ljava/lang/String;
    .local v9, "physicalPixelDisplaySizeRatio":F
    :catchall_142
    move-exception v0

    move v7, v1

    move v8, v2

    move/from16 v16, v9

    .end local v9    # "physicalPixelDisplaySizeRatio":F
    .restart local v16    # "physicalPixelDisplaySizeRatio":F
    :goto_147
    :try_start_147
    monitor-exit v4
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_149

    throw v0

    :catchall_149
    move-exception v0

    goto :goto_147
.end method

.method private static blacklist sideOverridesToString([I)Ljava/lang/String;
    .registers 8
    .param p0, "sideOverrides"    # [I

    .line 880
    if-nez p0, :cond_5

    .line 881
    const-string v0, "null"

    return-object v0

    .line 883
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 884
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    array-length v1, p0

    .line 886
    .local v1, "length":I
    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    .line 887
    const-string v2, "length="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_24
    const/4 v2, 0x0

    .line 890
    .local v2, "hasContent":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    if-ge v3, v1, :cond_63

    .line 891
    aget v4, p0, v3

    .line 892
    .local v4, "override":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_60

    .line 893
    if-eqz v2, :cond_34

    .line 894
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    :cond_34
    invoke-static {v3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    packed-switch v4, :pswitch_data_70

    goto :goto_5f

    .line 908
    :pswitch_45
    const-string v5, "bottom"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 905
    :pswitch_4b
    const-string/jumbo v5, "right"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    goto :goto_5f

    .line 902
    :pswitch_52
    const-string/jumbo v5, "top"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    goto :goto_5f

    .line 899
    :pswitch_59
    const-string v5, "left"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    nop

    .line 911
    :goto_5f
    const/4 v2, 0x1

    .line 890
    .end local v4    # "override":I
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 914
    .end local v3    # "i":I
    :cond_63
    const-string/jumbo v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_59
        :pswitch_52
        :pswitch_4b
        :pswitch_45
    .end packed-switch
.end method


# virtual methods
.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 921
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 922
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 923
    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v2

    const-wide v4, 0x10b00000003L

    invoke-virtual {v2, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 924
    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v2

    const-wide v4, 0x10b00000004L

    invoke-virtual {v2, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 925
    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v2

    const-wide v4, 0x10b00000005L

    invoke-virtual {v2, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 926
    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v2

    const-wide v4, 0x10b00000006L

    invoke-virtual {v2, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 927
    iget-object v2, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v4, 0x10b00000007L

    invoke-virtual {v2, p1, v4, v5}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 928
    iget-object v2, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    if-eqz v2, :cond_6e

    .line 929
    iget-object v2, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    array-length v4, v2

    :goto_5f
    if-ge v3, v4, :cond_6e

    aget v5, v2, v3

    .line 930
    .local v5, "sideOverride":I
    const-wide v6, 0x20500000008L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 929
    .end local v5    # "sideOverride":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 933
    :cond_6e
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 934
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 856
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 857
    return v0

    .line 859
    :cond_4
    instance-of v1, p1, Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 860
    move-object v1, p1

    check-cast v1, Landroid/view/DisplayCutout;

    .line 861
    .local v1, "c":Landroid/view/DisplayCutout;
    iget-object v3, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-virtual {v3, v4}, Landroid/view/DisplayCutout$Bounds;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 862
    invoke-virtual {v3, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 863
    invoke-virtual {v3, v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    iget-object v4, v1, Landroid/view/DisplayCutout;->mSideOverrides:[I

    .line 864
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v2

    .line 861
    :goto_40
    return v0

    .line 866
    .end local v1    # "c":Landroid/view/DisplayCutout;
    :cond_41
    return v2
.end method

.method public whitelist getBoundingRectBottom()Landroid/graphics/Rect;
    .registers 3

    .line 783
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRectLeft()Landroid/graphics/Rect;
    .registers 3

    .line 750
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRectRight()Landroid/graphics/Rect;
    .registers 3

    .line 772
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRectTop()Landroid/graphics/Rect;
    .registers 3

    .line 761
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRect(Landroid/view/DisplayCutout$Bounds;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBoundingRects()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_20

    aget-object v4, v1, v3

    .line 716
    .local v4, "bound":Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 717
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    .end local v4    # "bound":Landroid/graphics/Rect;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 720
    :cond_20
    return-object v0
.end method

.method public blacklist getBoundingRectsAll()[Landroid/graphics/Rect;
    .registers 2

    .line 739
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCutoutPath()Landroid/graphics/Path;
    .registers 7

    .line 797
    iget-object v0, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-static {v0}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->-$$Nest$mhasCutout(Landroid/view/DisplayCutout$CutoutPathParserInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 798
    return-object v1

    .line 800
    :cond_a
    sget-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_d
    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    sget-object v3, Landroid/view/DisplayCutout;->sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 802
    sget-object v1, Landroid/view/DisplayCutout;->sCachedCutoutPath:Landroid/graphics/Path;

    monitor-exit v0

    return-object v1

    .line 804
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_99

    .line 805
    new-instance v0, Landroid/view/CutoutSpecification$Parser;

    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 806
    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v2

    iget-object v3, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v3

    iget-object v4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 807
    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v4

    iget-object v5, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 808
    invoke-virtual {v5}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/CutoutSpecification$Parser;-><init>(FIIF)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 809
    invoke-virtual {v2}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/CutoutSpecification$Parser;->parse(Ljava/lang/String;)Landroid/view/CutoutSpecification;

    move-result-object v0

    .line 811
    .local v0, "cutoutSpec":Landroid/view/CutoutSpecification;
    invoke-virtual {v0}, Landroid/view/CutoutSpecification;->getPath()Landroid/graphics/Path;

    move-result-object v2

    .line 812
    .local v2, "cutoutPath":Landroid/graphics/Path;
    if-eqz v2, :cond_98

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_50

    goto :goto_98

    .line 815
    :cond_50
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v1

    .line 816
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v1

    if-eqz v1, :cond_73

    .line 817
    iget-object v1, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 818
    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getRotation()I

    move-result v1

    iget-object v4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 819
    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v4

    iget-object v5, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 820
    invoke-virtual {v5}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v5

    .line 817
    invoke-static {v1, v4, v5, v3}, Landroid/util/RotationUtils;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 824
    :cond_73
    iget-object v1, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v1}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v1

    iget-object v4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v4}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 825
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 827
    sget-object v4, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 828
    :try_start_88
    new-instance v1, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v5, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-direct {v1, v5}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(Landroid/view/DisplayCutout$CutoutPathParserInfo;)V

    sput-object v1, Landroid/view/DisplayCutout;->sCachedCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 829
    sput-object v2, Landroid/view/DisplayCutout;->sCachedCutoutPath:Landroid/graphics/Path;

    .line 830
    monitor-exit v4

    .line 831
    return-object v2

    .line 830
    :catchall_95
    move-exception v1

    monitor-exit v4
    :try_end_97
    .catchall {:try_start_88 .. :try_end_97} :catchall_95

    throw v1

    .line 813
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :cond_98
    :goto_98
    return-object v1

    .line 804
    .end local v0    # "cutoutSpec":Landroid/view/CutoutSpecification;
    .end local v2    # "cutoutPath":Landroid/graphics/Path;
    :catchall_99
    move-exception v1

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v1
.end method

.method public blacklist getCutoutPathParserInfo()Landroid/view/DisplayCutout$CutoutPathParserInfo;
    .registers 2

    .line 840
    iget-object v0, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    return-object v0
.end method

.method public blacklist getRotated(IIII)Landroid/view/DisplayCutout;
    .registers 26
    .param p1, "startWidth"    # I
    .param p2, "startHeight"    # I
    .param p3, "fromRotation"    # I
    .param p4, "toRotation"    # I

    .line 1315
    move-object/from16 v0, p0

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne v0, v1, :cond_9

    .line 1316
    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    return-object v1

    .line 1318
    :cond_9
    invoke-static/range {p3 .. p4}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v1

    .line 1319
    .local v1, "rotation":I
    if-nez v1, :cond_10

    .line 1320
    return-object v0

    .line 1322
    :cond_10
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v2

    .line 1324
    .local v2, "waterfallInsets":Landroid/graphics/Insets;
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v3

    .line 1325
    .local v3, "newBounds":[Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-direct {v4, v5, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1326
    .local v4, "displayBounds":Landroid/graphics/Rect;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_27
    array-length v9, v3

    if-ge v8, v9, :cond_3b

    .line 1327
    aget-object v9, v3, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_33

    goto :goto_38

    .line 1328
    :cond_33
    aget-object v9, v3, v8

    invoke-static {v9, v4, v1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1326
    :goto_38
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .line 1330
    .end local v8    # "i":I
    :cond_3b
    neg-int v8, v1

    .line 1331
    .local v8, "defaultRotation":I
    iget-object v9, v0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    move/from16 v10, p4

    invoke-static {v9, v10}, Landroid/view/DisplayCutout;->getSideOverride([II)I

    move-result v9

    .line 1332
    .local v9, "override":I
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 1333
    invoke-static {v9, v3, v8}, Landroid/view/DisplayCutout;->getRotationToOverride(I[Landroid/graphics/Rect;I)I

    move-result v12

    .line 1332
    invoke-static {v11, v12}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 1334
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getCutoutPathParserInfo()Landroid/view/DisplayCutout$CutoutPathParserInfo;

    move-result-object v20

    .line 1335
    .local v20, "info":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    new-instance v10, Landroid/view/DisplayCutout$CutoutPathParserInfo;

    .line 1336
    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayWidth()I

    move-result v11

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDisplayHeight()I

    move-result v12

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayWidth()I

    move-result v13

    .line 1337
    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalDisplayHeight()I

    move-result v14

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getDensity()F

    move-result v15

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getCutoutSpec()Ljava/lang/String;

    move-result-object v16

    .line 1338
    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getScale()F

    move-result v18

    invoke-virtual/range {v20 .. v20}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->getPhysicalPixelDisplaySizeRatio()F

    move-result v19

    move/from16 v17, p4

    invoke-direct/range {v10 .. v19}, Landroid/view/DisplayCutout$CutoutPathParserInfo;-><init>(IIIIFLjava/lang/String;IFF)V

    .line 1339
    .local v10, "newInfo":Landroid/view/DisplayCutout$CutoutPathParserInfo;
    rem-int/lit8 v11, v1, 0x2

    if-eqz v11, :cond_7f

    const/4 v5, 0x1

    .line 1340
    .local v5, "swapAspect":Z
    :cond_7f
    if-eqz v5, :cond_83

    move v11, v7

    goto :goto_84

    :cond_83
    move v11, v6

    .line 1341
    .local v11, "endWidth":I
    :goto_84
    if-eqz v5, :cond_88

    move v12, v6

    goto :goto_89

    :cond_88
    move v12, v7

    .line 1342
    .local v12, "endHeight":I
    :goto_89
    nop

    .line 1343
    invoke-static {v3, v2, v10}, Landroid/view/DisplayCutout;->constructDisplayCutout([Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$CutoutPathParserInfo;)Landroid/view/DisplayCutout;

    move-result-object v13

    .line 1344
    .local v13, "tmp":Landroid/view/DisplayCutout;
    invoke-static {v11, v12, v13}, Landroid/view/DisplayCutout;->computeSafeInsets(IILandroid/view/DisplayCutout;)Landroid/graphics/Rect;

    move-result-object v14

    .line 1345
    .local v14, "safeInsets":Landroid/graphics/Rect;
    iget-object v15, v0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    iput-object v15, v13, Landroid/view/DisplayCutout;->mSideOverrides:[I

    .line 1346
    invoke-virtual {v13, v14}, Landroid/view/DisplayCutout;->replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v15

    return-object v15
.end method

.method public whitelist getSafeInsetBottom()I
    .registers 2

    .line 669
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public whitelist getSafeInsetLeft()I
    .registers 2

    .line 678
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public whitelist getSafeInsetRight()I
    .registers 2

    .line 687
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public whitelist getSafeInsetTop()I
    .registers 2

    .line 660
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public greylist-max-o getSafeInsets()Landroid/graphics/Rect;
    .registers 3

    .line 697
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public whitelist getWaterfallInsets()Landroid/graphics/Insets;
    .registers 2

    .line 596
    iget-object v0, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, "result":I
    const v1, 0xbc8f

    mul-int v2, v0, v1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 847
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v2, v1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$Bounds;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 848
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v0, v1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v3}, Landroid/graphics/Insets;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 849
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v2, v1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$CutoutPathParserInfo;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 850
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget-object v2, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    .line 851
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public greylist-max-o inset(IIII)Landroid/view/DisplayCutout;
    .registers 17
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

    .line 943
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    if-nez p3, :cond_8

    if-eqz p4, :cond_18

    .line 944
    :cond_8
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->isBoundsEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 945
    :cond_18
    return-object p0

    .line 948
    :cond_19
    new-instance v5, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;->insetInsets(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 953
    .local v7, "safeInsets":Landroid/graphics/Rect;
    if-nez p1, :cond_37

    if-nez p2, :cond_37

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 954
    return-object p0

    .line 957
    :cond_37
    iget-object v1, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    .line 958
    invoke-virtual {v1}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 957
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;->insetInsets(IIIILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 960
    .local v5, "waterfallInsets":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-static {v3}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$mgetRects(Landroid/view/DisplayCutout$Bounds;)[Landroid/graphics/Rect;

    move-result-object v9

    .line 961
    .local v9, "bounds":[Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4e
    array-length v4, v9

    if-ge v3, v4, :cond_65

    .line 962
    aget-object v4, v9, v3

    sget-object v6, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    .line 963
    aget-object v4, v9, v3

    neg-int v6, p1

    neg-int v8, p2

    invoke-virtual {v4, v6, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 961
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 967
    .end local v3    # "i":I
    :cond_65
    new-instance v6, Landroid/view/DisplayCutout;

    invoke-static {v5}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v8

    iget-object v10, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;[Landroid/graphics/Rect;Landroid/view/DisplayCutout$CutoutPathParserInfo;Z)V

    return-object v6
.end method

.method public greylist-max-o isBoundsEmpty()Z
    .registers 2

    .line 641
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-static {v0}, Landroid/view/DisplayCutout$Bounds;->-$$Nest$misEmpty(Landroid/view/DisplayCutout$Bounds;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isEmpty()Z
    .registers 3

    .line 651
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .registers 8
    .param p1, "safeInsets"    # Landroid/graphics/Rect;

    .line 999
    new-instance v0, Landroid/view/DisplayCutout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    iget-object v3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    iget-object v4, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    iget-object v5, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/view/DisplayCutout$Bounds;Landroid/view/DisplayCutout$CutoutPathParserInfo;[I)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutout{insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " waterfall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mWaterfallInsets:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " boundingRect={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/view/DisplayCutout$Bounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} cutoutPathParserInfo={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mCutoutPathParserInfo:Landroid/view/DisplayCutout$CutoutPathParserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} sideOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSideOverrides:[I

    .line 875
    invoke-static {v1}, Landroid/view/DisplayCutout;->sideOverridesToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 871
    return-object v0
.end method
