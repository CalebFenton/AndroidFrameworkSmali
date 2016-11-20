.class public final Lcom/android/server/AnyMotionDetector$Vector3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vector3"
.end annotation


# instance fields
.field public timeMillisSinceBoot:J

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>(JFFF)V
    .locals 1
    .param p1, "timeMillisSinceBoot"    # J
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F

    #@0
    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 318
    iput-wide p1, p0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@5
    .line 319
    iput p3, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@7
    .line 320
    iput p4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@9
    .line 321
    iput p5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@b
    .line 317
    return-void
.end method


# virtual methods
.method public angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .locals 6
    .param p1, "other"    # Lcom/android/server/AnyMotionDetector$Vector3;

    #@0
    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->cross(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;

    #@3
    move-result-object v0

    #@4
    .line 343
    .local v0, "crossVector":Lcom/android/server/AnyMotionDetector$Vector3;
    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->norm()F

    #@7
    move-result v2

    #@8
    float-to-double v2, v2

    #@9
    invoke-virtual {p0, p1}, Lcom/android/server/AnyMotionDetector$Vector3;->dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F

    #@c
    move-result v4

    #@d
    float-to-double v4, v4

    #@e
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    #@11
    move-result-wide v2

    #@12
    .line 342
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    #@15
    move-result-wide v2

    #@16
    double-to-float v2, v2

    #@17
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    #@1a
    move-result v1

    #@1b
    .line 344
    .local v1, "degrees":F
    const-string/jumbo v2, "AnyMotionDetector"

    #@1e
    new-instance v3, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v4, "angleBetween: this = "

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 345
    const-string/jumbo v4, ", other = "

    #@35
    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 345
    invoke-virtual {p1}, Lcom/android/server/AnyMotionDetector$Vector3;->toString()Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    .line 345
    const-string/jumbo v4, ", degrees = "

    #@44
    .line 344
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@53
    .line 346
    return v1
.end method

.method public cross(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 8
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    #@0
    .prologue
    .line 350
    new-instance v1, Lcom/android/server/AnyMotionDetector$Vector3;

    #@2
    .line 351
    iget-wide v2, p1, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    #@4
    .line 352
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@6
    iget v4, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@8
    mul-float/2addr v0, v4

    #@9
    iget v4, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@b
    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@d
    mul-float/2addr v4, v5

    #@e
    sub-float v4, v0, v4

    #@10
    .line 353
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@12
    iget v5, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@14
    mul-float/2addr v0, v5

    #@15
    iget v5, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@17
    iget v6, p1, Lcom/android/server/AnyMotionDetector$Vector3;->z:F

    #@19
    mul-float/2addr v5, v6

    #@1a
    sub-float v5, v0, v5

    #@1c
    .line 354
    iget v0, p0, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@1e
    iget v6, p1, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@20
    mul-float/2addr v0, v6

    #@21
    iget v6, p0, Lcom/android/server/AnyMotionDetector$Vector3;->y:F

    #@23
    iget v7, p1, Lcom/android/server/AnyMotionDetector$Vector3;->x:F

    #@25
    mul-float/2addr v6, v7

    #@26
    sub-float v6, v0, v6

    #@28
    .line 350
    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    #@2b
    return-object v1
.end method

.method public dotProduct(Lcom/android/server/AnyMotionDetector$Vector3;)F
    .locals 3
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    #@0
    .prologue
    .line 368
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
    .line 380
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

.method public norm()F
    .locals 2

    #@0
    .prologue
    .line 325
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

.method public normalized()Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 7

    #@0
    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector$Vector3;->norm()F

    #@3
    move-result v0

    #@4
    .line 330
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

.method public plus(Lcom/android/server/AnyMotionDetector$Vector3;)Lcom/android/server/AnyMotionDetector$Vector3;
    .locals 7
    .param p1, "v"    # Lcom/android/server/AnyMotionDetector$Vector3;

    #@0
    .prologue
    .line 376
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
    .line 372
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
    .line 359
    const-string/jumbo v0, ""

    #@3
    .line 360
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
    .line 361
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
    .line 362
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
    .line 363
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
    .line 364
    return-object v0
.end method
