.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;
.super Ljava/lang/Object;
.source "AndroidTrafficPainter.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$TrafficPainter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$1;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;
    }
.end annotation


# static fields
.field private static final MAJOR_DASH_INTERVALS:[F

.field private static final MINOR_DASH_INTERVALS:[F


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private isPreserveLabels:Z

.field private mainXfermode:Landroid/graphics/Xfermode;

.field private final majorDash:Landroid/graphics/PathEffect;

.field private final minorDash:Landroid/graphics/PathEffect;

.field private final paint:Landroid/graphics/Paint;

.field private final preserveLabels:Landroid/graphics/AvoidXfermode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    const/high16 v2, 0x41400000    # 12.0f

    #@5
    const/high16 v1, 0x40c00000    # 6.0f

    #@7
    .line 28
    new-array v0, v5, [F

    #@9
    aput v2, v0, v3

    #@b
    aput v1, v0, v4

    #@d
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MAJOR_DASH_INTERVALS:[F

    #@f
    .line 29
    new-array v0, v5, [F

    #@11
    aput v1, v0, v3

    #@13
    aput v2, v0, v4

    #@15
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MINOR_DASH_INTERVALS:[F

    #@17
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    new-instance v0, Landroid/graphics/DashPathEffect;

    #@5
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MAJOR_DASH_INTERVALS:[F

    #@7
    const/4 v2, 0x0

    #@8
    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    #@b
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->majorDash:Landroid/graphics/PathEffect;

    #@d
    .line 32
    new-instance v0, Landroid/graphics/DashPathEffect;

    #@f
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->MINOR_DASH_INTERVALS:[F

    #@11
    const/high16 v2, 0x40c00000    # 6.0f

    #@13
    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    #@16
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->minorDash:Landroid/graphics/PathEffect;

    #@18
    .line 34
    new-instance v0, Landroid/graphics/AvoidXfermode;

    #@1a
    const v1, -0xbfbfc0

    #@1d
    const/16 v2, 0xfd

    #@1f
    sget-object v3, Landroid/graphics/AvoidXfermode$Mode;->AVOID:Landroid/graphics/AvoidXfermode$Mode;

    #@21
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/AvoidXfermode;-><init>(IILandroid/graphics/AvoidXfermode$Mode;)V

    #@24
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->preserveLabels:Landroid/graphics/AvoidXfermode;

    #@26
    const/4 v0, 0x0

    #@27
    .line 37
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    #@29
    .line 38
    new-instance v0, Landroid/graphics/Paint;

    #@2b
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@2e
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@30
    .line 89
    return-void
.end method


# virtual methods
.method public addTrafficLine(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;II)V
    .locals 5
    .param p1, "path"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    .param p2, "color"    # I
    .param p3, "width"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 54
    shr-int/lit8 p3, p3, 0x8

    #@4
    .line 56
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->isPreserveLabels:Z

    #@6
    if-nez v2, :cond_1

    #@8
    :cond_0
    :goto_0
    const/high16 v2, -0x640000

    #@a
    .line 61
    if-eq p2, v2, :cond_2

    #@c
    .line 63
    .local v1, "isDashed":Z
    :goto_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@e
    int-to-float v4, p3

    #@f
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@12
    .line 64
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@14
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    #@17
    .line 65
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@19
    if-nez v1, :cond_3

    #@1b
    move-object v2, v3

    #@1c
    :goto_2
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    #@1f
    .line 66
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@21
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->mainXfermode:Landroid/graphics/Xfermode;

    #@23
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@26
    .line 68
    check-cast p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;

    #@28
    .end local p1    # "path":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;->getPath()Landroid/graphics/Path;

    #@2b
    move-result-object v0

    #@2c
    .line 69
    .local v0, "graphicsPath":Landroid/graphics/Path;
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    #@2e
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@30
    invoke-virtual {v2, v0, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@33
    .line 71
    if-nez v1, :cond_4

    #@35
    .line 83
    :goto_3
    return-void

    #@36
    .end local v0    # "graphicsPath":Landroid/graphics/Path;
    .end local v1    # "isDashed":Z
    .restart local p1    # "path":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    :cond_1
    const v2, -0x2f000001

    #@39
    .line 56
    if-ne p2, v2, :cond_0

    #@3b
    const/4 p2, -0x1

    #@3c
    .line 59
    add-int/lit8 p3, p3, 0x2

    #@3e
    goto :goto_0

    #@3f
    :cond_2
    const/4 v1, 0x1

    #@40
    .line 61
    goto :goto_1

    #@41
    .line 65
    .restart local v1    # "isDashed":Z
    :cond_3
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->majorDash:Landroid/graphics/PathEffect;

    #@43
    goto :goto_2

    #@44
    .line 78
    .end local p1    # "path":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    .restart local v0    # "graphicsPath":Landroid/graphics/Path;
    :cond_4
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@46
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->minorDash:Landroid/graphics/PathEffect;

    #@48
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    #@4b
    .line 79
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@4d
    const/high16 v4, -0x1000000

    #@4f
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    #@52
    .line 80
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@54
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    #@57
    .line 81
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    #@59
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@5b
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@5e
    goto :goto_3
.end method

.method public createPathObject()Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer$Path;
    .locals 2

    #@0
    .prologue
    .line 86
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$AndroidPath;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter$1;)V

    #@6
    return-object v0
.end method

.method public setup(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 43
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->canvas:Landroid/graphics/Canvas;

    #@2
    .line 45
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@8
    .line 46
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@a
    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@f
    .line 47
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@11
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    #@13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    #@16
    .line 48
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->paint:Landroid/graphics/Paint;

    #@18
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    #@1a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@1d
    .line 49
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/android/TrafficWithLabelsLab;->INSTANCE:Landroid_maps_conflict_avoidance/com/google/googlenav/labs/android/TrafficWithLabelsLab;

    #@1f
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/android/TrafficWithLabelsLab;->isActive()Z

    #@22
    move-result v0

    #@23
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->isPreserveLabels:Z

    #@25
    .line 50
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->isPreserveLabels:Z

    #@27
    if-nez v0, :cond_0

    #@29
    const/4 v0, 0x0

    #@2a
    :goto_0
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->mainXfermode:Landroid/graphics/Xfermode;

    #@2c
    .line 51
    return-void

    #@2d
    .line 50
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/AndroidTrafficPainter;->preserveLabels:Landroid/graphics/AvoidXfermode;

    #@2f
    goto :goto_0
.end method
