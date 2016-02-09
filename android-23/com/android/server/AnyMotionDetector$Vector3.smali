.class Lcom/android/server/AnyMotionDetector$Vector3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Vector3"
.end annotation


# instance fields
.field public timeMillisSinceBoot:J

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static synthetic -wrap0(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 1

    #@0
    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(JFFF)V
    .locals 1
    .param p1, "timeMillisSinceBoot"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    #@0
    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 302
    iput-wide p1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@5
    .line 303
    iput p3, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@7
    .line 304
    iput p4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@9
    .line 305
    iput p5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@b
    .line 301
    return-void
.end method

.method private norm()F
    .locals 2

    #@0
    .prologue
    .line 309
    invoke-virtual {p0, p0}, Lcom/android/server/AnyMotionDetector$Vector3;->dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    #@3
    move-result v0

    #@4
    float-to-double v0, v0

    #@5
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@8
    move-result-wide v0

    #@9
    double-to-float v0, v0

    #@a
    return v0
.end method

.method private normalized()Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 7

    #@0
    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->norm()F

    #@3
    move-result v0

    #@4
    .line 314
    .local v0, "mag":F
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    #@6
    iget-wide v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@8
    iget v4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@a
    div-float/2addr v4, v0

    #@b
    iget v5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@d
    div-float/2addr v5, v0

    #@e
    iget v6, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@10
    div-float/2addr v6, v0

    #@11
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    #@14
    return-object v1
.end method


# virtual methods
.method public angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .locals 6
    .param p1, "other"    # Lcom/android/server/AnyMotionDetector$Vector3;

    #@0
    .prologue
    .line 325
    invoke-virtual {p0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    #@3
    move-result v3

    #@4
    float-to-double v4, v3

    #@5
    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    #@8
    move-result-wide v4

    #@9
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    #@c
    move-result-wide v0

    #@d
    .line 326
    .local v0, "degrees":D
    double-to-float v2, v0

    #@e
    .line 327
    .local v2, "returnValue":F
    const-string/jumbo v3, "AnyMotionDetector"

    #@11
    new-instance v4, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v5, "angleBetween: this = "

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 328
    const-string/jumbo v5, ", other = "

    #@28
    .line 327
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    .line 328
    invoke-virtual {p1}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    #@2f
    move-result-object v5

    #@30
    .line 327
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 329
    const-string/jumbo v3, "AnyMotionDetector"

    #@3e
    new-instance v4, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v5, "    degrees = "

    #@46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    const-string/jumbo v5, ", returnValue = "

    #@51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@60
    .line 330
    return v2
.end method

.method public dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .locals 3
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    #@0
    .prologue
    .line 344
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@2
    iget v1, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@4
    mul-float/2addr v0, v1

    #@5
    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@7
    iget v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@9
    mul-float/2addr v1, v2

    #@a
    add-float/2addr v0, v1

    #@b
    iget v1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@d
    iget v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@f
    mul-float/2addr v1, v2

    #@10
    add-float/2addr v0, v1

    #@11
    return v0
.end method

.method public minus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 7
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    #@0
    .prologue
    .line 356
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    #@2
    iget-wide v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@4
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@6
    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@8
    sub-float v4, v0, v4

    #@a
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@c
    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@e
    sub-float v5, v0, v5

    #@10
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@12
    iget v6, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@14
    sub-float v6, v0, v6

    #@16
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    #@19
    return-object v1
.end method

.method public plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 7
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    #@0
    .prologue
    .line 352
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    #@2
    iget-wide v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@4
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@6
    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@8
    add-float/2addr v4, v0

    #@9
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@b
    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@d
    add-float/2addr v5, v0

    #@e
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@10
    iget v6, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@12
    add-float/2addr v6, v0

    #@13
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    #@16
    return-object v1
.end method

.method public times(F)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 7
    .param p1, "val"    # F

    #@0
    .prologue
    .line 348
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    #@2
    iget-wide v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@4
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@6
    mul-float v4, v0, p1

    #@8
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@a
    mul-float v5, v0, p1

    #@c
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@e
    mul-float v6, v0, p1

    #@10
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    #@13
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 335
    const-string/jumbo v0, ""

    #@3
    .line 336
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, "timeMillisSinceBoot="

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-wide v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@15
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    const-string/jumbo v2, " | x="

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    const-string/jumbo v2, ", y="

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    const-string/jumbo v2, ", z="

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    iget v2, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    .line 340
    return-object v0
.end method
