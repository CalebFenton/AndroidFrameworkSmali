.class public Landroid/graphics/PathMeasure;
.super Ljava/lang/Object;
.source "PathMeasure.java"


# static fields
.field public static final whitelist POSITION_MATRIX_FLAG:I = 0x1

.field public static final whitelist TANGENT_MATRIX_FLAG:I = 0x2


# instance fields
.field private greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o native_instance:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    .line 34
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;Z)V
    .registers 5
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "forceClosed"    # Z

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    .line 54
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v0

    goto :goto_e

    :cond_c
    const-wide/16 v0, 0x0

    :goto_e
    invoke-static {v0, v1, p2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 56
    return-void
.end method

.method private static native greylist-max-o native_create(JZ)J
.end method

.method private static native greylist-max-o native_destroy(J)V
.end method

.method private static native greylist-max-o native_getLength(J)F
.end method

.method private static native greylist-max-o native_getMatrix(JFJI)Z
.end method

.method private static native greylist-max-o native_getPosTan(JF[F[F)Z
.end method

.method private static native greylist-max-o native_getSegment(JFFJZ)Z
.end method

.method private static native greylist-max-o native_isClosed(J)Z
.end method

.method private static native greylist-max-o native_nextContour(J)Z
.end method

.method private static native greylist-max-o native_setPath(JJZ)V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 157
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_destroy(J)V

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 159
    return-void
.end method

.method public whitelist getLength()F
    .registers 3

    .line 73
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_getLength(J)F

    move-result v0

    return v0
.end method

.method public whitelist getMatrix(FLandroid/graphics/Matrix;I)Z
    .registers 10
    .param p1, "distance"    # F
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "flags"    # I

    .line 109
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v3

    move v2, p1

    move v5, p3

    .end local p1    # "distance":F
    .end local p3    # "flags":I
    .local v2, "distance":F
    .local v5, "flags":I
    invoke-static/range {v0 .. v5}, Landroid/graphics/PathMeasure;->native_getMatrix(JFJI)Z

    move-result p1

    return p1
.end method

.method public whitelist getPosTan(F[F[F)Z
    .registers 6
    .param p1, "distance"    # F
    .param p2, "pos"    # [F
    .param p3, "tan"    # [F

    .line 88
    const/4 v0, 0x2

    if-eqz p2, :cond_6

    array-length v1, p2

    if-lt v1, v0, :cond_c

    :cond_6
    if-eqz p3, :cond_12

    array-length v1, p3

    if-lt v1, v0, :cond_c

    goto :goto_12

    .line 90
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 92
    :cond_12
    :goto_12
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/PathMeasure;->native_getPosTan(JF[F[F)Z

    move-result v0

    return v0
.end method

.method public whitelist getSegment(FFLandroid/graphics/Path;Z)Z
    .registers 13
    .param p1, "startD"    # F
    .param p2, "stopD"    # F
    .param p3, "dst"    # Landroid/graphics/Path;
    .param p4, "startWithMoveTo"    # Z

    .line 127
    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    .line 128
    .local v0, "length":F
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_c

    .line 129
    const/4 p1, 0x0

    move v3, p1

    goto :goto_d

    .line 128
    :cond_c
    move v3, p1

    .line 131
    .end local p1    # "startD":F
    .local v3, "startD":F
    :goto_d
    cmpl-float p1, p2, v0

    if-lez p1, :cond_14

    .line 132
    move p2, v0

    move v4, p2

    goto :goto_15

    .line 131
    :cond_14
    move v4, p2

    .line 134
    .end local p2    # "stopD":F
    .local v4, "stopD":F
    :goto_15
    cmpl-float p1, v3, v4

    if-ltz p1, :cond_1b

    .line 135
    const/4 p1, 0x0

    return p1

    .line 138
    :cond_1b
    iget-wide v1, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-virtual {p3}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v5

    move v7, p4

    .end local p4    # "startWithMoveTo":Z
    .local v7, "startWithMoveTo":Z
    invoke-static/range {v1 .. v7}, Landroid/graphics/PathMeasure;->native_getSegment(JFFJZ)Z

    move-result p1

    return p1
.end method

.method public whitelist isClosed()Z
    .registers 3

    .line 145
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_isClosed(J)Z

    move-result v0

    return v0
.end method

.method public whitelist nextContour()Z
    .registers 3

    .line 153
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_nextContour(J)Z

    move-result v0

    return v0
.end method

.method public whitelist setPath(Landroid/graphics/Path;Z)V
    .registers 7
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "forceClosed"    # Z

    .line 62
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    .line 63
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 64
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    goto :goto_d

    :cond_b
    const-wide/16 v2, 0x0

    .line 63
    :goto_d
    invoke-static {v0, v1, v2, v3, p2}, Landroid/graphics/PathMeasure;->native_setPath(JJZ)V

    .line 66
    return-void
.end method
