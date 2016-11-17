.class public abstract Lcom/google/android/maps/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/Overlay$Snappable;
    }
.end annotation


# static fields
.field protected static final SHADOW_X_SKEW:F = -0.9f

.field protected static final SHADOW_Y_SCALE:F = 0.5f


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method protected static drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V
    .locals 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "shadow"    # Z

    #@0
    .prologue
    const/16 v2, 0x3e80

    #@2
    const/16 v1, -0x3e80

    #@4
    .line 58
    const/16 v0, 0x3e80

    #@6
    .line 59
    .local v0, "MAX":I
    if-gt p2, v2, :cond_0

    #@8
    if-le p3, v2, :cond_1

    #@a
    .line 60
    :cond_0
    return-void

    #@b
    .line 59
    :cond_1
    if-lt p2, v1, :cond_0

    #@d
    if-lt p3, v1, :cond_0

    #@f
    .line 62
    if-eqz p4, :cond_2

    #@11
    .line 63
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@13
    const/high16 v2, 0x7f000000

    #@15
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    #@18
    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    #@1b
    .line 66
    int-to-float v1, p2

    #@1c
    int-to-float v2, p3

    #@1d
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@20
    .line 68
    if-eqz p4, :cond_3

    #@22
    .line 69
    const/4 v1, 0x0

    #@23
    const v2, -0x4099999a    # -0.9f

    #@26
    invoke-virtual {p0, v2, v1}, Landroid/graphics/Canvas;->skew(FF)V

    #@29
    .line 70
    const/high16 v1, 0x3f800000    # 1.0f

    #@2b
    const/high16 v2, 0x3f000000    # 0.5f

    #@2d
    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    #@30
    .line 73
    :cond_3
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@33
    .line 75
    if-eqz p4, :cond_4

    #@35
    .line 76
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    #@38
    .line 78
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    #@3b
    .line 56
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z

    #@0
    .prologue
    .line 159
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZJ)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z
    .param p4, "when"    # J

    #@0
    .prologue
    .line 179
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    #@3
    .line 180
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 115
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .param p1, "p"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 141
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    #@0
    .prologue
    .line 102
    const/4 v0, 0x0

    #@1
    return v0
.end method
