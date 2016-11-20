.class public Lsun/misc/ASCIICaseInsensitiveComparator;
.super Ljava/lang/Object;
.source "ASCIICaseInsensitiveComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Lsun/misc/ASCIICaseInsensitiveComparator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Lsun/misc/ASCIICaseInsensitiveComparator;->-assertionsDisabled:Z

    #@b
    .line 38
    new-instance v0, Lsun/misc/ASCIICaseInsensitiveComparator;

    #@d
    invoke-direct {v0}, Lsun/misc/ASCIICaseInsensitiveComparator;-><init>()V

    #@10
    .line 37
    sput-object v0, Lsun/misc/ASCIICaseInsensitiveComparator;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@12
    .line 36
    return-void

    #@13
    :cond_0
    const/4 v0, 0x1

    #@14
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static isLower(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 85
    add-int/lit8 v1, p0, -0x61

    #@3
    rsub-int/lit8 v2, p0, 0x7a

    #@5
    or-int/2addr v1, v2

    #@6
    if-ltz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method static isUpper(I)Z
    .locals 3
    .param p0, "ch"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 89
    add-int/lit8 v1, p0, -0x41

    #@3
    rsub-int/lit8 v2, p0, 0x5a

    #@5
    or-int/2addr v1, v2

    #@6
    if-ltz v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :cond_0
    return v0
.end method

.method public static lowerCaseHashCode(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    const/4 v0, 0x0

    #@1
    .line 74
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    .line 76
    .local v2, "len":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@8
    .line 77
    mul-int/lit8 v3, v0, 0x1f

    #@a
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v4

    #@e
    invoke-static {v4}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    #@11
    move-result v4

    #@12
    add-int v0, v3, v4

    #@14
    .line 76
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 80
    :cond_0
    return v0
.end method

.method static toLower(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 93
    invoke-static {p0}, Lsun/misc/ASCIICaseInsensitiveComparator;->isUpper(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    add-int/lit8 p0, p0, 0x20

    #@8
    .end local p0    # "ch":I
    :cond_0
    return p0
.end method

.method static toUpper(I)I
    .locals 1
    .param p0, "ch"    # I

    #@0
    .prologue
    .line 97
    invoke-static {p0}, Lsun/misc/ASCIICaseInsensitiveComparator;->isLower(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    add-int/lit8 p0, p0, -0x20

    #@8
    .end local p0    # "ch":I
    :cond_0
    return p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "s2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 40
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "s1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "s2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lsun/misc/ASCIICaseInsensitiveComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x7f

    #@2
    const/4 v7, 0x0

    #@3
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v4

    #@7
    .local v4, "n1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@a
    move-result v5

    #@b
    .line 42
    .local v5, "n2":I
    if-ge v4, v5, :cond_0

    #@d
    move v3, v4

    #@e
    .line 43
    .local v3, "minLen":I
    :goto_0
    const/4 v2, 0x0

    #@f
    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    #@11
    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 45
    .local v0, "c1":C
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v1

    #@19
    .line 46
    .local v1, "c2":C
    sget-boolean v6, Lsun/misc/ASCIICaseInsensitiveComparator;->-assertionsDisabled:Z

    #@1b
    if-nez v6, :cond_2

    #@1d
    if-gt v0, v8, :cond_1

    #@1f
    if-gt v1, v8, :cond_1

    #@21
    const/4 v6, 0x1

    #@22
    :goto_2
    if-nez v6, :cond_2

    #@24
    new-instance v6, Ljava/lang/AssertionError;

    #@26
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@29
    throw v6

    #@2a
    .line 42
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "i":I
    .end local v3    # "minLen":I
    :cond_0
    move v3, v5

    #@2b
    .restart local v3    # "minLen":I
    goto :goto_0

    #@2c
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    .restart local v2    # "i":I
    :cond_1
    move v6, v7

    #@2d
    .line 46
    goto :goto_2

    #@2e
    .line 47
    :cond_2
    if-eq v0, v1, :cond_3

    #@30
    .line 48
    invoke-static {v0}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    #@33
    move-result v6

    #@34
    int-to-char v0, v6

    #@35
    .line 49
    invoke-static {v1}, Lsun/misc/ASCIICaseInsensitiveComparator;->toLower(I)I

    #@38
    move-result v6

    #@39
    int-to-char v1, v6

    #@3a
    .line 50
    if-eq v0, v1, :cond_3

    #@3c
    .line 51
    sub-int v6, v0, v1

    #@3e
    return v6

    #@3f
    .line 43
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_1

    #@42
    .line 55
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    :cond_4
    sub-int v6, v4, v5

    #@44
    return v6
.end method
