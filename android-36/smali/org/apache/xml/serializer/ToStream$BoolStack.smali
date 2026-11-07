.class final Lorg/apache/xml/serializer/ToStream$BoolStack;
.super Ljava/lang/Object;
.source "ToStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ToStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BoolStack"
.end annotation


# instance fields
.field private greylist m_allocatedSize:I

.field private greylist m_index:I

.field private greylist m_values:[Z


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    const/16 v0, 0x20

    .line 3331
    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/ToStream$BoolStack;-><init>(I)V

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 2

    .line 3340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3342
    iput p1, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_allocatedSize:I

    .line 3343
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_values:[Z

    const/4 p1, -0x1

    .line 3344
    iput p1, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    return-void
.end method

.method private greylist grow()V
    .registers 5

    .line 3472
    iget v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_allocatedSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_allocatedSize:I

    .line 3474
    new-array v0, v0, [Z

    .line 3476
    iget-object v1, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_values:[Z

    iget v2, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3478
    iput-object v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_values:[Z

    return-void
.end method


# virtual methods
.method public final greylist clear()V
    .registers 2

    const/4 v0, -0x1

    .line 3363
    iput v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    return-void
.end method

.method public greylist isEmpty()Z
    .registers 2

    .line 3462
    iget p0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

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

    .line 3429
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_values:[Z

    iget p0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    aget-boolean p0, v0, p0

    return p0
.end method

.method public final greylist peekOrFalse()Z
    .registers 3

    .line 3440
    iget v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_a

    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_values:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final greylist peekOrTrue()Z
    .registers 3

    .line 3451
    iget v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_a

    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_values:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public final greylist pop()Z
    .registers 4

    .line 3391
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_values:[Z

    iget v1, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    aget-boolean p0, v0, v1

    return p0
.end method

.method public final greylist popAndTop()Z
    .registers 2

    .line 3404
    iget v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    if-ltz v0, :cond_d

    .line 3406
    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_values:[Z

    aget-boolean p0, p0, v0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final greylist push(Z)Z
    .registers 4

    .line 3376
    iget v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    iget v1, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_allocatedSize:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_b

    .line 3377
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToStream$BoolStack;->grow()V

    .line 3379
    :cond_b
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_values:[Z

    iget v1, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    aput-boolean p1, v0, v1

    return p1
.end method

.method public final greylist setTop(Z)V
    .registers 3

    .line 3417
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_values:[Z

    iget p0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    aput-boolean p1, v0, p0

    return-void
.end method

.method public final greylist size()I
    .registers 1

    .line 3354
    iget p0, p0, Lorg/apache/xml/serializer/ToStream$BoolStack;->m_index:I

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
