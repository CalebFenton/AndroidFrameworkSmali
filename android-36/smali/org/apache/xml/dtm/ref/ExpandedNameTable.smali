.class public Lorg/apache/xml/dtm/ref/ExpandedNameTable;
.super Ljava/lang/Object;
.source "ExpandedNameTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    }
.end annotation


# static fields
.field public static final greylist ATTRIBUTE:I = 0x2

.field public static final greylist CDATA_SECTION:I = 0x4

.field public static final greylist COMMENT:I = 0x8

.field public static final greylist DOCUMENT:I = 0x9

.field public static final greylist DOCUMENT_FRAGMENT:I = 0xb

.field public static final greylist DOCUMENT_TYPE:I = 0xa

.field public static final greylist ELEMENT:I = 0x1

.field public static final greylist ENTITY:I = 0x6

.field public static final greylist ENTITY_REFERENCE:I = 0x5

.field public static final greylist NAMESPACE:I = 0xd

.field public static final greylist NOTATION:I = 0xc

.field public static final greylist PROCESSING_INSTRUCTION:I = 0x7

.field public static final greylist TEXT:I = 0x3

.field private static greylist m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType; = null

.field private static greylist m_initialCapacity:I = 0xcb

.field private static greylist m_initialSize:I = 0x80

.field private static greylist m_loadFactor:F = 0.75f


# instance fields
.field greylist hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

.field private greylist m_capacity:I

.field private greylist m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

.field private greylist m_nextType:I

.field private greylist m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

.field private greylist m_threshold:I


# direct methods
.method static constructor greylist <clinit>()V
    .registers 5

    const/16 v0, 0xe

    .line 108
    new-array v1, v0, [Lorg/apache/xml/dtm/ref/ExtendedType;

    sput-object v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    .line 112
    sget-object v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    new-instance v3, Lorg/apache/xml/dtm/ref/ExtendedType;

    const-string v4, ""

    invoke-direct {v3, v1, v4, v4}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lorg/apache/xml/dtm/ref/ExtendedType;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    .line 121
    sget v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialCapacity:I

    iput v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    int-to-float v1, v0

    .line 122
    sget v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    .line 123
    new-array v0, v0, [Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    .line 125
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->initExtendedTypes()V

    return-void
.end method

.method private greylist initExtendedTypes()V
    .registers 6

    .line 135
    sget v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialSize:I

    new-array v0, v0, [Lorg/apache/xml/dtm/ref/ExtendedType;

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    const/4 v0, 0x0

    :goto_7
    const/16 v1, 0xe

    if-ge v0, v1, :cond_22

    .line 137
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    sget-object v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object v3, v2, v0

    aput-object v3, v1, v0

    .line 138
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    new-instance v3, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v2, v2, v0

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v0, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;-><init>(Lorg/apache/xml/dtm/ref/ExtendedType;IILorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 141
    :cond_22
    iput v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    return-void
.end method

.method private greylist rehash()V
    .registers 9

    .line 247
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    .line 248
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 251
    iput v2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    int-to-float v3, v2

    .line 252
    sget v4, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    .line 254
    new-array v3, v2, [Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    iput-object v3, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_32

    .line 257
    aget-object v3, v1, v0

    :goto_1b
    if-eqz v3, :cond_2f

    .line 260
    iget-object v4, v3, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    .line 262
    iget v5, v3, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    rem-int/2addr v5, v2

    if-gez v5, :cond_25

    neg-int v5, v5

    .line 266
    :cond_25
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v7, v6, v5

    iput-object v7, v3, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    .line 267
    aput-object v3, v6, v5

    move-object v3, v4

    goto :goto_1b

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_32
    return-void
.end method


# virtual methods
.method public greylist getExpandedTypeID(I)I
    .registers 2

    .line 0
    return p1
.end method

.method public greylist getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public greylist getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 10

    .line 181
    const-string v0, ""

    if-nez p1, :cond_5

    move-object p1, v0

    :cond_5
    if-nez p2, :cond_8

    move-object p2, v0

    .line 187
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    invoke-virtual {v1, p3, p1, p2, v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->redefine(ILjava/lang/String;Ljava/lang/String;I)V

    .line 193
    iget v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    rem-int v1, v0, v1

    if-gez v1, :cond_1e

    neg-int v1, v1

    .line 199
    :cond_1e
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object v2, v2, v1

    :goto_22
    if-eqz v2, :cond_38

    .line 201
    iget v3, v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    if-ne v3, v0, :cond_35

    iget-object v3, v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->key:Lorg/apache/xml/dtm/ref/ExtendedType;

    iget-object v4, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    invoke-virtual {v3, v4}, Lorg/apache/xml/dtm/ref/ExtendedType;->equals(Lorg/apache/xml/dtm/ref/ExtendedType;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 202
    iget p0, v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->value:I

    return p0

    .line 199
    :cond_35
    iget-object v2, v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    goto :goto_22

    :cond_38
    if-eqz p4, :cond_3c

    const/4 p0, -0x1

    return p0

    .line 211
    :cond_3c
    iget p4, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    iget v2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    if-le p4, v2, :cond_4c

    .line 212
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->rehash()V

    .line 213
    iget p4, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    rem-int v1, v0, p4

    if-gez v1, :cond_4c

    neg-int v1, v1

    .line 219
    :cond_4c
    new-instance p4, Lorg/apache/xml/dtm/ref/ExtendedType;

    invoke-direct {p4, p3, p1, p2, v0}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 222
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    array-length p2, p1

    iget p3, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    if-ne p2, p3, :cond_64

    .line 223
    array-length p2, p1

    mul-int/lit8 p2, p2, 0x2

    new-array p2, p2, [Lorg/apache/xml/dtm/ref/ExtendedType;

    .line 224
    array-length p3, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iput-object p2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    .line 229
    :cond_64
    iget-object p1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    iget p2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    aput-object p4, p1, p2

    .line 233
    new-instance p1, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    iget-object p3, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aget-object p3, p3, v1

    invoke-direct {p1, p4, p2, v0, p3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;-><init>(Lorg/apache/xml/dtm/ref/ExtendedType;IILorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;)V

    .line 234
    iget-object p2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    aput-object p1, p2, v1

    .line 236
    iget p1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    return p1
.end method

.method public greylist getExtendedTypes()[Lorg/apache/xml/dtm/ref/ExtendedType;
    .registers 1

    .line 367
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    return-object p0
.end method

.method public greylist getLocalName(I)Ljava/lang/String;
    .registers 2

    .line 291
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final greylist getLocalNameID(I)I
    .registers 3

    .line 303
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    return p1
.end method

.method public greylist getNamespace(I)Ljava/lang/String;
    .registers 2

    .line 319
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object p0

    .line 320
    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p0, 0x0

    :cond_11
    return-object p0
.end method

.method public final greylist getNamespaceID(I)I
    .registers 3

    .line 332
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    return p1
.end method

.method public greylist getSize()I
    .registers 1

    .line 357
    iget p0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    return p0
.end method

.method public final greylist getType(I)S
    .registers 2

    .line 347
    iget-object p0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    move-result p0

    int-to-short p0, p0

    return p0
.end method
