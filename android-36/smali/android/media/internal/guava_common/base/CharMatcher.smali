.class public abstract Landroid/media/internal/guava_common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/base/CharMatcher$None;,
        Landroid/media/internal/guava_common/base/CharMatcher$Whitespace;,
        Landroid/media/internal/guava_common/base/CharMatcher$Is;,
        Landroid/media/internal/guava_common/base/CharMatcher$NamedFastMatcher;,
        Landroid/media/internal/guava_common/base/CharMatcher$FastMatcher;
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$100(C)Ljava/lang/String;
    .registers 1

    .line 65
    invoke-static {p0}, Landroid/media/internal/guava_common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist is(C)Landroid/media/internal/guava_common/base/CharMatcher;
    .registers 2

    .line 297
    new-instance v0, Landroid/media/internal/guava_common/base/CharMatcher$Is;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/base/CharMatcher$Is;-><init>(C)V

    return-object v0
.end method

.method public static blacklist none()Landroid/media/internal/guava_common/base/CharMatcher;
    .registers 1

    .line 128
    sget-object v0, Landroid/media/internal/guava_common/base/CharMatcher$None;->INSTANCE:Landroid/media/internal/guava_common/base/CharMatcher;

    return-object v0
.end method

.method private static blacklist showCharacter(C)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x6

    .line 929
    new-array v0, v0, [C

    const/16 v1, 0x5c

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x75

    aput-char v3, v0, v1

    const/4 v1, 0x2

    aput-char v2, v0, v1

    const/4 v1, 0x3

    aput-char v2, v0, v1

    const/4 v1, 0x4

    aput-char v2, v0, v1

    const/4 v3, 0x5

    aput-char v2, v0, v3

    :goto_19
    if-ge v2, v1, :cond_2c

    rsub-int/lit8 v3, v2, 0x5

    and-int/lit8 v4, p0, 0xf

    .line 931
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v1

    int-to-char p0, p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 934
    :cond_2c
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist indexIn(Ljava/lang/CharSequence;I)I
    .registers 5

    .line 562
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 563
    invoke-static {p2, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkPositionIndex(II)I

    :goto_7
    if-ge p2, v0, :cond_17

    .line 565
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/internal/guava_common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_14

    return p2

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_17
    const/4 p0, -0x1

    return p0
.end method

.method public abstract blacklist matches(C)Z
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 920
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
