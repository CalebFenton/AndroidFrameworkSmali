.class public Lorg/apache/xpath/compiler/OpMap;
.super Ljava/lang/Object;
.source "OpMap.java"


# static fields
.field static final greylist BLOCKTOKENQUEUESIZE:I = 0x1f4

.field public static final greylist MAPINDEX_LENGTH:I = 0x1

.field static final greylist MAXTOKENQUEUESIZE:I = 0x1f4


# instance fields
.field protected greylist m_currentPattern:Ljava/lang/String;

.field greylist m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

.field greylist m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lorg/apache/xml/utils/ObjectVector;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1, v1}, Lorg/apache/xml/utils/ObjectVector;-><init>(II)V

    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    return-void
.end method

.method public static greylist getFirstChildPos(I)I
    .registers 1

    .line 0
    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static greylist getFirstChildPosOfStep(I)I
    .registers 1

    .line 0
    add-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static greylist getNextOpPos([II)I
    .registers 3

    add-int/lit8 v0, p1, 0x1

    .line 258
    aget p0, p0, v0

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public greylist error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 317
    invoke-static {p1, p2}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 320
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist getArgLength(I)I
    .registers 2

    .line 345
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public greylist getArgLengthOfStep(I)I
    .registers 2

    .line 357
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    return p0
.end method

.method public greylist getFirstPredicateOpPos(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-lt v0, v1, :cond_18

    const/16 v1, 0x35

    if-gt v0, v1, :cond_18

    .line 282
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    :goto_16
    add-int/2addr p1, p0

    return p1

    :cond_18
    const/16 v1, 0x16

    if-lt v0, v1, :cond_29

    const/16 v1, 0x19

    if-gt v0, v1, :cond_29

    .line 287
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    goto :goto_16

    :cond_29
    const/4 p1, -0x2

    if-ne p1, v0, :cond_2d

    return p1

    .line 296
    :cond_2d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 295
    const-string v0, "ER_UNKNOWN_OPCODE"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xpath/compiler/OpMap;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x1

    return p0
.end method

.method public greylist getNextOpPos(I)I
    .registers 3

    .line 200
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public greylist getNextStepPos(I)I
    .registers 6

    .line 213
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v0

    const/16 v1, 0x35

    const/16 v2, 0x25

    if-lt v0, v2, :cond_11

    if-gt v0, v1, :cond_11

    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result p0

    return p0

    :cond_11
    const/16 v3, 0x16

    if-lt v0, v3, :cond_36

    const/16 v3, 0x19

    if-gt v0, v3, :cond_36

    .line 223
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    :goto_1d
    const/16 v0, 0x1d

    .line 225
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result v3

    if-ne v0, v3, :cond_2a

    .line 227
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    move-result p1

    goto :goto_1d

    .line 230
    :cond_2a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    move-result p0

    if-lt p0, v2, :cond_34

    if-le p0, v1, :cond_33

    goto :goto_34

    :cond_33
    return p1

    :cond_34
    :goto_34
    const/4 p0, -0x1

    return p0

    .line 242
    :cond_36
    new-instance p0, Ljava/lang/RuntimeException;

    .line 243
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_UNKNOWN_STEP"

    invoke-static {v0, p1}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist getOp(I)I
    .registers 2

    .line 176
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public greylist getOpMap()Lorg/apache/xpath/compiler/OpMapVector;
    .registers 1

    .line 133
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    return-object p0
.end method

.method public greylist getPatternString()Ljava/lang/String;
    .registers 1

    .line 57
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getStepLocalName(I)Ljava/lang/String;
    .registers 6

    .line 421
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    const/4 v1, -0x3

    const/4 v2, -0x2

    if-eqz v0, :cond_25

    const/4 v3, 0x1

    if-eq v0, v3, :cond_24

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_12

    goto :goto_25

    .line 438
    :cond_12
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {v0, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v2

    goto :goto_25

    .line 435
    :cond_1b
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v2

    goto :goto_25

    :cond_24
    move v2, v1

    :cond_25
    :goto_25
    if-ltz v2, :cond_32

    .line 448
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {p0, v2}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    if-ne v1, v2, :cond_37

    .line 450
    const-string p0, "*"

    return-object p0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getStepNS(I)Ljava/lang/String;
    .registers 5

    .line 394
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_21

    .line 399
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result p1

    if-ltz p1, :cond_1b

    .line 402
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1b
    const/4 p0, -0x3

    if-ne p0, p1, :cond_21

    .line 404
    const-string p0, "*"

    return-object p0

    :cond_21
    return-object v2
.end method

.method public greylist getStepTestType(I)I
    .registers 2

    .line 381
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result p0

    return p0
.end method

.method public greylist getToken(I)Ljava/lang/Object;
    .registers 2

    .line 96
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public greylist getTokenQueue()Lorg/apache/xml/utils/ObjectVector;
    .registers 1

    .line 84
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    return-object p0
.end method

.method public greylist getTokenQueueSize()I
    .registers 1

    .line 111
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectVector;->size()I

    move-result p0

    return p0
.end method

.method public greylist setOp(II)V
    .registers 3

    .line 187
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    invoke-virtual {p0, p2, p1}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    return-void
.end method

.method greylist shrink()V
    .registers 5

    .line 152
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    move-result v0

    .line 153
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->setToSize(I)V

    .line 155
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    .line 156
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    .line 157
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v2, v0}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    .line 160
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectVector;->size()I

    move-result v0

    .line 161
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/ObjectVector;->setToSize(I)V

    .line 163
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 164
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    .line 165
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2, v0}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lorg/apache/xpath/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    return-object p0
.end method
