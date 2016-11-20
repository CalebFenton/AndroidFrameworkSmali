.class public Landroid/text/LoginFilter$UsernameFilterGeneric;
.super Landroid/text/LoginFilter;
.source "LoginFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/LoginFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsernameFilterGeneric"
.end annotation


# static fields
.field private static final mAllowed:Ljava/lang/String; = "@_-+."


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 168
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    #@4
    .line 167
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "appendInvalid"    # Z

    #@0
    .prologue
    .line 172
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    #@3
    .line 171
    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 178
    const/16 v0, 0x30

    #@3
    if-gt v0, p1, :cond_0

    #@5
    const/16 v0, 0x39

    #@7
    if-gt p1, v0, :cond_0

    #@9
    .line 179
    return v2

    #@a
    .line 180
    :cond_0
    const/16 v0, 0x61

    #@c
    if-gt v0, p1, :cond_1

    #@e
    const/16 v0, 0x7a

    #@10
    if-gt p1, v0, :cond_1

    #@12
    .line 181
    return v2

    #@13
    .line 182
    :cond_1
    const/16 v0, 0x41

    #@15
    if-gt v0, p1, :cond_2

    #@17
    const/16 v0, 0x5a

    #@19
    if-gt p1, v0, :cond_2

    #@1b
    .line 183
    return v2

    #@1c
    .line 184
    :cond_2
    const-string/jumbo v0, "@_-+."

    #@1f
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    #@22
    move-result v0

    #@23
    const/4 v1, -0x1

    #@24
    if-eq v0, v1, :cond_3

    #@26
    .line 185
    return v2

    #@27
    .line 186
    :cond_3
    const/4 v0, 0x0

    #@28
    return v0
.end method
