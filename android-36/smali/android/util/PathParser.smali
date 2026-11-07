.class public Landroid/util/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/PathParser$PathData;
    }
.end annotation


# static fields
.field static final greylist-max-o LOGTAG:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnCreateEmptyPathData()J
    .registers 2

    invoke-static {}, Landroid/util/PathParser;->nCreateEmptyPathData()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreatePathData(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/util/PathParser;->nCreatePathData(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreatePathDataFromString(Ljava/lang/String;I)J
    .registers 2

    invoke-static {p0, p1}, Landroid/util/PathParser;->nCreatePathDataFromString(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnFinalize(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/PathParser;->nFinalize(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPathData(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/util/PathParser;->nSetPathData(JJ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    const-class v0, Landroid/util/PathParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z
    .registers 6
    .param p0, "pathDataFrom"    # Landroid/util/PathParser$PathData;
    .param p1, "pathDataTo"    # Landroid/util/PathParser$PathData;

    .line 59
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1, v2, v3}, Landroid/util/PathParser;->nCanMorph(JJ)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-r createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 5
    .param p0, "pathString"    # Ljava/lang/String;

    .line 35
    if-eqz p0, :cond_11

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 39
    .local v0, "path":Landroid/graphics/Path;
    iget-wide v1, v0, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, p0, v3}, Landroid/util/PathParser;->nParseStringForPath(JLjava/lang/String;I)V

    .line 40
    return-object v0

    .line 36
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path string can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o createPathFromPathData(Landroid/graphics/Path;Landroid/util/PathParser$PathData;)V
    .registers 6
    .param p0, "outPath"    # Landroid/graphics/Path;
    .param p1, "data"    # Landroid/util/PathParser$PathData;

    .line 50
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    invoke-static {v0, v1, v2, v3}, Landroid/util/PathParser;->nCreatePathFromPathData(JJ)V

    .line 51
    return-void
.end method

.method public static greylist-max-o interpolatePathData(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;F)Z
    .registers 11
    .param p0, "outData"    # Landroid/util/PathParser$PathData;
    .param p1, "fromData"    # Landroid/util/PathParser$PathData;
    .param p2, "toData"    # Landroid/util/PathParser$PathData;
    .param p3, "fraction"    # F

    .line 120
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    iget-wide v4, p2, Landroid/util/PathParser$PathData;->mNativePathData:J

    move v6, p3

    .end local p3    # "fraction":F
    .local v6, "fraction":F
    invoke-static/range {v0 .. v6}, Landroid/util/PathParser;->nInterpolatePathData(JJJF)Z

    move-result p3

    return p3
.end method

.method private static native greylist-max-o nCanMorph(JJ)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateEmptyPathData()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreatePathData(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreatePathDataFromString(Ljava/lang/String;I)J
.end method

.method private static native greylist-max-o nCreatePathFromPathData(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nFinalize(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nInterpolatePathData(JJJF)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nParseStringForPath(JLjava/lang/String;I)V
.end method

.method private static native greylist-max-o nSetPathData(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method
