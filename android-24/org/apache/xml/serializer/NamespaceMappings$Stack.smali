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
.field m_stack:[Ljava/lang/Object;

.field private max:I

.field final synthetic this$0:Lorg/apache/xml/serializer/NamespaceMappings;

.field private top:I


# direct methods
.method public constructor <init>(Lorg/apache/xml/serializer/NamespaceMappings;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/xml/serializer/NamespaceMappings;

    #@0
    .prologue
    .line 392
    iput-object p1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->this$0:Lorg/apache/xml/serializer/NamespaceMappings;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 375
    const/4 v0, -0x1

    #@6
    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@8
    .line 376
    const/16 v0, 0x14

    #@a
    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    #@c
    .line 377
    iget v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    #@e
    new-array v0, v0, [Ljava/lang/Object;

    #@10
    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@12
    .line 392
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    #@0
    .prologue
    .line 443
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@3
    if-gt v0, v1, :cond_0

    #@5
    .line 444
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v2, v1, v0

    #@a
    .line 443
    add-int/lit8 v0, v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 445
    :cond_0
    const/4 v1, -0x1

    #@e
    iput v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@10
    .line 442
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 380
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    #@2
    iget-object v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->this$0:Lorg/apache/xml/serializer/NamespaceMappings;

    #@4
    invoke-direct {v0, v2}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    #@7
    .line 381
    .local v0, "clone":Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    #@9
    iput v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    #@b
    .line 382
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@d
    iput v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@f
    .line 383
    iget v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    #@11
    new-array v2, v2, [Ljava/lang/Object;

    #@13
    iput-object v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@15
    .line 384
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@18
    if-gt v1, v2, :cond_0

    #@1a
    .line 387
    iget-object v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@1c
    iget-object v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@1e
    aget-object v3, v3, v1

    #@20
    aput-object v3, v2, v1

    #@22
    .line 384
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 389
    :cond_0
    return-object v0
.end method

.method public empty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 439
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@3
    if-gez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public getElement(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 436
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@3
    if-gez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 423
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@2
    if-ltz v1, :cond_0

    #@4
    .line 424
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@6
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@8
    aget-object v0, v1, v2

    #@a
    .line 428
    :goto_0
    return-object v0

    #@b
    .line 427
    :cond_0
    const/4 v0, 0x0

    #@c
    .local v0, "o":Ljava/lang/Object;
    goto :goto_0
.end method

.method public peek(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I

    #@0
    .prologue
    .line 432
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 411
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@2
    if-ltz v1, :cond_0

    #@4
    .line 412
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@6
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@8
    aget-object v0, v1, v2

    #@a
    .line 414
    .local v0, "o":Ljava/lang/Object;
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@c
    add-int/lit8 v1, v1, -0x1

    #@e
    iput v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@10
    .line 418
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@11
    .line 417
    :cond_0
    const/4 v0, 0x0

    #@12
    .restart local v0    # "o":Ljava/lang/Object;
    goto :goto_0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 397
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@7
    .line 398
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    #@9
    iget v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@b
    if-gt v2, v3, :cond_0

    #@d
    .line 399
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    #@f
    mul-int/lit8 v2, v2, 0x2

    #@11
    add-int/lit8 v1, v2, 0x1

    #@13
    .line 400
    .local v1, "newMax":I
    new-array v0, v1, [Ljava/lang/Object;

    #@15
    .line 401
    .local v0, "newArray":[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@17
    iget v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    #@19
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1c
    .line 402
    iput v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    #@1e
    .line 403
    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@20
    .line 405
    .end local v0    # "newArray":[Ljava/lang/Object;
    .end local v1    # "newMax":I
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    #@22
    iget v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    #@24
    aput-object p1, v2, v3

    #@26
    .line 406
    return-object p1
.end method
