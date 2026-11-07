.class public final Landroid/media/MicrophoneInfo$Coordinate3F;
.super Ljava/lang/Object;
.source "MicrophoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MicrophoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Coordinate3F"
.end annotation


# instance fields
.field public final whitelist x:F

.field public final whitelist y:F

.field public final whitelist z:F


# direct methods
.method constructor greylist-max-o <init>(FFF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput p1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    .line 388
    iput p2, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    .line 389
    iput p3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    .line 390
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 394
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 395
    return v0

    .line 397
    :cond_4
    instance-of v1, p1, Landroid/media/MicrophoneInfo$Coordinate3F;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 398
    return v2

    .line 400
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/media/MicrophoneInfo$Coordinate3F;

    .line 401
    .local v1, "other":Landroid/media/MicrophoneInfo$Coordinate3F;
    iget v3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    iget v4, v1, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_26

    iget v3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    iget v4, v1, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_26

    iget v3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    iget v4, v1, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    return v0
.end method
