.class Lorg/apache/xml/serializer/NamespaceMappings$Stack;
.super Ljava/lang/Object;
.source "NamespaceMappings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/NamespaceMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stack"
.end annotation


# instance fields
.field greylist m_stack:[Ljava/lang/Object;

.field private greylist max:I

.field final synthetic greylist this$0:Lorg/apache/xml/serializer/NamespaceMappings;

.field private greylist top:I


# direct methods
.method public constructor greylist <init>(Lorg/apache/xml/serializer/NamespaceMappings;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 393
    iput-object p1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->this$0:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 375
    iput p1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    const/16 p1, 0x14

    .line 376
    iput p1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    .line 377
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public greylist clear()V
    .registers 4

    const/4 v0, 0x0

    .line 443
    :goto_1
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gt v0, v1, :cond_d

    .line 444
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v0, -0x1

    .line 445
    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 380
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->this$0:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    .line 381
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    iput v1, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    .line 382
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    iput v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    .line 383
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 384
    :goto_14
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gt v1, v2, :cond_23

    .line 387
    iget-object v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_23
    return-object v0
.end method

.method public greylist empty()Z
    .registers 1

    .line 439
    iget p0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist getElement(I)Ljava/lang/Object;
    .registers 2

    .line 449
    iget-object p0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist isEmpty()Z
    .registers 1

    .line 436
    iget p0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public greylist peek()Ljava/lang/Object;
    .registers 2

    .line 423
    iget v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-ltz v0, :cond_9

    .line 424
    iget-object p0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist peek(I)Ljava/lang/Object;
    .registers 2

    .line 432
    iget-object p0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public greylist pop()Ljava/lang/Object;
    .registers 3

    .line 411
    iget v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-ltz v0, :cond_d

    .line 412
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    aget-object v1, v1, v0

    add-int/lit8 v0, v0, -0x1

    .line 414
    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    return-object v1

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist push(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 397
    iget v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    .line 398
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    if-gt v1, v0, :cond_1a

    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 400
    new-array v2, v0, [Ljava/lang/Object;

    .line 401
    iget-object v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    .line 403
    iput-object v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    .line 405
    :cond_1a
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget p0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    aput-object p1, v0, p0

    return-object p1
.end method
