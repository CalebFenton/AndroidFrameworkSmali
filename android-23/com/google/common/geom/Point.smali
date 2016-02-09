.class public final Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 90
    if-nez p1, :cond_1

    #@3
    .line 94
    :cond_0
    return v1

    #@4
    .line 90
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    move-object v0, p1

    #@13
    .line 91
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    #@15
    .line 92
    .local v0, "p":Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@17
    iget v3, v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@19
    if-eq v2, v3, :cond_3

    #@1b
    :cond_2
    :goto_0
    return v1

    #@1c
    :cond_3
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@1e
    iget v3, v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@20
    if-ne v2, v3, :cond_2

    #@22
    const/4 v1, 0x1

    #@23
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@2
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@4
    add-int/2addr v0, v1

    #@5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "["

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, ","

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string/jumbo v1, "]"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method
