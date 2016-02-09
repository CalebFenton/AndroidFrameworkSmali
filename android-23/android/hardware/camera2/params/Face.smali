.class public final Landroid/hardware/camera2/params/Face;
.super Ljava/lang/Object;
.source "Face.java"


# static fields
.field public static final ID_UNSUPPORTED:I = -0x1

.field public static final SCORE_MAX:I = 0x64

.field public static final SCORE_MIN:I = 0x1


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mId:I

.field private final mLeftEye:Landroid/graphics/Point;

.field private final mMouth:Landroid/graphics/Point;

.field private final mRightEye:Landroid/graphics/Point;

.field private final mScore:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 133
    const/4 v3, -0x1

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move-object v5, v4

    #@6
    move-object v6, v4

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    #@a
    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I
    .param p3, "id"    # I
    .param p4, "leftEyePosition"    # Landroid/graphics/Point;
    .param p5, "rightEyePosition"    # Landroid/graphics/Point;
    .param p6, "mouthPosition"    # Landroid/graphics/Point;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 90
    const-string/jumbo v0, "bounds"

    #@7
    invoke-static {v0, p1}, Landroid/hardware/camera2/params/Face;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@a
    .line 91
    const/4 v0, 0x1

    #@b
    if-lt p2, v0, :cond_0

    #@d
    const/16 v0, 0x64

    #@f
    if-le p2, v0, :cond_1

    #@11
    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Confidence out of range"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 93
    :cond_1
    if-gez p3, :cond_2

    #@1c
    if-eq p3, v1, :cond_2

    #@1e
    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v1, "Id out of range"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 96
    :cond_2
    if-ne p3, v1, :cond_3

    #@29
    .line 97
    const-string/jumbo v0, "leftEyePosition"

    #@2c
    invoke-static {v0, p4}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@2f
    .line 98
    const-string/jumbo v0, "rightEyePosition"

    #@32
    invoke-static {v0, p5}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@35
    .line 99
    const-string/jumbo v0, "mouthPosition"

    #@38
    invoke-static {v0, p6}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@3b
    .line 102
    :cond_3
    iput-object p1, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    #@3d
    .line 103
    iput p2, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    #@3f
    .line 104
    iput p3, p0, Landroid/hardware/camera2/params/Face;->mId:I

    #@41
    .line 105
    iput-object p4, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    #@43
    .line 106
    iput-object p5, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    #@45
    .line 107
    iput-object p6, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    #@47
    .line 89
    return-void
.end method

.method private static checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 255
    if-nez p1, :cond_0

    #@2
    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, " was required, but it was null"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 254
    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 261
    if-eqz p1, :cond_0

    #@2
    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, " was required to be null, but it wasn\'t"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 260
    :cond_0
    return-void
.end method


# virtual methods
.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 192
    iget v0, p0, Landroid/hardware/camera2/params/Face;->mId:I

    #@2
    return v0
.end method

.method public getLeftEyePosition()Landroid/graphics/Point;
    .locals 1

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    #@2
    return-object v0
.end method

.method public getMouthPosition()Landroid/graphics/Point;
    .locals 1

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    #@2
    return-object v0
.end method

.method public getRightEyePosition()Landroid/graphics/Point;
    .locals 1

    #@0
    .prologue
    .line 224
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    #@2
    return-object v0
.end method

.method public getScore()I
    .locals 1

    #@0
    .prologue
    .line 168
    iget v0, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 249
    const-string/jumbo v0, "{ bounds: %s, score: %s, id: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s }"

    #@3
    const/4 v1, 0x6

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 251
    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    iget v2, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    #@d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v2

    #@11
    const/4 v3, 0x1

    #@12
    aput-object v2, v1, v3

    #@14
    iget v2, p0, Landroid/hardware/camera2/params/Face;->mId:I

    #@16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v2

    #@1a
    const/4 v3, 0x2

    #@1b
    aput-object v2, v1, v3

    #@1d
    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    #@1f
    const/4 v3, 0x3

    #@20
    aput-object v2, v1, v3

    #@22
    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    #@24
    const/4 v3, 0x4

    #@25
    aput-object v2, v1, v3

    #@27
    iget-object v2, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    #@29
    const/4 v3, 0x5

    #@2a
    aput-object v2, v1, v3

    #@2c
    .line 249
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    return-object v0
.end method
