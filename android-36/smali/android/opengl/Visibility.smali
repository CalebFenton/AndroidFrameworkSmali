.class public Landroid/opengl/Visibility;
.super Ljava/lang/Object;
.source "Visibility.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native whitelist computeBoundingSphere([FII[FI)V
.end method

.method public static native whitelist frustumCullSpheres([FI[FII[III)I
.end method

.method public static native whitelist visibilityTest([FI[FI[CII)I
.end method
