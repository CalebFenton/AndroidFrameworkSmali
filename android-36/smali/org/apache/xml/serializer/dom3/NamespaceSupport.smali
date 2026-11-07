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
.field static final greylist PREFIX_XML:Ljava/lang/String;

.field static final greylist PREFIX_XMLNS:Ljava/lang/String;

.field public static final greylist XMLNS_URI:Ljava/lang/String;

.field public static final greylist XML_URI:Ljava/lang/String;


# instance fields
.field protected greylist fContext:[I

.field protected greylist fCurrentContext:I

.field protected greylist fNamespace:[Ljava/lang/String;

.field protected greylist fNamespaceSize:I

.field protected greylist fPrefixes:[Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 41
    const-string v0, "xml"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    .line 43
    const-string v0, "xmlns"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    .line 49
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XML_URI:Ljava/lang/String;

    .line 56
    const-string v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XMLNS_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 71
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/16 v0, 0x8

    .line 87
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    const/16 v0, 0x10

    .line 92
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 157
    sget-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4b

    sget-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne p1, v0, :cond_a

    goto :goto_4b

    .line 162
    :cond_a
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    :goto_c
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget v2, v2, v3

    const/4 v3, 0x1

    if-le v0, v2, :cond_2a

    .line 164
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x2

    aget-object v2, v2, v4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 171
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    sub-int/2addr v0, v3

    aput-object p2, p0, v0

    return v3

    :cond_27
    add-int/lit8 v0, v0, -0x2

    goto :goto_c

    .line 177
    :cond_2a
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v4, v2

    if-ne v0, v4, :cond_3a

    mul-int/lit8 v4, v0, 0x2

    .line 178
    new-array v4, v4, [Ljava/lang/String;

    .line 179
    invoke-static {v2, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iput-object v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    .line 184
    :cond_3a
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 185
    iput v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    aput-object p2, v0, v2

    return v3

    :cond_4b
    :goto_4b
    return v1
.end method

.method public greylist getAllPrefixes()Ljava/util/Enumeration;
    .registers 8

    .line 250
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_10

    .line 252
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    new-array v0, v0, [Ljava/lang/String;

    .line 253
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    :cond_10
    const/4 v0, 0x0

    move v3, v0

    move v1, v2

    .line 257
    :goto_13
    iget v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sub-int/2addr v4, v2

    if-ge v1, v4, :cond_33

    .line 258
    iget-object v4, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x2

    aget-object v4, v4, v1

    move v5, v0

    :goto_1f
    if-ge v5, v3, :cond_2b

    .line 260
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    aget-object v6, v6, v5

    if-ne v6, v4, :cond_28

    goto :goto_13

    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 266
    :cond_2b
    iget-object v5, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    aput-object v4, v5, v3

    move v3, v6

    goto :goto_13

    .line 270
    :cond_33
    new-instance v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v3}, Lorg/apache/xml/serializer/dom3/NamespaceSupport$Prefixes;-><init>(Lorg/apache/xml/serializer/dom3/NamespaceSupport;[Ljava/lang/String;I)V

    return-object v0
.end method

.method public greylist getDeclaredPrefixAt(I)Ljava/lang/String;
    .registers 4

    .line 242
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget p0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget p0, v1, p0

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public greylist getDeclaredPrefixCount()I
    .registers 3

    .line 235
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget p0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget p0, v1, p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public greylist getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 216
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    :goto_2
    if-lez v0, :cond_28

    .line 218
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 220
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 221
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    aget-object p0, p0, v2

    return-object p0

    :cond_25
    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 197
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    :goto_2
    if-lez v0, :cond_1a

    .line 199
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 200
    iget-object p0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_17
    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist popContext()V
    .registers 4

    .line 149
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    return-void
.end method

.method public greylist pushContext()V
    .registers 5

    .line 133
    iget v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    array-length v2, v1

    if-ne v0, v2, :cond_15

    .line 134
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 135
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    .line 140
    :cond_15
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    iget v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    iget p0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    aput p0, v0, v1

    return-void
.end method

.method public greylist reset()V
    .registers 6

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    .line 113
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    .line 114
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fContext:[I

    aput v0, v1, v0

    .line 117
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XML:Ljava/lang/String;

    aput-object v3, v1, v0

    add-int v0, v2, v2

    .line 118
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XML_URI:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v3, v0, 0x1

    .line 120
    iput v3, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v4, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->PREFIX_XMLNS:Ljava/lang/String;

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x2

    .line 121
    iput v0, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fNamespaceSize:I

    sget-object v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->XMLNS_URI:Ljava/lang/String;

    aput-object v0, v1, v3

    .line 122
    iput v2, p0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->fCurrentContext:I

    return-void
.end method
