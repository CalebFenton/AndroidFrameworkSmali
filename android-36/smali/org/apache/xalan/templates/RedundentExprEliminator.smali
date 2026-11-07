.class public Lorg/apache/xalan/templates/RedundentExprEliminator;
.super Lorg/apache/xalan/templates/XSLTVisitor;
.source "RedundentExprEliminator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    }
.end annotation


# static fields
.field public static final greylist DEBUG:Z = false

.field public static final greylist DIAGNOSE_MULTISTEPLIST:Z = false

.field public static final greylist DIAGNOSE_NUM_PATHS_REDUCED:Z = false

.field static final greylist PSUEDOVARNAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/psuedovar"

.field private static greylist m_uniquePseudoVarID:I = 0x1


# instance fields
.field greylist m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

.field greylist m_absPaths:Ljava/util/Vector;

.field greylist m_isSameContext:Z

.field greylist m_paths:Ljava/util/Vector;

.field greylist m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Lorg/apache/xalan/templates/XSLTVisitor;-><init>()V

    .line 54
    new-instance v0, Lorg/apache/xalan/templates/AbsPathChecker;

    invoke-direct {v0}, Lorg/apache/xalan/templates/AbsPathChecker;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

    .line 66
    new-instance v0, Lorg/apache/xalan/templates/VarNameCollector;

    invoke-direct {v0}, Lorg/apache/xalan/templates/VarNameCollector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    return-void
.end method

.method private final greylist assertIsLocPathIterator(Lorg/apache/xpath/Expression;Lorg/apache/xpath/ExpressionOwner;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1244
    instance-of p0, p1, Lorg/apache/xpath/axes/LocPathIterator;

    if-nez p0, :cond_66

    .line 1247
    instance-of p0, p1, Lorg/apache/xpath/operations/Variable;

    const-string v0, "Programmer\'s assertion: expr1 not an iterator: "

    if-eqz p0, :cond_21

    .line 1249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/operations/Variable;

    .line 1250
    invoke-virtual {v0}, Lorg/apache/xpath/operations/Variable;->getQName()Lorg/apache/xml/utils/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_38

    .line 1254
    :cond_21
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1257
    :goto_38
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_66
    return-void
.end method

.method protected static greylist assertion(ZLjava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_3

    return-void

    .line 1290
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "ER_ASSERT_REDUNDENT_EXPR_ELIMINATOR"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static declared-synchronized greylist getPseudoVarID()I
    .registers 3

    const-class v0, Lorg/apache/xalan/templates/RedundentExprEliminator;

    monitor-enter v0

    .line 803
    :try_start_3
    sget v1, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method

.method private static greylist validateNewAddition(Ljava/util/Vector;Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1272
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p2, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const-string v3, "owner.getExpression() != path!!!"

    invoke-static {v0, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 1273
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v1

    :goto_15
    if-ge v3, v0, :cond_38

    .line 1277
    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xpath/ExpressionOwner;

    if-eq v4, p1, :cond_21

    move v5, v2

    goto :goto_22

    :cond_21
    move v5, v1

    .line 1278
    :goto_22
    const-string v6, "duplicate owner on the list!!!"

    invoke-static {v5, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 1279
    invoke-interface {v4}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v4

    if-eq v4, p2, :cond_2f

    move v4, v2

    goto :goto_30

    :cond_2f
    move v4, v1

    :goto_30
    const-string v5, "duplicate expression on the list!!!"

    invoke-static {v4, v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_38
    return-void
.end method


# virtual methods
.method protected greylist addVarDeclToElem(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Lorg/apache/xalan/templates/ElemVariable;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 902
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    .line 904
    iget-object v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 910
    iget-object v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/VarNameCollector;->getVarCount()I

    move-result v1

    if-lez v1, :cond_36

    .line 912
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 913
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    :goto_1a
    if-eqz v1, :cond_36

    .line 916
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xalan/templates/VarNameCollector;->doesOccur(Lorg/apache/xml/utils/QName;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 918
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    .line 919
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_36

    .line 922
    :cond_31
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    goto :goto_1a

    :cond_36
    :goto_36
    if-eqz v0, :cond_55

    .line 926
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v3, 0x29

    if-ne v3, v1, :cond_55

    .line 929
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isParam(Lorg/apache/xpath/ExpressionNode;)Z

    move-result p2

    if-eqz p2, :cond_47

    return-object v2

    :cond_47
    if-eqz v0, :cond_55

    .line 934
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 935
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result p2

    if-eq v3, p2, :cond_47

    .line 939
    :cond_55
    invoke-virtual {p1, p3, v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 940
    iget-object p0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/VarNameCollector;->reset()V

    return-object p3
.end method

.method protected greylist changePartToRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/axes/WalkingIterator;IZ)Lorg/apache/xpath/axes/LocPathIterator;
    .registers 9

    .line 442
    new-instance v0, Lorg/apache/xpath/operations/Variable;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Variable;-><init>()V

    .line 443
    invoke-virtual {v0, p1}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    .line 444
    invoke-virtual {v0, p4}, Lorg/apache/xpath/operations/Variable;->setIsGlobal(Z)V

    const/4 p1, 0x1

    if-eqz p4, :cond_22

    .line 446
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    .line 447
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object p0

    .line 448
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object p0

    .line 449
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lorg/apache/xpath/operations/Variable;->setIndex(I)V

    .line 453
    :cond_22
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    const/4 p4, 0x0

    move v1, p4

    :goto_28
    if-ge v1, p3, :cond_3b

    if-eqz p0, :cond_2e

    move v2, p1

    goto :goto_2f

    :cond_2e
    move v2, p4

    .line 456
    :goto_2f
    const-string v3, "Walker should not be null!"

    invoke-static {v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3b
    if-eqz p0, :cond_52

    .line 463
    new-instance p1, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {p1, p2}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    .line 464
    invoke-virtual {p1, v0}, Lorg/apache/xpath/axes/FilterExprWalker;->setInnerExpression(Lorg/apache/xpath/Expression;)V

    .line 465
    invoke-virtual {p1, p2}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 466
    invoke-virtual {p1, p0}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 467
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 468
    invoke-virtual {p2, p1}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    return-object p2

    .line 473
    :cond_52
    new-instance p0, Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;-><init>(Lorg/apache/xpath/Expression;)V

    .line 474
    invoke-virtual {p2}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-object p0
.end method

.method protected greylist changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 6

    .line 788
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p3, v0, :cond_a

    new-instance v0, Lorg/apache/xpath/operations/VariableSafeAbsRef;

    invoke-direct {v0}, Lorg/apache/xpath/operations/VariableSafeAbsRef;-><init>()V

    goto :goto_f

    :cond_a
    new-instance v0, Lorg/apache/xpath/operations/Variable;

    invoke-direct {v0}, Lorg/apache/xpath/operations/Variable;-><init>()V

    .line 789
    :goto_f
    invoke-virtual {v0, p1}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    .line 790
    iget-object p0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne p3, p0, :cond_28

    .line 792
    check-cast p4, Lorg/apache/xalan/templates/StylesheetRoot;

    .line 793
    invoke-virtual {p4}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object p0

    .line 796
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lorg/apache/xpath/operations/Variable;->setIndex(I)V

    .line 797
    invoke-virtual {v0, p1}, Lorg/apache/xpath/operations/Variable;->setIsGlobal(Z)V

    .line 799
    :cond_28
    invoke-interface {p2, v0}, Lorg/apache/xpath/ExpressionOwner;->setExpression(Lorg/apache/xpath/Expression;)V

    return-void
.end method

.method protected greylist countAncestors(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .registers 2

    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_a

    add-int/lit8 p0, p0, 0x1

    .line 407
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    goto :goto_1

    :cond_a
    return p0
.end method

.method protected greylist countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I
    .registers 2

    .line 753
    instance-of p0, p1, Lorg/apache/xpath/axes/WalkingIterator;

    if-eqz p0, :cond_15

    .line 755
    check-cast p1, Lorg/apache/xpath/axes/WalkingIterator;

    .line 756
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    const/4 p1, 0x0

    :goto_b
    if-eqz p0, :cond_14

    add-int/lit8 p1, p1, 0x1

    .line 761
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    goto :goto_b

    :cond_14
    return p1

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method protected greylist createGlobalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/StylesheetRoot;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 848
    new-instance p0, Lorg/apache/xalan/templates/ElemVariable;

    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    const/4 v0, 0x1

    .line 849
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemVariable;->setIsTopLevel(Z)V

    .line 850
    new-instance v0, Lorg/apache/xpath/XPath;

    invoke-direct {v0, p3}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    .line 851
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemVariable;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 852
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemVariable;->setName(Lorg/apache/xml/utils/QName;)V

    .line 854
    invoke-virtual {p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    move-result-object p1

    .line 855
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p2

    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/ElemVariable;->setIndex(I)V

    .line 856
    invoke-virtual {p1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method protected greylist createIteratorFromSteps(Lorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/WalkingIterator;
    .registers 5

    .line 489
    new-instance p0, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-virtual {p1}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 492
    :try_start_9
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xpath/axes/AxesWalker;

    .line 493
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 494
    invoke-virtual {p1, p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    const/4 v0, 0x1

    :goto_1a
    if-ge v0, p2, :cond_30

    .line 497
    invoke-virtual {p1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/axes/AxesWalker;

    .line 498
    invoke-virtual {p1, v1}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 499
    invoke-virtual {v1, p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    add-int/lit8 v0, v0, 0x1

    move-object p1, v1

    goto :goto_1a

    :cond_30
    const/4 p2, 0x0

    .line 502
    invoke-virtual {p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    :try_end_34
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_9 .. :try_end_34} :catch_35

    return-object p0

    :catch_35
    move-exception p0

    .line 506
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method protected greylist createLocalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 879
    new-instance v0, Lorg/apache/xalan/templates/ElemVariablePsuedo;

    invoke-direct {v0}, Lorg/apache/xalan/templates/ElemVariablePsuedo;-><init>()V

    .line 881
    new-instance v1, Lorg/apache/xpath/XPath;

    invoke-direct {v1, p3}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    .line 882
    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/ElemVariable;->setSelect(Lorg/apache/xpath/XPath;)V

    .line 883
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemVariable;->setName(Lorg/apache/xml/utils/QName;)V

    .line 885
    invoke-virtual {p0, p2, p3, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->addVarDeclToElem(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Lorg/apache/xalan/templates/ElemVariable;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object p0

    .line 887
    invoke-virtual {p3, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    return-object p0
.end method

.method protected greylist createMultistepExprList(Ljava/util/Vector;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .registers 9

    .line 557
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_7
    const/4 v4, 0x1

    if-ge v2, v0, :cond_2e

    .line 560
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xpath/ExpressionOwner;

    if-nez v5, :cond_13

    goto :goto_2b

    .line 565
    :cond_13
    invoke-interface {v5}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v6

    check-cast v6, Lorg/apache/xpath/axes/LocPathIterator;

    .line 566
    invoke-virtual {p0, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I

    move-result v6

    if-le v6, v4, :cond_2b

    if-nez v3, :cond_27

    .line 570
    new-instance v3, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    invoke-direct {v3, p0, v5, v6, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    goto :goto_2b

    .line 572
    :cond_27
    invoke-virtual {v3, v5, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->addInSortedOrder(Lorg/apache/xpath/ExpressionOwner;I)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v3

    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2e
    if-eqz v3, :cond_38

    .line 576
    invoke-virtual {v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result p0

    if-gt p0, v4, :cond_37

    goto :goto_38

    :cond_37
    return-object v3

    :cond_38
    :goto_38
    return-object v1
.end method

.method protected greylist createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 821
    new-instance v0, Lorg/apache/xml/utils/QName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPseudoVarID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://xml.apache.org/xalan/psuedovar"

    invoke-direct {v0, v2, v1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_25

    .line 825
    check-cast p1, Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createGlobalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/StylesheetRoot;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object p0

    return-object p0

    .line 829
    :cond_25
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createLocalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object p0

    return-object p0
.end method

.method protected greylist diagnoseLineNumber(Lorg/apache/xpath/Expression;)V
    .registers 4

    .line 284
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    .line 285
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected greylist diagnoseMultistepList(IIZ)V
    .registers 6

    if-lez p1, :cond_34

    .line 422
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found multistep matches: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-eqz p3, :cond_2f

    .line 425
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, " (global)"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 427
    :cond_2f
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    :cond_34
    return-void
.end method

.method protected greylist diagnoseNumPaths(Ljava/util/Vector;II)V
    .registers 6

    if-lez p2, :cond_6f

    .line 1221
    iget-object p0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    const-string v0, "Consolodated "

    const-string v1, "Eliminated "

    if-ne p1, p0, :cond_3d

    .line 1223
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " total paths!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1224
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " redundent paths!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 1229
    :cond_3d
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " total global paths!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1230
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " redundent global paths!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6f
    return-void
.end method

.method protected greylist eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .registers 11

    .line 123
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    move v4, v1

    :goto_6
    if-ge v4, v0, :cond_23

    .line 128
    invoke-virtual {p2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/apache/xpath/ExpressionOwner;

    if-eqz v5, :cond_1a

    add-int/lit8 v3, v4, 0x1

    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    .line 131
    invoke-virtual/range {v2 .. v7}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I

    goto :goto_1d

    :cond_1a
    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    :goto_1d
    add-int/lit8 v4, v4, 0x1

    move-object p0, v2

    move-object p1, v6

    move-object p2, v7

    goto :goto_6

    :cond_23
    move-object v2, p0

    move-object v6, p1

    move-object v7, p2

    .line 138
    invoke-virtual {v2, v6, v7}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateSharedPartialPaths(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    return-void
.end method

.method public greylist eleminateRedundentGlobals(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 3

    .line 105
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    return-void
.end method

.method public greylist eleminateRedundentLocals(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3

    .line 92
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    return-void
.end method

.method protected greylist eleminateSharedPartialPaths(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .registers 12

    .line 154
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createMultistepExprList(Ljava/util/Vector;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 160
    iget-object v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_d

    move v6, v2

    goto :goto_f

    :cond_d
    const/4 p2, 0x0

    move v6, p2

    .line 164
    :goto_f
    iget p2, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    sub-int/2addr p2, v2

    move v7, p2

    :goto_13
    if-lt v7, v2, :cond_2f

    move-object v4, v0

    move-object v5, v4

    :goto_17
    if-eqz v4, :cond_1d

    .line 170
    iget p2, v4, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    if-ge p2, v7, :cond_20

    :cond_1d
    move-object v3, p0

    move-object v8, p1

    goto :goto_29

    :cond_20
    move-object v3, p0

    move-object v8, p1

    .line 172
    invoke-virtual/range {v3 .. v8}, Lorg/apache/xalan/templates/RedundentExprEliminator;->matchAndEliminatePartialPaths(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;ZILorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-result-object v5

    .line 173
    iget-object v4, v4, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_17

    :goto_29
    add-int/lit8 v7, v7, -0x1

    move-object p0, v3

    move-object v0, v5

    move-object p1, v8

    goto :goto_13

    :cond_2f
    return-void
.end method

.method protected greylist findAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    .line 605
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 607
    invoke-interface {v1}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v4

    .line 610
    iget-object v5, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v5, :cond_16

    move v5, v6

    goto :goto_17

    :cond_16
    move v5, v7

    .line 611
    :goto_17
    check-cast v4, Lorg/apache/xpath/axes/LocPathIterator;

    .line 612
    invoke-virtual {v0, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I

    move-result v8

    const/4 v9, 0x0

    move v10, v7

    move-object v11, v9

    move-object v12, v11

    move/from16 v7, p1

    :goto_23
    if-ge v7, v3, :cond_52

    .line 615
    invoke-virtual {v2, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xpath/ExpressionOwner;

    if-eqz v13, :cond_4f

    .line 618
    invoke-interface {v13}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v14

    .line 619
    invoke-virtual {v14, v4}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v15

    if-eqz v15, :cond_4f

    .line 622
    check-cast v14, Lorg/apache/xpath/axes/LocPathIterator;

    if-nez v11, :cond_43

    .line 625
    new-instance v11, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    invoke-direct {v11, v0, v1, v8, v9}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    add-int/lit8 v10, v10, 0x1

    move-object v12, v11

    .line 629
    :cond_43
    new-instance v14, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    invoke-direct {v14, v0, v13, v8, v9}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    iput-object v14, v12, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 633
    invoke-virtual {v2, v9, v7}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/2addr v10, v6

    move-object v12, v14

    :cond_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_52
    if-nez v10, :cond_5d

    if-eqz v5, :cond_5d

    .line 644
    new-instance v11, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    invoke-direct {v11, v0, v1, v8, v9}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    add-int/lit8 v10, v10, 0x1

    :cond_5d
    if-eqz v11, :cond_8b

    if-eqz v5, :cond_64

    move-object/from16 v1, p4

    goto :goto_68

    .line 650
    :cond_64
    invoke-virtual {v0, v11}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 651
    :goto_68
    iget-object v3, v11, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {v3}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    check-cast v3, Lorg/apache/xpath/axes/LocPathIterator;

    .line 652
    invoke-virtual {v0, v1, v3, v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v3

    .line 655
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    :goto_78
    if-eqz v11, :cond_82

    .line 658
    iget-object v5, v11, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    .line 661
    invoke-virtual {v0, v4, v5, v2, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 662
    iget-object v11, v11, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_78

    .line 666
    :cond_82
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v0

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_8b
    return v10
.end method

.method protected greylist findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 11

    .line 295
    invoke-virtual {p1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    move-result v0

    .line 299
    new-array v1, v0, [Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 300
    new-array v2, v0, [I

    const/16 v3, 0x2710

    const/4 v4, 0x0

    move-object v6, p1

    move v5, v4

    :goto_d
    if-ge v5, v0, :cond_29

    .line 308
    iget-object v7, v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    .line 309
    invoke-interface {v7}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v7

    .line 310
    aput-object v7, v1, v5

    .line 311
    invoke-virtual {p0, v7}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countAncestors(Lorg/apache/xalan/templates/ElemTemplateElement;)I

    move-result v7

    .line 312
    aput v7, v2, v5

    if-ge v7, v3, :cond_24

    move v3, v7

    .line 317
    :cond_24
    iget-object v6, v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_29
    move v5, v4

    :goto_2a
    if-ge v5, v0, :cond_42

    .line 323
    aget v6, v2, v5

    if-le v6, v3, :cond_3f

    sub-int/2addr v6, v3

    move v7, v4

    :goto_32
    if-ge v7, v6, :cond_3f

    .line 328
    aget-object v8, v1, v5

    invoke-virtual {v8}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v8

    aput-object v8, v1, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_42
    :goto_42
    add-int/lit8 v2, v3, -0x1

    if-ltz v3, :cond_70

    .line 339
    aget-object v3, v1, v4

    const/4 v5, 0x1

    :goto_49
    if-ge v5, v0, :cond_53

    .line 342
    aget-object v6, v1, v5

    if-eq v3, v6, :cond_50

    goto :goto_60

    :cond_50
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 350
    :cond_53
    invoke-virtual {p0, p1, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isNotSameAsOwner(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->canAcceptVariables()Z

    move-result v5

    if-eqz v5, :cond_60

    return-object v3

    :cond_60
    :goto_60
    move v3, v4

    :goto_61
    if-ge v3, v0, :cond_6e

    .line 362
    aget-object v5, v1, v3

    invoke-virtual {v5}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v5

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_6e
    move v3, v2

    goto :goto_42

    .line 366
    :cond_70
    const-string p0, "Could not find common ancestor!!!"

    invoke-static {v4, p0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected greylist getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 3

    .line 1038
    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_12

    .line 1041
    instance-of p1, p0, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz p1, :cond_d

    .line 1042
    check-cast p0, Lorg/apache/xalan/templates/ElemTemplateElement;

    return-object p0

    .line 1043
    :cond_d
    invoke-interface {p0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p0

    goto :goto_4

    .line 1045
    :cond_12
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "ER_ASSERT_NO_TEMPLATE_PARENT"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected greylist getPrevElementWithinContext(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 3

    .line 1012
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    if-nez p0, :cond_a

    .line 1014
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p0

    :cond_a
    if-eqz p0, :cond_1d

    .line 1017
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result p1

    const/16 v0, 0x1c

    if-eq v0, p1, :cond_1c

    const/16 v0, 0x13

    if-eq v0, p1, :cond_1c

    const/16 v0, 0x19

    if-ne v0, p1, :cond_1d

    :cond_1c
    const/4 p0, 0x0

    :cond_1d
    return-object p0
.end method

.method protected greylist getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 4

    .line 989
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevElementWithinContext(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 991
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x49

    if-eq v1, v0, :cond_12

    const/16 v1, 0x29

    if-ne v1, v0, :cond_0

    .line 996
    :cond_12
    check-cast p1, Lorg/apache/xalan/templates/ElemVariable;

    return-object p1

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist isAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .registers 4

    .line 1057
    invoke-virtual {p1}, Lorg/apache/xpath/axes/LocPathIterator;->getAnalysisBits()I

    move-result v0

    const/high16 v1, 0x8000000

    .line 1058
    invoke-static {v0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v1

    if-nez v1, :cond_17

    const/high16 v1, 0x20000000

    .line 1059
    invoke-static {v0, v1}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    if-eqz v0, :cond_21

    .line 1062
    iget-object p0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/AbsPathChecker;->checkAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result p0

    return p0

    :cond_21
    return v0
.end method

.method protected greylist isNotSameAsOwner(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 4

    :goto_0
    if-eqz p1, :cond_13

    .line 387
    iget-object v0, p1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {v0}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    if-ne v0, p2, :cond_10

    const/4 p0, 0x0

    return p0

    .line 390
    :cond_10
    iget-object p1, p1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method protected greylist isParam(Lorg/apache/xpath/ExpressionNode;)Z
    .registers 4

    :goto_0
    if-eqz p1, :cond_c

    .line 951
    instance-of p0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz p0, :cond_7

    goto :goto_c

    .line 953
    :cond_7
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object p1

    goto :goto_0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    if-eqz p1, :cond_29

    .line 957
    check-cast p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    :goto_11
    if-eqz p1, :cond_29

    .line 960
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_29

    const/16 v1, 0x19

    if-eq v0, v1, :cond_29

    const/16 v1, 0x29

    if-eq v0, v1, :cond_28

    .line 969
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p1

    goto :goto_11

    :cond_28
    const/4 p0, 0x1

    :cond_29
    return p0
.end method

.method protected greylist matchAndEliminatePartialPaths(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;ZILorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .registers 12

    .line 192
    iget-object v0, p1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    if-nez v0, :cond_6

    goto/16 :goto_7c

    .line 196
    :cond_6
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    .line 197
    invoke-virtual {p0, p1, p4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->partialIsVariable(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_7c

    :cond_14
    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, v1

    move-object v4, v3

    :goto_18
    if-eqz v2, :cond_4b

    if-eq v2, p1, :cond_48

    .line 204
    iget-object v5, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    if-eqz v5, :cond_48

    .line 206
    invoke-interface {v5}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v5

    check-cast v5, Lorg/apache/xpath/axes/WalkingIterator;

    .line 207
    invoke-virtual {p0, v0, v5, p4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->stepsEqual(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/axes/WalkingIterator;I)Z

    move-result v5

    if-eqz v5, :cond_48

    if-nez v3, :cond_3a

    .line 213
    :try_start_2e
    invoke-virtual {p1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :try_end_34
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2e .. :try_end_34} :catch_37

    .line 214
    :try_start_34
    iput-object v1, p1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;
    :try_end_36
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_34 .. :try_end_36} :catch_36

    :catch_36
    move-object v3, v4

    .line 218
    :catch_37
    iput-object v1, v3, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    move-object v4, v3

    .line 223
    :cond_3a
    :try_start_3a
    invoke-virtual {v2}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    iput-object v5, v4, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 224
    iput-object v1, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;
    :try_end_44
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3a .. :try_end_44} :catch_44

    .line 227
    :catch_44
    iget-object v4, v4, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 228
    iput-object v1, v4, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    .line 231
    :cond_48
    iget-object v2, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_18

    :cond_4b
    if-eqz v3, :cond_7c

    if-eqz p3, :cond_50

    goto :goto_54

    .line 237
    :cond_50
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object p5

    .line 238
    :goto_54
    iget-object p1, v3, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {p1}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object p1

    check-cast p1, Lorg/apache/xpath/axes/WalkingIterator;

    .line 239
    invoke-virtual {p0, p1, p4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createIteratorFromSteps(Lorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p5, p1, p3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object p1

    :goto_64
    if-eqz v3, :cond_7c

    .line 245
    iget-object p5, v3, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    .line 246
    invoke-interface {p5}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    .line 252
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p4, p3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changePartToRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/axes/WalkingIterator;IZ)Lorg/apache/xpath/axes/LocPathIterator;

    move-result-object v0

    .line 253
    invoke-interface {p5, v0}, Lorg/apache/xpath/ExpressionOwner;->setExpression(Lorg/apache/xpath/Expression;)V

    .line 255
    iget-object v3, v3, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    goto :goto_64

    :cond_7c
    :goto_7c
    return-object p2
.end method

.method protected greylist oldFindAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 684
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    .line 685
    invoke-interface {v2}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v6

    .line 688
    iget-object v7, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    const/4 v8, 0x1

    if-ne v4, v7, :cond_19

    move v7, v8

    goto :goto_1a

    :cond_19
    const/4 v7, 0x0

    .line 689
    :goto_1a
    check-cast v6, Lorg/apache/xpath/axes/LocPathIterator;

    const/4 v10, 0x0

    move/from16 v11, p1

    move-object v14, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_22
    if-ge v11, v5, :cond_5e

    .line 692
    invoke-virtual {v4, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/xpath/ExpressionOwner;

    const/16 v16, 0x0

    if-eqz v15, :cond_5b

    .line 695
    invoke-interface {v15}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v9

    .line 696
    invoke-virtual {v9, v6}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v17

    if-eqz v17, :cond_5b

    .line 699
    check-cast v9, Lorg/apache/xpath/axes/LocPathIterator;

    if-nez v13, :cond_54

    .line 706
    invoke-virtual {v0, v3, v6, v7}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v9

    if-nez v9, :cond_43

    return v16

    .line 709
    :cond_43
    invoke-virtual {v9}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v14

    .line 711
    invoke-virtual {v0, v14, v2, v4, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 716
    invoke-virtual {v9}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v9

    invoke-virtual {v4, v9, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v12, v12, 0x1

    move v13, v8

    .line 720
    :cond_54
    invoke-virtual {v0, v14, v15, v4, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 723
    invoke-virtual {v4, v10, v11}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/2addr v12, v8

    :cond_5b
    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    :cond_5e
    const/16 v16, 0x0

    if-nez v12, :cond_7c

    .line 732
    iget-object v5, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-ne v4, v5, :cond_7c

    .line 734
    invoke-virtual {v0, v3, v6, v8}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v5

    if-nez v5, :cond_6d

    return v16

    .line 737
    :cond_6d
    invoke-virtual {v5}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v6

    .line 738
    invoke-virtual {v0, v6, v2, v4, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 739
    invoke-virtual {v5}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/2addr v12, v8

    :cond_7c
    return v12
.end method

.method greylist partialIsVariable(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;I)Z
    .registers 3

    const/4 p0, 0x1

    if-ne p0, p2, :cond_14

    .line 272
    iget-object p1, p1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    invoke-interface {p1}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object p1

    check-cast p1, Lorg/apache/xpath/axes/WalkingIterator;

    .line 273
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p1

    instance-of p1, p1, Lorg/apache/xpath/axes/FilterExprWalker;

    if-eqz p1, :cond_14

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method protected greylist stepsEqual(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/axes/WalkingIterator;I)Z
    .registers 6

    .line 523
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    .line 524
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_a
    if-ge v0, p3, :cond_24

    if-eqz p0, :cond_23

    if-nez p1, :cond_11

    goto :goto_23

    .line 531
    :cond_11
    invoke-virtual {p0, p1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_18

    return p2

    .line 534
    :cond_18
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p0

    .line 535
    invoke-virtual {p1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_23
    :goto_23
    return p2

    :cond_24
    const/4 p3, 0x1

    if-nez p0, :cond_29

    if-eqz p1, :cond_2a

    :cond_29
    move p2, p3

    .line 538
    :cond_2a
    const-string p0, "Total match is incorrect!"

    invoke-static {p2, p0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    return p3
.end method

.method public greylist visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 6

    .line 1165
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x11

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-eq v0, v1, :cond_25

    const/16 v1, 0x13

    if-eq v0, v1, :cond_25

    if-eq v0, v2, :cond_25

    const/16 v1, 0x23

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1b

    const/4 p0, 0x1

    return p0

    .line 1200
    :cond_1b
    iget-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1201
    iput-boolean v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1202
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1203
    iput-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    return v3

    :cond_25
    if-ne v0, v2, :cond_31

    .line 1176
    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemForEach;

    .line 1178
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemForEach;->getSelect()Lorg/apache/xpath/Expression;

    move-result-object v1

    .line 1179
    invoke-interface {v1, v0, p0}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1182
    :cond_31
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    .line 1183
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    .line 1188
    invoke-virtual {p1, p0, v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 1189
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundentLocals(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 1191
    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    return v3
.end method

.method public greylist visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z
    .registers 6

    .line 1079
    instance-of v0, p2, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 1083
    :cond_6
    instance-of v0, p2, Lorg/apache/xpath/axes/WalkingIterator;

    if-eqz v0, :cond_26

    .line 1085
    move-object v0, p2

    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    .line 1086
    invoke-virtual {v0}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    .line 1087
    instance-of v2, v0, Lorg/apache/xpath/axes/FilterExprWalker;

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    if-nez v2, :cond_26

    .line 1089
    check-cast v0, Lorg/apache/xpath/axes/FilterExprWalker;

    .line 1090
    invoke-virtual {v0}, Lorg/apache/xpath/axes/FilterExprWalker;->getInnerExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    .line 1091
    instance-of v0, v0, Lorg/apache/xpath/operations/Variable;

    if-eqz v0, :cond_26

    return v1

    .line 1096
    :cond_26
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result p2

    if-eqz p2, :cond_34

    iget-object p2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    if-eqz p2, :cond_34

    .line 1100
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3f

    .line 1102
    :cond_34
    iget-boolean p2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    if-eqz p2, :cond_3f

    iget-object p0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    if-eqz p0, :cond_3f

    .line 1106
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3f
    :goto_3f
    return v1
.end method

.method public greylist visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .registers 5

    .line 1124
    iget-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    const/4 v1, 0x0

    .line 1125
    iput-boolean v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    .line 1128
    invoke-interface {p2, p1, p0}, Lorg/apache/xpath/XPathVisitable;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 1130
    iput-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    return v1
.end method

.method public greylist visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 4

    .line 1145
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_a

    const/4 p0, 0x1

    return p0

    .line 1149
    :cond_a
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result p0

    return p0
.end method
