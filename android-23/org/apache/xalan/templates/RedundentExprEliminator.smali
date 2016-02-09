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
.field public static final DEBUG:Z = false

.field public static final DIAGNOSE_MULTISTEPLIST:Z = false

.field public static final DIAGNOSE_NUM_PATHS_REDUCED:Z = false

.field static final PSUEDOVARNAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/psuedovar"

.field private static m_uniquePseudoVarID:I


# instance fields
.field m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

.field m_absPaths:Ljava/util/Vector;

.field m_isSameContext:Z

.field m_paths:Ljava/util/Vector;

.field m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 56
    const/4 v0, 0x1

    #@1
    sput v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I

    #@3
    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/xalan/templates/XSLTVisitor;-><init>()V

    #@3
    .line 54
    new-instance v0, Lorg/apache/xalan/templates/AbsPathChecker;

    #@5
    invoke-direct {v0}, Lorg/apache/xalan/templates/AbsPathChecker;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

    #@a
    .line 66
    new-instance v0, Lorg/apache/xalan/templates/VarNameCollector;

    #@c
    invoke-direct {v0}, Lorg/apache/xalan/templates/VarNameCollector;-><init>()V

    #@f
    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    #@11
    .line 73
    const/4 v0, 0x1

    #@12
    iput-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    #@14
    .line 74
    new-instance v0, Ljava/util/Vector;

    #@16
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@19
    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    #@1b
    .line 75
    const/4 v0, 0x0

    #@1c
    iput-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    #@1e
    .line 71
    return-void
.end method

.method private final assertIsLocPathIterator(Lorg/apache/xpath/Expression;Lorg/apache/xpath/ExpressionOwner;)V
    .locals 4
    .param p1, "expr1"    # Lorg/apache/xpath/Expression;
    .param p2, "eo"    # Lorg/apache/xpath/ExpressionOwner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    .line 1244
    instance-of v1, p1, Lorg/apache/xpath/axes/LocPathIterator;

    #@2
    if-nez v1, :cond_1

    #@4
    .line 1247
    instance-of v1, p1, Lorg/apache/xpath/operations/Variable;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Programmer\'s assertion: expr1 not an iterator: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    move-object v1, p1

    #@15
    .line 1250
    check-cast v1, Lorg/apache/xpath/operations/Variable;

    #@17
    invoke-virtual {v1}, Lorg/apache/xpath/operations/Variable;->getQName()Lorg/apache/xml/utils/QName;

    #@1a
    move-result-object v1

    #@1b
    .line 1249
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 1257
    .local v0, "errMsg":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@25
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, ", "

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 1258
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 1257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    .line 1258
    const-string/jumbo v3, " "

    #@44
    .line 1257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 1259
    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    #@4b
    move-result-object v3

    #@4c
    .line 1257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1

    #@58
    .line 1254
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v2, "Programmer\'s assertion: expr1 not an iterator: "

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    .line 1255
    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->getClass()Ljava/lang/Class;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    .line 1254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    .restart local v0    # "errMsg":Ljava/lang/String;
    goto :goto_0

    #@75
    .line 1242
    .end local v0    # "errMsg":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected static assertion(ZLjava/lang/String;)V
    .locals 4
    .param p0, "b"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1288
    if-nez p0, :cond_0

    #@2
    .line 1290
    new-instance v0, Ljava/lang/RuntimeException;

    #@4
    const-string/jumbo v1, "ER_ASSERT_REDUNDENT_EXPR_ELIMINATOR"

    #@7
    const/4 v2, 0x1

    #@8
    new-array v2, v2, [Ljava/lang/Object;

    #@a
    const/4 v3, 0x0

    #@b
    aput-object p1, v2, v3

    #@d
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1286
    :cond_0
    return-void
.end method

.method private static declared-synchronized getPseudoVarID()I
    .locals 3

    #@0
    .prologue
    const-class v1, Lorg/apache/xalan/templates/RedundentExprEliminator;

    #@2
    monitor-enter v1

    #@3
    .line 803
    :try_start_0
    sget v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I

    #@5
    add-int/lit8 v2, v0, 0x1

    #@7
    sput v2, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_uniquePseudoVarID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method private static validateNewAddition(Ljava/util/Vector;Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)V
    .locals 7
    .param p0, "paths"    # Ljava/util/Vector;
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "path"    # Lorg/apache/xpath/axes/LocPathIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1272
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@5
    move-result-object v3

    #@6
    if-ne v3, p2, :cond_0

    #@8
    move v3, v4

    #@9
    :goto_0
    const-string/jumbo v6, "owner.getExpression() != path!!!"

    #@c
    invoke-static {v3, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    #@f
    .line 1273
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    #@12
    move-result v2

    #@13
    .line 1275
    .local v2, "n":I
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    #@16
    .line 1277
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lorg/apache/xpath/ExpressionOwner;

    #@1c
    .line 1278
    .local v0, "ew":Lorg/apache/xpath/ExpressionOwner;
    if-eq v0, p1, :cond_1

    #@1e
    move v3, v4

    #@1f
    :goto_2
    const-string/jumbo v6, "duplicate owner on the list!!!"

    #@22
    invoke-static {v3, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    #@25
    .line 1279
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@28
    move-result-object v3

    #@29
    if-eq v3, p2, :cond_2

    #@2b
    move v3, v4

    #@2c
    :goto_3
    const-string/jumbo v6, "duplicate expression on the list!!!"

    #@2f
    invoke-static {v3, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    #@32
    .line 1275
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_1

    #@35
    .end local v0    # "ew":Lorg/apache/xpath/ExpressionOwner;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_0
    move v3, v5

    #@36
    .line 1272
    goto :goto_0

    #@37
    .restart local v0    # "ew":Lorg/apache/xpath/ExpressionOwner;
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    :cond_1
    move v3, v5

    #@38
    .line 1278
    goto :goto_2

    #@39
    :cond_2
    move v3, v5

    #@3a
    .line 1279
    goto :goto_3

    #@3b
    .line 1270
    .end local v0    # "ew":Lorg/apache/xpath/ExpressionOwner;
    :cond_3
    return-void
.end method


# virtual methods
.method protected addVarDeclToElem(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Lorg/apache/xalan/templates/ElemVariable;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 7
    .param p1, "psuedoVarRecipient"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "lpi"    # Lorg/apache/xpath/axes/LocPathIterator;
    .param p3, "psuedoVar"    # Lorg/apache/xalan/templates/ElemVariable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x29

    #@2
    const/4 v5, 0x0

    #@3
    .line 902
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@6
    move-result-object v1

    #@7
    .line 904
    .local v1, "ete":Lorg/apache/xalan/templates/ElemTemplateElement;
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    #@9
    invoke-virtual {p2, v5, v3}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@c
    .line 910
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    #@e
    invoke-virtual {v3}, Lorg/apache/xalan/templates/VarNameCollector;->getVarCount()I

    #@11
    move-result v3

    #@12
    if-lez v3, :cond_0

    #@14
    .line 912
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@17
    move-result-object v0

    #@18
    .line 913
    .local v0, "baseElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;

    #@1b
    move-result-object v2

    #@1c
    .line 914
    .local v2, "varElem":Lorg/apache/xalan/templates/ElemVariable;
    :goto_0
    if-eqz v2, :cond_0

    #@1e
    .line 916
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    #@20
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v3, v4}, Lorg/apache/xalan/templates/VarNameCollector;->doesOccur(Lorg/apache/xml/utils/QName;)Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    .line 918
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@2d
    move-result-object p1

    #@2e
    .line 919
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@31
    move-result-object v1

    #@32
    .line 926
    .end local v0    # "baseElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2    # "varElem":Lorg/apache/xalan/templates/ElemVariable;
    :cond_0
    if-eqz v1, :cond_3

    #@34
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@37
    move-result v3

    #@38
    if-ne v6, v3, :cond_3

    #@3a
    .line 929
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isParam(Lorg/apache/xpath/ExpressionNode;)Z

    #@3d
    move-result v3

    #@3e
    if-eqz v3, :cond_2

    #@40
    .line 930
    return-object v5

    #@41
    .line 922
    .restart local v0    # "baseElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v2    # "varElem":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;

    #@44
    move-result-object v2

    #@45
    goto :goto_0

    #@46
    .line 932
    .end local v0    # "baseElem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2    # "varElem":Lorg/apache/xalan/templates/ElemVariable;
    :cond_2
    if-eqz v1, :cond_3

    #@48
    .line 934
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@4b
    move-result-object v1

    #@4c
    .line 935
    if-eqz v1, :cond_2

    #@4e
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@51
    move-result v3

    #@52
    if-eq v6, v3, :cond_2

    #@54
    .line 939
    :cond_3
    invoke-virtual {p1, p3, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@57
    .line 940
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_varNameCollector:Lorg/apache/xalan/templates/VarNameCollector;

    #@59
    invoke-virtual {v3}, Lorg/apache/xalan/templates/VarNameCollector;->reset()V

    #@5c
    .line 941
    return-object p3
.end method

.method protected changePartToRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/axes/WalkingIterator;IZ)Lorg/apache/xpath/axes/LocPathIterator;
    .locals 10
    .param p1, "uniquePseudoVarName"    # Lorg/apache/xml/utils/QName;
    .param p2, "wi"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p3, "numSteps"    # I
    .param p4, "isGlobal"    # Z

    #@0
    .prologue
    .line 442
    new-instance v5, Lorg/apache/xpath/operations/Variable;

    #@2
    invoke-direct {v5}, Lorg/apache/xpath/operations/Variable;-><init>()V

    #@5
    .line 443
    .local v5, "var":Lorg/apache/xpath/operations/Variable;
    invoke-virtual {v5, p1}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    #@8
    .line 444
    invoke-virtual {v5, p4}, Lorg/apache/xpath/operations/Variable;->setIsGlobal(Z)V

    #@b
    .line 445
    if-eqz p4, :cond_0

    #@d
    .line 446
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@10
    move-result-object v0

    #@11
    .line 447
    .local v0, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    #@14
    move-result-object v4

    #@15
    .line 448
    .local v4, "root":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    #@18
    move-result-object v6

    #@19
    .line 449
    .local v6, "vars":Ljava/util/Vector;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    #@1c
    move-result v8

    #@1d
    add-int/lit8 v8, v8, -0x1

    #@1f
    invoke-virtual {v5, v8}, Lorg/apache/xpath/operations/Variable;->setIndex(I)V

    #@22
    .line 453
    .end local v0    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v4    # "root":Lorg/apache/xalan/templates/StylesheetRoot;
    .end local v6    # "vars":Ljava/util/Vector;
    :cond_0
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@25
    move-result-object v7

    #@26
    .line 454
    .local v7, "walker":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v3, 0x0

    #@27
    .local v3, "i":I
    :goto_0
    if-ge v3, p3, :cond_2

    #@29
    .line 456
    if-eqz v7, :cond_1

    #@2b
    const/4 v8, 0x1

    #@2c
    :goto_1
    const-string/jumbo v9, "Walker should not be null!"

    #@2f
    invoke-static {v8, v9}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    #@32
    .line 457
    invoke-virtual {v7}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@35
    move-result-object v7

    #@36
    .line 454
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_0

    #@39
    .line 456
    :cond_1
    const/4 v8, 0x0

    #@3a
    goto :goto_1

    #@3b
    .line 460
    :cond_2
    if-eqz v7, :cond_3

    #@3d
    .line 463
    new-instance v2, Lorg/apache/xpath/axes/FilterExprWalker;

    #@3f
    invoke-direct {v2, p2}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    #@42
    .line 464
    .local v2, "few":Lorg/apache/xpath/axes/FilterExprWalker;
    invoke-virtual {v2, v5}, Lorg/apache/xpath/axes/FilterExprWalker;->setInnerExpression(Lorg/apache/xpath/Expression;)V

    #@45
    .line 465
    invoke-virtual {v2, p2}, Lorg/apache/xpath/axes/FilterExprWalker;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@48
    .line 466
    invoke-virtual {v2, v7}, Lorg/apache/xpath/axes/FilterExprWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@4b
    .line 467
    invoke-virtual {v7, v2}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@4e
    .line 468
    invoke-virtual {p2, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@51
    .line 469
    return-object p2

    #@52
    .line 473
    .end local v2    # "few":Lorg/apache/xpath/axes/FilterExprWalker;
    :cond_3
    new-instance v1, Lorg/apache/xpath/axes/FilterExprIteratorSimple;

    #@54
    invoke-direct {v1, v5}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;-><init>(Lorg/apache/xpath/Expression;)V

    #@57
    .line 474
    .local v1, "feis":Lorg/apache/xpath/axes/FilterExprIteratorSimple;
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    #@5a
    move-result-object v8

    #@5b
    invoke-virtual {v1, v8}, Lorg/apache/xpath/axes/FilterExprIteratorSimple;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@5e
    .line 475
    return-object v1
.end method

.method protected changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 4
    .param p1, "varName"    # Lorg/apache/xml/utils/QName;
    .param p2, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p3, "paths"    # Ljava/util/Vector;
    .param p4, "psuedoVarRecipient"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 788
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    #@2
    if-ne p3, v3, :cond_1

    #@4
    new-instance v2, Lorg/apache/xpath/operations/VariableSafeAbsRef;

    #@6
    invoke-direct {v2}, Lorg/apache/xpath/operations/VariableSafeAbsRef;-><init>()V

    #@9
    .line 789
    .local v2, "varRef":Lorg/apache/xpath/operations/Variable;
    :goto_0
    invoke-virtual {v2, p1}, Lorg/apache/xpath/operations/Variable;->setQName(Lorg/apache/xml/utils/QName;)V

    #@c
    .line 790
    iget-object v3, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    #@e
    if-ne p3, v3, :cond_0

    #@10
    move-object v1, p4

    #@11
    .line 792
    check-cast v1, Lorg/apache/xalan/templates/StylesheetRoot;

    #@13
    .line 793
    .local v1, "root":Lorg/apache/xalan/templates/StylesheetRoot;
    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    #@16
    move-result-object v0

    #@17
    .line 796
    .local v0, "globalVars":Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@1a
    move-result v3

    #@1b
    add-int/lit8 v3, v3, -0x1

    #@1d
    invoke-virtual {v2, v3}, Lorg/apache/xpath/operations/Variable;->setIndex(I)V

    #@20
    .line 797
    const/4 v3, 0x1

    #@21
    invoke-virtual {v2, v3}, Lorg/apache/xpath/operations/Variable;->setIsGlobal(Z)V

    #@24
    .line 799
    .end local v0    # "globalVars":Ljava/util/Vector;
    .end local v1    # "root":Lorg/apache/xalan/templates/StylesheetRoot;
    :cond_0
    invoke-interface {p2, v2}, Lorg/apache/xpath/ExpressionOwner;->setExpression(Lorg/apache/xpath/Expression;)V

    #@27
    .line 786
    return-void

    #@28
    .line 788
    .end local v2    # "varRef":Lorg/apache/xpath/operations/Variable;
    :cond_1
    new-instance v2, Lorg/apache/xpath/operations/Variable;

    #@2a
    invoke-direct {v2}, Lorg/apache/xpath/operations/Variable;-><init>()V

    #@2d
    goto :goto_0
.end method

.method protected countAncestors(Lorg/apache/xalan/templates/ElemTemplateElement;)I
    .locals 1
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 403
    const/4 v0, 0x0

    #@1
    .line 404
    .local v0, "count":I
    :goto_0
    if-eqz p1, :cond_0

    #@3
    .line 406
    add-int/lit8 v0, v0, 0x1

    #@5
    .line 407
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@8
    move-result-object p1

    #@9
    goto :goto_0

    #@a
    .line 409
    :cond_0
    return v0
.end method

.method protected countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I
    .locals 4
    .param p1, "lpi"    # Lorg/apache/xpath/axes/LocPathIterator;

    #@0
    .prologue
    .line 753
    instance-of v3, p1, Lorg/apache/xpath/axes/WalkingIterator;

    #@2
    if-eqz v3, :cond_1

    #@4
    move-object v2, p1

    #@5
    .line 755
    check-cast v2, Lorg/apache/xpath/axes/WalkingIterator;

    #@7
    .line 756
    .local v2, "wi":Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@a
    move-result-object v0

    #@b
    .line 757
    .local v0, "aw":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v1, 0x0

    #@c
    .line 758
    .local v1, "count":I
    :goto_0
    if-eqz v0, :cond_0

    #@e
    .line 760
    add-int/lit8 v1, v1, 0x1

    #@10
    .line 761
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@13
    move-result-object v0

    #@14
    goto :goto_0

    #@15
    .line 763
    :cond_0
    return v1

    #@16
    .line 766
    .end local v0    # "aw":Lorg/apache/xpath/axes/AxesWalker;
    .end local v1    # "count":I
    .end local v2    # "wi":Lorg/apache/xpath/axes/WalkingIterator;
    :cond_1
    const/4 v3, 0x1

    #@17
    return v3
.end method

.method protected createGlobalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/StylesheetRoot;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 4
    .param p1, "uniquePseudoVarName"    # Lorg/apache/xml/utils/QName;
    .param p2, "stylesheetRoot"    # Lorg/apache/xalan/templates/StylesheetRoot;
    .param p3, "lpi"    # Lorg/apache/xpath/axes/LocPathIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 848
    new-instance v1, Lorg/apache/xalan/templates/ElemVariable;

    #@2
    invoke-direct {v1}, Lorg/apache/xalan/templates/ElemVariable;-><init>()V

    #@5
    .line 849
    .local v1, "psuedoVar":Lorg/apache/xalan/templates/ElemVariable;
    const/4 v3, 0x1

    #@6
    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/ElemVariable;->setIsTopLevel(Z)V

    #@9
    .line 850
    new-instance v2, Lorg/apache/xpath/XPath;

    #@b
    invoke-direct {v2, p3}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    #@e
    .line 851
    .local v2, "xpath":Lorg/apache/xpath/XPath;
    invoke-virtual {v1, v2}, Lorg/apache/xalan/templates/ElemVariable;->setSelect(Lorg/apache/xpath/XPath;)V

    #@11
    .line 852
    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/ElemVariable;->setName(Lorg/apache/xml/utils/QName;)V

    #@14
    .line 854
    invoke-virtual {p2}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariablesAndParamsComposed()Ljava/util/Vector;

    #@17
    move-result-object v0

    #@18
    .line 855
    .local v0, "globalVars":Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@1b
    move-result v3

    #@1c
    invoke-virtual {v1, v3}, Lorg/apache/xalan/templates/ElemVariable;->setIndex(I)V

    #@1f
    .line 856
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@22
    .line 857
    return-object v1
.end method

.method protected createIteratorFromSteps(Lorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/WalkingIterator;
    .locals 6
    .param p1, "wi"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p2, "numSteps"    # I

    #@0
    .prologue
    .line 489
    new-instance v2, Lorg/apache/xpath/axes/WalkingIterator;

    #@2
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    #@5
    move-result-object v5

    #@6
    invoke-direct {v2, v5}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    #@9
    .line 492
    .local v2, "newIter":Lorg/apache/xpath/axes/WalkingIterator;
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@c
    move-result-object v5

    #@d
    invoke-virtual {v5}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Lorg/apache/xpath/axes/AxesWalker;

    #@13
    .line 493
    .local v4, "walker":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v2, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setFirstWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@16
    .line 494
    invoke-virtual {v4, v2}, Lorg/apache/xpath/axes/AxesWalker;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    #@19
    .line 495
    const/4 v1, 0x1

    #@1a
    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    #@1c
    .line 497
    invoke-virtual {v4}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Lorg/apache/xpath/axes/AxesWalker;

    #@26
    .line 498
    .local v3, "next":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v4, v3}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    #@29
    .line 499
    invoke-virtual {v3, v2}, Lorg/apache/xpath/axes/AxesWalker;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    #@2c
    .line 500
    move-object v4, v3

    #@2d
    .line 495
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 502
    .end local v3    # "next":Lorg/apache/xpath/axes/AxesWalker;
    :cond_0
    const/4 v5, 0x0

    #@31
    invoke-virtual {v4, v5}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    .line 508
    return-object v2

    #@35
    .line 505
    .end local v1    # "i":I
    .end local v4    # "walker":Lorg/apache/xpath/axes/AxesWalker;
    :catch_0
    move-exception v0

    #@36
    .line 506
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@38
    invoke-direct {v5, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@3b
    throw v5
.end method

.method protected createLocalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 3
    .param p1, "uniquePseudoVarName"    # Lorg/apache/xml/utils/QName;
    .param p2, "psuedoVarRecipient"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p3, "lpi"    # Lorg/apache/xpath/axes/LocPathIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 879
    new-instance v0, Lorg/apache/xalan/templates/ElemVariablePsuedo;

    #@2
    invoke-direct {v0}, Lorg/apache/xalan/templates/ElemVariablePsuedo;-><init>()V

    #@5
    .line 881
    .local v0, "psuedoVar":Lorg/apache/xalan/templates/ElemVariable;
    new-instance v2, Lorg/apache/xpath/XPath;

    #@7
    invoke-direct {v2, p3}, Lorg/apache/xpath/XPath;-><init>(Lorg/apache/xpath/Expression;)V

    #@a
    .line 882
    .local v2, "xpath":Lorg/apache/xpath/XPath;
    invoke-virtual {v0, v2}, Lorg/apache/xalan/templates/ElemVariable;->setSelect(Lorg/apache/xpath/XPath;)V

    #@d
    .line 883
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemVariable;->setName(Lorg/apache/xml/utils/QName;)V

    #@10
    .line 885
    invoke-virtual {p0, p2, p3, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->addVarDeclToElem(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Lorg/apache/xalan/templates/ElemVariable;)Lorg/apache/xalan/templates/ElemVariable;

    #@13
    move-result-object v1

    #@14
    .line 887
    .local v1, "var":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {p3, v1}, Lorg/apache/xpath/axes/LocPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    #@17
    .line 889
    return-object v1
.end method

.method protected createMultistepExprList(Ljava/util/Vector;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 9
    .param p1, "paths"    # Ljava/util/Vector;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 556
    const/4 v1, 0x0

    #@3
    .line 557
    .local v1, "first":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    #@6
    move-result v4

    #@7
    .line 558
    .local v4, "n":I
    const/4 v2, 0x0

    #@8
    .end local v1    # "first":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_3

    #@a
    .line 560
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lorg/apache/xpath/ExpressionOwner;

    #@10
    .line 561
    .local v0, "eo":Lorg/apache/xpath/ExpressionOwner;
    if-nez v0, :cond_1

    #@12
    .line 558
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_0

    #@15
    .line 565
    :cond_1
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Lorg/apache/xpath/axes/LocPathIterator;

    #@1b
    .line 566
    .local v3, "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I

    #@1e
    move-result v5

    #@1f
    .line 567
    .local v5, "numPaths":I
    if-le v5, v8, :cond_0

    #@21
    .line 569
    if-nez v1, :cond_2

    #@23
    .line 570
    new-instance v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@25
    invoke-direct {v1, p0, v0, v5, v7}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    #@28
    .local v1, "first":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    goto :goto_1

    #@29
    .line 572
    .end local v1    # "first":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_2
    invoke-virtual {v1, v0, v5}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->addInSortedOrder(Lorg/apache/xpath/ExpressionOwner;I)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@2c
    move-result-object v1

    #@2d
    .restart local v1    # "first":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    goto :goto_1

    #@2e
    .line 576
    .end local v0    # "eo":Lorg/apache/xpath/ExpressionOwner;
    .end local v1    # "first":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v3    # "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    .end local v5    # "numPaths":I
    :cond_3
    if-eqz v1, :cond_4

    #@30
    invoke-virtual {v1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    #@33
    move-result v6

    #@34
    if-gt v6, v8, :cond_5

    #@36
    .line 577
    :cond_4
    return-object v7

    #@37
    .line 579
    :cond_5
    return-object v1
.end method

.method protected createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;
    .locals 4
    .param p1, "psuedoVarRecipient"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "lpi"    # Lorg/apache/xpath/axes/LocPathIterator;
    .param p3, "isGlobal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 821
    new-instance v0, Lorg/apache/xml/utils/QName;

    #@2
    const-string/jumbo v1, "http://xml.apache.org/xalan/psuedovar"

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "#"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-static {}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPseudoVarID()I

    #@14
    move-result v3

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v0, v1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    .line 823
    .local v0, "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    if-eqz p3, :cond_0

    #@22
    .line 826
    check-cast p1, Lorg/apache/xalan/templates/StylesheetRoot;

    #@24
    .line 825
    .end local p1    # "psuedoVarRecipient":Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createGlobalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/StylesheetRoot;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;

    #@27
    move-result-object v1

    #@28
    return-object v1

    #@29
    .line 829
    .restart local p1    # "psuedoVarRecipient":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createLocalPseudoVarDecl(Lorg/apache/xml/utils/QName;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;)Lorg/apache/xalan/templates/ElemVariable;

    #@2c
    move-result-object v1

    #@2d
    return-object v1
.end method

.method protected diagnoseLineNumber(Lorg/apache/xpath/Expression;)V
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    move-result-object v0

    #@4
    .line 285
    .local v0, "e":Lorg/apache/xalan/templates/ElemTemplateElement;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "   "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getSystemId()Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    const-string/jumbo v3, " Line "

    #@1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getLineNumber()I

    #@24
    move-result v3

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 282
    return-void
.end method

.method protected diagnoseMultistepList(IIZ)V
    .locals 3
    .param p1, "matchCount"    # I
    .param p2, "lengthToTest"    # I
    .param p3, "isGlobal"    # Z

    #@0
    .prologue
    .line 420
    if-lez p1, :cond_0

    #@2
    .line 422
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4
    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Found multistep matches: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, ", "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, " length"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 422
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@2d
    .line 424
    if-eqz p3, :cond_1

    #@2f
    .line 425
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@31
    const-string/jumbo v1, " (global)"

    #@34
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@37
    .line 418
    :cond_0
    :goto_0
    return-void

    #@38
    .line 427
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@3d
    goto :goto_0
.end method

.method protected diagnoseNumPaths(Ljava/util/Vector;II)V
    .locals 3
    .param p1, "paths"    # Ljava/util/Vector;
    .param p2, "numPathsEliminated"    # I
    .param p3, "numUniquePathsEliminated"    # I

    #@0
    .prologue
    .line 1219
    if-lez p2, :cond_0

    #@2
    .line 1221
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    #@4
    if-ne p1, v0, :cond_1

    #@6
    .line 1223
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Eliminated "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " total paths!"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@26
    .line 1224
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@28
    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v2, "Consolodated "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    const-string/jumbo v2, " redundent paths!"

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    .line 1224
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@46
    .line 1217
    :cond_0
    :goto_0
    return-void

    #@47
    .line 1229
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@49
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, "Eliminated "

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    const-string/jumbo v2, " total global paths!"

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@67
    .line 1230
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@69
    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v2, "Consolodated "

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    const-string/jumbo v2, " redundent global paths!"

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v1

    #@84
    .line 1230
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    goto :goto_0
.end method

.method protected eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .locals 10
    .param p1, "psuedoVarRecipient"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "paths"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 123
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    #@3
    move-result v7

    #@4
    .line 124
    .local v7, "n":I
    const/4 v8, 0x0

    #@5
    .line 125
    .local v8, "numPathsEliminated":I
    const/4 v9, 0x0

    #@6
    .line 126
    .local v9, "numUniquePathsEliminated":I
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_2

    #@9
    .line 128
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Lorg/apache/xpath/ExpressionOwner;

    #@f
    .line 129
    .local v3, "owner":Lorg/apache/xpath/ExpressionOwner;
    if-eqz v3, :cond_1

    #@11
    .line 131
    add-int/lit8 v1, v2, 0x1

    #@13
    move-object v0, p0

    #@14
    move-object v4, p1

    #@15
    move-object v5, p2

    #@16
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I

    #@19
    move-result v6

    #@1a
    .line 132
    .local v6, "found":I
    if-lez v6, :cond_0

    #@1c
    .line 133
    add-int/lit8 v9, v9, 0x1

    #@1e
    .line 134
    :cond_0
    add-int/2addr v8, v6

    #@1f
    .line 126
    .end local v6    # "found":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 138
    .end local v3    # "owner":Lorg/apache/xpath/ExpressionOwner;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateSharedPartialPaths(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    #@25
    .line 121
    return-void
.end method

.method public eleminateRedundentGlobals(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 1
    .param p1, "stylesheet"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    #@5
    .line 103
    return-void
.end method

.method public eleminateRedundentLocals(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 1
    .param p1, "psuedoVarRecipient"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    #@2
    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundent(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V

    #@5
    .line 90
    return-void
.end method

.method protected eleminateSharedPartialPaths(Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)V
    .locals 7
    .param p1, "psuedoVarRecipient"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p2, "paths"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 154
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createMultistepExprList(Ljava/util/Vector;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@3
    move-result-object v2

    #@4
    .line 155
    .local v2, "list":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    if-eqz v2, :cond_3

    #@6
    .line 160
    iget-object v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    #@8
    if-ne p2, v0, :cond_1

    #@a
    const/4 v3, 0x1

    #@b
    .line 164
    .local v3, "isGlobal":Z
    :goto_0
    iget v6, v2, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    #@d
    .line 165
    .local v6, "longestStepsCount":I
    add-int/lit8 v4, v6, -0x1

    #@f
    .local v4, "i":I
    :goto_1
    const/4 v0, 0x1

    #@10
    if-lt v4, v0, :cond_3

    #@12
    .line 167
    move-object v1, v2

    #@13
    .line 168
    .local v1, "next":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_2
    if-eqz v1, :cond_0

    #@15
    .line 170
    iget v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_stepCount:I

    #@17
    if-ge v0, v4, :cond_2

    #@19
    .line 165
    :cond_0
    add-int/lit8 v4, v4, -0x1

    #@1b
    goto :goto_1

    #@1c
    .line 160
    .end local v1    # "next":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v3    # "isGlobal":Z
    .end local v4    # "i":I
    .end local v6    # "longestStepsCount":I
    :cond_1
    const/4 v3, 0x0

    #@1d
    .restart local v3    # "isGlobal":Z
    goto :goto_0

    #@1e
    .restart local v1    # "next":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .restart local v4    # "i":I
    .restart local v6    # "longestStepsCount":I
    :cond_2
    move-object v0, p0

    #@1f
    move-object v5, p1

    #@20
    .line 172
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->matchAndEliminatePartialPaths(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;ZILorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@23
    move-result-object v2

    #@24
    .line 173
    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@26
    goto :goto_2

    #@27
    .line 152
    .end local v1    # "next":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v3    # "isGlobal":Z
    .end local v4    # "i":I
    .end local v6    # "longestStepsCount":I
    :cond_3
    return-void
.end method

.method protected findAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .locals 24
    .param p1, "start"    # I
    .param p2, "firstOccuranceIndex"    # I
    .param p3, "firstOccuranceOwner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p4, "psuedoVarRecipient"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p5, "paths"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 602
    const/4 v6, 0x0

    #@1
    .line 603
    .local v6, "head":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v19, 0x0

    #@3
    .line 604
    .local v19, "tail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/4 v13, 0x0

    #@4
    .line 605
    .local v13, "numPathsFound":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    #@7
    move-result v12

    #@8
    .line 607
    .local v12, "n":I
    invoke-interface/range {p3 .. p3}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@b
    move-result-object v4

    #@c
    .line 610
    .local v4, "expr1":Lorg/apache/xpath/Expression;
    move-object/from16 v0, p0

    #@e
    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    #@10
    move-object/from16 v22, v0

    #@12
    move-object/from16 v0, p5

    #@14
    move-object/from16 v1, v22

    #@16
    if-ne v0, v1, :cond_2

    #@18
    const/4 v8, 0x1

    #@19
    .local v8, "isGlobal":Z
    :goto_0
    move-object v10, v4

    #@1a
    .line 611
    check-cast v10, Lorg/apache/xpath/axes/LocPathIterator;

    #@1c
    .line 612
    .local v10, "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v10}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countSteps(Lorg/apache/xpath/axes/LocPathIterator;)I

    #@21
    move-result v18

    #@22
    .line 613
    .local v18, "stepCount":I
    move/from16 v9, p1

    #@24
    .end local v6    # "head":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v19    # "tail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .local v9, "j":I
    :goto_1
    if-ge v9, v12, :cond_3

    #@26
    .line 615
    move-object/from16 v0, p5

    #@28
    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2b
    move-result-object v15

    #@2c
    check-cast v15, Lorg/apache/xpath/ExpressionOwner;

    #@2e
    .line 616
    .local v15, "owner2":Lorg/apache/xpath/ExpressionOwner;
    if-eqz v15, :cond_1

    #@30
    .line 618
    invoke-interface {v15}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@33
    move-result-object v5

    #@34
    .line 619
    .local v5, "expr2":Lorg/apache/xpath/Expression;
    invoke-virtual {v5, v10}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@37
    move-result v7

    #@38
    .line 620
    .local v7, "isEqual":Z
    if-eqz v7, :cond_1

    #@3a
    move-object v11, v5

    #@3b
    .line 622
    check-cast v11, Lorg/apache/xpath/axes/LocPathIterator;

    #@3d
    .line 623
    .local v11, "lpi2":Lorg/apache/xpath/axes/LocPathIterator;
    if-nez v6, :cond_0

    #@3f
    .line 625
    new-instance v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@41
    const/16 v22, 0x0

    #@43
    move-object/from16 v0, p0

    #@45
    move-object/from16 v1, p3

    #@47
    move/from16 v2, v18

    #@49
    move-object/from16 v3, v22

    #@4b
    invoke-direct {v6, v0, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    #@4e
    .line 626
    .local v6, "head":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    move-object/from16 v19, v6

    #@50
    .line 627
    .local v19, "tail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    add-int/lit8 v13, v13, 0x1

    #@52
    .line 629
    .end local v6    # "head":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v19    # "tail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_0
    new-instance v22, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@54
    const/16 v23, 0x0

    #@56
    move-object/from16 v0, v22

    #@58
    move-object/from16 v1, p0

    #@5a
    move/from16 v2, v18

    #@5c
    move-object/from16 v3, v23

    #@5e
    invoke-direct {v0, v1, v15, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    #@61
    move-object/from16 v0, v22

    #@63
    move-object/from16 v1, v19

    #@65
    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@67
    .line 630
    move-object/from16 v0, v19

    #@69
    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@6b
    move-object/from16 v19, v0

    #@6d
    .line 633
    .restart local v19    # "tail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v22, 0x0

    #@6f
    move-object/from16 v0, p5

    #@71
    move-object/from16 v1, v22

    #@73
    invoke-virtual {v0, v1, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@76
    .line 636
    add-int/lit8 v13, v13, 0x1

    #@78
    .line 613
    .end local v5    # "expr2":Lorg/apache/xpath/Expression;
    .end local v7    # "isEqual":Z
    .end local v11    # "lpi2":Lorg/apache/xpath/axes/LocPathIterator;
    .end local v19    # "tail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    #@7a
    goto :goto_1

    #@7b
    .line 610
    .end local v8    # "isGlobal":Z
    .end local v9    # "j":I
    .end local v10    # "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    .end local v15    # "owner2":Lorg/apache/xpath/ExpressionOwner;
    .end local v18    # "stepCount":I
    .local v6, "head":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .local v19, "tail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_2
    const/4 v8, 0x0

    #@7c
    .restart local v8    # "isGlobal":Z
    goto :goto_0

    #@7d
    .line 642
    .end local v6    # "head":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v19    # "tail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .restart local v9    # "j":I
    .restart local v10    # "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v18    # "stepCount":I
    :cond_3
    if-nez v13, :cond_4

    #@7f
    if-eqz v8, :cond_4

    #@81
    .line 644
    new-instance v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@83
    const/16 v22, 0x0

    #@85
    move-object/from16 v0, p0

    #@87
    move-object/from16 v1, p3

    #@89
    move/from16 v2, v18

    #@8b
    move-object/from16 v3, v22

    #@8d
    invoke-direct {v6, v0, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;-><init>(Lorg/apache/xalan/templates/RedundentExprEliminator;Lorg/apache/xpath/ExpressionOwner;ILorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)V

    #@90
    .line 645
    .local v6, "head":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    add-int/lit8 v13, v13, 0x1

    #@92
    .line 648
    .end local v6    # "head":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_4
    if-eqz v6, :cond_7

    #@94
    .line 650
    if-eqz v8, :cond_5

    #@96
    move-object/from16 v16, p4

    #@98
    .line 651
    .local v16, "root":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_2
    iget-object v0, v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@9a
    move-object/from16 v22, v0

    #@9c
    invoke-interface/range {v22 .. v22}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@9f
    move-result-object v17

    #@a0
    check-cast v17, Lorg/apache/xpath/axes/LocPathIterator;

    #@a2
    .line 652
    .local v17, "sharedIter":Lorg/apache/xpath/axes/LocPathIterator;
    move-object/from16 v0, p0

    #@a4
    move-object/from16 v1, v16

    #@a6
    move-object/from16 v2, v17

    #@a8
    invoke-virtual {v0, v1, v2, v8}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    #@ab
    move-result-object v21

    #@ac
    .line 655
    .local v21, "var":Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@af
    move-result-object v20

    #@b0
    .line 656
    .local v20, "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    :goto_3
    if-eqz v6, :cond_6

    #@b2
    .line 658
    iget-object v14, v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@b4
    .line 661
    .local v14, "owner":Lorg/apache/xpath/ExpressionOwner;
    move-object/from16 v0, p0

    #@b6
    move-object/from16 v1, v20

    #@b8
    move-object/from16 v2, p5

    #@ba
    move-object/from16 v3, v16

    #@bc
    invoke-virtual {v0, v1, v14, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@bf
    .line 662
    iget-object v6, v6, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@c1
    .restart local v6    # "head":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    goto :goto_3

    #@c2
    .line 650
    .end local v6    # "head":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v14    # "owner":Lorg/apache/xpath/ExpressionOwner;
    .end local v16    # "root":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v17    # "sharedIter":Lorg/apache/xpath/axes/LocPathIterator;
    .end local v20    # "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    .end local v21    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_5
    move-object/from16 v0, p0

    #@c4
    invoke-virtual {v0, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@c7
    move-result-object v16

    #@c8
    .restart local v16    # "root":Lorg/apache/xalan/templates/ElemTemplateElement;
    goto :goto_2

    #@c9
    .line 666
    .restart local v17    # "sharedIter":Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v20    # "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    .restart local v21    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_6
    invoke-virtual/range {v21 .. v21}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    #@cc
    move-result-object v22

    #@cd
    move-object/from16 v0, p5

    #@cf
    move-object/from16 v1, v22

    #@d1
    move/from16 v2, p2

    #@d3
    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@d6
    .line 669
    .end local v16    # "root":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v17    # "sharedIter":Lorg/apache/xpath/axes/LocPathIterator;
    .end local v20    # "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    .end local v21    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_7
    return v13
.end method

.method protected findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 17
    .param p1, "head"    # Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@0
    .prologue
    .line 295
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->getLength()I

    #@3
    move-result v11

    #@4
    .line 299
    .local v11, "numExprs":I
    new-array v5, v11, [Lorg/apache/xalan/templates/ElemTemplateElement;

    #@6
    .line 300
    .local v5, "elems":[Lorg/apache/xalan/templates/ElemTemplateElement;
    new-array v2, v11, [I

    #@8
    .line 304
    .local v2, "ancestorCounts":[I
    move-object/from16 v9, p1

    #@a
    .line 305
    .local v9, "next":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v13, 0x2710

    #@c
    .line 306
    .local v13, "shortestAncestorCount":I
    const/4 v7, 0x0

    #@d
    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_1

    #@f
    .line 309
    iget-object v15, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@11
    invoke-interface {v15}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@14
    move-result-object v15

    #@15
    move-object/from16 v0, p0

    #@17
    invoke-virtual {v0, v15}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@1a
    move-result-object v4

    #@1b
    .line 310
    .local v4, "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    aput-object v4, v5, v7

    #@1d
    .line 311
    move-object/from16 v0, p0

    #@1f
    invoke-virtual {v0, v4}, Lorg/apache/xalan/templates/RedundentExprEliminator;->countAncestors(Lorg/apache/xalan/templates/ElemTemplateElement;)I

    #@22
    move-result v10

    #@23
    .line 312
    .local v10, "numAncestors":I
    aput v10, v2, v7

    #@25
    .line 313
    if-ge v10, v13, :cond_0

    #@27
    .line 315
    move v13, v10

    #@28
    .line 317
    :cond_0
    iget-object v9, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@2a
    .line 306
    add-int/lit8 v7, v7, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 321
    .end local v4    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v10    # "numAncestors":I
    :cond_1
    const/4 v7, 0x0

    #@2e
    :goto_1
    if-ge v7, v11, :cond_3

    #@30
    .line 323
    aget v15, v2, v7

    #@32
    if-le v15, v13, :cond_2

    #@34
    .line 325
    aget v15, v2, v7

    #@36
    sub-int v12, v15, v13

    #@38
    .line 326
    .local v12, "numStepCorrection":I
    const/4 v8, 0x0

    #@39
    .local v8, "j":I
    :goto_2
    if-ge v8, v12, :cond_2

    #@3b
    .line 328
    aget-object v15, v5, v7

    #@3d
    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@40
    move-result-object v15

    #@41
    aput-object v15, v5, v7

    #@43
    .line 326
    add-int/lit8 v8, v8, 0x1

    #@45
    goto :goto_2

    #@46
    .line 321
    .end local v8    # "j":I
    .end local v12    # "numStepCorrection":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@48
    goto :goto_1

    #@49
    .line 335
    :cond_3
    const/4 v6, 0x0

    #@4a
    .local v6, "first":Lorg/apache/xalan/templates/ElemTemplateElement;
    move v14, v13

    #@4b
    .line 336
    .end local v6    # "first":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v13    # "shortestAncestorCount":I
    .local v14, "shortestAncestorCount":I
    :goto_3
    add-int/lit8 v13, v14, -0x1

    #@4d
    .end local v14    # "shortestAncestorCount":I
    .restart local v13    # "shortestAncestorCount":I
    if-ltz v14, :cond_8

    #@4f
    .line 338
    const/4 v3, 0x1

    #@50
    .line 339
    .local v3, "areEqual":Z
    const/4 v15, 0x0

    #@51
    aget-object v6, v5, v15

    #@53
    .line 340
    .local v6, "first":Lorg/apache/xalan/templates/ElemTemplateElement;
    const/4 v7, 0x1

    #@54
    :goto_4
    if-ge v7, v11, :cond_4

    #@56
    .line 342
    aget-object v15, v5, v7

    #@58
    if-eq v6, v15, :cond_5

    #@5a
    .line 344
    const/4 v3, 0x0

    #@5b
    .line 350
    :cond_4
    if-eqz v3, :cond_6

    #@5d
    move-object/from16 v0, p0

    #@5f
    move-object/from16 v1, p1

    #@61
    invoke-virtual {v0, v1, v6}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isNotSameAsOwner(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@64
    move-result v15

    #@65
    if-eqz v15, :cond_6

    #@67
    invoke-virtual {v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->canAcceptVariables()Z

    #@6a
    move-result v15

    #@6b
    if-eqz v15, :cond_6

    #@6d
    .line 357
    return-object v6

    #@6e
    .line 340
    :cond_5
    add-int/lit8 v7, v7, 0x1

    #@70
    goto :goto_4

    #@71
    .line 360
    :cond_6
    const/4 v7, 0x0

    #@72
    :goto_5
    if-ge v7, v11, :cond_7

    #@74
    .line 362
    aget-object v15, v5, v7

    #@76
    invoke-virtual {v15}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@79
    move-result-object v15

    #@7a
    aput-object v15, v5, v7

    #@7c
    .line 360
    add-int/lit8 v7, v7, 0x1

    #@7e
    goto :goto_5

    #@7f
    :cond_7
    move v14, v13

    #@80
    .end local v13    # "shortestAncestorCount":I
    .restart local v14    # "shortestAncestorCount":I
    goto :goto_3

    #@81
    .line 366
    .end local v3    # "areEqual":Z
    .end local v6    # "first":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v14    # "shortestAncestorCount":I
    .restart local v13    # "shortestAncestorCount":I
    :cond_8
    const-string/jumbo v15, "Could not find common ancestor!!!"

    #@84
    const/16 v16, 0x0

    #@86
    move/from16 v0, v16

    #@88
    invoke-static {v0, v15}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    #@8b
    .line 367
    const/4 v15, 0x0

    #@8c
    return-object v15
.end method

.method protected getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1038
    invoke-virtual {p1}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    #@4
    move-result-object v0

    #@5
    .line 1039
    .local v0, "parent":Lorg/apache/xpath/ExpressionNode;
    :goto_0
    if-eqz v0, :cond_1

    #@7
    .line 1041
    instance-of v1, v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1042
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@d
    .end local v0    # "parent":Lorg/apache/xpath/ExpressionNode;
    return-object v0

    #@e
    .line 1043
    .restart local v0    # "parent":Lorg/apache/xpath/ExpressionNode;
    :cond_0
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    #@11
    move-result-object v0

    #@12
    goto :goto_0

    #@13
    .line 1045
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v2, "ER_ASSERT_NO_TEMPLATE_PARENT"

    #@18
    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1
.end method

.method protected getPrevElementWithinContext(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .locals 3
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 1012
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@3
    move-result-object v0

    #@4
    .line 1013
    .local v0, "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-nez v0, :cond_0

    #@6
    .line 1014
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@9
    move-result-object v0

    #@a
    .line 1015
    :cond_0
    if-eqz v0, :cond_2

    #@c
    .line 1017
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@f
    move-result v1

    #@10
    .line 1018
    .local v1, "type":I
    const/16 v2, 0x1c

    #@12
    if-eq v2, v1, :cond_1

    #@14
    .line 1019
    const/16 v2, 0x13

    #@16
    if-ne v2, v1, :cond_3

    #@18
    .line 1022
    :cond_1
    :goto_0
    const/4 v0, 0x0

    #@19
    .line 1025
    .end local v0    # "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v1    # "type":I
    :cond_2
    return-object v0

    #@1a
    .line 1020
    .restart local v0    # "prev":Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v1    # "type":I
    :cond_3
    const/16 v2, 0x19

    #@1c
    if-ne v2, v1, :cond_2

    #@1e
    goto :goto_0
.end method

.method protected getPrevVariableElem(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemVariable;
    .locals 3
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 989
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getPrevElementWithinContext(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@4
    move-result-object p1

    #@5
    if-eqz p1, :cond_2

    #@7
    .line 991
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@a
    move-result v0

    #@b
    .line 993
    .local v0, "type":I
    const/16 v1, 0x49

    #@d
    if-eq v1, v0, :cond_1

    #@f
    .line 994
    const/16 v1, 0x29

    #@11
    if-ne v1, v0, :cond_0

    #@13
    .line 996
    :cond_1
    check-cast p1, Lorg/apache/xalan/templates/ElemVariable;

    #@15
    .end local p1    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    return-object p1

    #@16
    .line 999
    .end local v0    # "type":I
    .restart local p1    # "elem":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_2
    return-object v2
.end method

.method public isAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z
    .locals 3
    .param p1, "path"    # Lorg/apache/xpath/axes/LocPathIterator;

    #@0
    .prologue
    .line 1057
    invoke-virtual {p1}, Lorg/apache/xpath/axes/LocPathIterator;->getAnalysisBits()I

    #@3
    move-result v0

    #@4
    .line 1058
    .local v0, "analysis":I
    const/high16 v2, 0x8000000

    #@6
    invoke-static {v0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 1059
    const/high16 v2, 0x20000000

    #@e
    invoke-static {v0, v2}, Lorg/apache/xpath/axes/WalkerFactory;->isSet(II)Z

    #@11
    move-result v1

    #@12
    .line 1060
    :goto_0
    if-eqz v1, :cond_0

    #@14
    .line 1062
    iget-object v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPathChecker:Lorg/apache/xalan/templates/AbsPathChecker;

    #@16
    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/AbsPathChecker;->checkAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z

    #@19
    move-result v1

    #@1a
    .line 1064
    :cond_0
    return v1

    #@1b
    .line 1058
    :cond_1
    const/4 v1, 0x1

    #@1c
    .local v1, "isAbs":Z
    goto :goto_0
.end method

.method protected isNotSameAsOwner(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 3
    .param p1, "head"    # Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .param p2, "ete"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 384
    move-object v1, p1

    #@1
    .line 385
    .local v1, "next":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_0
    if-eqz v1, :cond_1

    #@3
    .line 387
    iget-object v2, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@5
    invoke-interface {v2}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->getElemFromExpression(Lorg/apache/xpath/Expression;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@c
    move-result-object v0

    #@d
    .line 388
    .local v0, "elemOwner":Lorg/apache/xalan/templates/ElemTemplateElement;
    if-ne v0, p2, :cond_0

    #@f
    .line 389
    const/4 v2, 0x0

    #@10
    return v2

    #@11
    .line 390
    :cond_0
    iget-object v1, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@13
    goto :goto_0

    #@14
    .line 392
    .end local v0    # "elemOwner":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_1
    const/4 v2, 0x1

    #@15
    return v2
.end method

.method protected isParam(Lorg/apache/xpath/ExpressionNode;)Z
    .locals 4
    .param p1, "expr"    # Lorg/apache/xpath/ExpressionNode;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 949
    :goto_0
    if-eqz p1, :cond_0

    #@3
    .line 951
    instance-of v2, p1, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 955
    :cond_0
    if-eqz p1, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 957
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    #@c
    .line 958
    .local v0, "ete":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_1
    if-eqz v0, :cond_2

    #@e
    .line 960
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@11
    move-result v1

    #@12
    .line 961
    .local v1, "type":I
    sparse-switch v1, :sswitch_data_0

    #@15
    .line 969
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    #@18
    move-result-object v0

    #@19
    goto :goto_1

    #@1a
    .line 953
    .end local v0    # "ete":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v1    # "type":I
    :cond_1
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    #@1d
    move-result-object p1

    #@1e
    goto :goto_0

    #@1f
    .line 964
    .restart local v0    # "ete":Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v1    # "type":I
    :sswitch_0
    const/4 v2, 0x1

    #@20
    return v2

    #@21
    .line 967
    :sswitch_1
    return v3

    #@22
    .line 972
    .end local v0    # "ete":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v1    # "type":I
    :cond_2
    return v3

    #@23
    .line 961
    nop

    #@24
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x19 -> :sswitch_1
        0x29 -> :sswitch_0
    .end sparse-switch
.end method

.method protected matchAndEliminatePartialPaths(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;ZILorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .locals 19
    .param p1, "testee"    # Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .param p2, "head"    # Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .param p3, "isGlobal"    # Z
    .param p4, "lengthToTest"    # I
    .param p5, "varScope"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 192
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@4
    move-object/from16 v18, v0

    #@6
    if-nez v18, :cond_0

    #@8
    .line 193
    return-object p2

    #@9
    .line 196
    :cond_0
    move-object/from16 v0, p1

    #@b
    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@d
    move-object/from16 v18, v0

    #@f
    invoke-interface/range {v18 .. v18}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@12
    move-result-object v6

    #@13
    check-cast v6, Lorg/apache/xpath/axes/WalkingIterator;

    #@15
    .line 197
    .local v6, "iter1":Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    #@17
    move-object/from16 v1, p1

    #@19
    move/from16 v2, p4

    #@1b
    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->partialIsVariable(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;I)Z

    #@1e
    move-result v18

    #@1f
    if-eqz v18, :cond_1

    #@21
    .line 198
    return-object p2

    #@22
    .line 199
    :cond_1
    const/4 v9, 0x0

    #@23
    .line 200
    .local v9, "matchedPaths":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/4 v10, 0x0

    #@24
    .line 201
    .local v10, "matchedPathsTail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    move-object/from16 v11, p2

    #@26
    .line 202
    .end local v9    # "matchedPaths":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v10    # "matchedPathsTail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .local v11, "meh":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_0
    if-eqz v11, :cond_4

    #@28
    .line 204
    move-object/from16 v0, p1

    #@2a
    if-eq v11, v0, :cond_3

    #@2c
    iget-object v0, v11, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@2e
    move-object/from16 v18, v0

    #@30
    if-eqz v18, :cond_3

    #@32
    .line 206
    iget-object v0, v11, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@34
    move-object/from16 v18, v0

    #@36
    invoke-interface/range {v18 .. v18}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@39
    move-result-object v7

    #@3a
    check-cast v7, Lorg/apache/xpath/axes/WalkingIterator;

    #@3c
    .line 207
    .local v7, "iter2":Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    #@3e
    move/from16 v1, p4

    #@40
    invoke-virtual {v0, v6, v7, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->stepsEqual(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/axes/WalkingIterator;I)Z

    #@43
    move-result v18

    #@44
    if-eqz v18, :cond_3

    #@46
    .line 209
    if-nez v9, :cond_2

    #@48
    .line 213
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    #@4b
    move-result-object v18

    #@4c
    move-object/from16 v0, v18

    #@4e
    check-cast v0, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@50
    move-object v9, v0

    #@51
    .line 214
    .local v9, "matchedPaths":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v18, 0x0

    #@53
    move-object/from16 v0, v18

    #@55
    move-object/from16 v1, p1

    #@57
    iput-object v0, v1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    #@59
    .line 217
    .end local v9    # "matchedPaths":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :goto_1
    move-object v10, v9

    #@5a
    .line 218
    .local v10, "matchedPathsTail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v18, 0x0

    #@5c
    move-object/from16 v0, v18

    #@5e
    iput-object v0, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@60
    .line 223
    .end local v10    # "matchedPathsTail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_2
    :try_start_1
    invoke-virtual {v11}, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->clone()Ljava/lang/Object;

    #@63
    move-result-object v18

    #@64
    check-cast v18, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@66
    move-object/from16 v0, v18

    #@68
    iput-object v0, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@6a
    .line 224
    const/16 v18, 0x0

    #@6c
    move-object/from16 v0, v18

    #@6e
    iput-object v0, v11, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    #@70
    .line 227
    :goto_2
    iget-object v10, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@72
    .line 228
    .restart local v10    # "matchedPathsTail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    const/16 v18, 0x0

    #@74
    move-object/from16 v0, v18

    #@76
    iput-object v0, v10, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@78
    .line 231
    .end local v7    # "iter2":Lorg/apache/xpath/axes/WalkingIterator;
    .end local v10    # "matchedPathsTail":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    :cond_3
    iget-object v11, v11, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@7a
    goto :goto_0

    #@7b
    .line 234
    :cond_4
    const/4 v8, 0x0

    #@7c
    .line 235
    .local v8, "matchCount":I
    if-eqz v9, :cond_6

    #@7e
    .line 237
    if-eqz p3, :cond_5

    #@80
    move-object/from16 v15, p5

    #@82
    .line 238
    .local v15, "root":Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_3
    iget-object v0, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@84
    move-object/from16 v18, v0

    #@86
    invoke-interface/range {v18 .. v18}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@89
    move-result-object v16

    #@8a
    check-cast v16, Lorg/apache/xpath/axes/WalkingIterator;

    #@8c
    .line 239
    .local v16, "sharedIter":Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    #@8e
    move-object/from16 v1, v16

    #@90
    move/from16 v2, p4

    #@92
    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createIteratorFromSteps(Lorg/apache/xpath/axes/WalkingIterator;I)Lorg/apache/xpath/axes/WalkingIterator;

    #@95
    move-result-object v12

    #@96
    .line 240
    .local v12, "newIter":Lorg/apache/xpath/axes/WalkingIterator;
    move-object/from16 v0, p0

    #@98
    move/from16 v1, p3

    #@9a
    invoke-virtual {v0, v15, v12, v1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    #@9d
    move-result-object v17

    #@9e
    .line 243
    .local v17, "var":Lorg/apache/xalan/templates/ElemVariable;
    :goto_4
    if-eqz v9, :cond_6

    #@a0
    .line 245
    iget-object v14, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@a2
    .line 246
    .local v14, "owner":Lorg/apache/xpath/ExpressionOwner;
    invoke-interface {v14}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@a5
    move-result-object v5

    #@a6
    check-cast v5, Lorg/apache/xpath/axes/WalkingIterator;

    #@a8
    .line 252
    .local v5, "iter":Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@ab
    move-result-object v18

    #@ac
    move-object/from16 v0, p0

    #@ae
    move-object/from16 v1, v18

    #@b0
    move/from16 v2, p4

    #@b2
    move/from16 v3, p3

    #@b4
    invoke-virtual {v0, v1, v5, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changePartToRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/axes/WalkingIterator;IZ)Lorg/apache/xpath/axes/LocPathIterator;

    #@b7
    move-result-object v13

    #@b8
    .line 253
    .local v13, "newIter2":Lorg/apache/xpath/axes/LocPathIterator;
    invoke-interface {v14, v13}, Lorg/apache/xpath/ExpressionOwner;->setExpression(Lorg/apache/xpath/Expression;)V

    #@bb
    .line 255
    iget-object v9, v9, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_next:Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;

    #@bd
    .restart local v9    # "matchedPaths":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    goto :goto_4

    #@be
    .line 237
    .end local v5    # "iter":Lorg/apache/xpath/axes/WalkingIterator;
    .end local v9    # "matchedPaths":Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .end local v12    # "newIter":Lorg/apache/xpath/axes/WalkingIterator;
    .end local v13    # "newIter2":Lorg/apache/xpath/axes/LocPathIterator;
    .end local v14    # "owner":Lorg/apache/xpath/ExpressionOwner;
    .end local v15    # "root":Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v16    # "sharedIter":Lorg/apache/xpath/axes/WalkingIterator;
    .end local v17    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_5
    move-object/from16 v0, p0

    #@c0
    invoke-virtual {v0, v9}, Lorg/apache/xalan/templates/RedundentExprEliminator;->findCommonAncestor(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;)Lorg/apache/xalan/templates/ElemTemplateElement;

    #@c3
    move-result-object v15

    #@c4
    .restart local v15    # "root":Lorg/apache/xalan/templates/ElemTemplateElement;
    goto :goto_3

    #@c5
    .line 261
    .end local v15    # "root":Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_6
    return-object p2

    #@c6
    .line 226
    .end local v8    # "matchCount":I
    .restart local v7    # "iter2":Lorg/apache/xpath/axes/WalkingIterator;
    :catch_0
    move-exception v4

    #@c7
    .local v4, "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_2

    #@c8
    .line 216
    .end local v4    # "cnse":Ljava/lang/CloneNotSupportedException;
    :catch_1
    move-exception v4

    #@c9
    .restart local v4    # "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_1
.end method

.method protected oldFindAndEliminateRedundant(IILorg/apache/xpath/ExpressionOwner;Lorg/apache/xalan/templates/ElemTemplateElement;Ljava/util/Vector;)I
    .locals 18
    .param p1, "start"    # I
    .param p2, "firstOccuranceIndex"    # I
    .param p3, "firstOccuranceOwner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p4, "psuedoVarRecipient"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .param p5, "paths"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 681
    const/4 v15, 0x0

    #@1
    .line 682
    .local v15, "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    const/4 v6, 0x0

    #@2
    .line 683
    .local v6, "foundFirst":Z
    const/4 v13, 0x0

    #@3
    .line 684
    .local v13, "numPathsFound":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    #@6
    move-result v12

    #@7
    .line 685
    .local v12, "n":I
    invoke-interface/range {p3 .. p3}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@a
    move-result-object v4

    #@b
    .line 688
    .local v4, "expr1":Lorg/apache/xpath/Expression;
    move-object/from16 v0, p0

    #@d
    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    #@f
    move-object/from16 v17, v0

    #@11
    move-object/from16 v0, p5

    #@13
    move-object/from16 v1, v17

    #@15
    if-ne v0, v1, :cond_0

    #@17
    const/4 v8, 0x1

    #@18
    .local v8, "isGlobal":Z
    :goto_0
    move-object v10, v4

    #@19
    .line 689
    check-cast v10, Lorg/apache/xpath/axes/LocPathIterator;

    #@1b
    .line 690
    .local v10, "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    move/from16 v9, p1

    #@1d
    .end local v15    # "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    .local v9, "j":I
    :goto_1
    if-ge v9, v12, :cond_4

    #@1f
    .line 692
    move-object/from16 v0, p5

    #@21
    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@24
    move-result-object v14

    #@25
    check-cast v14, Lorg/apache/xpath/ExpressionOwner;

    #@27
    .line 693
    .local v14, "owner2":Lorg/apache/xpath/ExpressionOwner;
    if-eqz v14, :cond_3

    #@29
    .line 695
    invoke-interface {v14}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@2c
    move-result-object v5

    #@2d
    .line 696
    .local v5, "expr2":Lorg/apache/xpath/Expression;
    invoke-virtual {v5, v10}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@30
    move-result v7

    #@31
    .line 697
    .local v7, "isEqual":Z
    if-eqz v7, :cond_3

    #@33
    move-object v11, v5

    #@34
    .line 699
    check-cast v11, Lorg/apache/xpath/axes/LocPathIterator;

    #@36
    .line 700
    .local v11, "lpi2":Lorg/apache/xpath/axes/LocPathIterator;
    if-nez v6, :cond_2

    #@38
    .line 702
    const/4 v6, 0x1

    #@39
    .line 706
    move-object/from16 v0, p0

    #@3b
    move-object/from16 v1, p4

    #@3d
    invoke-virtual {v0, v1, v10, v8}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    #@40
    move-result-object v16

    #@41
    .line 707
    .local v16, "var":Lorg/apache/xalan/templates/ElemVariable;
    if-nez v16, :cond_1

    #@43
    .line 708
    const/16 v17, 0x0

    #@45
    return v17

    #@46
    .line 688
    .end local v5    # "expr2":Lorg/apache/xpath/Expression;
    .end local v7    # "isEqual":Z
    .end local v8    # "isGlobal":Z
    .end local v9    # "j":I
    .end local v10    # "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    .end local v11    # "lpi2":Lorg/apache/xpath/axes/LocPathIterator;
    .end local v14    # "owner2":Lorg/apache/xpath/ExpressionOwner;
    .end local v16    # "var":Lorg/apache/xalan/templates/ElemVariable;
    .restart local v15    # "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    :cond_0
    const/4 v8, 0x0

    #@47
    .restart local v8    # "isGlobal":Z
    goto :goto_0

    #@48
    .line 709
    .end local v15    # "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    .restart local v5    # "expr2":Lorg/apache/xpath/Expression;
    .restart local v7    # "isEqual":Z
    .restart local v9    # "j":I
    .restart local v10    # "lpi":Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v11    # "lpi2":Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v14    # "owner2":Lorg/apache/xpath/ExpressionOwner;
    .restart local v16    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@4b
    move-result-object v15

    #@4c
    .line 711
    .local v15, "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    move-object/from16 v0, p0

    #@4e
    move-object/from16 v1, p3

    #@50
    move-object/from16 v2, p5

    #@52
    move-object/from16 v3, p4

    #@54
    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@57
    .line 716
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    #@5a
    move-result-object v17

    #@5b
    move-object/from16 v0, p5

    #@5d
    move-object/from16 v1, v17

    #@5f
    move/from16 v2, p2

    #@61
    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@64
    .line 717
    add-int/lit8 v13, v13, 0x1

    #@66
    .line 720
    .end local v15    # "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    .end local v16    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_2
    move-object/from16 v0, p0

    #@68
    move-object/from16 v1, p5

    #@6a
    move-object/from16 v2, p4

    #@6c
    invoke-virtual {v0, v15, v14, v1, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@6f
    .line 723
    const/16 v17, 0x0

    #@71
    move-object/from16 v0, p5

    #@73
    move-object/from16 v1, v17

    #@75
    invoke-virtual {v0, v1, v9}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@78
    .line 726
    add-int/lit8 v13, v13, 0x1

    #@7a
    .line 690
    .end local v5    # "expr2":Lorg/apache/xpath/Expression;
    .end local v7    # "isEqual":Z
    .end local v11    # "lpi2":Lorg/apache/xpath/axes/LocPathIterator;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 732
    .end local v14    # "owner2":Lorg/apache/xpath/ExpressionOwner;
    :cond_4
    if-nez v13, :cond_6

    #@7f
    move-object/from16 v0, p0

    #@81
    iget-object v0, v0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    #@83
    move-object/from16 v17, v0

    #@85
    move-object/from16 v0, p5

    #@87
    move-object/from16 v1, v17

    #@89
    if-ne v0, v1, :cond_6

    #@8b
    .line 734
    const/16 v17, 0x1

    #@8d
    move-object/from16 v0, p0

    #@8f
    move-object/from16 v1, p4

    #@91
    move/from16 v2, v17

    #@93
    invoke-virtual {v0, v1, v10, v2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->createPseudoVarDecl(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xpath/axes/LocPathIterator;Z)Lorg/apache/xalan/templates/ElemVariable;

    #@96
    move-result-object v16

    #@97
    .line 735
    .restart local v16    # "var":Lorg/apache/xalan/templates/ElemVariable;
    if-nez v16, :cond_5

    #@99
    .line 736
    const/16 v17, 0x0

    #@9b
    return v17

    #@9c
    .line 737
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@9f
    move-result-object v15

    #@a0
    .line 738
    .restart local v15    # "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    move-object/from16 v0, p0

    #@a2
    move-object/from16 v1, p3

    #@a4
    move-object/from16 v2, p5

    #@a6
    move-object/from16 v3, p4

    #@a8
    invoke-virtual {v0, v15, v1, v2, v3}, Lorg/apache/xalan/templates/RedundentExprEliminator;->changeToVarRef(Lorg/apache/xml/utils/QName;Lorg/apache/xpath/ExpressionOwner;Ljava/util/Vector;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@ab
    .line 739
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    #@ae
    move-result-object v17

    #@af
    move-object/from16 v0, p5

    #@b1
    move-object/from16 v1, v17

    #@b3
    move/from16 v2, p2

    #@b5
    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    #@b8
    .line 740
    add-int/lit8 v13, v13, 0x1

    #@ba
    .line 742
    .end local v15    # "uniquePseudoVarName":Lorg/apache/xml/utils/QName;
    .end local v16    # "var":Lorg/apache/xalan/templates/ElemVariable;
    :cond_6
    return v13
.end method

.method partialIsVariable(Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;I)Z
    .locals 3
    .param p1, "testee"    # Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;
    .param p2, "lengthToTest"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 270
    if-ne v2, p2, :cond_0

    #@3
    .line 272
    iget-object v1, p1, Lorg/apache/xalan/templates/RedundentExprEliminator$MultistepExprHolder;->m_exprOwner:Lorg/apache/xpath/ExpressionOwner;

    #@5
    invoke-interface {v1}, Lorg/apache/xpath/ExpressionOwner;->getExpression()Lorg/apache/xpath/Expression;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lorg/apache/xpath/axes/WalkingIterator;

    #@b
    .line 273
    .local v0, "wi":Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v0}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@e
    move-result-object v1

    #@f
    instance-of v1, v1, Lorg/apache/xpath/axes/FilterExprWalker;

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 274
    return v2

    #@14
    .line 276
    .end local v0    # "wi":Lorg/apache/xpath/axes/WalkingIterator;
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method

.method protected stepsEqual(Lorg/apache/xpath/axes/WalkingIterator;Lorg/apache/xpath/axes/WalkingIterator;I)Z
    .locals 6
    .param p1, "iter1"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p2, "iter2"    # Lorg/apache/xpath/axes/WalkingIterator;
    .param p3, "numSteps"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 523
    invoke-virtual {p1}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@5
    move-result-object v0

    #@6
    .line 524
    .local v0, "aw1":Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {p2}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@9
    move-result-object v1

    #@a
    .line 526
    .local v1, "aw2":Lorg/apache/xpath/axes/AxesWalker;
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_3

    #@d
    .line 528
    if-eqz v0, :cond_0

    #@f
    if-nez v1, :cond_1

    #@11
    .line 529
    :cond_0
    return v3

    #@12
    .line 531
    :cond_1
    invoke-virtual {v0, v1}, Lorg/apache/xpath/axes/AxesWalker;->deepEquals(Lorg/apache/xpath/Expression;)Z

    #@15
    move-result v5

    #@16
    if-nez v5, :cond_2

    #@18
    .line 532
    return v3

    #@19
    .line 534
    :cond_2
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@1c
    move-result-object v0

    #@1d
    .line 535
    invoke-virtual {v1}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@20
    move-result-object v1

    #@21
    .line 526
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 538
    :cond_3
    if-nez v0, :cond_4

    #@26
    if-eqz v1, :cond_5

    #@28
    :cond_4
    move v3, v4

    #@29
    :cond_5
    const-string/jumbo v5, "Total match is incorrect!"

    #@2c
    invoke-static {v3, v5}, Lorg/apache/xalan/templates/RedundentExprEliminator;->assertion(ZLjava/lang/String;)V

    #@2f
    .line 540
    return v4
.end method

.method public visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 7
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1165
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@4
    move-result v4

    #@5
    .line 1166
    .local v4, "type":I
    sparse-switch v4, :sswitch_data_0

    #@8
    .line 1207
    const/4 v5, 0x1

    #@9
    return v5

    #@a
    .line 1174
    :sswitch_0
    const/16 v5, 0x1c

    #@c
    if-ne v4, v5, :cond_0

    #@e
    move-object v0, p1

    #@f
    .line 1176
    check-cast v0, Lorg/apache/xalan/templates/ElemForEach;

    #@11
    .line 1178
    .local v0, "efe":Lorg/apache/xalan/templates/ElemForEach;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemForEach;->getSelect()Lorg/apache/xpath/Expression;

    #@14
    move-result-object v3

    #@15
    .line 1179
    .local v3, "select":Lorg/apache/xpath/Expression;
    invoke-virtual {v3, v0, p0}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@18
    .line 1182
    .end local v0    # "efe":Lorg/apache/xalan/templates/ElemForEach;
    .end local v3    # "select":Lorg/apache/xpath/Expression;
    :cond_0
    iget-object v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    #@1a
    .line 1183
    .local v2, "savedPaths":Ljava/util/Vector;
    new-instance v5, Ljava/util/Vector;

    #@1c
    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    #@1f
    iput-object v5, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    #@21
    .line 1188
    invoke-virtual {p1, p0, v6}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    #@24
    .line 1189
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->eleminateRedundentLocals(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@27
    .line 1191
    iput-object v2, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    #@29
    .line 1194
    return v6

    #@2a
    .line 1200
    .end local v2    # "savedPaths":Ljava/util/Vector;
    :sswitch_1
    iget-boolean v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    #@2c
    .line 1201
    .local v1, "savedIsSame":Z
    iput-boolean v6, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    #@2e
    .line 1202
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    #@31
    .line 1203
    iput-boolean v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    #@33
    .line 1204
    return v6

    #@34
    .line 1166
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x13 -> :sswitch_0
        0x1c -> :sswitch_0
        0x23 -> :sswitch_1
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public visitLocationPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/LocPathIterator;)Z
    .locals 6
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "path"    # Lorg/apache/xpath/axes/LocPathIterator;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1079
    instance-of v4, p2, Lorg/apache/xpath/axes/SelfIteratorNoPredicate;

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 1081
    return v5

    #@6
    .line 1083
    :cond_0
    instance-of v4, p2, Lorg/apache/xpath/axes/WalkingIterator;

    #@8
    if-eqz v4, :cond_1

    #@a
    move-object v3, p2

    #@b
    .line 1085
    check-cast v3, Lorg/apache/xpath/axes/WalkingIterator;

    #@d
    .line 1086
    .local v3, "wi":Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v3}, Lorg/apache/xpath/axes/WalkingIterator;->getFirstWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@10
    move-result-object v0

    #@11
    .line 1087
    .local v0, "aw":Lorg/apache/xpath/axes/AxesWalker;
    instance-of v4, v0, Lorg/apache/xpath/axes/FilterExprWalker;

    #@13
    if-eqz v4, :cond_1

    #@15
    invoke-virtual {v0}, Lorg/apache/xpath/axes/AxesWalker;->getNextWalker()Lorg/apache/xpath/axes/AxesWalker;

    #@18
    move-result-object v4

    #@19
    if-nez v4, :cond_1

    #@1b
    move-object v2, v0

    #@1c
    .line 1089
    check-cast v2, Lorg/apache/xpath/axes/FilterExprWalker;

    #@1e
    .line 1090
    .local v2, "few":Lorg/apache/xpath/axes/FilterExprWalker;
    invoke-virtual {v2}, Lorg/apache/xpath/axes/FilterExprWalker;->getInnerExpression()Lorg/apache/xpath/Expression;

    #@21
    move-result-object v1

    #@22
    .line 1091
    .local v1, "exp":Lorg/apache/xpath/Expression;
    instance-of v4, v1, Lorg/apache/xpath/operations/Variable;

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 1092
    return v5

    #@27
    .line 1096
    .end local v0    # "aw":Lorg/apache/xpath/axes/AxesWalker;
    .end local v1    # "exp":Lorg/apache/xpath/Expression;
    .end local v2    # "few":Lorg/apache/xpath/axes/FilterExprWalker;
    .end local v3    # "wi":Lorg/apache/xpath/axes/WalkingIterator;
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/RedundentExprEliminator;->isAbsolute(Lorg/apache/xpath/axes/LocPathIterator;)Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_3

    #@2d
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    #@2f
    if-eqz v4, :cond_3

    #@31
    .line 1100
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_absPaths:Ljava/util/Vector;

    #@33
    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@36
    .line 1109
    :cond_2
    :goto_0
    return v5

    #@37
    .line 1102
    :cond_3
    iget-boolean v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    #@39
    if-eqz v4, :cond_2

    #@3b
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    #@3d
    if-eqz v4, :cond_2

    #@3f
    .line 1106
    iget-object v4, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_paths:Ljava/util/Vector;

    #@41
    invoke-virtual {v4, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@44
    goto :goto_0
.end method

.method public visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z
    .locals 2
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "pred"    # Lorg/apache/xpath/Expression;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1124
    iget-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    #@3
    .line 1125
    .local v0, "savedIsSame":Z
    iput-boolean v1, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    #@5
    .line 1128
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    #@8
    .line 1130
    iput-boolean v0, p0, Lorg/apache/xalan/templates/RedundentExprEliminator;->m_isSameContext:Z

    #@a
    .line 1134
    return v1
.end method

.method public visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 2
    .param p1, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;

    #@0
    .prologue
    .line 1145
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    #@3
    move-result v0

    #@4
    .line 1146
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    #@7
    .line 1151
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 1149
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/RedundentExprEliminator;->visitInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .line 1146
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch
.end method
