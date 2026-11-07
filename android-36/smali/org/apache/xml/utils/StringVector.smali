.class public Lorg/apache/xml/utils/StringVector;
.super Ljava/lang/Object;
.source "StringVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final whitelist serialVersionUID:J = 0x4552a3bdbda168c4L


# instance fields
.field protected greylist m_blocksize:I

.field protected greylist m_firstFree:I

.field protected greylist m_map:[Ljava/lang/String;

.field protected greylist m_mapSize:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    const/16 v0, 0x8

    .line 51
    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    .line 52
    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 53
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 64
    iput p1, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    .line 65
    iput p1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 66
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final greylist addElement(Ljava/lang/String;)V
    .registers 6

    .line 97
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    if-lt v1, v2, :cond_19

    .line 99
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 101
    new-array v1, v2, [Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iput-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    .line 108
    :cond_19
    iget-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 110
    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return-void
.end method

.method public final greylist contains(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    move v1, v0

    .line 138
    :goto_5
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-ge v1, v2, :cond_18

    .line 140
    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    return v0
.end method

.method public final greylist containsIgnoreCase(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    move v1, v0

    .line 160
    :goto_5
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-ge v1, v2, :cond_18

    .line 162
    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    return v0
.end method

.method public final greylist elementAt(I)Ljava/lang/String;
    .registers 2

    .line 122
    iget-object p0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist getLength()I
    .registers 1

    .line 76
    iget p0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return p0
.end method

.method public final greylist peek()Ljava/lang/String;
    .registers 2

    .line 221
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-gtz v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final greylist pop()Ljava/lang/String;
    .registers 4

    .line 202
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 205
    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    .line 207
    iget-object p0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v2, p0, v0

    .line 209
    aput-object v1, p0, v0

    return-object v2
.end method

.method public final greylist push(Ljava/lang/String;)V
    .registers 6

    .line 177
    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    if-lt v1, v2, :cond_19

    .line 179
    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    .line 181
    new-array v1, v2, [Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iput-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    .line 188
    :cond_19
    iget-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 190
    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return-void
.end method

.method public final greylist size()I
    .registers 1

    .line 86
    iget p0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return p0
.end method
