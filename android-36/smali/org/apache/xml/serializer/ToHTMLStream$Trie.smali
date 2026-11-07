.class Lorg/apache/xml/serializer/ToHTMLStream$Trie;
.super Ljava/lang/Object;
.source "ToHTMLStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ToHTMLStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Trie"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    }
.end annotation


# static fields
.field public static final greylist ALPHA_SIZE:I = 0x80


# instance fields
.field final greylist m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

.field private greylist m_charBuffer:[C

.field private final greylist m_lowerCaseOnly:Z


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 2066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2057
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 2067
    new-instance v1, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v1, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2068
    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    return-void
.end method

.method public constructor greylist <init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V
    .registers 3

    .line 2260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2057
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 2262
    iget-object v0, p1, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2263
    iget-boolean v0, p1, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    .line 2266
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->getLongestKeyLength()I

    move-result p1

    .line 2267
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    return-void
.end method

.method public constructor greylist <init>(Z)V
    .registers 3

    .line 2077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2057
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 2078
    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2079
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    return-void
.end method


# virtual methods
.method public greylist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .line 2156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2161
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_b

    return-object v2

    .line 2164
    :cond_b
    iget-object p0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    if-eqz v0, :cond_3a

    const/16 v1, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2b

    :goto_15
    if-ge v3, v0, :cond_28

    .line 2212
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v1, v4, :cond_1e

    return-object v2

    .line 2219
    :cond_1e
    iget-object p0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object p0, p0, v4

    if-nez p0, :cond_25

    return-object v2

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 2224
    :cond_28
    iget-object p0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-object p0

    .line 2177
    :cond_2b
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ge p1, v1, :cond_3a

    .line 2180
    iget-object p0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object p0, p0, p1

    if-eqz p0, :cond_3a

    .line 2182
    iget-object p0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-object p0

    :cond_3a
    return-object v2
.end method

.method public greylist get2(Ljava/lang/String;)Ljava/lang/Object;
    .registers 9

    .line 2281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2286
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_b

    return-object v3

    .line 2289
    :cond_b
    iget-object v2, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    if-eqz v0, :cond_3d

    const/16 v4, 0x80

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_2e

    .line 2321
    invoke-virtual {p1, v6, v0, v1, v6}, Ljava/lang/String;->getChars(II[CI)V

    :goto_18
    if-ge v6, v0, :cond_2b

    .line 2325
    iget-object p1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    aget-char p1, p1, v6

    if-gt v4, p1, :cond_21

    return-object v3

    .line 2332
    :cond_21
    iget-object v1, v2, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object v2, v1, p1

    if-nez v2, :cond_28

    return-object v3

    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 2337
    :cond_2b
    iget-object p0, v2, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-object p0

    .line 2302
    :cond_2e
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ge p0, v4, :cond_3d

    .line 2305
    iget-object p1, v2, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    aget-object p0, p1, p0

    if-eqz p0, :cond_3d

    .line 2307
    iget-object p0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-object p0

    :cond_3d
    return-object v3
.end method

.method public greylist getLongestKeyLength()I
    .registers 1

    .line 2347
    iget-object p0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length p0, p0

    return p0
.end method

.method public greylist put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 2093
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2094
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_d

    .line 2097
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    .line 2100
    :cond_d
    iget-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_58

    .line 2104
    iget-object v3, v1, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2105
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aget-object v3, v3, v4

    if-eqz v3, :cond_24

    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_10

    :cond_24
    :goto_24
    if-ge v2, v0, :cond_58

    .line 2115
    new-instance v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    invoke-direct {v3, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    .line 2116
    iget-boolean v4, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    if-eqz v4, :cond_3c

    .line 2119
    iget-object v1, v1, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2120
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2119
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-object v3, v1, v4

    goto :goto_54

    .line 2126
    :cond_3c
    iget-object v4, v1, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2127
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2126
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    aput-object v3, v4, v5

    .line 2129
    iget-object v1, v1, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    .line 2130
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 2129
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-object v3, v1, v4

    :goto_54
    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_24

    .line 2139
    :cond_58
    iget-object p0, v1, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    .line 2141
    iput-object p2, v1, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    return-object p0
.end method
