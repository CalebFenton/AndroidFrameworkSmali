.class public Lorg/apache/xml/utils/StringToIntTable;
.super Ljava/lang/Object;
.source "StringToIntTable.java"


# static fields
.field public static final INVALID_KEY:I = -0x2710


# instance fields
.field private m_blocksize:I

.field private m_firstFree:I

.field private m_map:[Ljava/lang/String;

.field private m_mapSize:I

.field private m_values:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@6
    .line 57
    const/16 v0, 0x8

    #@8
    iput v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    #@a
    .line 58
    iget v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    #@c
    iput v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    #@e
    .line 59
    iget v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    #@10
    new-array v0, v0, [Ljava/lang/String;

    #@12
    iput-object v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    #@14
    .line 60
    iget v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    #@16
    new-array v0, v0, [I

    #@18
    iput-object v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    #@1a
    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "blocksize"    # I

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@6
    .line 71
    iput p1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    #@8
    .line 72
    iput p1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    #@a
    .line 73
    new-array v0, p1, [Ljava/lang/String;

    #@c
    iput-object v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    #@e
    .line 74
    iget v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    #@10
    new-array v0, v0, [I

    #@12
    iput-object v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    #@14
    .line 68
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 171
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 173
    iget-object v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    #@7
    aget-object v1, v1, v0

    #@9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 174
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 177
    :cond_1
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method public final get(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 132
    iget-object v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    #@7
    aget-object v1, v1, v0

    #@9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 133
    iget-object v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    #@11
    aget v1, v1, v0

    #@13
    return v1

    #@14
    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 136
    :cond_1
    const/16 v1, -0x2710

    #@19
    return v1
.end method

.method public final getIgnoreCase(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, -0x2710

    #@2
    .line 149
    if-nez p1, :cond_0

    #@4
    .line 150
    return v2

    #@5
    .line 152
    :cond_0
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@8
    if-ge v0, v1, :cond_2

    #@a
    .line 154
    iget-object v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    #@c
    aget-object v1, v1, v0

    #@e
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_1

    #@14
    .line 155
    iget-object v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    #@16
    aget v1, v1, v0

    #@18
    return v1

    #@19
    .line 152
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 158
    :cond_2
    return v2
.end method

.method public final getLength()I
    .locals 1

    #@0
    .prologue
    .line 84
    iget v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@2
    return v0
.end method

.method public final keys()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 187
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@2
    new-array v1, v2, [Ljava/lang/String;

    #@4
    .line 189
    .local v1, "keysArr":[Ljava/lang/String;
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@7
    if-ge v0, v2, :cond_0

    #@9
    .line 191
    iget-object v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    #@b
    aget-object v2, v2, v0

    #@d
    aput-object v2, v1, v0

    #@f
    .line 189
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 194
    :cond_0
    return-object v1
.end method

.method public final put(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 96
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    #@7
    if-lt v2, v3, :cond_0

    #@9
    .line 98
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    #@b
    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_blocksize:I

    #@d
    add-int/2addr v2, v3

    #@e
    iput v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    #@10
    .line 100
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    #@12
    new-array v0, v2, [Ljava/lang/String;

    #@14
    .line 102
    .local v0, "newMap":[Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    #@16
    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@18
    add-int/lit8 v3, v3, 0x1

    #@1a
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 104
    iput-object v0, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    #@1f
    .line 106
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_mapSize:I

    #@21
    new-array v1, v2, [I

    #@23
    .line 108
    .local v1, "newValues":[I
    iget-object v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    #@25
    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@27
    add-int/lit8 v3, v3, 0x1

    #@29
    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@2c
    .line 110
    iput-object v1, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    #@2e
    .line 113
    .end local v0    # "newMap":[Ljava/lang/String;
    .end local v1    # "newValues":[I
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    #@30
    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@32
    aput-object p1, v2, v3

    #@34
    .line 114
    iget-object v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_values:[I

    #@36
    iget v3, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@38
    aput p2, v2, v3

    #@3a
    .line 116
    iget v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@3c
    add-int/lit8 v2, v2, 0x1

    #@3e
    iput v2, p0, Lorg/apache/xml/utils/StringToIntTable;->m_firstFree:I

    #@40
    .line 93
    return-void
.end method
