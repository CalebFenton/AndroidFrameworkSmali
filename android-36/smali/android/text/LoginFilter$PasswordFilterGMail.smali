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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 209
    return-void
.end method

.method public constructor whitelist <init>(Z)V
    .registers 2
    .param p1, "appendInvalid"    # Z

    .line 212
    invoke-direct {p0, p1}, Landroid/text/LoginFilter;-><init>(Z)V

    .line 213
    return-void
.end method


# virtual methods
.method public whitelist isAllowed(C)Z
    .registers 4
    .param p1, "c"    # C

    .line 218
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-gt v0, p1, :cond_a

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_a

    .line 219
    return v1

    .line 221
    :cond_a
    const/16 v0, 0xa0

    if-gt v0, p1, :cond_13

    const/16 v0, 0xff

    if-gt p1, v0, :cond_13

    .line 222
    return v1

    .line 223
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
