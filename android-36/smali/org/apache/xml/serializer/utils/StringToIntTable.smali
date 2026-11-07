.class public final Lorg/apache/xml/serializer/utils/StringToIntTable;
.super Ljava/lang/Object;
.source "StringToIntTable.java"


# static fields
.field public static final greylist INVALID_KEY:I = -0x2710


# instance fields
.field private greylist m_blocksize:I

.field private greylist m_firstFree:I

.field private greylist m_map:[Ljava/lang/String;

.field private greylist m_mapSize:I

.field private greylist m_values:[I


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    const/16 v0, 0x8

    .line 64
    iput v0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_blocksize:I

    .line 65
    iput v0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_mapSize:I

    .line 66
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    .line 67
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_values:[I

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    .line 78
    iput p1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_blocksize:I

    .line 79
    iput p1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_mapSize:I

    .line 80
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    .line 81
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_values:[I

    return-void
.end method


# virtual methods
.method public final greylist contains(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 178
    :goto_2
    iget v2, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    if-ge v1, v2, :cond_15

    .line 180
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return v0
.end method

.method public final greylist get(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 137
    :goto_1
    iget v1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    if-ge v0, v1, :cond_17

    .line 139
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 140
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_values:[I

    aget p0, p0, v0

    return p0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    const/16 p0, -0x2710

    return p0
.end method

.method public final greylist getIgnoreCase(Ljava/lang/String;)I
    .registers 5

    const/16 v0, -0x2710

    if-nez p1, :cond_5

    return v0

    :cond_5
    const/4 v1, 0x0

    .line 159
    :goto_6
    iget v2, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    if-ge v1, v2, :cond_1c

    .line 161
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 162
    iget-object p0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_values:[I

    aget p0, p0, v1

    return p0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return v0
.end method

.method public final greylist getLength()I
    .registers 1

    .line 91
    iget p0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    return p0
.end method

.method public final greylist keys()[Ljava/lang/String;
    .registers 4

    .line 194
    iget v0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 196
    :goto_5
    iget v2, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    if-ge v1, v2, :cond_12

    .line 198
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    return-object v0
.end method

.method public final greylist put(Ljava/lang/String;I)V
    .registers 7

    .line 103
    iget v0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_mapSize:I

    if-lt v1, v2, :cond_28

    .line 105
    iget v1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_blocksize:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_mapSize:I

    .line 107
    new-array v1, v2, [Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    iput-object v1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    .line 113
    iget v0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_mapSize:I

    new-array v0, v0, [I

    .line 115
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_values:[I

    iget v2, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_values:[I

    .line 120
    :cond_28
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_map:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    aput-object p1, v0, v1

    .line 121
    iget-object p1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_values:[I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 123
    iput v1, p0, Lorg/apache/xml/serializer/utils/StringToIntTable;->m_firstFree:I

    return-void
.end method
