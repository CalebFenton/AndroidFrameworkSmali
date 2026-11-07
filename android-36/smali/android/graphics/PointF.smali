.class public Landroid/graphics/PointF;
.super Ljava/lang/Object;
.source "PointF.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist x:F

.field public whitelist y:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Landroid/graphics/PointF$1;

    invoke-direct {v0}, Landroid/graphics/PointF$1;-><init>()V

    sput-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Landroid/graphics/PointF;->x:F

    .line 35
    iput p2, p0, Landroid/graphics/PointF;->y:F

    .line 36
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Point;)V
    .registers 3
    .param p1, "p"    # Landroid/graphics/Point;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 40
    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 41
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "p"    # Landroid/graphics/PointF;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 52
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 53
    return-void
.end method

.method public static whitelist length(FF)F
    .registers 6
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 124
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist equals(FF)Z
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 85
    iget v0, p0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_e

    iget v0, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 91
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 93
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/graphics/PointF;

    .line 95
    .local v2, "pointF":Landroid/graphics/PointF;
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_20

    return v1

    .line 96
    :cond_20
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_2b

    return v1

    .line 98
    :cond_2b
    return v0

    .line 91
    .end local v2    # "pointF":Landroid/graphics/PointF;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 103
    iget v0, p0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v2

    .line 104
    .local v0, "result":I
    :goto_10
    mul-int/lit8 v3, v0, 0x1f

    iget v4, p0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v4, v1

    if-eqz v1, :cond_1e

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :cond_1e
    add-int/2addr v3, v2

    .line 105
    .end local v0    # "result":I
    .local v3, "result":I
    return v3
.end method

.method public final whitelist length()F
    .registers 3

    .line 117
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    return v0
.end method

.method public final whitelist negate()V
    .registers 2

    .line 72
    iget v0, p0, Landroid/graphics/PointF;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 73
    iget v0, p0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 74
    return-void
.end method

.method public final whitelist offset(FF)V
    .registers 4
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .line 77
    iget v0, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 78
    iget v0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 79
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 175
    return-void
.end method

.method public final whitelist set(FF)V
    .registers 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 59
    iput p1, p0, Landroid/graphics/PointF;->x:F

    .line 60
    iput p2, p0, Landroid/graphics/PointF;->y:F

    .line 61
    return-void
.end method

.method public final whitelist set(Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "p"    # Landroid/graphics/PointF;

    .line 67
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 68
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 69
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PointF("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 142
    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 143
    iget v0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 144
    return-void
.end method
