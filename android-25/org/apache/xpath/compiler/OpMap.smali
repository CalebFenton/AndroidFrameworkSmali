.class public Lorg/apache/xpath/compiler/OpMap;
.super Ljava/lang/Object;
.source "OpMap.java"


# static fields
.field static final BLOCKTOKENQUEUESIZE:I = 0x1f4

.field public static final MAPINDEX_LENGTH:I = 0x1

.field static final MAXTOKENQUEUESIZE:I = 0x1f4


# instance fields
.field protected m_currentPattern:Ljava/lang/String;

.field m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

.field m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x1f4

    #@2
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 75
    new-instance v0, Lorg/apache/xml/utils/ObjectVector;

    #@7
    invoke-direct {v0, v1, v1}, Lorg/apache/xml/utils/ObjectVector;-><init>(II)V

    #@a
    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@c
    .line 121
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@f
    .line 32
    return-void
.end method

.method public static getFirstChildPos(I)I
    .locals 1
    .param p0, "opPos"    # I

    #@0
    .prologue
    .line 333
    add-int/lit8 v0, p0, 0x2

    #@2
    return v0
.end method

.method public static getFirstChildPosOfStep(I)I
    .locals 1
    .param p0, "opPos"    # I

    #@0
    .prologue
    .line 369
    add-int/lit8 v0, p0, 0x3

    #@2
    return v0
.end method

.method public static getNextOpPos([II)I
    .locals 1
    .param p0, "opMap"    # [I
    .param p1, "opPos"    # I

    #@0
    .prologue
    .line 258
    add-int/lit8 v0, p1, 0x1

    #@2
    aget v0, p0, v0

    #@4
    add-int/2addr v0, p1

    #@5
    return v0
.end method


# virtual methods
.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 320
    .local v0, "fmsg":Ljava/lang/String;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    #@6
    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@9
    throw v1
.end method

.method public getArgLength(I)I
    .locals 2
    .param p1, "opPos"    # I

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getArgLengthOfStep(I)I
    .locals 2
    .param p1, "opPos"    # I

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    add-int/lit8 v1, v1, 0x1

    #@6
    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@9
    move-result v0

    #@a
    add-int/lit8 v0, v0, -0x3

    #@c
    return v0
.end method

.method public getFirstPredicateOpPos(I)I
    .locals 5
    .param p1, "opPos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    .line 277
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@3
    invoke-virtual {v1, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@6
    move-result v0

    #@7
    .line 279
    .local v0, "stepType":I
    const/16 v1, 0x25

    #@9
    if-lt v0, v1, :cond_0

    #@b
    .line 280
    const/16 v1, 0x35

    #@d
    if-gt v0, v1, :cond_0

    #@f
    .line 282
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@11
    add-int/lit8 v2, p1, 0x2

    #@13
    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@16
    move-result v1

    #@17
    add-int/2addr v1, p1

    #@18
    return v1

    #@19
    .line 284
    :cond_0
    const/16 v1, 0x16

    #@1b
    if-lt v0, v1, :cond_1

    #@1d
    .line 285
    const/16 v1, 0x19

    #@1f
    if-gt v0, v1, :cond_1

    #@21
    .line 287
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@23
    add-int/lit8 v2, p1, 0x1

    #@25
    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@28
    move-result v1

    #@29
    add-int/2addr v1, p1

    #@2a
    return v1

    #@2b
    .line 289
    :cond_1
    if-ne v2, v0, :cond_2

    #@2d
    .line 291
    return v2

    #@2e
    .line 295
    :cond_2
    const-string/jumbo v1, "ER_UNKNOWN_OPCODE"

    #@31
    .line 296
    const/4 v2, 0x1

    #@32
    new-array v2, v2, [Ljava/lang/Object;

    #@34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    const/4 v4, 0x0

    #@39
    aput-object v3, v2, v4

    #@3b
    .line 295
    invoke-virtual {p0, v1, v2}, Lorg/apache/xpath/compiler/OpMap;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@3e
    .line 297
    const/4 v1, -0x1

    #@3f
    return v1
.end method

.method public getNextOpPos(I)I
    .locals 2
    .param p1, "opPos"    # I

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@2
    add-int/lit8 v1, p1, 0x1

    #@4
    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@7
    move-result v0

    #@8
    add-int/2addr v0, p1

    #@9
    return v0
.end method

.method public getNextStepPos(I)I
    .locals 7
    .param p1, "opPos"    # I

    #@0
    .prologue
    const/16 v5, 0x35

    #@2
    const/16 v4, 0x25

    #@4
    .line 213
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@7
    move-result v1

    #@8
    .line 215
    .local v1, "stepType":I
    if-lt v1, v4, :cond_0

    #@a
    .line 216
    if-gt v1, v5, :cond_0

    #@c
    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 220
    :cond_0
    const/16 v2, 0x16

    #@13
    if-lt v1, v2, :cond_4

    #@15
    .line 221
    const/16 v2, 0x19

    #@17
    if-gt v1, v2, :cond_4

    #@19
    .line 223
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    #@1c
    move-result v0

    #@1d
    .line 225
    .local v0, "newOpPos":I
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@20
    move-result v2

    #@21
    const/16 v3, 0x1d

    #@23
    if-ne v3, v2, :cond_1

    #@25
    .line 227
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getNextOpPos(I)I

    #@28
    move-result v0

    #@29
    goto :goto_0

    #@2a
    .line 230
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/xpath/compiler/OpMap;->getOp(I)I

    #@2d
    move-result v1

    #@2e
    .line 232
    if-lt v1, v4, :cond_2

    #@30
    .line 233
    if-le v1, v5, :cond_3

    #@32
    .line 235
    :cond_2
    const/4 v2, -0x1

    #@33
    return v2

    #@34
    .line 238
    :cond_3
    return v0

    #@35
    .line 242
    .end local v0    # "newOpPos":I
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    #@37
    .line 243
    const-string/jumbo v3, "ER_UNKNOWN_STEP"

    #@3a
    const/4 v4, 0x1

    #@3b
    new-array v4, v4, [Ljava/lang/Object;

    #@3d
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    const/4 v6, 0x0

    #@42
    aput-object v5, v4, v6

    #@44
    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    .line 242
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2
.end method

.method public getOp(I)I
    .locals 1
    .param p1, "opPos"    # I

    #@0
    .prologue
    .line 176
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOpMap()Lorg/apache/xpath/compiler/OpMapVector;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@2
    return-object v0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getStepLocalName(I)Ljava/lang/String;
    .locals 4
    .param p1, "opPosOfStep"    # I

    #@0
    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    #@3
    move-result v0

    #@4
    .line 426
    .local v0, "argLenOfStep":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 441
    const/4 v1, -0x2

    #@8
    .line 447
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    #@a
    .line 448
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@c
    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 429
    .end local v1    # "index":I
    :pswitch_0
    const/4 v1, -0x2

    #@16
    .line 430
    .restart local v1    # "index":I
    goto :goto_0

    #@17
    .line 432
    .end local v1    # "index":I
    :pswitch_1
    const/4 v1, -0x3

    #@18
    .line 433
    .restart local v1    # "index":I
    goto :goto_0

    #@19
    .line 435
    .end local v1    # "index":I
    :pswitch_2
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@1b
    add-int/lit8 v3, p1, 0x4

    #@1d
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@20
    move-result v1

    #@21
    .restart local v1    # "index":I
    goto :goto_0

    #@22
    .line 438
    .end local v1    # "index":I
    :pswitch_3
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@24
    add-int/lit8 v3, p1, 0x5

    #@26
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@29
    move-result v1

    #@2a
    .restart local v1    # "index":I
    goto :goto_0

    #@2b
    .line 449
    :cond_0
    const/4 v2, -0x3

    #@2c
    if-ne v2, v1, :cond_1

    #@2e
    .line 450
    const-string/jumbo v2, "*"

    #@31
    return-object v2

    #@32
    .line 452
    :cond_1
    const/4 v2, 0x0

    #@33
    return-object v2

    #@34
    .line 426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getStepNS(I)Ljava/lang/String;
    .locals 5
    .param p1, "opPosOfStep"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 394
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/OpMap;->getArgLengthOfStep(I)I

    #@4
    move-result v0

    #@5
    .line 397
    .local v0, "argLenOfStep":I
    const/4 v2, 0x3

    #@6
    if-ne v0, v2, :cond_2

    #@8
    .line 399
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@a
    add-int/lit8 v3, p1, 0x4

    #@c
    invoke-virtual {v2, v3}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@f
    move-result v1

    #@10
    .line 401
    .local v1, "index":I
    if-ltz v1, :cond_0

    #@12
    .line 402
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@14
    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Ljava/lang/String;

    #@1a
    return-object v2

    #@1b
    .line 403
    :cond_0
    const/4 v2, -0x3

    #@1c
    if-ne v2, v1, :cond_1

    #@1e
    .line 404
    const-string/jumbo v2, "*"

    #@21
    return-object v2

    #@22
    .line 406
    :cond_1
    return-object v4

    #@23
    .line 409
    .end local v1    # "index":I
    :cond_2
    return-object v4
.end method

.method public getStepTestType(I)I
    .locals 2
    .param p1, "opPosOfStep"    # I

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@2
    add-int/lit8 v1, p1, 0x3

    #@4
    invoke-virtual {v0, v1}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getToken(I)Ljava/lang/Object;
    .locals 1
    .param p1, "pos"    # I

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectVector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTokenQueue()Lorg/apache/xml/utils/ObjectVector;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@2
    return-object v0
.end method

.method public getTokenQueueSize()I
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectVector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setOp(II)V
    .locals 1
    .param p1, "opPos"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@2
    invoke-virtual {v0, p2, p1}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    #@5
    .line 185
    return-void
.end method

.method shrink()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 152
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->elementAt(I)I

    #@8
    move-result v0

    #@9
    .line 153
    .local v0, "n":I
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@b
    add-int/lit8 v2, v0, 0x4

    #@d
    invoke-virtual {v1, v2}, Lorg/apache/xpath/compiler/OpMapVector;->setToSize(I)V

    #@10
    .line 155
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@12
    invoke-virtual {v1, v3, v0}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    #@15
    .line 156
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@17
    add-int/lit8 v2, v0, 0x1

    #@19
    invoke-virtual {v1, v3, v2}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    #@1c
    .line 157
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_opMap:Lorg/apache/xpath/compiler/OpMapVector;

    #@1e
    add-int/lit8 v2, v0, 0x2

    #@20
    invoke-virtual {v1, v3, v2}, Lorg/apache/xpath/compiler/OpMapVector;->setElementAt(II)V

    #@23
    .line 160
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@25
    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectVector;->size()I

    #@28
    move-result v0

    #@29
    .line 161
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@2b
    add-int/lit8 v2, v0, 0x4

    #@2d
    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/ObjectVector;->setToSize(I)V

    #@30
    .line 163
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@32
    invoke-virtual {v1, v4, v0}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    #@35
    .line 164
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@37
    add-int/lit8 v2, v0, 0x1

    #@39
    invoke-virtual {v1, v4, v2}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    #@3c
    .line 165
    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMap;->m_tokenQueue:Lorg/apache/xml/utils/ObjectVector;

    #@3e
    add-int/lit8 v2, v0, 0x2

    #@40
    invoke-virtual {v1, v4, v2}, Lorg/apache/xml/utils/ObjectVector;->setElementAt(Ljava/lang/Object;I)V

    #@43
    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMap;->m_currentPattern:Ljava/lang/String;

    #@2
    return-object v0
.end method
