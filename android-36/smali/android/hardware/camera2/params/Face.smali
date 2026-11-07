.class public final Landroid/hardware/camera2/params/Face;
.super Ljava/lang/Object;
.source "Face.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/Face$Builder;
    }
.end annotation


# static fields
.field public static final whitelist ID_UNSUPPORTED:I = -0x1

.field public static final whitelist SCORE_MAX:I = 0x64

.field public static final whitelist SCORE_MIN:I = 0x1


# instance fields
.field private greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist-max-o mId:I

.field private greylist-max-o mLeftEye:Landroid/graphics/Point;

.field private greylist-max-o mMouth:Landroid/graphics/Point;

.field private greylist-max-o mRightEye:Landroid/graphics/Point;

.field private greylist-max-o mScore:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBounds(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/hardware/camera2/params/Face;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/params/Face;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeftEye(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMouth(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRightEye(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Point;
    .registers 1

    iget-object p0, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScore(Landroid/hardware/camera2/params/Face;)I
    .registers 1

    iget p0, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckFace(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/params/Face;->checkFace(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckId(I)V
    .registers 1

    invoke-static {p0}, Landroid/hardware/camera2/params/Face;->checkId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckScore(I)V
    .registers 1

    invoke-static {p0}, Landroid/hardware/camera2/params/Face;->checkScore(I)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/Rect;I)V
    .registers 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "bounds":Landroid/graphics/Rect;
    .end local p2    # "score":I
    .local v1, "bounds":Landroid/graphics/Rect;
    .local v2, "score":I
    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/params/Face;->init(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 121
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I
    .param p3, "id"    # I
    .param p4, "leftEyePosition"    # Landroid/graphics/Point;
    .param p5, "rightEyePosition"    # Landroid/graphics/Point;
    .param p6, "mouthPosition"    # Landroid/graphics/Point;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/params/Face;->init(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 94
    return-void
.end method

.method private static blacklist checkFace(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5
    .param p0, "leftEyePosition"    # Landroid/graphics/Point;
    .param p1, "rightEyePosition"    # Landroid/graphics/Point;
    .param p2, "mouthPosition"    # Landroid/graphics/Point;

    .line 291
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    if-eqz p2, :cond_c

    .line 292
    :cond_6
    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 297
    :cond_c
    return-void

    .line 293
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If any of leftEyePosition, rightEyePosition, or mouthPosition are non-null, all three must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkId(I)V
    .registers 3
    .param p0, "id"    # I

    .line 284
    if-gez p0, :cond_e

    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    goto :goto_e

    .line 285
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_e
    :goto_e
    return-void
.end method

.method private static greylist-max-o checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 266
    if-eqz p1, :cond_3

    .line 269
    return-void

    .line 267
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was required, but it was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkNull(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 272
    if-nez p1, :cond_3

    .line 275
    return-void

    .line 273
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was required to be null, but it wasn\'t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkScore(I)V
    .registers 3
    .param p0, "score"    # I

    .line 278
    const/4 v0, 0x1

    if-lt p0, v0, :cond_8

    const/16 v0, 0x64

    if-gt p0, v0, :cond_8

    .line 281
    return-void

    .line 279
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Confidence out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist init(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I
    .param p3, "id"    # I
    .param p4, "leftEyePosition"    # Landroid/graphics/Point;
    .param p5, "rightEyePosition"    # Landroid/graphics/Point;
    .param p6, "mouthPosition"    # Landroid/graphics/Point;

    .line 129
    const-string v0, "bounds"

    invoke-static {v0, p1}, Landroid/hardware/camera2/params/Face;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    invoke-static {p2}, Landroid/hardware/camera2/params/Face;->checkScore(I)V

    .line 131
    invoke-static {p3}, Landroid/hardware/camera2/params/Face;->checkId(I)V

    .line 132
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1d

    .line 133
    const-string v0, "leftEyePosition"

    invoke-static {v0, p4}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v0, "rightEyePosition"

    invoke-static {v0, p5}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v0, "mouthPosition"

    invoke-static {v0, p6}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_1d
    invoke-static {p4, p5, p6}, Landroid/hardware/camera2/params/Face;->checkFace(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 139
    iput-object p1, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    .line 140
    iput p2, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    .line 141
    iput p3, p0, Landroid/hardware/camera2/params/Face;->mId:I

    .line 142
    iput-object p4, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    .line 143
    iput-object p5, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    .line 144
    iput-object p6, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    .line 145
    return-void
.end method


# virtual methods
.method public whitelist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/hardware/camera2/params/Face;->mId:I

    return v0
.end method

.method public whitelist getLeftEyePosition()Landroid/graphics/Point;
    .registers 2

    .line 219
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getMouthPosition()Landroid/graphics/Point;
    .registers 2

    .line 252
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getRightEyePosition()Landroid/graphics/Point;
    .registers 2

    .line 235
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getScore()I
    .registers 2

    .line 179
    iget v0, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 260
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    .line 262
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/params/Face;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    iget-object v4, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    iget-object v5, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 260
    const-string v1, "{ bounds: %s, score: %s, id: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
