.class public interface abstract Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService$MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMagnificationChangedListener"
.end annotation


# virtual methods
.method public abstract whitelist onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;FFF)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;Landroid/accessibilityservice/MagnificationConfig;)V
    .registers 12
    .param p1, "controller"    # Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .param p2, "region"    # Landroid/graphics/Region;
    .param p3, "config"    # Landroid/accessibilityservice/MagnificationConfig;

    .line 1995
    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 1996
    nop

    .line 1997
    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v5

    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v6

    invoke-virtual {p3}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v7

    .line 1996
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .end local p2    # "region":Landroid/graphics/Region;
    .local v3, "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .local v4, "region":Landroid/graphics/Region;
    invoke-interface/range {v2 .. v7}, Landroid/accessibilityservice/AccessibilityService$MagnificationController$OnMagnificationChangedListener;->onMagnificationChanged(Landroid/accessibilityservice/AccessibilityService$MagnificationController;Landroid/graphics/Region;FFF)V

    goto :goto_1d

    .line 1995
    .end local v3    # "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .end local v4    # "region":Landroid/graphics/Region;
    .restart local p1    # "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .restart local p2    # "region":Landroid/graphics/Region;
    :cond_1b
    move-object v3, p1

    move-object v4, p2

    .line 1999
    .end local p1    # "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .end local p2    # "region":Landroid/graphics/Region;
    .restart local v3    # "controller":Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .restart local v4    # "region":Landroid/graphics/Region;
    :goto_1d
    return-void
.end method
