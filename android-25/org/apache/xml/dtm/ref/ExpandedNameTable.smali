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
.field public static final ATTRIBUTE:I = 0x2

.field public static final CDATA_SECTION:I = 0x4

.field public static final COMMENT:I = 0x8

.field public static final DOCUMENT:I = 0x9

.field public static final DOCUMENT_FRAGMENT:I = 0xb

.field public static final DOCUMENT_TYPE:I = 0xa

.field public static final ELEMENT:I = 0x1

.field public static final ENTITY:I = 0x6

.field public static final ENTITY_REFERENCE:I = 0x5

.field public static final NAMESPACE:I = 0xd

.field public static final NOTATION:I = 0xc

.field public static final PROCESSING_INSTRUCTION:I = 0x7

.field public static final TEXT:I = 0x3

.field private static m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

.field private static m_initialCapacity:I

.field private static m_initialSize:I

.field private static m_loadFactor:F


# instance fields
.field hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

.field private m_capacity:I

.field private m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

.field private m_nextType:I

.field private m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

.field private m_threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xe

    #@2
    .line 44
    const/16 v1, 0x80

    #@4
    sput v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialSize:I

    #@6
    .line 77
    const/high16 v1, 0x3f400000    # 0.75f

    #@8
    sput v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    #@a
    .line 83
    const/16 v1, 0xcb

    #@c
    sput v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialCapacity:I

    #@e
    .line 108
    new-array v1, v5, [Lorg/apache/xml/dtm/ref/ExtendedType;

    #@10
    sput-object v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@12
    .line 110
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    #@15
    .line 112
    sget-object v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@17
    new-instance v2, Lorg/apache/xml/dtm/ref/ExtendedType;

    #@19
    const-string/jumbo v3, ""

    #@1c
    const-string/jumbo v4, ""

    #@1f
    invoke-direct {v2, v0, v3, v4}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@22
    aput-object v2, v1, v0

    #@24
    .line 110
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 37
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    new-instance v0, Lorg/apache/xml/dtm/ref/ExtendedType;

    #@5
    const-string/jumbo v1, ""

    #@8
    const-string/jumbo v2, ""

    #@b
    const/4 v3, -0x1

    #@c
    invoke-direct {v0, v3, v1, v2}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@f
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    #@11
    .line 121
    sget v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialCapacity:I

    #@13
    iput v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    #@15
    .line 122
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    #@17
    int-to-float v0, v0

    #@18
    sget v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    #@1a
    mul-float/2addr v0, v1

    #@1b
    float-to-int v0, v0

    #@1c
    iput v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    #@1e
    .line 123
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    #@20
    new-array v0, v0, [Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@22
    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@24
    .line 125
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->initExtendedTypes()V

    #@27
    .line 119
    return-void
.end method

.method private initExtendedTypes()V
    .locals 6

    #@0
    .prologue
    const/16 v5, 0xe

    #@2
    .line 135
    sget v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_initialSize:I

    #@4
    new-array v1, v1, [Lorg/apache/xml/dtm/ref/ExtendedType;

    #@6
    iput-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@8
    .line 136
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    #@b
    .line 137
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@d
    sget-object v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@f
    aget-object v2, v2, v0

    #@11
    aput-object v2, v1, v0

    #@13
    .line 138
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@15
    new-instance v2, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@17
    sget-object v3, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_defaultExtendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@19
    aget-object v3, v3, v0

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-direct {v2, v3, v0, v0, v4}, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;-><init>(Lorg/apache/xml/dtm/ref/ExtendedType;IILorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;)V

    #@1f
    aput-object v2, v1, v0

    #@21
    .line 136
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 141
    :cond_0
    iput v5, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    #@26
    .line 133
    return-void
.end method

.method private rehash()V
    .locals 9

    #@0
    .prologue
    .line 247
    iget v5, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    #@2
    .line 248
    .local v5, "oldCapacity":I
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@4
    .line 250
    .local v6, "oldTable":[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    mul-int/lit8 v7, v5, 0x2

    #@6
    add-int/lit8 v2, v7, 0x1

    #@8
    .line 251
    .local v2, "newCapacity":I
    iput v2, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    #@a
    .line 252
    int-to-float v7, v2

    #@b
    sget v8, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_loadFactor:F

    #@d
    mul-float/2addr v7, v8

    #@e
    float-to-int v7, v7

    #@f
    iput v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    #@11
    .line 254
    new-array v7, v2, [Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@13
    iput-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@15
    .line 255
    add-int/lit8 v1, v5, -0x1

    #@17
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    #@19
    .line 257
    aget-object v4, v6, v1

    #@1b
    .local v4, "old":Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    :goto_1
    if-eqz v4, :cond_1

    #@1d
    .line 259
    move-object v0, v4

    #@1e
    .line 260
    .local v0, "e":Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    iget-object v4, v4, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@20
    .line 262
    iget v7, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    #@22
    rem-int v3, v7, v2

    #@24
    .line 263
    .local v3, "newIndex":I
    if-gez v3, :cond_0

    #@26
    .line 264
    neg-int v3, v3

    #@27
    .line 266
    :cond_0
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@29
    aget-object v7, v7, v3

    #@2b
    iput-object v7, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@2d
    .line 267
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@2f
    aput-object v0, v7, v3

    #@31
    goto :goto_1

    #@32
    .line 255
    .end local v0    # "e":Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    .end local v3    # "newIndex":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@34
    goto :goto_0

    #@35
    .line 245
    .end local v4    # "old":Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    :cond_2
    return-void
.end method


# virtual methods
.method public getExpandedTypeID(I)I
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 280
    return p1
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "type"    # I

    #@0
    .prologue
    .line 158
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;IZ)I
    .locals 9
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "searchOnly"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 181
    if-nez p1, :cond_0

    #@3
    .line 182
    const-string/jumbo p1, ""

    #@6
    .line 183
    :cond_0
    if-nez p2, :cond_1

    #@8
    .line 184
    const-string/jumbo p2, ""

    #@b
    .line 187
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@e
    move-result v6

    #@f
    add-int/2addr v6, p3

    #@10
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    #@13
    move-result v7

    #@14
    add-int v2, v6, v7

    #@16
    .line 190
    .local v2, "hash":I
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    #@18
    invoke-virtual {v6, p3, p1, p2, v2}, Lorg/apache/xml/dtm/ref/ExtendedType;->redefine(ILjava/lang/String;Ljava/lang/String;I)V

    #@1b
    .line 193
    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    #@1d
    rem-int v3, v2, v6

    #@1f
    .line 194
    .local v3, "index":I
    if-gez v3, :cond_2

    #@21
    .line 195
    neg-int v3, v3

    #@22
    .line 199
    :cond_2
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@24
    aget-object v0, v6, v3

    #@26
    .local v0, "e":Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    :goto_0
    if-eqz v0, :cond_4

    #@28
    .line 201
    iget v6, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    #@2a
    if-ne v6, v2, :cond_3

    #@2c
    iget-object v6, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->key:Lorg/apache/xml/dtm/ref/ExtendedType;

    #@2e
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->hashET:Lorg/apache/xml/dtm/ref/ExtendedType;

    #@30
    invoke-virtual {v6, v7}, Lorg/apache/xml/dtm/ref/ExtendedType;->equals(Lorg/apache/xml/dtm/ref/ExtendedType;)Z

    #@33
    move-result v6

    #@34
    if-eqz v6, :cond_3

    #@36
    .line 202
    iget v6, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->value:I

    #@38
    return v6

    #@39
    .line 199
    :cond_3
    iget-object v0, v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;->next:Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@3b
    goto :goto_0

    #@3c
    .line 205
    :cond_4
    if-eqz p4, :cond_5

    #@3e
    .line 207
    const/4 v6, -0x1

    #@3f
    return v6

    #@40
    .line 211
    :cond_5
    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    #@42
    iget v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_threshold:I

    #@44
    if-le v6, v7, :cond_6

    #@46
    .line 212
    invoke-direct {p0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->rehash()V

    #@49
    .line 213
    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_capacity:I

    #@4b
    rem-int v3, v2, v6

    #@4d
    .line 214
    if-gez v3, :cond_6

    #@4f
    .line 215
    neg-int v3, v3

    #@50
    .line 219
    :cond_6
    new-instance v5, Lorg/apache/xml/dtm/ref/ExtendedType;

    #@52
    invoke-direct {v5, p3, p1, p2, v2}, Lorg/apache/xml/dtm/ref/ExtendedType;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    #@55
    .line 222
    .local v5, "newET":Lorg/apache/xml/dtm/ref/ExtendedType;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@57
    array-length v6, v6

    #@58
    iget v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    #@5a
    if-ne v6, v7, :cond_7

    #@5c
    .line 223
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@5e
    array-length v6, v6

    #@5f
    mul-int/lit8 v6, v6, 0x2

    #@61
    new-array v4, v6, [Lorg/apache/xml/dtm/ref/ExtendedType;

    #@63
    .line 224
    .local v4, "newArray":[Lorg/apache/xml/dtm/ref/ExtendedType;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@65
    .line 225
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@67
    array-length v7, v7

    #@68
    .line 224
    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@6b
    .line 226
    iput-object v4, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@6d
    .line 229
    .end local v4    # "newArray":[Lorg/apache/xml/dtm/ref/ExtendedType;
    :cond_7
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@6f
    iget v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    #@71
    aput-object v5, v6, v7

    #@73
    .line 233
    new-instance v1, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@75
    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    #@77
    iget-object v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@79
    aget-object v7, v7, v3

    #@7b
    invoke-direct {v1, v5, v6, v2, v7}, Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;-><init>(Lorg/apache/xml/dtm/ref/ExtendedType;IILorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;)V

    #@7e
    .line 234
    .local v1, "entry":Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;
    iget-object v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_table:[Lorg/apache/xml/dtm/ref/ExpandedNameTable$HashEntry;

    #@80
    aput-object v1, v6, v3

    #@82
    .line 236
    iget v6, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    #@84
    add-int/lit8 v7, v6, 0x1

    #@86
    iput v7, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    #@88
    return v6
.end method

.method public getExtendedTypes()[Lorg/apache/xml/dtm/ref/ExtendedType;
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@2
    return-object v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1
    .param p1, "ExpandedNameID"    # I

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getLocalNameID(I)I
    .locals 2
    .param p1, "ExpandedNameID"    # I

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getLocalName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, ""

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 304
    const/4 v0, 0x0

    #@12
    return v0

    #@13
    .line 306
    :cond_0
    return p1
.end method

.method public getNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "ExpandedNameID"    # I

    #@0
    .prologue
    .line 319
    iget-object v1, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@2
    aget-object v1, v1, p1

    #@4
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 320
    .local v0, "namespace":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    const/4 v0, 0x0

    #@12
    .end local v0    # "namespace":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final getNamespaceID(I)I
    .locals 2
    .param p1, "ExpandedNameID"    # I

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNamespace()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    const-string/jumbo v1, ""

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 333
    const/4 v0, 0x0

    #@12
    return v0

    #@13
    .line 335
    :cond_0
    return p1
.end method

.method public getSize()I
    .locals 1

    #@0
    .prologue
    .line 357
    iget v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_nextType:I

    #@2
    return v0
.end method

.method public final getType(I)S
    .locals 1
    .param p1, "ExpandedNameID"    # I

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->m_extendedTypes:[Lorg/apache/xml/dtm/ref/ExtendedType;

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/ExtendedType;->getNodeType()I

    #@7
    move-result v0

    #@8
    int-to-short v0, v0

    #@9
    return v0
.end method
