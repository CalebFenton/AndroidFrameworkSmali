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
.field static final LOGTAG:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    #@0
    invoke-static {}, Landroid/util/PathParser;->nCreateEmptyPathData()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;I)J
    .locals 2
    .param p0, "pathString"    # Ljava/lang/String;
    .param p1, "stringLength"    # I

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/util/PathParser;->nCreatePathDataFromString(Ljava/lang/String;I)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap2(J)J
    .locals 2
    .param p0, "nativePtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/util/PathParser;->nCreatePathData(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap3(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/util/PathParser;->nFinalize(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(JJ)V
    .locals 0
    .param p0, "outDataPtr"    # J
    .param p2, "fromDataPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/util/PathParser;->nSetPathData(JJ)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 23
    const-class v0, Landroid/util/PathParser;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/util/PathParser;->LOGTAG:Ljava/lang/String;

    #@8
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static canMorph(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;)Z
    .locals 4
    .param p0, "pathDataFrom"    # Landroid/util/PathParser$PathData;
    .param p1, "pathDataTo"    # Landroid/util/PathParser$PathData;

    #@0
    .prologue
    .line 54
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@2
    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/util/PathParser;->nCanMorph(JJ)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 4
    .param p0, "pathString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    if-nez p0, :cond_0

    #@2
    .line 31
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "Path string can not be null."

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 33
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    #@d
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@10
    .line 34
    .local v0, "path":Landroid/graphics/Path;
    iget-wide v2, v0, Landroid/graphics/Path;->mNativePath:J

    #@12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@15
    move-result v1

    #@16
    invoke-static {v2, v3, p0, v1}, Landroid/util/PathParser;->nParseStringForPath(JLjava/lang/String;I)V

    #@19
    .line 35
    return-object v0
.end method

.method public static createPathFromPathData(Landroid/graphics/Path;Landroid/util/PathParser$PathData;)V
    .locals 4
    .param p0, "outPath"    # Landroid/graphics/Path;
    .param p1, "data"    # Landroid/util/PathParser$PathData;

    #@0
    .prologue
    .line 45
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    #@2
    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/util/PathParser;->nCreatePathFromPathData(JJ)V

    #@7
    .line 44
    return-void
.end method

.method public static interpolatePathData(Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;Landroid/util/PathParser$PathData;F)Z
    .locals 7
    .param p0, "outData"    # Landroid/util/PathParser$PathData;
    .param p1, "fromData"    # Landroid/util/PathParser$PathData;
    .param p2, "toData"    # Landroid/util/PathParser$PathData;
    .param p3, "fraction"    # F

    #@0
    .prologue
    .line 115
    iget-wide v0, p0, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@2
    iget-wide v2, p1, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@4
    .line 116
    iget-wide v4, p2, Landroid/util/PathParser$PathData;->mNativePathData:J

    #@6
    move v6, p3

    #@7
    .line 115
    invoke-static/range {v0 .. v6}, Landroid/util/PathParser;->nInterpolatePathData(JJJF)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method private static native nCanMorph(JJ)Z
.end method

.method private static native nCreateEmptyPathData()J
.end method

.method private static native nCreatePathData(J)J
.end method

.method private static native nCreatePathDataFromString(Ljava/lang/String;I)J
.end method

.method private static native nCreatePathFromPathData(JJ)V
.end method

.method private static native nFinalize(J)V
.end method

.method private static native nInterpolatePathData(JJJF)Z
.end method

.method private static native nParseStringForPath(JLjava/lang/String;I)V
.end method

.method private static native nSetPathData(JJ)V
.end method
