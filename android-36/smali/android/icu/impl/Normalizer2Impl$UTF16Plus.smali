.class public final Landroid/icu/impl/Normalizer2Impl$UTF16Plus;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UTF16Plus"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z
    .registers 10
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "start1"    # I
    .param p2, "limit1"    # I
    .param p3, "s2"    # Ljava/lang/CharSequence;
    .param p4, "start2"    # I
    .param p5, "limit2"    # I

    .line 434
    sub-int v0, p2, p1

    sub-int v1, p5, p4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 435
    return v2

    .line 437
    :cond_8
    const/4 v0, 0x1

    if-ne p0, p3, :cond_e

    if-ne p1, p4, :cond_e

    .line 438
    return v0

    .line 440
    :cond_e
    :goto_e
    if-ge p1, p2, :cond_22

    .line 441
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "start1":I
    .local v1, "start1":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    add-int/lit8 v3, p4, 0x1

    .end local p4    # "start2":I
    .local v3, "start2":I
    invoke-interface {p3, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p4

    if-eq p1, p4, :cond_1f

    .line 442
    return v2

    .line 441
    :cond_1f
    move p1, v1

    move p4, v3

    goto :goto_e

    .line 445
    .end local v1    # "start1":I
    .end local v3    # "start2":I
    .restart local p1    # "start1":I
    .restart local p4    # "start2":I
    :cond_22
    return v0
.end method

.method public static blacklist equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "s2"    # Ljava/lang/CharSequence;

    .line 407
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 408
    return v0

    .line 410
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 411
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    .line 412
    return v3

    .line 414
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_21

    .line 415
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1e

    .line 416
    return v3

    .line 414
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 419
    .end local v2    # "i":I
    :cond_21
    return v0
.end method

.method public static blacklist isLeadSurrogate(I)Z
    .registers 3
    .param p0, "c"    # I

    .line 380
    and-int/lit16 v0, p0, -0x400

    const v1, 0xd800

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist isSurrogate(I)Z
    .registers 3
    .param p0, "c"    # I

    .line 392
    and-int/lit16 v0, p0, -0x800

    const v1, 0xd800

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static blacklist isSurrogateLead(I)Z
    .registers 2
    .param p0, "c"    # I

    .line 399
    and-int/lit16 v0, p0, 0x400

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isTrailSurrogate(I)Z
    .registers 3
    .param p0, "c"    # I

    .line 386
    and-int/lit16 v0, p0, -0x400

    const v1, 0xdc00

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
