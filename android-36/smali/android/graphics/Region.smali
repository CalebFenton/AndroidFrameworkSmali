.class public Landroid/graphics/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Region$Op;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0xa

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-r mNativeRegion:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeCreateFromParcel(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/graphics/Region;->nativeCreateFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 350
    new-instance v0, Landroid/graphics/Region$1;

    invoke-direct {v0}, Landroid/graphics/Region$1;-><init>()V

    sput-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 63
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    .line 64
    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .registers 13
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 84
    iget-wide v2, p0, Landroid/graphics/Region;->mNativeRegion:J

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .local v4, "left":I
    .local v5, "top":I
    .local v6, "right":I
    .local v7, "bottom":I
    invoke-static/range {v2 .. v7}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    .line 85
    return-void
.end method

.method constructor greylist-max-o <init>(J)V
    .registers 5
    .param p1, "ni"    # J

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_c

    .line 411
    iput-wide p1, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 412
    return-void

    .line 409
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private constructor greylist-max-r <init>(JI)V
    .registers 4
    .param p1, "ni"    # J
    .param p3, "unused"    # I

    .line 418
    invoke-direct {p0, p1, p2}, Landroid/graphics/Region;-><init>(J)V

    .line 419
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    .line 77
    iget-wide v2, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v2 .. v7}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    .line 78
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Region;)V
    .registers 6
    .param p1, "region"    # Landroid/graphics/Region;

    .line 69
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    .line 70
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeSetRegion(JJ)V

    .line 71
    return-void
.end method

.method private static native greylist-max-o nativeConstructor()J
.end method

.method private static native greylist-max-o nativeCreateFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method

.method private static native greylist-max-o nativeEquals(JJ)Z
.end method

.method private static native greylist-max-o nativeGetBoundaryPath(JJ)Z
.end method

.method private static native greylist-max-o nativeGetBounds(JLandroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nativeOp(JIIIII)Z
.end method

.method private static native greylist-max-o nativeOp(JJJI)Z
.end method

.method private static native greylist-max-o nativeOp(JLandroid/graphics/Rect;JI)Z
.end method

.method private static native greylist-max-o nativeSetPath(JJJ)Z
.end method

.method private static native greylist-max-o nativeSetRect(JIIII)Z
.end method

.method private static native greylist-max-o nativeSetRegion(JJ)V
.end method

.method private static native greylist-max-o nativeToString(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)Z
.end method

.method public static greylist-max-o obtain()Landroid/graphics/Region;
    .registers 2

    .line 319
    sget-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    .line 320
    .local v0, "region":Landroid/graphics/Region;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_11

    :cond_c
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    :goto_11
    return-object v1
.end method

.method public static greylist-max-o obtain(Landroid/graphics/Region;)Landroid/graphics/Region;
    .registers 2
    .param p0, "other"    # Landroid/graphics/Region;

    .line 332
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 333
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {v0, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 334
    return-object v0
.end method


# virtual methods
.method public native whitelist contains(II)Z
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 390
    if-eqz p1, :cond_13

    instance-of v0, p1, Landroid/graphics/Region;

    if-nez v0, :cond_7

    goto :goto_13

    .line 393
    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/graphics/Region;

    .line 394
    .local v0, "peer":Landroid/graphics/Region;
    iget-wide v1, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v3, v0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Region;->nativeEquals(JJ)Z

    move-result v1

    return v1

    .line 391
    .end local v0    # "peer":Landroid/graphics/Region;
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 400
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeDestructor(J)V

    .line 401
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_e

    .line 403
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 404
    nop

    .line 405
    return-void

    .line 403
    :catchall_e
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 404
    throw v0
.end method

.method public whitelist getBoundaryPath()Landroid/graphics/Path;
    .registers 6

    .line 165
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 166
    .local v0, "path":Landroid/graphics/Path;
    iget-wide v1, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {v0}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Region;->nativeGetBoundaryPath(JJ)Z

    .line 167
    return-object v0
.end method

.method public whitelist getBoundaryPath(Landroid/graphics/Path;)Z
    .registers 6
    .param p1, "path"    # Landroid/graphics/Path;

    .line 175
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p1}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeGetBoundaryPath(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist getBounds()Landroid/graphics/Rect;
    .registers 4

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 144
    .local v0, "r":Landroid/graphics/Rect;
    iget-wide v1, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v1, v2, v0}, Landroid/graphics/Region;->nativeGetBounds(JLandroid/graphics/Rect;)Z

    .line 145
    return-object v0
.end method

.method public whitelist getBounds(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 153
    if-eqz p1, :cond_9

    .line 156
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Region;->nativeGetBounds(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 154
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public native whitelist isComplex()Z
.end method

.method public native whitelist isEmpty()Z
.end method

.method public native whitelist isRect()Z
.end method

.method final greylist-max-o ni()J
    .registers 3

    .line 422
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    return-wide v0
.end method

.method public whitelist op(IIIILandroid/graphics/Region$Op;)Z
    .registers 13
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "op"    # Landroid/graphics/Region$Op;

    .line 277
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v6, p5, Landroid/graphics/Region$Op;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .local v2, "left":I
    .local v3, "top":I
    .local v4, "right":I
    .local v5, "bottom":I
    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JIIIII)Z

    move-result p1

    return p1
.end method

.method public whitelist op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .registers 10
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .line 268
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JIIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .registers 10
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "op"    # Landroid/graphics/Region$Op;

    .line 294
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v3, p2, Landroid/graphics/Region;->mNativeRegion:J

    iget v5, p3, Landroid/graphics/Region$Op;->nativeInt:I

    move-object v2, p1

    .end local p1    # "rect":Landroid/graphics/Rect;
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeOp(JLandroid/graphics/Rect;JI)Z

    move-result p1

    return p1
.end method

.method public whitelist op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .registers 4
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    .line 286
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public whitelist op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .registers 11
    .param p1, "region1"    # Landroid/graphics/Region;
    .param p2, "region2"    # Landroid/graphics/Region;
    .param p3, "op"    # Landroid/graphics/Region$Op;

    .line 303
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v4, p2, Landroid/graphics/Region;->mNativeRegion:J

    iget v6, p3, Landroid/graphics/Region$Op;->nativeInt:I

    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JJJI)Z

    move-result v0

    return v0
.end method

.method public native whitelist quickContains(IIII)Z
.end method

.method public whitelist quickContains(Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 190
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->quickContains(IIII)Z

    move-result v0

    return v0
.end method

.method public native whitelist quickReject(IIII)Z
.end method

.method public whitelist quickReject(Landroid/graphics/Rect;)Z
    .registers 6
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 208
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->quickReject(IIII)Z

    move-result v0

    return v0
.end method

.method public native whitelist quickReject(Landroid/graphics/Region;)Z
.end method

.method public greylist-max-r recycle()V
    .registers 2

    .line 344
    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    .line 345
    sget-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public greylist scale(F)V
    .registers 3
    .param p1, "scale"    # F

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->scale(FLandroid/graphics/Region;)V

    .line 250
    return-void
.end method

.method public native greylist-max-o scale(FLandroid/graphics/Region;)V
.end method

.method public whitelist set(IIII)Z
    .registers 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 109
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "left":I
    .end local p2    # "top":I
    .end local p3    # "right":I
    .end local p4    # "bottom":I
    .local v2, "left":I
    .local v3, "top":I
    .local v4, "right":I
    .local v5, "bottom":I
    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    move-result p1

    return p1
.end method

.method public whitelist set(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 103
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    move-result v0

    return v0
.end method

.method public whitelist set(Landroid/graphics/Region;)Z
    .registers 6
    .param p1, "region"    # Landroid/graphics/Region;

    .line 96
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeSetRegion(JJ)V

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setEmpty()V
    .registers 7

    .line 90
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    .line 91
    return-void
.end method

.method public whitelist setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z
    .registers 9
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "clip"    # Landroid/graphics/Region;

    .line 119
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    iget-wide v4, p2, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 309
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist translate(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Region;->translate(IILandroid/graphics/Region;)V

    .line 230
    return-void
.end method

.method public native whitelist translate(IILandroid/graphics/Region;)V
.end method

.method public final whitelist union(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 260
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 383
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Region;->nativeWriteToParcel(JLandroid/os/Parcel;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 386
    return-void

    .line 384
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
