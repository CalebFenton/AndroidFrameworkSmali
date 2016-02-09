.class public Landroid/graphics/PathMeasure;
.super Ljava/lang/Object;
.source "PathMeasure.java"


# static fields
.field public static final POSITION_MATRIX_FLAG:I = 0x1

.field public static final TANGENT_MATRIX_FLAG:I = 0x2


# instance fields
.field private mPath:Landroid/graphics/Path;

.field private final native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    #@6
    .line 33
    const-wide/16 v0, 0x0

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v0, v1, v2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    #@c
    move-result-wide v0

    #@d
    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    #@f
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Z)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "forceClosed"    # Z

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 52
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    #@5
    .line 53
    if-eqz p1, :cond_0

    #@7
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    #@a
    move-result-wide v0

    #@b
    :goto_0
    invoke-static {v0, v1, p2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    #@11
    .line 50
    return-void

    #@12
    .line 53
    :cond_0
    const-wide/16 v0, 0x0

    #@14
    goto :goto_0
.end method

.method private static native native_create(JZ)J
.end method

.method private static native native_destroy(J)V
.end method

.method private static native native_getLength(J)F
.end method

.method private static native native_getMatrix(JFJI)Z
.end method

.method private static native native_getPosTan(JF[F[F)Z
.end method

.method private static native native_getSegment(JFFJZ)Z
.end method

.method private static native native_isClosed(J)Z
.end method

.method private static native native_nextContour(J)Z
.end method

.method private static native native_setPath(JJZ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 144
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_destroy(J)V

    #@5
    .line 143
    return-void
.end method

.method public getLength()F
    .locals 2

    #@0
    .prologue
    .line 72
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_getLength(J)F

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMatrix(FLandroid/graphics/Matrix;I)Z
    .locals 6
    .param p1, "distance"    # F
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 108
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    #@2
    iget-wide v3, p2, Landroid/graphics/Matrix;->native_instance:J

    #@4
    move v2, p1

    #@5
    move v5, p3

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/PathMeasure;->native_getMatrix(JFJI)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getPosTan(F[F[F)Z
    .locals 2
    .param p1, "distance"    # F
    .param p2, "pos"    # [F
    .param p3, "tan"    # [F

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 87
    if-eqz p2, :cond_1

    #@3
    array-length v0, p2

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 89
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@b
    throw v0

    #@c
    .line 88
    :cond_1
    if-eqz p3, :cond_2

    #@e
    array-length v0, p3

    #@f
    if-lt v0, v1, :cond_0

    #@11
    .line 91
    :cond_2
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    #@13
    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/PathMeasure;->native_getPosTan(JF[F[F)Z

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public getSegment(FFLandroid/graphics/Path;Z)Z
    .locals 7
    .param p1, "startD"    # F
    .param p2, "stopD"    # F
    .param p3, "dst"    # Landroid/graphics/Path;
    .param p4, "startWithMoveTo"    # Z

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p3, Landroid/graphics/Path;->isSimplePath:Z

    #@3
    .line 125
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    #@5
    invoke-virtual {p3}, Landroid/graphics/Path;->ni()J

    #@8
    move-result-wide v4

    #@9
    move v2, p1

    #@a
    move v3, p2

    #@b
    move v6, p4

    #@c
    invoke-static/range {v0 .. v6}, Landroid/graphics/PathMeasure;->native_getSegment(JFFJZ)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public isClosed()Z
    .locals 2

    #@0
    .prologue
    .line 132
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_isClosed(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextContour()Z
    .locals 2

    #@0
    .prologue
    .line 140
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_nextContour(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setPath(Landroid/graphics/Path;Z)V
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "forceClosed"    # Z

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    #@2
    .line 62
    iget-wide v2, p0, Landroid/graphics/PathMeasure;->native_instance:J

    #@4
    .line 63
    if-eqz p1, :cond_0

    #@6
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    #@9
    move-result-wide v0

    #@a
    .line 62
    :goto_0
    invoke-static {v2, v3, v0, v1, p2}, Landroid/graphics/PathMeasure;->native_setPath(JJZ)V

    #@d
    .line 60
    return-void

    #@e
    .line 63
    :cond_0
    const-wide/16 v0, 0x0

    #@10
    goto :goto_0
.end method
