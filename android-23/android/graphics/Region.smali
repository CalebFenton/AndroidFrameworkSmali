.class public Landroid/graphics/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Region$Op;,
        Landroid/graphics/Region$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mNativeRegion:J


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)J
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/graphics/Region;->nativeCreateFromParcel(Landroid/os/Parcel;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 28
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0xa

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 27
    sput-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 338
    new-instance v0, Landroid/graphics/Region$1;

    #@b
    invoke-direct {v0}, Landroid/graphics/Region$1;-><init>()V

    #@e
    .line 337
    sput-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 57
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    #@7
    .line 56
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@9
    .line 78
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@b
    move v2, p1

    #@c
    move v3, p2

    #@d
    move v4, p3

    #@e
    move v5, p4

    #@f
    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    #@12
    .line 76
    return-void
.end method

.method constructor <init>(J)V
    .locals 3
    .param p1, "ni"    # J

    #@0
    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 389
    const-wide/16 v0, 0x0

    #@5
    cmp-long v0, p1, v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 390
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    #@e
    throw v0

    #@f
    .line 392
    :cond_0
    iput-wide p1, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@11
    .line 388
    return-void
.end method

.method private constructor <init>(JI)V
    .locals 1
    .param p1, "ni"    # J
    .param p3, "dummy"    # I

    #@0
    .prologue
    .line 398
    invoke-direct {p0, p1, p2}, Landroid/graphics/Region;-><init>(J)V

    #@3
    .line 397
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@9
    .line 71
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@b
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@d
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@f
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@11
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@13
    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    #@16
    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Region;)V
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 63
    invoke-static {}, Landroid/graphics/Region;->nativeConstructor()J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    #@7
    .line 64
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@9
    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    #@b
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeSetRegion(JJ)V

    #@e
    .line 62
    return-void
.end method

.method private static native nativeConstructor()J
.end method

.method private static native nativeCreateFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeEquals(JJ)Z
.end method

.method private static native nativeGetBoundaryPath(JJ)Z
.end method

.method private static native nativeGetBounds(JLandroid/graphics/Rect;)Z
.end method

.method private static native nativeOp(JIIIII)Z
.end method

.method private static native nativeOp(JJJI)Z
.end method

.method private static native nativeOp(JLandroid/graphics/Rect;JI)Z
.end method

.method private static native nativeSetPath(JJJ)Z
.end method

.method private static native nativeSetRect(JIIII)Z
.end method

.method private static native nativeSetRegion(JJ)V
.end method

.method private static native nativeToString(J)Ljava/lang/String;
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)Z
.end method

.method public static obtain()Landroid/graphics/Region;
    .locals 2

    #@0
    .prologue
    .line 308
    sget-object v1, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/graphics/Region;

    #@8
    .line 309
    .local v0, "region":Landroid/graphics/Region;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "region":Landroid/graphics/Region;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "region":Landroid/graphics/Region;
    :cond_0
    new-instance v0, Landroid/graphics/Region;

    #@d
    .end local v0    # "region":Landroid/graphics/Region;
    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    #@10
    goto :goto_0
.end method

.method public static obtain(Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 1
    .param p0, "other"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 320
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    #@3
    move-result-object v0

    #@4
    .line 321
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {v0, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    #@7
    .line 322
    return-object v0
.end method


# virtual methods
.method public native contains(II)Z
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 357
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 373
    if-eqz p1, :cond_0

    #@2
    instance-of v1, p1, Landroid/graphics/Region;

    #@4
    if-eqz v1, :cond_0

    #@6
    move-object v0, p1

    #@7
    .line 376
    check-cast v0, Landroid/graphics/Region;

    #@9
    .line 377
    .local v0, "peer":Landroid/graphics/Region;
    iget-wide v2, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@b
    iget-wide v4, v0, Landroid/graphics/Region;->mNativeRegion:J

    #@d
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Region;->nativeEquals(JJ)Z

    #@10
    move-result v1

    #@11
    return v1

    #@12
    .line 374
    .end local v0    # "peer":Landroid/graphics/Region;
    :cond_0
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeDestructor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 384
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@8
    .line 380
    return-void

    #@9
    .line 383
    :catchall_0
    move-exception v0

    #@a
    .line 384
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@d
    .line 383
    throw v0
.end method

.method public getBoundaryPath()Landroid/graphics/Path;
    .locals 6

    #@0
    .prologue
    .line 157
    new-instance v0, Landroid/graphics/Path;

    #@2
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@5
    .line 158
    .local v0, "path":Landroid/graphics/Path;
    iget-wide v2, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@7
    invoke-virtual {v0}, Landroid/graphics/Path;->ni()J

    #@a
    move-result-wide v4

    #@b
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Region;->nativeGetBoundaryPath(JJ)Z

    #@e
    .line 159
    return-object v0
.end method

.method public getBoundaryPath(Landroid/graphics/Path;)Z
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 167
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeGetBoundaryPath(JJ)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 4

    #@0
    .prologue
    .line 136
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    .line 137
    .local v0, "r":Landroid/graphics/Rect;
    iget-wide v2, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@7
    invoke-static {v2, v3, v0}, Landroid/graphics/Region;->nativeGetBounds(JLandroid/graphics/Rect;)Z

    #@a
    .line 138
    return-object v0
.end method

.method public getBounds(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 146
    if-nez p1, :cond_0

    #@2
    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 149
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@a
    invoke-static {v0, v1, p1}, Landroid/graphics/Region;->nativeGetBounds(JLandroid/graphics/Rect;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public native isComplex()Z
.end method

.method public native isEmpty()Z
.end method

.method public native isRect()Z
.end method

.method final ni()J
    .locals 2

    #@0
    .prologue
    .line 402
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    return-wide v0
.end method

.method public op(IIIILandroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "op"    # Landroid/graphics/Region$Op;

    #@0
    .prologue
    .line 268
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    .line 269
    iget v6, p5, Landroid/graphics/Region$Op;->nativeInt:I

    #@4
    move v2, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move v5, p4

    #@8
    .line 268
    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JIIIII)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    #@0
    .prologue
    .line 259
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@6
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@8
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@a
    .line 260
    iget v6, p2, Landroid/graphics/Region$Op;->nativeInt:I

    #@c
    .line 259
    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JIIIII)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "op"    # Landroid/graphics/Region$Op;

    #@0
    .prologue
    .line 285
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    iget-wide v3, p2, Landroid/graphics/Region;->mNativeRegion:J

    #@4
    .line 286
    iget v5, p3, Landroid/graphics/Region$Op;->nativeInt:I

    #@6
    move-object v2, p1

    #@7
    .line 285
    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeOp(JLandroid/graphics/Rect;JI)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "op"    # Landroid/graphics/Region$Op;

    #@0
    .prologue
    .line 277
    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public op(Landroid/graphics/Region;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .locals 7
    .param p1, "region1"    # Landroid/graphics/Region;
    .param p2, "region2"    # Landroid/graphics/Region;
    .param p3, "op"    # Landroid/graphics/Region$Op;

    #@0
    .prologue
    .line 294
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    #@4
    .line 295
    iget-wide v4, p2, Landroid/graphics/Region;->mNativeRegion:J

    #@6
    iget v6, p3, Landroid/graphics/Region$Op;->nativeInt:I

    #@8
    .line 294
    invoke-static/range {v0 .. v6}, Landroid/graphics/Region;->nativeOp(JJJI)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public native quickContains(IIII)Z
.end method

.method public quickContains(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 182
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->quickContains(IIII)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public native quickReject(IIII)Z
.end method

.method public quickReject(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 200
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->quickReject(IIII)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public native quickReject(Landroid/graphics/Region;)Z
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/graphics/Region;->setEmpty()V

    #@3
    .line 332
    sget-object v0, Landroid/graphics/Region;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 330
    return-void
.end method

.method public scale(F)V
    .locals 1
    .param p1, "scale"    # F

    #@0
    .prologue
    .line 240
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->scale(FLandroid/graphics/Region;)V

    #@4
    .line 239
    return-void
.end method

.method public native scale(FLandroid/graphics/Region;)V
.end method

.method public set(IIII)Z
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 103
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    move v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public set(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 97
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    iget v2, p1, Landroid/graphics/Rect;->left:I

    #@4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    #@6
    iget v4, p1, Landroid/graphics/Rect;->right:I

    #@8
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    #@a
    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public set(Landroid/graphics/Region;)Z
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 90
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    iget-wide v2, p1, Landroid/graphics/Region;->mNativeRegion:J

    #@4
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Region;->nativeSetRegion(JJ)V

    #@7
    .line 91
    const/4 v0, 0x1

    #@8
    return v0
.end method

.method public setEmpty()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 84
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@3
    move v3, v2

    #@4
    move v4, v2

    #@5
    move v5, v2

    #@6
    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetRect(JIIII)Z

    #@9
    .line 83
    return-void
.end method

.method public setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "clip"    # Landroid/graphics/Region;

    #@0
    .prologue
    .line 113
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    #@5
    move-result-wide v2

    #@6
    iget-wide v4, p2, Landroid/graphics/Region;->mNativeRegion:J

    #@8
    invoke-static/range {v0 .. v5}, Landroid/graphics/Region;->nativeSetPath(JJJ)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 299
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/Region;->nativeToString(J)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public translate(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    #@0
    .prologue
    .line 221
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Region;->translate(IILandroid/graphics/Region;)V

    #@4
    .line 220
    return-void
.end method

.method public native translate(IILandroid/graphics/Region;)V
.end method

.method public final union(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 251
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 366
    iget-wide v0, p0, Landroid/graphics/Region;->mNativeRegion:J

    #@2
    invoke-static {v0, v1, p1}, Landroid/graphics/Region;->nativeWriteToParcel(JLandroid/os/Parcel;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 367
    new-instance v0, Ljava/lang/RuntimeException;

    #@a
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    #@d
    throw v0

    #@e
    .line 365
    :cond_0
    return-void
.end method
