.class public abstract Landroid/icu/text/UnicodeFilter;
.super Ljava/lang/Object;
.source "UnicodeFilter.java"

# interfaces
.implements Landroid/icu/text/UnicodeMatcher;


# direct methods
.method protected constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api contains(I)Z
.end method

.method public whitelist test-api matches(Landroid/icu/text/Replaceable;[IIZ)I
    .registers 10
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "offset"    # [I
    .param p3, "limit"    # I
    .param p4, "incremental"    # Z

    .line 41
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x2

    if-ge v1, p3, :cond_1d

    aget v1, p2, v0

    .line 42
    invoke-interface {p1, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v1

    move v3, v1

    .local v3, "c":I
    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeFilter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 43
    aget v1, p2, v0

    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v1, v4

    aput v1, p2, v0

    .line 44
    return v2

    .line 46
    .end local v3    # "c":I
    :cond_1d
    aget v1, p2, v0

    const/4 v3, 0x1

    if-le v1, p3, :cond_48

    aget v1, p2, v0

    invoke-interface {p1, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeFilter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 50
    aget v1, p2, v0

    sub-int/2addr v1, v3

    aput v1, p2, v0

    .line 51
    aget v1, p2, v0

    if-ltz v1, :cond_47

    .line 52
    aget v1, p2, v0

    aget v4, p2, v0

    invoke-interface {p1, v4}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v1, v4

    aput v1, p2, v0

    .line 54
    :cond_47
    return v2

    .line 56
    :cond_48
    if-eqz p4, :cond_4f

    aget v1, p2, v0

    if-ne v1, p3, :cond_4f

    .line 57
    return v3

    .line 59
    :cond_4f
    return v0
.end method
