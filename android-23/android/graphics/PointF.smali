.class public Landroid/graphics/PointF;
.super Ljava/lang/Object;
.source "PointF.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/PointF$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/graphics/PointF$1;

    #@2
    invoke-direct {v0}, Landroid/graphics/PointF$1;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/PointF;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    iput p1, p0, Landroid/graphics/PointF;->x:F

    #@5
    .line 34
    iput p2, p0, Landroid/graphics/PointF;->y:F

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "p"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    iget v0, p1, Landroid/graphics/Point;->x:I

    #@5
    int-to-float v0, v0

    #@6
    iput v0, p0, Landroid/graphics/PointF;->x:F

    #@8
    .line 39
    iget v0, p1, Landroid/graphics/Point;->y:I

    #@a
    int-to-float v0, v0

    #@b
    iput v0, p0, Landroid/graphics/PointF;->y:F

    #@d
    .line 37
    return-void
.end method

.method public static length(FF)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F

    #@0
    .prologue
    .line 111
    float-to-double v0, p0

    #@1
    float-to-double v2, p1

    #@2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    #@5
    move-result-wide v0

    #@6
    double-to-float v0, v0

    #@7
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 119
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final equals(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 72
    iget v1, p0, Landroid/graphics/PointF;->x:F

    #@3
    cmpl-float v1, v1, p1

    #@5
    if-nez v1, :cond_0

    #@7
    iget v1, p0, Landroid/graphics/PointF;->y:F

    #@9
    cmpl-float v1, v1, p2

    #@b
    if-nez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 77
    if-ne p0, p1, :cond_0

    #@4
    return v4

    #@5
    .line 78
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/graphics/PointF;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 80
    check-cast v0, Landroid/graphics/PointF;

    #@15
    .line 82
    .local v0, "pointF":Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->x:F

    #@17
    iget v2, p0, Landroid/graphics/PointF;->x:F

    #@19
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_3

    #@1f
    return v3

    #@20
    .line 83
    :cond_3
    iget v1, v0, Landroid/graphics/PointF;->y:F

    #@22
    iget v2, p0, Landroid/graphics/PointF;->y:F

    #@24
    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_4

    #@2a
    return v3

    #@2b
    .line 85
    :cond_4
    return v4
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 90
    iget v1, p0, Landroid/graphics/PointF;->x:F

    #@3
    cmpl-float v1, v1, v3

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Landroid/graphics/PointF;->x:F

    #@9
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@c
    move-result v0

    #@d
    .line 91
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    #@f
    iget v1, p0, Landroid/graphics/PointF;->y:F

    #@11
    cmpl-float v1, v1, v3

    #@13
    if-eqz v1, :cond_1

    #@15
    iget v1, p0, Landroid/graphics/PointF;->y:F

    #@17
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1a
    move-result v1

    #@1b
    :goto_1
    add-int v0, v2, v1

    #@1d
    .line 92
    return v0

    #@1e
    .line 90
    .end local v0    # "result":I
    :cond_0
    const/4 v0, 0x0

    #@1f
    .restart local v0    # "result":I
    goto :goto_0

    #@20
    .line 91
    :cond_1
    const/4 v1, 0x0

    #@21
    goto :goto_1
.end method

.method public final length()F
    .locals 2

    #@0
    .prologue
    .line 104
    iget v0, p0, Landroid/graphics/PointF;->x:F

    #@2
    iget v1, p0, Landroid/graphics/PointF;->y:F

    #@4
    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final negate()V
    .locals 1

    #@0
    .prologue
    .line 59
    iget v0, p0, Landroid/graphics/PointF;->x:F

    #@2
    neg-float v0, v0

    #@3
    iput v0, p0, Landroid/graphics/PointF;->x:F

    #@5
    .line 60
    iget v0, p0, Landroid/graphics/PointF;->y:F

    #@7
    neg-float v0, v0

    #@8
    iput v0, p0, Landroid/graphics/PointF;->y:F

    #@a
    .line 58
    return-void
.end method

.method public final offset(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    #@0
    .prologue
    .line 64
    iget v0, p0, Landroid/graphics/PointF;->x:F

    #@2
    add-float/2addr v0, p1

    #@3
    iput v0, p0, Landroid/graphics/PointF;->x:F

    #@5
    .line 65
    iget v0, p0, Landroid/graphics/PointF;->y:F

    #@7
    add-float/2addr v0, p2

    #@8
    iput v0, p0, Landroid/graphics/PointF;->y:F

    #@a
    .line 63
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/graphics/PointF;->x:F

    #@6
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@9
    move-result v0

    #@a
    iput v0, p0, Landroid/graphics/PointF;->y:F

    #@c
    .line 157
    return-void
.end method

.method public final set(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 46
    iput p1, p0, Landroid/graphics/PointF;->x:F

    #@2
    .line 47
    iput p2, p0, Landroid/graphics/PointF;->y:F

    #@4
    .line 45
    return-void
.end method

.method public final set(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "p"    # Landroid/graphics/PointF;

    #@0
    .prologue
    .line 54
    iget v0, p1, Landroid/graphics/PointF;->x:F

    #@2
    iput v0, p0, Landroid/graphics/PointF;->x:F

    #@4
    .line 55
    iget v0, p1, Landroid/graphics/PointF;->y:F

    #@6
    iput v0, p0, Landroid/graphics/PointF;->y:F

    #@8
    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PointF("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/graphics/PointF;->x:F

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/graphics/PointF;->y:F

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ")"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 129
    iget v0, p0, Landroid/graphics/PointF;->x:F

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@5
    .line 130
    iget v0, p0, Landroid/graphics/PointF;->y:F

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@a
    .line 128
    return-void
.end method
