.class public interface abstract Landroid/content/res/FontScaleConverter;
.super Ljava/lang/Object;
.source "FontScaleConverter.java"


# direct methods
.method public static whitelist forScale(F)Landroid/content/res/FontScaleConverter;
    .registers 2
    .param p0, "fontScale"    # F

    .line 76
    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->forScale(F)Landroid/content/res/FontScaleConverter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isNonLinearFontScalingActive(F)Z
    .registers 2
    .param p0, "fontScale"    # F

    .line 57
    invoke-static {p0}, Landroid/content/res/FontScaleConverterFactory;->isNonLinearFontScalingActive(F)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract whitelist convertDpToSp(F)F
.end method

.method public abstract whitelist convertSpToDp(F)F
.end method
