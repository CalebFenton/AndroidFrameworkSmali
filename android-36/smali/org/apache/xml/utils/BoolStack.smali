.class public final Lorg/apache/xml/utils/BoolStack;
.super Ljava/lang/Object;
.source "BoolStack.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private greylist m_allocatedSize:I

.field private greylist m_index:I

.field private greylist m_values:[Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    const/16 v0, 0x20

    .line 46
    invoke-direct {p0, v0}, Lorg/apache/xml/utils/BoolStack;-><init>(I)V

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    .line 58
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    return-void
.end method

.method private greylist grow()V
    .registers 5

    .line 187
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    .line 189
    new-array v0, v0, [Z

    .line 191
    iget-object v1, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget v2, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iput-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    return-void
.end method


# virtual methods
.method public final greylist clear()V
    .registers 2

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 199
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public greylist isEmpty()Z
    .registers 2

    .line 177
    iget p0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public final greylist peek()Z
    .registers 2

    .line 144
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget p0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    aget-boolean p0, v0, p0

    return p0
.end method

.method public final greylist peekOrFalse()Z
    .registers 3

    .line 155
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_a

    iget-object p0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final greylist peekOrTrue()Z
    .registers 3

    .line 166
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_a

    iget-object p0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public final greylist pop()Z
    .registers 4

    .line 106
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    aget-boolean p0, v0, v1

    return p0
.end method

.method public final greylist popAndTop()Z
    .registers 2

    .line 119
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    if-ltz v0, :cond_d

    .line 121
    iget-object p0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final greylist push(Z)Z
    .registers 4

    .line 91
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_b

    .line 92
    invoke-direct {p0}, Lorg/apache/xml/utils/BoolStack;->grow()V

    .line 94
    :cond_b
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    aput-boolean p1, v0, v1

    return p1
.end method

.method public final greylist setTop(Z)V
    .registers 3

    .line 132
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    iget p0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    aput-boolean p1, v0, p0

    return-void
.end method

.method public final greylist size()I
    .registers 1

    .line 69
    iget p0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
