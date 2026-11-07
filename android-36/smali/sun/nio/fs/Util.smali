.class Lsun/nio/fs/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final blacklist jnuEncoding:Ljava/nio/charset/Charset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/Util;->jnuEncoding:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs blacklist followLinks([Ljava/nio/file/LinkOption;)Z
    .registers 6
    .param p0, "options"    # [Ljava/nio/file/LinkOption;

    .line 124
    const/4 v0, 0x1

    .line 125
    .local v0, "followLinks":Z
    array-length v1, p0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_1f

    aget-object v3, p0, v2

    .line 126
    .local v3, "option":Ljava/nio/file/LinkOption;
    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v3, v4, :cond_f

    .line 127
    const/4 v0, 0x0

    .line 125
    .end local v3    # "option":Ljava/nio/file/LinkOption;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 128
    .restart local v3    # "option":Ljava/nio/file/LinkOption;
    :cond_f
    if-nez v3, :cond_17

    .line 129
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 131
    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Should not get here"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 134
    .end local v3    # "option":Ljava/nio/file/LinkOption;
    :cond_1f
    return v0
.end method

.method static blacklist jnuEncoding()Ljava/nio/charset/Charset;
    .registers 1

    .line 51
    sget-object v0, Lsun/nio/fs/Util;->jnuEncoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static varargs blacklist newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;[TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 113
    .local p0, "other":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p1, v2

    .line 115
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 117
    :cond_11
    return-object v0
.end method

.method static varargs blacklist newSet([Ljava/lang/Object;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 100
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 101
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, p0, v2

    .line 102
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 104
    :cond_11
    return-object v0
.end method

.method static blacklist split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "c"    # C

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_10

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 78
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 82
    .end local v1    # "i":I
    :cond_13
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 83
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 84
    .local v2, "n":I
    const/4 v3, 0x0

    .line 85
    .local v3, "last":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_35

    .line 86
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_32

    .line 87
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "n":I
    .local v5, "n":I
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 88
    add-int/lit8 v2, v4, 0x1

    move v3, v2

    move v2, v5

    .line 85
    .end local v5    # "n":I
    .restart local v2    # "n":I
    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 91
    .end local v4    # "i":I
    :cond_35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 92
    return-object v1
.end method

.method static blacklist toBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 59
    sget-object v0, Lsun/nio/fs/Util;->jnuEncoding:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method static blacklist toString([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .line 67
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lsun/nio/fs/Util;->jnuEncoding:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
