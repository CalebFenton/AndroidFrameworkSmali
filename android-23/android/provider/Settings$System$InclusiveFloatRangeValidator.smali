.class final Landroid/provider/Settings$System$InclusiveFloatRangeValidator;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/Settings$System$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InclusiveFloatRangeValidator"
.end annotation


# instance fields
.field private final mMax:F

.field private final mMin:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    #@0
    .prologue
    .line 2076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2077
    iput p1, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMin:F

    #@5
    .line 2078
    iput p2, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMax:F

    #@7
    .line 2076
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 2084
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@4
    move-result v1

    #@5
    .line 2085
    .local v1, "floatValue":F
    iget v3, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMin:F

    #@7
    cmpl-float v3, v1, v3

    #@9
    if-ltz v3, :cond_0

    #@b
    iget v3, p0, Landroid/provider/Settings$System$InclusiveFloatRangeValidator;->mMax:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    cmpg-float v3, v1, v3

    #@f
    if-gtz v3, :cond_0

    #@11
    const/4 v2, 0x1

    #@12
    :cond_0
    return v2

    #@13
    .line 2086
    .end local v1    # "floatValue":F
    :catch_0
    move-exception v0

    #@14
    .line 2087
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v2
.end method
