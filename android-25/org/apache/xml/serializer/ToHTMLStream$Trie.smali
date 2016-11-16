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
.field public static final ALPHA_SIZE:I = 0x80


# instance fields
.field final m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

.field private m_charBuffer:[C

.field private final m_lowerCaseOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 2057
    new-array v0, v1, [C

    #@6
    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    #@8
    .line 2067
    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@a
    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    #@d
    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@f
    .line 2068
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    #@11
    .line 2065
    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V
    .locals 2
    .param p1, "existingTrie"    # Lorg/apache/xml/serializer/ToHTMLStream$Trie;

    #@0
    .prologue
    .line 2259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2057
    const/4 v1, 0x0

    #@4
    new-array v1, v1, [C

    #@6
    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    #@8
    .line 2262
    iget-object v1, p1, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@a
    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@c
    .line 2263
    iget-boolean v1, p1, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    #@e
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    #@10
    .line 2266
    invoke-virtual {p1}, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->getLongestKeyLength()I

    #@13
    move-result v0

    #@14
    .line 2267
    .local v0, "max":I
    new-array v1, v0, [C

    #@16
    iput-object v1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    #@18
    .line 2259
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "lowerCaseOnly"    # Z

    #@0
    .prologue
    .line 2076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2057
    const/4 v0, 0x0

    #@4
    new-array v0, v0, [C

    #@6
    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    #@8
    .line 2078
    new-instance v0, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@a
    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    #@d
    iput-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@f
    .line 2079
    iput-boolean p1, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    #@11
    .line 2076
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x80

    #@2
    const/4 v5, 0x0

    #@3
    .line 2156
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v2

    #@7
    .line 2161
    .local v2, "len":I
    iget-object v4, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    #@9
    array-length v4, v4

    #@a
    if-ge v4, v2, :cond_0

    #@c
    .line 2162
    return-object v5

    #@d
    .line 2164
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@f
    .line 2165
    .local v3, "node":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    packed-switch v2, :pswitch_data_0

    #@12
    .line 2209
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    #@15
    .line 2212
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v0

    #@19
    .line 2213
    .local v0, "ch":C
    if-gt v6, v0, :cond_2

    #@1b
    .line 2216
    return-object v5

    #@1c
    .line 2172
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :pswitch_0
    return-object v5

    #@1d
    .line 2177
    :pswitch_1
    const/4 v4, 0x0

    #@1e
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v0

    #@22
    .line 2178
    .restart local v0    # "ch":C
    if-ge v0, v6, :cond_1

    #@24
    .line 2180
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@26
    aget-object v3, v4, v0

    #@28
    .line 2181
    if-eqz v3, :cond_1

    #@2a
    .line 2182
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    #@2c
    return-object v4

    #@2d
    .line 2184
    :cond_1
    return-object v5

    #@2e
    .line 2219
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@30
    aget-object v3, v4, v0

    #@32
    .line 2220
    if-nez v3, :cond_3

    #@34
    .line 2221
    return-object v5

    #@35
    .line 2209
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 2224
    .end local v0    # "ch":C
    :cond_4
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    #@3a
    return-object v4

    #@3b
    .line 2165
    nop

    #@3c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public get2(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0x80

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v5, 0x0

    #@4
    .line 2281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    .line 2286
    .local v2, "len":I
    iget-object v4, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    #@a
    array-length v4, v4

    #@b
    if-ge v4, v2, :cond_0

    #@d
    .line 2287
    return-object v5

    #@e
    .line 2289
    :cond_0
    iget-object v3, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@10
    .line 2290
    .local v3, "node":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    packed-switch v2, :pswitch_data_0

    #@13
    .line 2321
    iget-object v4, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    #@15
    invoke-virtual {p1, v6, v2, v4, v6}, Ljava/lang/String;->getChars(II[CI)V

    #@18
    .line 2323
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_4

    #@1b
    .line 2325
    iget-object v4, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    #@1d
    aget-char v0, v4, v1

    #@1f
    .line 2326
    .local v0, "ch":C
    if-gt v7, v0, :cond_2

    #@21
    .line 2329
    return-object v5

    #@22
    .line 2297
    .end local v0    # "ch":C
    .end local v1    # "i":I
    :pswitch_0
    return-object v5

    #@23
    .line 2302
    :pswitch_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v0

    #@27
    .line 2303
    .restart local v0    # "ch":C
    if-ge v0, v7, :cond_1

    #@29
    .line 2305
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@2b
    aget-object v3, v4, v0

    #@2d
    .line 2306
    if-eqz v3, :cond_1

    #@2f
    .line 2307
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    #@31
    return-object v4

    #@32
    .line 2309
    :cond_1
    return-object v5

    #@33
    .line 2332
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@35
    aget-object v3, v4, v0

    #@37
    .line 2333
    if-nez v3, :cond_3

    #@39
    .line 2334
    return-object v5

    #@3a
    .line 2323
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 2337
    .end local v0    # "ch":C
    :cond_4
    iget-object v4, v3, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    #@3f
    return-object v4

    #@40
    .line 2290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getLongestKeyLength()I
    .locals 1

    #@0
    .prologue
    .line 2347
    iget-object v0, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2093
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    .line 2094
    .local v1, "len":I
    iget-object v6, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    #@6
    array-length v6, v6

    #@7
    if-le v1, v6, :cond_0

    #@9
    .line 2097
    new-array v6, v1, [C

    #@b
    iput-object v6, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_charBuffer:[C

    #@d
    .line 2100
    :cond_0
    iget-object v4, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_Root:Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@f
    .line 2102
    .local v4, "node":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    const/4 v0, 0x0

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@12
    .line 2105
    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v7

    #@18
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    #@1b
    move-result v7

    #@1c
    .line 2104
    aget-object v3, v6, v7

    #@1e
    .line 2107
    .local v3, "nextNode":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    if-eqz v3, :cond_1

    #@20
    .line 2109
    move-object v4, v3

    #@21
    .line 2102
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 2113
    :cond_1
    :goto_1
    if-ge v0, v1, :cond_3

    #@26
    .line 2115
    new-instance v2, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@28
    invoke-direct {v2, p0}, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;-><init>(Lorg/apache/xml/serializer/ToHTMLStream$Trie;)V

    #@2b
    .line 2116
    .local v2, "newNode":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    iget-boolean v6, p0, Lorg/apache/xml/serializer/ToHTMLStream$Trie;->m_lowerCaseOnly:Z

    #@2d
    if-eqz v6, :cond_2

    #@2f
    .line 2119
    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@31
    .line 2120
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v7

    #@35
    .line 2119
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    #@38
    move-result v7

    #@39
    aput-object v2, v6, v7

    #@3b
    .line 2133
    :goto_2
    move-object v4, v2

    #@3c
    .line 2113
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 2126
    :cond_2
    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@41
    .line 2127
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@44
    move-result v7

    #@45
    .line 2126
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    #@48
    move-result v7

    #@49
    aput-object v2, v6, v7

    #@4b
    .line 2129
    iget-object v6, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_nextChar:[Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;

    #@4d
    .line 2130
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@50
    move-result v7

    #@51
    .line 2129
    invoke-static {v7}, Ljava/lang/Character;->toLowerCase(C)C

    #@54
    move-result v7

    #@55
    aput-object v2, v6, v7

    #@57
    goto :goto_2

    #@58
    .line 2139
    .end local v2    # "newNode":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    .end local v3    # "nextNode":Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;
    :cond_3
    iget-object v5, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    #@5a
    .line 2141
    .local v5, "ret":Ljava/lang/Object;
    iput-object p2, v4, Lorg/apache/xml/serializer/ToHTMLStream$Trie$Node;->m_Value:Ljava/lang/Object;

    #@5c
    .line 2143
    return-object v5
.end method
