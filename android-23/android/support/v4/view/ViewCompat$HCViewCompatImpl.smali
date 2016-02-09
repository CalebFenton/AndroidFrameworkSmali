.class Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HCViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 991
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public combineMeasuredStates(II)I
    .locals 1
    .param p1, "curState"    # I
    .param p2, "newState"    # I

    #@0
    .prologue
    .line 1148
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->combineMeasuredStates(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 998
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getAlpha(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method getFrameTime()J
    .locals 2

    #@0
    .prologue
    .line 994
    invoke-static {}, Landroid/support/v4/view/ViewCompatHC;->getFrameTime()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1006
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getLayerType(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1026
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredHeightAndState(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1030
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredState(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1022
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getMeasuredWidthAndState(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1125
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getPivotX(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1129
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getPivotY(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1100
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getRotation(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1105
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getRotationX(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1110
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getRotationY(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1115
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getScaleX(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1120
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getScaleY(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1034
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getTranslationX(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1038
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getTranslationY(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getX(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1090
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getX(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getY(Landroid/view/View;)F
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1095
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->getY(Landroid/view/View;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 1133
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatHC;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    #@3
    .line 1132
    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 1
    .param p1, "size"    # I
    .param p2, "measureSpec"    # I
    .param p3, "childMeasuredState"    # I

    #@0
    .prologue
    .line 1018
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatHC;->resolveSizeAndState(III)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setActivated(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "activated"    # Z

    #@0
    .prologue
    .line 1143
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setActivated(Landroid/view/View;Z)V

    #@3
    .line 1142
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1050
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setAlpha(Landroid/view/View;F)V

    #@3
    .line 1049
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1012
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;->getLayerType(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    #@7
    .line 1014
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    #@a
    .line 1009
    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layerType"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1002
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatHC;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    #@3
    .line 1001
    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1082
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setPivotX(Landroid/view/View;F)V

    #@3
    .line 1081
    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1086
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setPivotY(Landroid/view/View;F)V

    #@3
    .line 1085
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1062
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setRotation(Landroid/view/View;F)V

    #@3
    .line 1061
    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1066
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setRotationX(Landroid/view/View;F)V

    #@3
    .line 1065
    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1070
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setRotationY(Landroid/view/View;F)V

    #@3
    .line 1069
    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 1138
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    #@3
    .line 1137
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1074
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setScaleX(Landroid/view/View;F)V

    #@3
    .line 1073
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1078
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setScaleY(Landroid/view/View;F)V

    #@3
    .line 1077
    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1042
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setTranslationX(Landroid/view/View;F)V

    #@3
    .line 1041
    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1046
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setTranslationY(Landroid/view/View;F)V

    #@3
    .line 1045
    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1054
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setX(Landroid/view/View;F)V

    #@3
    .line 1053
    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1058
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatHC;->setY(Landroid/view/View;F)V

    #@3
    .line 1057
    return-void
.end method
