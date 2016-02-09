.class public Lorg/apache/xpath/XPathContext;
.super Lorg/apache/xml/dtm/DTMManager;
.source "XPathContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/XPathContext$XPathExpressionContext;
    }
.end annotation


# static fields
.field public static final RECURSIONLIMIT:I = 0x1000


# instance fields
.field expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

.field private m_DTMXRTreeFrags:Ljava/util/HashMap;

.field private m_axesIteratorStack:Ljava/util/Stack;

.field private m_contextNodeLists:Ljava/util/Stack;

.field private m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

.field private m_currentNodes:Lorg/apache/xml/utils/IntStack;

.field private m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

.field protected m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

.field private m_isSecureProcessing:Z

.field private m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

.field m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

.field private m_owner:Ljava/lang/Object;

.field private m_ownerGetErrorListener:Ljava/lang/reflect/Method;

.field private m_predicatePos:Lorg/apache/xml/utils/IntStack;

.field private m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

.field private m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

.field public m_primaryReader:Lorg/xml/sax/XMLReader;

.field private m_rtfdtm_stack:Ljava/util/Vector;

.field m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

.field private m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

.field private m_uriResolver:Ljavax/xml/transform/URIResolver;

.field private m_variableStacks:Lorg/apache/xpath/VariableStack;

.field private m_which_rtfdtm:I


# direct methods
.method static synthetic -get0(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/VariableStack;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 310
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    #@4
    .line 309
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "owner"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 337
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    #@4
    .line 335
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "recursiveVarContext"    # Z

    #@0
    .prologue
    .line 349
    invoke-direct {p0, p2}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    #@3
    .line 350
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    #@5
    .line 352
    :try_start_0
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    #@7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, "getErrorListener"

    #@e
    const/4 v3, 0x0

    #@f
    new-array v3, v3, [Ljava/lang/Class;

    #@11
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 348
    :goto_0
    return-void

    #@18
    .line 354
    :catch_0
    move-exception v0

    #@19
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "recursiveVarContext"    # Z

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const/16 v2, 0x1000

    #@3
    const/4 v1, 0x0

    #@4
    .line 319
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMManager;-><init>()V

    #@7
    .line 65
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@9
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@c
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    #@e
    .line 76
    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@10
    .line 78
    iput v3, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@12
    .line 84
    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@14
    .line 90
    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    #@16
    .line 95
    const/4 v0, 0x0

    #@17
    iput-boolean v0, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    #@19
    .line 103
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    #@1c
    move-result-object v0

    #@1d
    .line 102
    invoke-static {v0}, Lorg/apache/xml/dtm/DTMManager;->newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@23
    .line 396
    new-instance v0, Lorg/apache/xml/utils/ObjectStack;

    #@25
    invoke-direct {v0, v2}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    #@28
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    #@2a
    .line 502
    new-instance v0, Lorg/apache/xpath/SourceTreeManager;

    #@2c
    invoke-direct {v0}, Lorg/apache/xpath/SourceTreeManager;-><init>()V

    #@2f
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    #@31
    .line 668
    new-instance v0, Ljava/util/Stack;

    #@33
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #@36
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    #@38
    .line 722
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@3a
    invoke-direct {v0, v2}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    #@3d
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@3f
    .line 853
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    #@41
    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@44
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    #@46
    .line 856
    new-instance v0, Lorg/apache/xml/utils/NodeVector;

    #@48
    invoke-direct {v0}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    #@4b
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    #@4d
    .line 859
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@4f
    invoke-direct {v0, v2}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    #@52
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@54
    .line 865
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    #@56
    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@59
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    #@5b
    .line 912
    new-instance v0, Lorg/apache/xml/utils/ObjectStack;

    #@5d
    invoke-direct {v0, v2}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    #@60
    .line 911
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    #@62
    .line 971
    new-instance v0, Ljava/util/Stack;

    #@64
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    #@67
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    #@69
    .line 1057
    new-instance v0, Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    #@6b
    invoke-direct {v0, p0}, Lorg/apache/xpath/XPathContext$XPathExpressionContext;-><init>(Lorg/apache/xpath/XPathContext;)V

    #@6e
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    #@70
    .line 320
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    #@72
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@75
    .line 321
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@77
    invoke-virtual {v0, v3}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@7a
    .line 322
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@7c
    invoke-virtual {v0, v3}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@7f
    .line 323
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    #@81
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@84
    .line 324
    if-eqz p1, :cond_0

    #@86
    new-instance v0, Lorg/apache/xpath/VariableStack;

    #@88
    invoke-direct {v0}, Lorg/apache/xpath/VariableStack;-><init>()V

    #@8b
    :goto_0
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    #@8d
    .line 319
    return-void

    #@8e
    .line 325
    :cond_0
    new-instance v0, Lorg/apache/xpath/VariableStack;

    #@90
    const/4 v1, 0x1

    #@91
    invoke-direct {v0, v1}, Lorg/apache/xpath/VariableStack;-><init>(I)V

    #@94
    goto :goto_0
.end method

.method private assertion(ZLjava/lang/String;)V
    .locals 5
    .param p1, "b"    # Z
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 646
    if-nez p1, :cond_0

    #@2
    .line 648
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    #@5
    move-result-object v0

    #@6
    .line 650
    .local v0, "errorHandler":Ljavax/xml/transform/ErrorListener;
    if-eqz v0, :cond_0

    #@8
    .line 653
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@a
    .line 655
    const-string/jumbo v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    #@d
    .line 656
    const/4 v3, 0x1

    #@e
    new-array v3, v3, [Ljava/lang/Object;

    #@10
    const/4 v4, 0x0

    #@11
    aput-object p2, v3, v4

    #@13
    .line 654
    invoke-static {v1, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    .line 656
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lorg/apache/xml/utils/SAXSourceLocator;

    #@1d
    .line 653
    invoke-direct {v2, v3, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    #@20
    .line 652
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    #@23
    .line 644
    .end local v0    # "errorHandler":Ljavax/xml/transform/ErrorListener;
    :cond_0
    return-void
.end method

.method private final releaseDTMXRTreeFrags()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1341
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 1342
    return-void

    #@6
    .line 1344
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    #@8
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .line 1345
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    .line 1346
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@1c
    .line 1347
    .local v0, "frag":Lorg/apache/xpath/objects/DTMXRTreeFrag;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->destruct()V

    #@1f
    .line 1348
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@22
    goto :goto_0

    #@23
    .line 1350
    .end local v0    # "frag":Lorg/apache/xpath/objects/DTMXRTreeFrag;
    :cond_1
    iput-object v3, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    #@25
    .line 1340
    return-void
.end method


# virtual methods
.method public createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 2
    .param p1, "node"    # I

    #@0
    .prologue
    .line 298
    new-instance v0, Lorg/apache/xpath/axes/OneStepIteratorForward;

    #@2
    const/16 v1, 0xd

    #@4
    invoke-direct {v0, v1}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(I)V

    #@7
    .line 299
    .local v0, "iter":Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v0, p1, p0}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    #@a
    .line 300
    return-object v0
.end method

.method public createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "whatToShow"    # I
    .param p2, "filter"    # Lorg/apache/xml/dtm/DTMFilter;
    .param p3, "entityReferenceExpansion"    # Z

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "xpathCompiler"    # Ljava/lang/Object;
    .param p2, "pos"    # I

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@2
    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
    .locals 1
    .param p1, "xpathString"    # Ljava/lang/String;
    .param p2, "presolver"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@2
    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public createDocumentFragment()Lorg/apache/xml/dtm/DTM;
    .locals 1

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/dtm/DTMManager;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getAxesIteratorStackStacks()Ljava/util/Stack;
    .locals 1

    #@0
    .prologue
    .line 973
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    #@2
    return-object v0
.end method

.method public final getContextNode()I
    .locals 1

    #@0
    .prologue
    .line 1031
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;
    .locals 1

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_0

    #@8
    .line 683
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    #@a
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lorg/apache/xml/dtm/DTMIterator;

    #@10
    return-object v0

    #@11
    .line 685
    :cond_0
    const/4 v0, 0x0

    #@12
    return-object v0
.end method

.method public getContextNodeListsStack()Ljava/util/Stack;
    .locals 1

    #@0
    .prologue
    .line 670
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    #@2
    return-object v0
.end method

.method public final getContextNodes()Lorg/apache/xml/dtm/DTMIterator;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1044
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    #@4
    move-result-object v0

    #@5
    .line 1046
    .local v0, "cnl":Lorg/apache/xml/dtm/DTMIterator;
    if-eqz v0, :cond_0

    #@7
    .line 1047
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v2

    #@b
    return-object v2

    #@c
    .line 1049
    :cond_0
    return-object v2

    #@d
    .line 1052
    .end local v0    # "cnl":Lorg/apache/xml/dtm/DTMIterator;
    :catch_0
    move-exception v1

    #@e
    .line 1053
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    return-object v2
.end method

.method public final getCurrentExpressionNode()I
    .locals 1

    #@0
    .prologue
    .line 889
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;
    .locals 1

    #@0
    .prologue
    .line 862
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    return-object v0
.end method

.method public final getCurrentNode()I
    .locals 1

    #@0
    .prologue
    .line 736
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrentNodeList()Lorg/apache/xpath/axes/SubContextList;
    .locals 2

    #@0
    .prologue
    .line 1018
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1019
    const/4 v0, 0x0

    #@9
    .line 1018
    :goto_0
    return-object v0

    #@a
    .line 1019
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    #@c
    const/4 v1, 0x0

    #@d
    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lorg/apache/xpath/axes/SubContextList;

    #@13
    goto :goto_0
.end method

.method public getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;
    .locals 1

    #@0
    .prologue
    .line 726
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    return-object v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .locals 1
    .param p1, "nodeHandle"    # I

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    .locals 6
    .param p1, "source"    # Ljavax/xml/transform/Source;
    .param p2, "unique"    # Z
    .param p3, "wsfilter"    # Lorg/apache/xml/dtm/DTMWSFilter;
    .param p4, "incremental"    # Z
    .param p5, "doIndexing"    # Z

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
    .locals 1
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;

    #@0
    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@2
    return-object v0
.end method

.method public getDTMXRTreeFrag(I)Lorg/apache/xpath/objects/DTMXRTreeFrag;
    .locals 3
    .param p1, "dtmIdentity"    # I

    #@0
    .prologue
    .line 1323
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1324
    new-instance v1, Ljava/util/HashMap;

    #@6
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    #@b
    .line 1327
    :cond_0
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    #@d
    new-instance v2, Ljava/lang/Integer;

    #@f
    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    #@12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-eqz v1, :cond_1

    #@18
    .line 1328
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    #@1a
    new-instance v2, Ljava/lang/Integer;

    #@1c
    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    #@1f
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@25
    return-object v1

    #@26
    .line 1330
    :cond_1
    new-instance v0, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    #@28
    invoke-direct {v0, p1, p0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;-><init>(ILorg/apache/xpath/XPathContext;)V

    #@2b
    .line 1331
    .local v0, "frag":Lorg/apache/xpath/objects/DTMXRTreeFrag;
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    #@2d
    new-instance v2, Ljava/lang/Integer;

    #@2f
    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    #@32
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 1332
    return-object v0
.end method

.method public final getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 6

    #@0
    .prologue
    .line 543
    iget-object v3, p0, Lorg/apache/xpath/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 544
    iget-object v3, p0, Lorg/apache/xpath/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@6
    return-object v3

    #@7
    .line 546
    :cond_0
    const/4 v2, 0x0

    #@8
    .line 549
    .local v2, "retval":Ljavax/xml/transform/ErrorListener;
    :try_start_0
    iget-object v3, p0, Lorg/apache/xpath/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 550
    iget-object v3, p0, Lorg/apache/xpath/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;

    #@e
    iget-object v4, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    #@10
    const/4 v5, 0x0

    #@11
    new-array v5, v5, [Ljava/lang/Object;

    #@13
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v3

    #@17
    move-object v0, v3

    #@18
    check-cast v0, Ljavax/xml/transform/ErrorListener;

    #@1a
    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 554
    .end local v2    # "retval":Ljavax/xml/transform/ErrorListener;
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    #@1d
    .line 556
    iget-object v3, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    #@1f
    if-nez v3, :cond_2

    #@21
    .line 557
    new-instance v3, Lorg/apache/xml/utils/DefaultErrorHandler;

    #@23
    invoke-direct {v3}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    #@26
    iput-object v3, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    #@28
    .line 558
    :cond_2
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    #@2a
    .line 561
    :cond_3
    return-object v2

    #@2b
    .line 552
    .restart local v2    # "retval":Ljavax/xml/transform/ErrorListener;
    :catch_0
    move-exception v1

    #@2c
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;
    .locals 1

    #@0
    .prologue
    .line 1066
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    #@2
    return-object v0
.end method

.method public getGlobalRTFDTM()Lorg/apache/xml/dtm/DTM;
    .locals 6

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1198
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@8
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->isTreeIncomplete()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1200
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@10
    const/4 v2, 0x1

    #@11
    move-object v3, v1

    #@12
    move v5, v4

    #@13
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@19
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@1b
    .line 1202
    :cond_1
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@1d
    return-object v0
.end method

.method public final getIteratorRoot()I
    .locals 1

    #@0
    .prologue
    .line 849
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->peepOrNull()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;
    .locals 1

    #@0
    .prologue
    .line 922
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xml/utils/PrefixResolver;

    #@8
    return-object v0
.end method

.method public getOwnerObject()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 465
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public final getPredicatePos()I
    .locals 1

    #@0
    .prologue
    .line 869
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->peek()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getPredicateRoot()I
    .locals 1

    #@0
    .prologue
    .line 825
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->peepOrNull()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getPrimaryReader()Lorg/xml/sax/XMLReader;
    .locals 1

    #@0
    .prologue
    .line 616
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_primaryReader:Lorg/xml/sax/XMLReader;

    #@2
    return-object v0
.end method

.method public getRTFDTM()Lorg/apache/xml/dtm/DTM;
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 1231
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1233
    new-instance v0, Ljava/util/Vector;

    #@9
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@c
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@e
    .line 1234
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@10
    move-object v3, v1

    #@11
    move v5, v4

    #@12
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    #@15
    move-result-object v6

    #@16
    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@18
    .line 1235
    .local v6, "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@1a
    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1d
    .line 1236
    iget v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    iput v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@23
    .line 1264
    :cond_0
    :goto_0
    return-object v6

    #@24
    .line 1238
    .end local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    :cond_1
    iget v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@26
    if-gez v0, :cond_2

    #@28
    .line 1240
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@2a
    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@2c
    add-int/lit8 v1, v1, 0x1

    #@2e
    iput v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@30
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@33
    move-result-object v6

    #@34
    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@36
    .restart local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    goto :goto_0

    #@37
    .line 1244
    .end local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    :cond_2
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@39
    iget v3, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@3b
    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@3e
    move-result-object v6

    #@3f
    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@41
    .line 1252
    .restart local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    invoke-virtual {v6}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->isTreeIncomplete()Z

    #@44
    move-result v0

    #@45
    if-eqz v0, :cond_0

    #@47
    .line 1254
    iget v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@49
    add-int/lit8 v0, v0, 0x1

    #@4b
    iput v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@4d
    iget-object v3, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@4f
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@52
    move-result v3

    #@53
    if-ge v0, v3, :cond_3

    #@55
    .line 1255
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@57
    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@59
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5c
    move-result-object v6

    #@5d
    .end local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@5f
    .restart local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    goto :goto_0

    #@60
    .line 1258
    :cond_3
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@62
    move-object v3, v1

    #@63
    move v5, v4

    #@64
    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    #@67
    move-result-object v6

    #@68
    .end local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    check-cast v6, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@6a
    .line 1259
    .restart local v6    # "rtfdtm":Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@6c
    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@6f
    goto :goto_0
.end method

.method public getSAXLocator()Ljavax/xml/transform/SourceLocator;
    .locals 1

    #@0
    .prologue
    .line 444
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljavax/xml/transform/SourceLocator;

    #@8
    return-object v0
.end method

.method public final getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;
    .locals 1

    #@0
    .prologue
    .line 511
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    #@2
    return-object v0
.end method

.method public getSubContextList()Lorg/apache/xpath/axes/SubContextList;
    .locals 1

    #@0
    .prologue
    .line 1004
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1005
    const/4 v0, 0x0

    #@9
    .line 1004
    :goto_0
    return-object v0

    #@a
    .line 1005
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    #@c
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lorg/apache/xpath/axes/SubContextList;

    #@12
    goto :goto_0
.end method

.method public final getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    #@0
    .prologue
    .line 590
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@2
    return-object v0
.end method

.method public final getVarStack()Lorg/apache/xpath/VariableStack;
    .locals 1

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    #@2
    return-object v0
.end method

.method public isSecureProcessing()Z
    .locals 1

    #@0
    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    #@2
    return v0
.end method

.method public final popContextNodeList()V
    .locals 2

    #@0
    .prologue
    .line 706
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 707
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "Warning: popContextNodeList when stack is empty!"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 704
    :goto_0
    return-void

    #@11
    .line 709
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    #@13
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@16
    goto :goto_0
.end method

.method public final popCurrentExpressionNode()V
    .locals 2

    #@0
    .prologue
    .line 908
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    #@6
    .line 906
    return-void
.end method

.method public final popCurrentNode()V
    .locals 2

    #@0
    .prologue
    .line 801
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    #@6
    .line 799
    return-void
.end method

.method public final popCurrentNodeAndExpression()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 756
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@3
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    #@6
    .line 757
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    #@b
    .line 754
    return-void
.end method

.method public final popExpressionState()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 779
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@3
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    #@6
    .line 780
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    #@b
    .line 781
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    #@d
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    #@10
    .line 777
    return-void
.end method

.method public final popIteratorRoot()V
    .locals 1

    #@0
    .prologue
    .line 841
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->popQuick()V

    #@5
    .line 839
    return-void
.end method

.method public final popNamespaceContext()V
    .locals 1

    #@0
    .prologue
    .line 961
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    #@5
    .line 959
    return-void
.end method

.method public final popPredicatePos()V
    .locals 1

    #@0
    .prologue
    .line 879
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@5
    .line 877
    return-void
.end method

.method public final popPredicateRoot()V
    .locals 1

    #@0
    .prologue
    .line 817
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/NodeVector;->popQuick()V

    #@5
    .line 815
    return-void
.end method

.method public popRTFContext()V
    .locals 4

    #@0
    .prologue
    .line 1294
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v2}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@5
    move-result v1

    #@6
    .line 1295
    .local v1, "previous":I
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@8
    if-nez v2, :cond_0

    #@a
    .line 1296
    return-void

    #@b
    .line 1298
    :cond_0
    iget v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@d
    if-ne v2, v1, :cond_2

    #@f
    .line 1300
    if-ltz v1, :cond_1

    #@11
    .line 1302
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@13
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@19
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->popRewindMark()Z

    #@1c
    move-result v0

    #@1d
    .line 1292
    :cond_1
    return-void

    #@1e
    .line 1305
    :cond_2
    :goto_0
    iget v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@20
    if-eq v2, v1, :cond_1

    #@22
    .line 1310
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@24
    iget v3, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@26
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@2c
    invoke-virtual {v2}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->popRewindMark()Z

    #@2f
    move-result v0

    #@30
    .line 1311
    .local v0, "isEmpty":Z
    iget v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@32
    add-int/lit8 v2, v2, -0x1

    #@34
    iput v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@36
    goto :goto_0
.end method

.method public popSAXLocator()V
    .locals 1

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    #@5
    .line 432
    return-void
.end method

.method public final popSubContextList()V
    .locals 1

    #@0
    .prologue
    .line 993
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@5
    .line 991
    return-void
.end method

.method public final pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    .locals 1
    .param p1, "nl"    # Lorg/apache/xml/dtm/DTMIterator;

    #@0
    .prologue
    .line 697
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 695
    return-void
.end method

.method public final pushCurrentExpressionNode(I)V
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 899
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@5
    .line 897
    return-void
.end method

.method public final pushCurrentNode(I)V
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 793
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@5
    .line 791
    return-void
.end method

.method public final pushCurrentNodeAndExpression(II)V
    .locals 1
    .param p1, "cn"    # I
    .param p2, "en"    # I

    #@0
    .prologue
    .line 747
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@5
    .line 748
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@7
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@a
    .line 745
    return-void
.end method

.method public final pushExpressionState(IILorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "cn"    # I
    .param p2, "en"    # I
    .param p3, "nc"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    .line 769
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@5
    .line 770
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@7
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@a
    .line 771
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    #@c
    invoke-virtual {v0, p3}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 767
    return-void
.end method

.method public final pushIteratorRoot(I)V
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    #@5
    .line 831
    return-void
.end method

.method public final pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "pr"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    .line 944
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 942
    return-void
.end method

.method public final pushNamespaceContextNull()V
    .locals 2

    #@0
    .prologue
    .line 953
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 951
    return-void
.end method

.method public final pushPredicatePos(I)V
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 874
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@5
    .line 872
    return-void
.end method

.method public final pushPredicateRoot(I)V
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 809
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    #@5
    .line 807
    return-void
.end method

.method public pushRTFContext()V
    .locals 2

    #@0
    .prologue
    .line 1273
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    #@2
    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@4
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@7
    .line 1274
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1275
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getRTFDTM()Lorg/apache/xml/dtm/DTM;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@11
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->pushRewindMark()V

    #@14
    .line 1271
    :cond_0
    return-void
.end method

.method public pushSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "location"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 415
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 413
    return-void
.end method

.method public pushSAXLocatorNull()V
    .locals 2

    #@0
    .prologue
    .line 425
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 423
    return-void
.end method

.method public final pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V
    .locals 1
    .param p1, "iter"    # Lorg/apache/xpath/axes/SubContextList;

    #@0
    .prologue
    .line 984
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 982
    return-void
.end method

.method public release(Lorg/apache/xml/dtm/DTM;Z)Z
    .locals 1
    .param p1, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .param p2, "shouldHardDelete"    # Z

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@6
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 223
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 226
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@10
    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public reset()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 362
    invoke-direct {p0}, Lorg/apache/xpath/XPathContext;->releaseDTMXRTreeFrags()V

    #@6
    .line 364
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 365
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@c
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@f
    move-result-object v0

    #@10
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 366
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@18
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lorg/apache/xml/dtm/DTM;

    #@1e
    invoke-virtual {v2, v1, v5}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    #@21
    goto :goto_0

    #@22
    .line 368
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_0
    iput-object v3, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    #@24
    .line 369
    iput v4, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    #@26
    .line 371
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 372
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@2c
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@2e
    invoke-virtual {v1, v2, v5}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    #@31
    .line 373
    :cond_1
    iput-object v3, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    #@33
    .line 377
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    #@36
    move-result-object v1

    #@37
    .line 376
    invoke-static {v1}, Lorg/apache/xml/dtm/DTMManager;->newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;

    #@3a
    move-result-object v1

    #@3b
    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    #@3d
    .line 379
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    #@3f
    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectStack;->removeAllElements()V

    #@42
    .line 380
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    #@44
    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    #@47
    .line 381
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    #@49
    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    #@4c
    .line 382
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@4e
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->removeAllElements()V

    #@51
    .line 383
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@53
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->removeAllElements()V

    #@56
    .line 384
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    #@58
    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->RemoveAllNoClear()V

    #@5b
    .line 385
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    #@5d
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->removeAllElements()V

    #@60
    .line 386
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    #@62
    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->RemoveAllNoClear()V

    #@65
    .line 387
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    #@67
    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectStack;->removeAllElements()V

    #@6a
    .line 389
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    #@6c
    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    .line 390
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@71
    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@74
    .line 391
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@76
    invoke-virtual {v1, v4}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@79
    .line 392
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    #@7b
    invoke-virtual {v1, v3}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@7e
    .line 360
    return-void
.end method

.method public setAxesIteratorStackStacks(Ljava/util/Stack;)V
    .locals 0
    .param p1, "s"    # Ljava/util/Stack;

    #@0
    .prologue
    .line 974
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    #@2
    return-void
.end method

.method public setContextNodeListsStack(Ljava/util/Stack;)V
    .locals 0
    .param p1, "s"    # Ljava/util/Stack;

    #@0
    .prologue
    .line 671
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    #@2
    return-void
.end method

.method public setCurrentExpressionNodeStack(Lorg/apache/xml/utils/IntStack;)V
    .locals 0
    .param p1, "nv"    # Lorg/apache/xml/utils/IntStack;

    #@0
    .prologue
    .line 863
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    return-void
.end method

.method public setCurrentNodeStack(Lorg/apache/xml/utils/IntStack;)V
    .locals 0
    .param p1, "nv"    # Lorg/apache/xml/utils/IntStack;

    #@0
    .prologue
    .line 727
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    #@2
    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 3
    .param p1, "listener"    # Ljavax/xml/transform/ErrorListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 571
    if-nez p1, :cond_0

    #@3
    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v1, "ER_NULL_ERROR_HANDLER"

    #@8
    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 573
    :cond_0
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    #@12
    .line 569
    return-void
.end method

.method public final setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .locals 1
    .param p1, "pr"    # Lorg/apache/xml/utils/PrefixResolver;

    #@0
    .prologue
    .line 933
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    #@5
    .line 931
    return-void
.end method

.method public setPrimaryReader(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;

    #@0
    .prologue
    .line 626
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_primaryReader:Lorg/xml/sax/XMLReader;

    #@2
    .line 624
    return-void
.end method

.method public setSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    .locals 1
    .param p1, "location"    # Ljavax/xml/transform/SourceLocator;

    #@0
    .prologue
    .line 405
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    #@5
    .line 403
    return-void
.end method

.method public setSecureProcessing(Z)V
    .locals 0
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    #@2
    .line 119
    return-void
.end method

.method public setSourceTreeManager(Lorg/apache/xpath/SourceTreeManager;)V
    .locals 0
    .param p1, "mgr"    # Lorg/apache/xpath/SourceTreeManager;

    #@0
    .prologue
    .line 522
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    #@2
    .line 520
    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0
    .param p1, "resolver"    # Ljavax/xml/transform/URIResolver;

    #@0
    .prologue
    .line 601
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    #@2
    .line 599
    return-void
.end method

.method public final setVarStack(Lorg/apache/xpath/VariableStack;)V
    .locals 0
    .param p1, "varStack"    # Lorg/apache/xpath/VariableStack;

    #@0
    .prologue
    .line 495
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    #@2
    .line 493
    return-void
.end method
