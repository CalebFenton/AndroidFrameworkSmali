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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 144
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 2
    .param p1, "appendInvalid"    # Z

    .line 147
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 148
    return-void
.end method


# virtual methods
.method public whitelist isAllowed(C)Z
    .registers 4
    .param p1, "c"    # C

    .line 153
    const/16 v0, 0x30

    const/4 v1, 0x1

    if-gt v0, p1, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    .line 154
    return v1

    .line 155
    :cond_a
    const/16 v0, 0x61

    if-gt v0, p1, :cond_13

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_13

    .line 156
    return v1

    .line 157
    :cond_13
    const/16 v0, 0x41

    if-gt v0, p1, :cond_1c

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1c

    .line 158
    return v1

    .line 159
    :cond_1c
    const/16 v0, 0x2e

    if-ne v0, p1, :cond_21

    .line 160
    return v1

    .line 161
    :cond_21
    const/4 v0, 0x0

    return v0
.end method
