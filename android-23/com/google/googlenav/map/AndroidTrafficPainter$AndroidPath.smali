.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;
.super Ljava/lang/Object;
.source "AndroidTrafficPainter.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidPath"
.end annotation


# instance fields
.field private final path:Landroid/graphics/Path;


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    new-instance v0, Landroid/graphics/Path;

    #@5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@8
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;->path:Landroid/graphics/Path;

    #@a
    return-void
.end method

.method synthetic constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$1;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getPath()Landroid/graphics/Path;
    .locals 1

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;->path:Landroid/graphics/Path;

    #@2
    return-object v0
.end method

.method public lineTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;->path:Landroid/graphics/Path;

    #@2
    shr-int/lit8 v1, p1, 0x8

    #@4
    int-to-float v1, v1

    #@5
    shr-int/lit8 v2, p2, 0x8

    #@7
    int-to-float v2, v2

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    #@b
    .line 94
    return-void
.end method

.method public moveTo(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;->path:Landroid/graphics/Path;

    #@2
    shr-int/lit8 v1, p1, 0x8

    #@4
    int-to-float v1, v1

    #@5
    shr-int/lit8 v2, p2, 0x8

    #@7
    int-to-float v2, v2

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    #@b
    .line 98
    return-void
.end method
