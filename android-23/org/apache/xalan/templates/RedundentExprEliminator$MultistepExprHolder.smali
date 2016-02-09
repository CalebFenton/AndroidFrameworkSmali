.class Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
.super Ljava/lang/Object;
.source "RedundentExprEliminator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/RedundentExprEliminator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultistepExprHolder"
.end annotation


# instance fields
.field m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

.field m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

.field final m_stepCount:I

.field final synthetic this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V
    .locals 2
    .param p1, "this$0"    # Lorg/apache/xalan/templates/RedundentExprEliminator;
    .param p2, "exprOwner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p3, "stepCount"    # I
    .param p4, "next"    # Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@0
    .prologue
    .line 1321
    iput-object p1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1323
    iput-object p2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@7
    .line 1324
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    const-string/jumbo v1, "exprOwner can not be null!"

    #@f
    invoke-static {v0, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    #@12
    .line 1325
    iput p3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    #@14
    .line 1326
    iput-object p4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@16
    .line 1321
    return-void

    #@17
    .line 1324
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method


# virtual methods
.method addInSortedOrder(Lorg/apache/xpath/ExpressionOwner;I)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 7
    .param p1, "exprOwner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "stepCount"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1339
    move-object v0, p0

    #@2
    .line 1340
    .local v0, "first":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    move-object v2, p0

    #@3
    .line 1341
    .local v2, "next":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/4 v3, 0x0

    #@4
    .line 1342
    :goto_0
    if-eqz v2, :cond_2

    #@6
    .line 1344
    iget v4, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    #@8
    if-lt p2, v4, :cond_1

    #@a
    .line 1346
    new-instance v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@c
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    #@e
    invoke-direct {v1, v4, p1, p2, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    #@11
    .line 1347
    .local v1, "newholder":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    if-nez v3, :cond_0

    #@13
    .line 1348
    move-object v0, v1

    #@14
    .line 1352
    :goto_1
    return-object v0

    #@15
    .line 1350
    :cond_0
    iput-object v1, v3, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@17
    goto :goto_1

    #@18
    .line 1354
    .end local v1    # "newholder":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_1
    move-object v3, v2

    #@19
    .line 1355
    .local v3, "prev":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    iget-object v2, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@1b
    goto :goto_0

    #@1c
    .line 1358
    .end local v3    # "prev":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_2
    new-instance v4, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@1e
    iget-object v5, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    #@20
    invoke-direct {v4, v5, p1, p2, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    #@23
    iput-object v4, v3, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@25
    .line 1359
    return-object v0
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
    .line 1311
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected diagnose()V
    .locals 4

    #@0
    .prologue
    .line 1418
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v3, "Found multistep iterators: "

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p0}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    #@11
    move-result v3

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    const-string/jumbo v3, "  "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@24
    .line 1419
    move-object v0, p0

    #@25
    .line 1420
    .local v0, "next":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    #@27
    .line 1422
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@29
    new-instance v2, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v3, ""

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    iget v3, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@42
    .line 1423
    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@44
    .line 1424
    if-eqz v0, :cond_0

    #@46
    .line 1425
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@48
    const-string/jumbo v2, ", "

    #@4b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@4e
    goto :goto_0

    #@4f
    .line 1427
    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@51
    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    #@54
    .line 1416
    return-void
.end method

.method getLength()I
    .locals 2

    #@0
    .prologue
    .line 1403
    const/4 v0, 0x0

    #@1
    .line 1404
    .local v0, "count":I
    move-object v1, p0

    #@2
    .line 1405
    .local v1, "next":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_0
    if-eqz v1, :cond_0

    #@4
    .line 1407
    add-int/lit8 v0, v0, 0x1

    #@6
    .line 1408
    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@8
    goto :goto_0

    #@9
    .line 1410
    :cond_0
    return v0
.end method

.method unlink(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 6
    .param p1, "itemToRemove"    # Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1374
    move-object v0, p0

    #@2
    .line 1375
    .local v0, "first":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    move-object v1, p0

    #@3
    .line 1376
    .local v1, "next":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/4 v2, 0x0

    #@4
    .line 1377
    :goto_0
    if-eqz v1, :cond_2

    #@6
    .line 1379
    if-ne v1, p1, :cond_1

    #@8
    .line 1381
    if-nez v2, :cond_0

    #@a
    .line 1382
    iget-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@c
    .line 1386
    :goto_1
    iput-object v5, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@e
    .line 1388
    return-object v0

    #@f
    .line 1384
    :cond_0
    iget-object v3, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@11
    iput-object v3, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@13
    goto :goto_1

    #@14
    .line 1390
    :cond_1
    move-object v2, v1

    #@15
    .line 1391
    .local v2, "prev":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@17
    goto :goto_0

    #@18
    .line 1394
    .end local v2    # "prev":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_2
    const-string/jumbo v3, "unlink failed!!!"

    #@1b
    const/4 v4, 0x0

    #@1c
    invoke-static {v4, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    #@1f
    .line 1395
    return-object v5
.end method
