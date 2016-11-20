.class public Landroid/text/LoginFilter$PasswordFilterGMail;
.super Landroid/text/LoginFilter;
.source "LoginFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/LoginFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordFilterGMail"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 198
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    #@4
    .line 197
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "appendInvalid"    # Z

    #@0
    .prologue
    .line 202
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    #@3
    .line 201
    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 208
    const/16 v0, 0x20

    #@3
    if-gt v0, p1, :cond_0

    #@5
    const/16 v0, 0x7f

    #@7
    if-gt p1, v0, :cond_0

    #@9
    .line 209
    return v1

    #@a
    .line 211
    :cond_0
    const/16 v0, 0xa0

    #@c
    if-gt v0, p1, :cond_1

    #@e
    const/16 v0, 0xff

    #@10
    if-gt p1, v0, :cond_1

    #@12
    .line 212
    return v1

    #@13
    .line 213
    :cond_1
    const/4 v0, 0x0

    #@14
    return v0
.end method
