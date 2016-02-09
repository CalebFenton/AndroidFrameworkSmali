.class final Landroid/provider/Settings$System$7;
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


# static fields
.field private static final MAX_LENGTH:I = 0x3e8


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2777
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v1

    #@7
    const/16 v2, 0x3e8

    #@9
    if-le v1, v2, :cond_0

    #@b
    .line 2778
    return v0

    #@c
    .line 2780
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_1

    #@12
    const/4 v0, 0x1

    #@13
    :cond_1
    return v0
.end method
