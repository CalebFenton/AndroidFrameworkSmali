.class final Landroid/provider/Settings$System$8;
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
    .line 2818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2822
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    #@2
    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 2823
    const/4 v1, 0x1

    #@6
    return v1

    #@7
    .line 2824
    :catch_0
    move-exception v0

    #@8
    .line 2825
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    #@9
    return v1
.end method
