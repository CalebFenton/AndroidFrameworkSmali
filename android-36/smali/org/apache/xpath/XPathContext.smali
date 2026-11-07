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
.field public static final greylist RECURSIONLIMIT:I = 0x1000


# instance fields
.field greylist expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

.field private greylist m_DTMXRTreeFrags:Ljava/util/HashMap;

.field private greylist m_axesIteratorStack:Ljava/util/Stack;

.field private greylist m_contextNodeLists:Ljava/util/Stack;

.field private greylist m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

.field private greylist m_currentNodes:Lorg/apache/xml/utils/IntStack;

.field private greylist m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

.field protected greylist m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

.field private greylist m_errorListener:Ljavax/xml/transform/ErrorListener;

.field private greylist m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

.field private greylist m_isSecureProcessing:Z

.field private greylist m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

.field greylist m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

.field private greylist m_owner:Ljava/lang/Object;

.field private greylist m_ownerGetErrorListener:Ljava/lang/reflect/Method;

.field private greylist m_predicatePos:Lorg/apache/xml/utils/IntStack;

.field private greylist m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

.field private greylist m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

.field public greylist m_primaryReader:Lorg/xml/sax/XMLReader;

.field private greylist m_rtfdtm_stack:Ljava/util/Vector;

.field greylist m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

.field private greylist m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

.field private greylist m_uriResolver:Ljavax/xml/transform/URIResolver;

.field private greylist m_variableStacks:Lorg/apache/xpath/VariableStack;

.field private greylist m_which_rtfdtm:I


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetm_variableStacks(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/VariableStack;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    return-object p0
.end method

.method public constructor greylist <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 310
    invoke-direct {p0, v0}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x1

    .line 337
    invoke-direct {p0, p1, v0}, Lorg/apache/xpath/XPathContext;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Object;Z)V
    .registers 4

    .line 349
    invoke-direct {p0, p2}, Lorg/apache/xpath/XPathContext;-><init>(Z)V

    .line 350
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    .line 352
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "getErrorListener"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method

.method public constructor greylist <init>(Z)V
    .registers 6

    .line 319
    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMManager;-><init>()V

    .line 65
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    const/4 v1, -0x1

    .line 78
    iput v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    .line 84
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 90
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 95
    iput-boolean v2, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    .line 103
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v2

    .line 102
    invoke-static {v2}, Lorg/apache/xml/dtm/DTMManager;->newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    .line 396
    new-instance v2, Lorg/apache/xml/utils/ObjectStack;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    .line 502
    new-instance v2, Lorg/apache/xpath/SourceTreeManager;

    invoke-direct {v2}, Lorg/apache/xpath/SourceTreeManager;-><init>()V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    .line 668
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    .line 722
    new-instance v2, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    .line 853
    new-instance v2, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v2}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    .line 856
    new-instance v2, Lorg/apache/xml/utils/NodeVector;

    invoke-direct {v2}, Lorg/apache/xml/utils/NodeVector;-><init>()V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    .line 859
    new-instance v2, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/IntStack;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    .line 865
    new-instance v2, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v2}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    .line 911
    new-instance v2, Lorg/apache/xml/utils/ObjectStack;

    invoke-direct {v2, v3}, Lorg/apache/xml/utils/ObjectStack;-><init>(I)V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    .line 971
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    .line 1057
    new-instance v2, Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    invoke-direct {v2, p0}, Lorg/apache/xpath/XPathContext$XPathExpressionContext;-><init>(Lorg/apache/xpath/XPathContext;)V

    iput-object v2, p0, Lorg/apache/xpath/XPathContext;->expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    .line 320
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 322
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 323
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8c

    .line 324
    new-instance p1, Lorg/apache/xpath/VariableStack;

    invoke-direct {p1}, Lorg/apache/xpath/VariableStack;-><init>()V

    goto :goto_92

    .line 325
    :cond_8c
    new-instance p1, Lorg/apache/xpath/VariableStack;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lorg/apache/xpath/VariableStack;-><init>(I)V

    :goto_92
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    return-void
.end method

.method private greylist assertion(ZLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    if-nez p1, :cond_20

    .line 648
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 652
    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 654
    invoke-static {v1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 656
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v0, p2, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 652
    invoke-interface {p1, v0}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    :cond_20
    return-void
.end method

.method private final greylist releaseDTMXRTreeFrags()V
    .registers 3

    .line 1341
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    .line 1344
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1345
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1346
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    .line 1347
    invoke-virtual {v1}, Lorg/apache/xpath/objects/DTMXRTreeFrag;->destruct()V

    .line 1348
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_20
    const/4 v0, 0x0

    .line 1350
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public greylist createDTMIterator(I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 4

    .line 298
    new-instance v0, Lorg/apache/xpath/axes/OneStepIteratorForward;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/apache/xpath/axes/OneStepIteratorForward;-><init>(I)V

    .line 299
    invoke-interface {v0, p1, p0}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    return-object v0
.end method

.method public greylist createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;
    .registers 4

    .line 285
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(ILorg/apache/xml/dtm/DTMFilter;Z)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    return-object p0
.end method

.method public greylist createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 3

    .line 243
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(Ljava/lang/Object;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    return-object p0
.end method

.method public greylist createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;
    .registers 3

    .line 262
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->createDTMIterator(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    return-object p0
.end method

.method public greylist createDocumentFragment()Lorg/apache/xml/dtm/DTM;
    .registers 1

    .line 202
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0}, Lorg/apache/xml/dtm/DTMManager;->createDocumentFragment()Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public greylist getAxesIteratorStackStacks()Ljava/util/Stack;
    .registers 1

    .line 973
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    return-object p0
.end method

.method public final greylist getContextNode()I
    .registers 1

    .line 1031
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result p0

    return p0
.end method

.method public final greylist getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;
    .registers 2

    .line 682
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 683
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/dtm/DTMIterator;

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getContextNodeListsStack()Ljava/util/Stack;
    .registers 1

    .line 670
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    return-object p0
.end method

.method public final greylist getContextNodes()Lorg/apache/xml/dtm/DTMIterator;
    .registers 2

    const/4 v0, 0x0

    .line 1044
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getContextNodeList()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1047
    invoke-interface {p0}, Lorg/apache/xml/dtm/DTMIterator;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    :cond_c
    return-object v0
.end method

.method public final greylist getCurrentExpressionNode()I
    .registers 1

    .line 889
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result p0

    return p0
.end method

.method public greylist getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;
    .registers 1

    .line 862
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    return-object p0
.end method

.method public final greylist getCurrentNode()I
    .registers 1

    .line 736
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result p0

    return p0
.end method

.method public greylist getCurrentNodeList()Lorg/apache/xpath/axes/SubContextList;
    .registers 2

    .line 1018
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1019
    :cond_a
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/axes/SubContextList;

    return-object p0
.end method

.method public greylist getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;
    .registers 1

    .line 726
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    return-object p0
.end method

.method public greylist getDTM(I)Lorg/apache/xml/dtm/DTM;
    .registers 2

    .line 171
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;
    .registers 6

    .line 158
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual/range {p0 .. p5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    return-object p0
.end method

.method public greylist getDTMHandleFromNode(Lorg/w3c/dom/Node;)I
    .registers 2

    .line 184
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result p0

    return p0
.end method

.method public greylist getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I
    .registers 2

    .line 193
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTMIdentity(Lorg/apache/xml/dtm/DTM;)I

    move-result p0

    return p0
.end method

.method public greylist getDTMManager()Lorg/apache/xml/dtm/DTMManager;
    .registers 1

    .line 113
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    return-object p0
.end method

.method public greylist getDTMXRTreeFrag(I)Lorg/apache/xpath/objects/DTMXRTreeFrag;
    .registers 4

    .line 1323
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 1324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    .line 1327
    :cond_b
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1328
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    return-object p0

    .line 1330
    :cond_26
    new-instance v0, Lorg/apache/xpath/objects/DTMXRTreeFrag;

    invoke-direct {v0, p1, p0}, Lorg/apache/xpath/objects/DTMXRTreeFrag;-><init>(ILorg/apache/xpath/XPathContext;)V

    .line 1331
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_DTMXRTreeFrags:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final greylist getErrorListener()Ljavax/xml/transform/ErrorListener;
    .registers 4

    .line 543
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    .line 549
    :try_start_6
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_ownerGetErrorListener:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_13

    .line 550
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/transform/ErrorListener;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_13

    move-object v0, v1

    :catch_13
    :cond_13
    if-nez v0, :cond_22

    .line 556
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    if-nez v0, :cond_20

    .line 557
    new-instance v0, Lorg/apache/xml/utils/DefaultErrorHandler;

    invoke-direct {v0}, Lorg/apache/xml/utils/DefaultErrorHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    .line 558
    :cond_20
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_defaultErrorListener:Ljavax/xml/transform/ErrorListener;

    :cond_22
    return-object v0
.end method

.method public greylist getExpressionContext()Lorg/apache/xalan/extensions/ExpressionContext;
    .registers 1

    .line 1066
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->expressionContext:Lorg/apache/xpath/XPathContext$XPathExpressionContext;

    return-object p0
.end method

.method public greylist getGlobalRTFDTM()Lorg/apache/xml/dtm/DTM;
    .registers 8

    .line 1198
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->isTreeIncomplete()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1200
    :cond_a
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 1202
    :cond_19
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    return-object p0
.end method

.method public final greylist getIteratorRoot()I
    .registers 1

    .line 849
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0}, Lorg/apache/xml/utils/NodeVector;->peepOrNull()I

    move-result p0

    return p0
.end method

.method public final greylist getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;
    .registers 1

    .line 922
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/utils/PrefixResolver;

    return-object p0
.end method

.method public greylist getOwnerObject()Ljava/lang/Object;
    .registers 1

    .line 465
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_owner:Ljava/lang/Object;

    return-object p0
.end method

.method public final greylist getPredicatePos()I
    .registers 1

    .line 869
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/IntStack;->peek()I

    move-result p0

    return p0
.end method

.method public final greylist getPredicateRoot()I
    .registers 1

    .line 825
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0}, Lorg/apache/xml/utils/NodeVector;->peepOrNull()I

    move-result p0

    return p0
.end method

.method public final greylist getPrimaryReader()Lorg/xml/sax/XMLReader;
    .registers 1

    .line 616
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_primaryReader:Lorg/xml/sax/XMLReader;

    return-object p0
.end method

.method public greylist getRTFDTM()Lorg/apache/xml/dtm/DTM;
    .registers 8

    .line 1231
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-nez v0, :cond_24

    .line 1233
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    .line 1234
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 1235
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1236
    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    return-object v0

    .line 1238
    :cond_24
    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    if-gez v1, :cond_33

    add-int/lit8 v1, v1, 0x1

    .line 1240
    iput v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    return-object p0

    .line 1244
    :cond_33
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 1252
    invoke-virtual {v0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->isTreeIncomplete()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1254
    iget v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 1255
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    iget p0, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    return-object p0

    .line 1258
    :cond_58
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/dtm/DTMManager;->getDTM(Ljavax/xml/transform/Source;ZLorg/apache/xml/dtm/DTMWSFilter;ZZ)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 1259
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6a
    return-object v0
.end method

.method public greylist getSAXLocator()Ljavax/xml/transform/SourceLocator;
    .registers 1

    .line 444
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/transform/SourceLocator;

    return-object p0
.end method

.method public final greylist getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;
    .registers 1

    .line 511
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    return-object p0
.end method

.method public greylist getSubContextList()Lorg/apache/xpath/axes/SubContextList;
    .registers 2

    .line 1004
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 1005
    :cond_a
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/axes/SubContextList;

    return-object p0
.end method

.method public final greylist getURIResolver()Ljavax/xml/transform/URIResolver;
    .registers 1

    .line 590
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public final greylist getVarStack()Lorg/apache/xpath/VariableStack;
    .registers 1

    .line 484
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    return-object p0
.end method

.method public greylist isSecureProcessing()Z
    .registers 1

    .line 129
    iget-boolean p0, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    return p0
.end method

.method public final greylist popContextNodeList()V
    .registers 2

    .line 706
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 707
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "Warning: popContextNodeList when stack is empty!"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 709
    :cond_10
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final greylist popCurrentExpressionNode()V
    .registers 2

    .line 908
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    return-void
.end method

.method public final greylist popCurrentNode()V
    .registers 2

    .line 801
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    return-void
.end method

.method public final greylist popCurrentNodeAndExpression()V
    .registers 3

    .line 756
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 757
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    return-void
.end method

.method public final greylist popExpressionState()V
    .registers 3

    .line 779
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 780
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->quickPop(I)V

    .line 781
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final greylist popIteratorRoot()V
    .registers 1

    .line 841
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0}, Lorg/apache/xml/utils/NodeVector;->popQuick()V

    return-void
.end method

.method public final greylist popNamespaceContext()V
    .registers 1

    .line 961
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final greylist popPredicatePos()V
    .registers 1

    .line 879
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/IntStack;->pop()I

    return-void
.end method

.method public final greylist popPredicateRoot()V
    .registers 1

    .line 817
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0}, Lorg/apache/xml/utils/NodeVector;->popQuick()V

    return-void
.end method

.method public greylist popRTFContext()V
    .registers 4

    .line 1294
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v0

    .line 1295
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-nez v1, :cond_b

    goto :goto_31

    .line 1298
    :cond_b
    iget v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    if-ne v2, v0, :cond_1b

    if-ltz v0, :cond_31

    .line 1302
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->popRewindMark()Z

    return-void

    .line 1305
    :cond_1b
    :goto_1b
    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    if-eq v1, v0, :cond_31

    .line 1310
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->popRewindMark()Z

    .line 1311
    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    goto :goto_1b

    :cond_31
    :goto_31
    return-void
.end method

.method public greylist popSAXLocator()V
    .registers 1

    .line 434
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0}, Lorg/apache/xml/utils/ObjectStack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final greylist popSubContextList()V
    .registers 1

    .line 993
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public final greylist pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 2

    .line 697
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final greylist pushCurrentExpressionNode(I)V
    .registers 2

    .line 899
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public final greylist pushCurrentNode(I)V
    .registers 2

    .line 793
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public final greylist pushCurrentNodeAndExpression(II)V
    .registers 3

    .line 747
    iget-object p2, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p2, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 748
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public final greylist pushExpressionState(IILorg/apache/xml/utils/PrefixResolver;)V
    .registers 4

    .line 769
    iget-object p2, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p2, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 770
    iget-object p2, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p2, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 771
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0, p3}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final greylist pushIteratorRoot(I)V
    .registers 2

    .line 833
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    return-void
.end method

.method public final greylist pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 2

    .line 944
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final greylist pushNamespaceContextNull()V
    .registers 2

    .line 953
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final greylist pushPredicatePos(I)V
    .registers 2

    .line 874
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method public final greylist pushPredicateRoot(I)V
    .registers 2

    .line 809
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/NodeVector;->push(I)V

    return-void
.end method

.method public greylist pushRTFContext()V
    .registers 3

    .line 1273
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_last_pushed_rtfdtm:Lorg/apache/xml/utils/IntStack;

    iget v1, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 1274
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-eqz v0, :cond_14

    .line 1275
    invoke-virtual {p0}, Lorg/apache/xpath/XPathContext;->getRTFDTM()Lorg/apache/xml/dtm/DTM;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    invoke-virtual {p0}, Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;->pushRewindMark()V

    :cond_14
    return-void
.end method

.method public greylist pushSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    .registers 2

    .line 415
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist pushSAXLocatorNull()V
    .registers 2

    .line 425
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final greylist pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V
    .registers 2

    .line 984
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist release(Lorg/apache/xml/dtm/DTM;Z)Z
    .registers 4

    .line 221
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 226
    :cond_c
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    move-result p0

    return p0
.end method

.method public greylist reset()V
    .registers 6

    .line 362
    invoke-direct {p0}, Lorg/apache/xpath/XPathContext;->releaseDTMXRTreeFrags()V

    .line 364
    iget-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 365
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 366
    iget-object v2, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/dtm/DTM;

    invoke-virtual {v2, v3, v1}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_rtfdtm_stack:Ljava/util/Vector;

    const/4 v2, -0x1

    .line 369
    iput v2, p0, Lorg/apache/xpath/XPathContext;->m_which_rtfdtm:I

    .line 371
    iget-object v3, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    if-eqz v3, :cond_2d

    .line 372
    iget-object v4, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v4, v3, v1}, Lorg/apache/xml/dtm/DTMManager;->release(Lorg/apache/xml/dtm/DTM;Z)Z

    .line 373
    :cond_2d
    iput-object v0, p0, Lorg/apache/xpath/XPathContext;->m_global_rtfdtm:Lorg/apache/xml/dtm/ref/sax2dtm/SAX2RTFDTM;

    .line 377
    invoke-static {}, Lorg/apache/xpath/objects/XMLStringFactoryImpl;->getFactory()Lorg/apache/xml/utils/XMLStringFactory;

    move-result-object v1

    .line 376
    invoke-static {v1}, Lorg/apache/xml/dtm/DTMManager;->newInstance(Lorg/apache/xml/utils/XMLStringFactory;)Lorg/apache/xml/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/XPathContext;->m_dtmManager:Lorg/apache/xml/dtm/DTMManager;

    .line 379
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectVector;->removeAllElements()V

    .line 380
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    .line 381
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    .line 382
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntVector;->removeAllElements()V

    .line 383
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntVector;->removeAllElements()V

    .line 384
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_iteratorRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->RemoveAllNoClear()V

    .line 385
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_predicatePos:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntVector;->removeAllElements()V

    .line 386
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_predicateRoots:Lorg/apache/xml/utils/NodeVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/NodeVector;->RemoveAllNoClear()V

    .line 387
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/ObjectVector;->removeAllElements()V

    .line 389
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 391
    iget-object v1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1, v2}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 392
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0, v0}, Lorg/apache/xml/utils/ObjectStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public greylist setAxesIteratorStackStacks(Ljava/util/Stack;)V
    .registers 2

    .line 974
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_axesIteratorStack:Ljava/util/Stack;

    return-void
.end method

.method public greylist setContextNodeListsStack(Ljava/util/Stack;)V
    .registers 2

    .line 671
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_contextNodeLists:Ljava/util/Stack;

    return-void
.end method

.method public greylist setCurrentExpressionNodeStack(Lorg/apache/xml/utils/IntStack;)V
    .registers 2

    .line 863
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_currentExpressionNodes:Lorg/apache/xml/utils/IntStack;

    return-void
.end method

.method public greylist setCurrentNodeStack(Lorg/apache/xml/utils/IntStack;)V
    .registers 2

    .line 727
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_currentNodes:Lorg/apache/xml/utils/IntStack;

    return-void
.end method

.method public greylist setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 573
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void

    .line 572
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_NULL_ERROR_HANDLER"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/apache/xpath/res/XPATHMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final greylist setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V
    .registers 2

    .line 933
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_prefixResolvers:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setPrimaryReader(Lorg/xml/sax/XMLReader;)V
    .registers 2

    .line 626
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_primaryReader:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method public greylist setSAXLocator(Ljavax/xml/transform/SourceLocator;)V
    .registers 2

    .line 405
    iget-object p0, p0, Lorg/apache/xpath/XPathContext;->m_saxLocations:Lorg/apache/xml/utils/ObjectStack;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/ObjectStack;->setTop(Ljava/lang/Object;)V

    return-void
.end method

.method public greylist setSecureProcessing(Z)V
    .registers 2

    .line 121
    iput-boolean p1, p0, Lorg/apache/xpath/XPathContext;->m_isSecureProcessing:Z

    return-void
.end method

.method public greylist setSourceTreeManager(Lorg/apache/xpath/SourceTreeManager;)V
    .registers 2

    .line 522
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_sourceTreeManager:Lorg/apache/xpath/SourceTreeManager;

    return-void
.end method

.method public greylist setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .registers 2

    .line 601
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_uriResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public final greylist setVarStack(Lorg/apache/xpath/VariableStack;)V
    .registers 2

    .line 495
    iput-object p1, p0, Lorg/apache/xpath/XPathContext;->m_variableStacks:Lorg/apache/xpath/VariableStack;

    return-void
.end method
