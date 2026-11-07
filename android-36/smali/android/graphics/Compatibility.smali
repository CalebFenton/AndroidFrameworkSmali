.class public final Landroid/graphics/Compatibility;
.super Ljava/lang/Object;
.source "Compatibility.java"


# static fields
.field private static blacklist sTargetSdkVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const/4 v0, 0x0

    sput v0, Landroid/graphics/Compatibility;->sTargetSdkVersion:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getTargetSdkVersion()I
    .registers 1

    .line 46
    sget v0, Landroid/graphics/Compatibility;->sTargetSdkVersion:I

    return v0
.end method

.method public static blacklist setTargetSdkVersion(I)V
    .registers 1
    .param p0, "targetSdkVersion"    # I

    .line 36
    sput p0, Landroid/graphics/Compatibility;->sTargetSdkVersion:I

    .line 37
    invoke-static {p0}, Landroid/graphics/Canvas;->setCompatibilityVersion(I)V

    .line 38
    return-void
.end method
