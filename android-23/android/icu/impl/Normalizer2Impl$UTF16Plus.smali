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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z
    .locals 6
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "start1"    # I
    .param p2, "limit1"    # I
    .param p3, "s2"    # Ljava/lang/CharSequence;
    .param p4, "start2"    # I
    .param p5, "limit2"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 395
    sub-int v2, p2, p1

    #@4
    sub-int v3, p5, p4

    #@6
    if-eq v2, v3, :cond_0

    #@8
    .line 396
    return v4

    #@9
    .line 398
    :cond_0
    if-ne p0, p3, :cond_1

    #@b
    if-ne p1, p4, :cond_1

    #@d
    .line 399
    return v5

    #@e
    :cond_1
    move v1, p4

    #@f
    .end local p4    # "start2":I
    .local v1, "start2":I
    move v0, p1

    #@10
    .line 401
    .end local p1    # "start1":I
    .local v0, "start1":I
    :goto_0
    if-ge v0, p2, :cond_3

    #@12
    .line 402
    add-int/lit8 p1, v0, 0x1

    #@14
    .end local v0    # "start1":I
    .restart local p1    # "start1":I
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@17
    move-result v2

    #@18
    add-int/lit8 p4, v1, 0x1

    #@1a
    .end local v1    # "start2":I
    .restart local p4    # "start2":I
    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@1d
    move-result v3

    #@1e
    if-eq v2, v3, :cond_2

    #@20
    .line 403
    return v4

    #@21
    :cond_2
    move v1, p4

    #@22
    .end local p4    # "start2":I
    .restart local v1    # "start2":I
    move v0, p1

    #@23
    .end local p1    # "start1":I
    .restart local v0    # "start1":I
    goto :goto_0

    #@24
    .line 406
    :cond_3
    return v5
.end method

.method public static equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "s1"    # Ljava/lang/CharSequence;
    .param p1, "s2"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 368
    if-ne p0, p1, :cond_0

    #@4
    .line 369
    return v5

    #@5
    .line 371
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v1

    #@9
    .line 372
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v2

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 373
    return v4

    #@10
    .line 375
    :cond_1
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@13
    .line 376
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@16
    move-result v2

    #@17
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@1a
    move-result v3

    #@1b
    if-eq v2, v3, :cond_2

    #@1d
    .line 377
    return v4

    #@1e
    .line 375
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 380
    :cond_3
    return v5
.end method

.method public static isSurrogateLead(I)Z
    .locals 2
    .param p0, "c"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 360
    and-int/lit16 v1, p0, 0x400

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method
