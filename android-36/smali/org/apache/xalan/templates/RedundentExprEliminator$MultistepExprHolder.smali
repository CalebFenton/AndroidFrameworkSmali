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
.field greylist m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

.field greylist m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

.field final greylist m_stepCount:I

.field final synthetic greylist this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;


# direct methods
.method constructor greylist <init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1322
    iput-object p1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1323
    iput-object p2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    if-eqz p2, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 1324
    :goto_c
    const-string p2, "exprOwner can not be null!"

    invoke-static {p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 1325
    iput p3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    .line 1326
    iput-object p4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    return-void
.end method


# virtual methods
.method greylist addInSortedOrder(Lorg/apache/xpath/ExpressionOwner;I)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .registers 8

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    :goto_3
    if-eqz v1, :cond_1c

    .line 1344
    iget v3, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    if-lt p2, v3, :cond_16

    .line 1346
    new-instance v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    invoke-direct {v0, v3, p1, p2, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    if-nez v2, :cond_13

    return-object v0

    .line 1350
    :cond_13
    iput-object v0, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    return-object p0

    .line 1355
    :cond_16
    iget-object v2, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_3

    .line 1358
    :cond_1c
    new-instance v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->this$0:Lorg/apache/xalan/templates/RedundentExprEliminator;

    invoke-direct {v1, v3, p1, p2, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    iput-object v1, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    return-object p0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1311
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected greylist diagnose()V
    .registers 4

    .line 1418
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found multistep iterators: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1f
    :goto_1f
    if-eqz p0, :cond_45

    .line 1422
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1423
    iget-object p0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    if-eqz p0, :cond_1f

    .line 1425
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1f

    .line 1427
    :cond_45
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method greylist getLength()I
    .registers 2

    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 1408
    iget-object p0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_1

    :cond_8
    return v0
.end method

.method greylist unlink(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .registers 6

    const/4 v0, 0x0

    move-object v1, p0

    move-object v2, v0

    :goto_3
    if-eqz v1, :cond_19

    if-ne v1, p1, :cond_13

    if-nez v2, :cond_c

    .line 1382
    iget-object p0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_10

    .line 1384
    :cond_c
    iget-object p1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    iput-object p1, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 1386
    :goto_10
    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    return-object p0

    .line 1391
    :cond_13
    iget-object v2, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_3

    :cond_19
    const/4 p0, 0x0

    .line 1394
    const-string p1, "unlink failed!!!"

    invoke-static {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    return-object v0
.end method
