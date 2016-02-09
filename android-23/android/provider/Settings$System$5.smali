.class final Landroid/provider/Settings$System$5;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/Settings$System$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2376
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result v2

    #@5
    const/4 v3, 0x0

    #@6
    cmpl-float v2, v2, v3

    #@8
    if-ltz v2, :cond_0

    #@a
    const/4 v1, 0x1

    #@b
    :cond_0
    return v1

    #@c
    .line 2377
    :catch_0
    move-exception v0

    #@d
    .line 2378
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1
.end method
