.class public Lsun/misc/ASCIICaseInsensitiveComparator;
.super Ljava/lang/Object;
.source "ASCIICaseInsensitiveComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field public static final greylist CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    nop

    .line 37
    new-instance v0, Lsun/misc/ASCIICaseInsensitiveComparator;

    invoke-direct {v0}, Lsun/misc/ASCIICaseInsensitiveComparator;-><init>()V

    sput-object v0, Lsun/misc/ASCIICaseInsensitiveComparator;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist isLower(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 85
    add-int/lit8 v0, p0, -0x61

    rsub-int/lit8 v1, p0, 0x7a

    or-int/2addr v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static blacklist isUpper(I)Z
    .registers 3
    .param p0, "ch"    # I

    .line 89
    add-int/lit8 v0, p0, -0x41

    rsub-int/lit8 v1, p0, 0x5a

    or-int/2addr v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public static greylist lowerCaseHashCode(Ljava/lang/String;)I
    .registers 6
    .param p0, "s"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 76
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_17

    .line 77
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v4

    add-int v0, v3, v4

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 80
    .end local v2    # "i":I
    :cond_17
    return v0
.end method

.method static blacklist toLower(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 93
    invoke-static {p0}, Lsun/misc/ASCIICaseInsensitiveComparator;->isUpper(I)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p0, 0x20

    goto :goto_a

    :cond_9
    move v0, p0

    :goto_a
    return v0
.end method

.method static blacklist toUpper(I)I
    .registers 2
    .param p0, "ch"    # I

    .line 97
    invoke-static {p0}, Lsun/misc/ASCIICaseInsensitiveComparator;->isLower(I)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v0, p0, -0x20

    goto :goto_a

    :cond_9
    move v0, p0

    :goto_a
    return v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 36
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lsun/misc/ASCIICaseInsensitiveComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "n1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 42
    .local v1, "n2":I
    if-ge v0, v1, :cond_c

    move v2, v0

    goto :goto_d

    :cond_c
    move v2, v1

    .line 43
    .local v2, "minLen":I
    :goto_d
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_2d

    .line 44
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 45
    .local v4, "c1":C
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 46
    .local v5, "c2":C
    nop

    .line 47
    if-eq v4, v5, :cond_2a

    .line 48
    invoke-static {v4}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v6

    int-to-char v4, v6

    .line 49
    invoke-static {v5}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    move-result v6

    int-to-char v5, v6

    .line 50
    if-eq v4, v5, :cond_2a

    .line 51
    sub-int v6, v4, v5

    return v6

    .line 43
    .end local v4    # "c1":C
    .end local v5    # "c2":C
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 55
    .end local v3    # "i":I
    :cond_2d
    sub-int v3, v0, v1

    return v3
.end method
