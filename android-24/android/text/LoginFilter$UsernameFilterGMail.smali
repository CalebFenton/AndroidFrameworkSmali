.class public Landroid/text/LoginFilter$UsernameFilterGMail;
.super Landroid/text/LoginFilter;
.source "LoginFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/LoginFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsernameFilterGMail"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 137
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    #@4
    .line 136
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "appendInvalid"    # Z

    #@0
    .prologue
    .line 141
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    #@3
    .line 140
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
    .line 147
    const/16 v0, 0x30

    #@3
    if-gt v0, p1, :cond_0

    #@5
    const/16 v0, 0x39

    #@7
    if-gt p1, v0, :cond_0

    #@9
    .line 148
    return v1

    #@a
    .line 149
    :cond_0
    const/16 v0, 0x61

    #@c
    if-gt v0, p1, :cond_1

    #@e
    const/16 v0, 0x7a

    #@10
    if-gt p1, v0, :cond_1

    #@12
    .line 150
    return v1

    #@13
    .line 151
    :cond_1
    const/16 v0, 0x41

    #@15
    if-gt v0, p1, :cond_2

    #@17
    const/16 v0, 0x5a

    #@19
    if-gt p1, v0, :cond_2

    #@1b
    .line 152
    return v1

    #@1c
    .line 153
    :cond_2
    const/16 v0, 0x2e

    #@1e
    if-ne v0, p1, :cond_3

    #@20
    .line 154
    return v1

    #@21
    .line 155
    :cond_3
    const/4 v0, 0x0

    #@22
    return v0
.end method
