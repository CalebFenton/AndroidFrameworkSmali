.class public Lorg/apache/xml/serializer/dom3/NamespaceSupport;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;
    }
.end annotation


# static fields
.field static final PREFIX_XML:Ljava/lang/String;

.field static final PREFIX_XMLNS:Ljava/lang/String;

.field public static final XMLNS_URI:Ljava/lang/String;

.field public static final XML_URI:Ljava/lang/String;


# instance fields
.field protected fContext:[I

.field protected fCurrentContext:I

.field protected fNamespace:[Ljava/lang/String;

.field protected fNamespaceSize:I

.field protected fPrefixes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "xml"

    #@3
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    #@9
    .line 43
    const-string/jumbo v0, "xmlns"

    #@c
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    #@12
    .line 49
    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    #@15
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XML_URI:Ljava/lang/String;

    #@1b
    .line 56
    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    #@1e
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XMLNS_URI:Ljava/lang/String;

    #@24
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    const/16 v0, 0x20

    #@5
    new-array v0, v0, [Ljava/lang/String;

    #@7
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@9
    .line 87
    const/16 v0, 0x8

    #@b
    new-array v0, v0, [I

    #@d
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@f
    .line 92
    const/16 v0, 0x10

    #@11
    new-array v0, v0, [Ljava/lang/String;

    #@13
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    #@15
    .line 99
    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 157
    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    #@4
    if-eq p1, v2, :cond_0

    #@6
    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    #@8
    if-ne p1, v2, :cond_1

    #@a
    .line 158
    :cond_0
    return v4

    #@b
    .line 162
    :cond_1
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@d
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@f
    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@11
    aget v2, v2, v3

    #@13
    if-le v0, v2, :cond_3

    #@15
    .line 164
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@17
    add-int/lit8 v3, v0, -0x2

    #@19
    aget-object v2, v2, v3

    #@1b
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_2

    #@21
    .line 171
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@23
    add-int/lit8 v3, v0, -0x1

    #@25
    aput-object p2, v2, v3

    #@27
    .line 172
    return v5

    #@28
    .line 162
    :cond_2
    add-int/lit8 v0, v0, -0x2

    #@2a
    goto :goto_0

    #@2b
    .line 177
    :cond_3
    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@2d
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@2f
    array-length v3, v3

    #@30
    if-ne v2, v3, :cond_4

    #@32
    .line 178
    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@34
    mul-int/lit8 v2, v2, 0x2

    #@36
    new-array v1, v2, [Ljava/lang/String;

    #@38
    .line 179
    .local v1, "namespacearray":[Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@3a
    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@3c
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3f
    .line 180
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@41
    .line 184
    .end local v1    # "namespacearray":[Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@43
    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@45
    add-int/lit8 v4, v3, 0x1

    #@47
    iput v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@49
    aput-object p1, v2, v3

    #@4b
    .line 185
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@4d
    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@4f
    add-int/lit8 v4, v3, 0x1

    #@51
    iput v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@53
    aput-object p2, v2, v3

    #@55
    .line 187
    return v5
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 9

    #@0
    .prologue
    .line 249
    const/4 v0, 0x0

    #@1
    .line 250
    .local v0, "count":I
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    #@3
    array-length v7, v7

    #@4
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@6
    array-length v8, v8

    #@7
    div-int/lit8 v8, v8, 0x2

    #@9
    if-ge v7, v8, :cond_0

    #@b
    .line 252
    iget v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@d
    new-array v5, v7, [Ljava/lang/String;

    #@f
    .line 253
    .local v5, "prefixes":[Ljava/lang/String;
    iput-object v5, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    #@11
    .line 255
    .end local v5    # "prefixes":[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    #@12
    .line 256
    .local v4, "prefix":Ljava/lang/String;
    const/4 v6, 0x1

    #@13
    .line 257
    .local v6, "unique":Z
    const/4 v2, 0x2

    #@14
    .end local v4    # "prefix":Ljava/lang/String;
    .local v2, "i":I
    :goto_0
    iget v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@16
    add-int/lit8 v7, v7, -0x2

    #@18
    if-ge v2, v7, :cond_4

    #@1a
    .line 258
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@1c
    add-int/lit8 v8, v2, 0x2

    #@1e
    aget-object v4, v7, v8

    #@20
    .line 259
    .local v4, "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    #@21
    .local v3, "k":I
    :goto_1
    if-ge v3, v0, :cond_1

    #@23
    .line 260
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    #@25
    aget-object v7, v7, v3

    #@27
    if-ne v7, v4, :cond_3

    #@29
    .line 261
    const/4 v6, 0x0

    #@2a
    .line 265
    :cond_1
    if-eqz v6, :cond_2

    #@2c
    .line 266
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    #@2e
    add-int/lit8 v1, v0, 0x1

    #@30
    .end local v0    # "count":I
    .local v1, "count":I
    aput-object v4, v7, v0

    #@32
    move v0, v1

    #@33
    .line 268
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_2
    const/4 v6, 0x1

    #@34
    .line 257
    add-int/lit8 v2, v2, 0x2

    #@36
    goto :goto_0

    #@37
    .line 259
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@39
    goto :goto_1

    #@3a
    .line 270
    .end local v3    # "k":I
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_4
    new-instance v7, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;

    #@3c
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    #@3e
    invoke-direct {v7, p0, v8, v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;-><init>(Lorg/apache/xml/serializer/dom3/NamespaceSupport;[Ljava/lang/String;I)V

    #@41
    return-object v7
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@2
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@4
    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@6
    aget v1, v1, v2

    #@8
    mul-int/lit8 v2, p1, 0x2

    #@a
    add-int/2addr v1, v2

    #@b
    aget-object v0, v0, v1

    #@d
    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .locals 3

    #@0
    .prologue
    .line 235
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@2
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@4
    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@6
    aget v1, v1, v2

    #@8
    sub-int/2addr v0, v1

    #@9
    div-int/lit8 v0, v0, 0x2

    #@b
    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 216
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@2
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    #@4
    .line 218
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@6
    add-int/lit8 v2, v0, -0x1

    #@8
    aget-object v1, v1, v2

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 220
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@12
    add-int/lit8 v2, v0, -0x2

    #@14
    aget-object v1, v1, v2

    #@16
    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 221
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@22
    add-int/lit8 v2, v0, -0x2

    #@24
    aget-object v1, v1, v2

    #@26
    return-object v1

    #@27
    .line 216
    :cond_0
    add-int/lit8 v0, v0, -0x2

    #@29
    goto :goto_0

    #@2a
    .line 226
    :cond_1
    const/4 v1, 0x0

    #@2b
    return-object v1
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 197
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@2
    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    #@4
    .line 199
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@6
    add-int/lit8 v2, v0, -0x2

    #@8
    aget-object v1, v1, v2

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 200
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@12
    add-int/lit8 v2, v0, -0x1

    #@14
    aget-object v1, v1, v2

    #@16
    return-object v1

    #@17
    .line 197
    :cond_0
    add-int/lit8 v0, v0, -0x2

    #@19
    goto :goto_0

    #@1a
    .line 205
    :cond_1
    const/4 v1, 0x0

    #@1b
    return-object v1
.end method

.method public popContext()V
    .locals 3

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@2
    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@4
    add-int/lit8 v2, v1, -0x1

    #@6
    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@8
    aget v0, v0, v1

    #@a
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@c
    .line 148
    return-void
.end method

.method public pushContext()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 133
    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@3
    add-int/lit8 v1, v1, 0x1

    #@5
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@7
    array-length v2, v2

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 134
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@c
    array-length v1, v1

    #@d
    mul-int/lit8 v1, v1, 0x2

    #@f
    new-array v0, v1, [I

    #@11
    .line 135
    .local v0, "contextarray":[I
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@13
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@15
    array-length v2, v2

    #@16
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@19
    .line 136
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@1b
    .line 140
    .end local v0    # "contextarray":[I
    :cond_0
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@1d
    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@1f
    add-int/lit8 v2, v2, 0x1

    #@21
    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@23
    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@25
    aput v3, v1, v2

    #@27
    .line 130
    return-void
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 112
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@3
    .line 113
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@5
    .line 114
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    #@7
    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@9
    iget v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@b
    aput v2, v0, v1

    #@d
    .line 117
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@f
    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@11
    add-int/lit8 v2, v1, 0x1

    #@13
    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@15
    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    #@17
    aput-object v2, v0, v1

    #@19
    .line 118
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@1b
    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@1d
    add-int/lit8 v2, v1, 0x1

    #@1f
    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@21
    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XML_URI:Ljava/lang/String;

    #@23
    aput-object v2, v0, v1

    #@25
    .line 120
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@27
    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@29
    add-int/lit8 v2, v1, 0x1

    #@2b
    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@2d
    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    #@2f
    aput-object v2, v0, v1

    #@31
    .line 121
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    #@33
    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@35
    add-int/lit8 v2, v1, 0x1

    #@37
    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    #@39
    sget-object v2, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XMLNS_URI:Ljava/lang/String;

    #@3b
    aput-object v2, v0, v1

    #@3d
    .line 122
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@3f
    add-int/lit8 v0, v0, 0x1

    #@41
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    #@43
    .line 109
    return-void
.end method
