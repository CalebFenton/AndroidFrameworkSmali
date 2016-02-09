.class final Landroid/provider/Settings$System$9;
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
    .line 3223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3227
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    move-result-wide v2

    #@5
    const-wide/16 v4, 0x0

    #@7
    cmp-long v2, v2, v4

    #@9
    if-ltz v2, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :cond_0
    return v1

    #@d
    .line 3228
    :catch_0
    move-exception v0

    #@e
    .line 3229
    .local v0, "e":Ljava/lang/NumberFormatException;
    return v1
.end method
