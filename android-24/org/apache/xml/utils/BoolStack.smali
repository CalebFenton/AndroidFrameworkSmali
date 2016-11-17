.class public final Lorg/apache/xml/utils/BoolStack;
.super Ljava/lang/Object;
.source "BoolStack.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private m_allocatedSize:I

.field private m_index:I

.field private m_values:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 46
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Lorg/apache/xml/utils/BoolStack;-><init>(I)V

    #@5
    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    iput p1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    #@5
    .line 58
    new-array v0, p1, [Z

    #@7
    iput-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    #@9
    .line 59
    const/4 v0, -0x1

    #@a
    iput v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@c
    .line 54
    return-void
.end method

.method private grow()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 187
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    #@3
    mul-int/lit8 v1, v1, 0x2

    #@5
    iput v1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    #@7
    .line 189
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    #@9
    new-array v0, v1, [Z

    #@b
    .line 191
    .local v0, "newVector":[Z
    iget-object v1, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    #@d
    iget v2, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@f
    add-int/lit8 v2, v2, 0x1

    #@11
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@14
    .line 193
    iput-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    #@16
    .line 184
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    #@0
    .prologue
    .line 78
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@3
    .line 76
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 199
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .line 177
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public final peek()Z
    .locals 2

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    #@2
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@4
    aget-boolean v0, v0, v1

    #@6
    return v0
.end method

.method public final peekOrFalse()Z
    .locals 2

    #@0
    .prologue
    .line 155
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@2
    const/4 v1, -0x1

    #@3
    if-le v0, v1, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    #@7
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@9
    aget-boolean v0, v0, v1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public final peekOrTrue()Z
    .locals 2

    #@0
    .prologue
    .line 166
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@2
    const/4 v1, -0x1

    #@3
    if-le v0, v1, :cond_0

    #@5
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    #@7
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@9
    aget-boolean v0, v0, v1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public final pop()Z
    .locals 3

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    #@2
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@4
    add-int/lit8 v2, v1, -0x1

    #@6
    iput v2, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@8
    aget-boolean v0, v0, v1

    #@a
    return v0
.end method

.method public final popAndTop()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 119
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@3
    add-int/lit8 v1, v1, -0x1

    #@5
    iput v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@7
    .line 121
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@9
    if-ltz v1, :cond_0

    #@b
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    #@d
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@f
    aget-boolean v0, v0, v1

    #@11
    :cond_0
    return v0
.end method

.method public final push(Z)Z
    .locals 2
    .param p1, "val"    # Z

    #@0
    .prologue
    .line 91
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@2
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_allocatedSize:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 92
    invoke-direct {p0}, Lorg/apache/xml/utils/BoolStack;->grow()V

    #@b
    .line 94
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    #@d
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    iput v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@13
    aput-boolean p1, v0, v1

    #@15
    return p1
.end method

.method public final setTop(Z)V
    .locals 2
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/xml/utils/BoolStack;->m_values:[Z

    #@2
    iget v1, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@4
    aput-boolean p1, v0, v1

    #@6
    .line 130
    return-void
.end method

.method public final size()I
    .locals 1

    #@0
    .prologue
    .line 69
    iget v0, p0, Lorg/apache/xml/utils/BoolStack;->m_index:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    return v0
.end method
