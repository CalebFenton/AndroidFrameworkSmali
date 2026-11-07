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
.field private static final greylist-max-o mAllowed:Ljava/lang/String; = "@_-+."


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 175
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 2
    .param p1, "appendInvalid"    # Z

    .line 178
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 179
    return-void
.end method


# virtual methods
.method public whitelist isAllowed(C)Z
    .registers 5
    .param p1, "c"    # C

    .line 184
    const/16 v0, 0x30

    const/4 v1, 0x1

    if-gt v0, p1, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    .line 185
    return v1

    .line 186
    :cond_a
    const/16 v0, 0x61

    if-gt v0, p1, :cond_13

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_13

    .line 187
    return v1

    .line 188
    :cond_13
    const/16 v0, 0x41

    if-gt v0, p1, :cond_1c

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1c

    .line 189
    return v1

    .line 190
    :cond_1c
    const-string v0, "@_-+."

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_26

    .line 191
    return v1

    .line 192
    :cond_26
    const/4 v0, 0x0

    return v0
.end method
