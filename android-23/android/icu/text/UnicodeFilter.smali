.class public abstract Landroid/icu/text/UnicodeFilter;
.super Ljava/lang/Object;
.source "UnicodeFilter.java"

# interfaces
.implements Landroid/icu/text/UnicodeMatcher;


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public abstract contains(I)Z
.end method

.method public matches(Landroid/icu/text/Replaceable;[IIZ)I
    .locals 5
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offset"    # [I
    .param p3, "limit"    # I
    .param p4, "incremental"    # Z

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 39
    aget v1, p2, v3

    #@4
    if-ge v1, p3, :cond_0

    #@6
    .line 40
    aget v1, p2, v3

    #@8
    invoke-interface {p1, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@b
    move-result v0

    #@c
    .local v0, "c":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeFilter;->contains(I)Z

    #@f
    move-result v1

    #@10
    .line 39
    if-eqz v1, :cond_0

    #@12
    .line 41
    aget v1, p2, v3

    #@14
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@17
    move-result v2

    #@18
    add-int/2addr v1, v2

    #@19
    aput v1, p2, v3

    #@1b
    .line 42
    return v4

    #@1c
    .line 44
    .end local v0    # "c":I
    :cond_0
    aget v1, p2, v3

    #@1e
    if-le v1, p3, :cond_2

    #@20
    aget v1, p2, v3

    #@22
    invoke-interface {p1, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@25
    move-result v1

    #@26
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeFilter;->contains(I)Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_2

    #@2c
    .line 48
    aget v1, p2, v3

    #@2e
    add-int/lit8 v1, v1, -0x1

    #@30
    aput v1, p2, v3

    #@32
    .line 49
    aget v1, p2, v3

    #@34
    if-ltz v1, :cond_1

    #@36
    .line 50
    aget v1, p2, v3

    #@38
    aget v2, p2, v3

    #@3a
    invoke-interface {p1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    #@3d
    move-result v2

    #@3e
    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    #@41
    move-result v2

    #@42
    add-int/lit8 v2, v2, -0x1

    #@44
    sub-int/2addr v1, v2

    #@45
    aput v1, p2, v3

    #@47
    .line 52
    :cond_1
    return v4

    #@48
    .line 54
    :cond_2
    if-eqz p4, :cond_3

    #@4a
    aget v1, p2, v3

    #@4c
    if-ne v1, p3, :cond_3

    #@4e
    .line 55
    const/4 v1, 0x1

    #@4f
    return v1

    #@50
    .line 57
    :cond_3
    return v3
.end method
