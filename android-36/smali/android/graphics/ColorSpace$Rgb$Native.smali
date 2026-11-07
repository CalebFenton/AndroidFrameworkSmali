.class Landroid/graphics/ColorSpace$Rgb$Native;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Rgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Native"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native blacklist nativeCreate(FFFFFFF[F)J
.end method

.method static native blacklist nativeGetNativeFinalizer()J
.end method
