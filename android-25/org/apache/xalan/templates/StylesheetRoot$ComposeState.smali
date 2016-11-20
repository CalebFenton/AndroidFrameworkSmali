.class Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
.super Ljava/lang/Object;
.source "StylesheetRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/StylesheetRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComposeState"
.end annotation


# instance fields
.field private m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field m_marks:Lorg/apache/xml/utils/IntStack;

.field private m_maxStackFrameSize:I

.field private m_variableNames:Ljava/util/Vector;

.field final synthetic this$0:Lorg/apache/xalan/templates/StylesheetRoot;


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 5
    .param p1, "this$0"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 1248
    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->this$0:Lorg/apache/xalan/templates/StylesheetRoot;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1259
    new-instance v3, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@7
    invoke-direct {v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    #@a
    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@c
    .line 1283
    new-instance v3, Ljava/util/Vector;

    #@e
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@11
    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    #@13
    .line 1334
    new-instance v3, Lorg/apache/xml/utils/IntStack;

    #@15
    invoke-direct {v3}, Lorg/apache/xml/utils/IntStack;-><init>()V

    #@18
    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    #@1a
    .line 1250
    invoke-static {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->-get0(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@21
    move-result v2

    #@22
    .line 1251
    .local v2, "size":I
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@25
    .line 1253
    invoke-static {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->-get0(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2c
    move-result-object v0

    #@2d
    check-cast v0, Lorg/apache/xalan/templates/ElemVariable;

    #@2f
    .line 1254
    .local v0, "ev":Lorg/apache/xalan/templates/ElemVariable;
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    #@31
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@38
    .line 1251
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 1248
    .end local v0    # "ev":Lorg/apache/xalan/templates/ElemVariable;
    :cond_0
    return-void
.end method


# virtual methods
.method addVariableName(Lorg/apache/xml/utils/QName;)I
    .locals 4
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 1293
    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    #@2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@5
    move-result v1

    #@6
    .line 1294
    .local v1, "pos":I
    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    #@8
    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@b
    .line 1295
    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    #@d
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@10
    move-result v2

    #@11
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    #@14
    move-result v3

    #@15
    sub-int v0, v2, v3

    #@17
    .line 1296
    .local v0, "frameSize":I
    iget v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    #@19
    if-le v0, v2, :cond_0

    #@1b
    .line 1297
    iget v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    #@1d
    add-int/lit8 v2, v2, 0x1

    #@1f
    iput v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    #@21
    .line 1298
    :cond_0
    return v1
.end method

.method getCurrentStackFrameSize()I
    .locals 1

    #@0
    .prologue
    .line 1318
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getFrameSize()I
    .locals 1

    #@0
    .prologue
    .line 1308
    iget v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    #@2
    return v0
.end method

.method getGlobalsSize()I
    .locals 1

    #@0
    .prologue
    .line 1331
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->this$0:Lorg/apache/xalan/templates/StylesheetRoot;

    #@2
    invoke-static {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->-get0(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getQNameID(Lorg/apache/xml/utils/QName;)I
    .locals 4
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 1272
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    #@2
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1273
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 1276
    const/4 v3, 0x1

    #@b
    .line 1272
    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method getVariableNames()Ljava/util/Vector;
    .locals 1

    #@0
    .prologue
    .line 1356
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method popStackMark()V
    .locals 2

    #@0
    .prologue
    .line 1343
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->pop()I

    #@5
    move-result v0

    #@6
    .line 1344
    .local v0, "mark":I
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->setCurrentStackFrameSize(I)V

    #@9
    .line 1341
    return-void
.end method

.method pushStackMark()V
    .locals 2

    #@0
    .prologue
    .line 1338
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    #@2
    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getCurrentStackFrameSize()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    #@9
    .line 1336
    return-void
.end method

.method resetStackFrameSize()V
    .locals 1

    #@0
    .prologue
    .line 1303
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    #@3
    .line 1301
    return-void
.end method

.method setCurrentStackFrameSize(I)V
    .locals 1
    .param p1, "sz"    # I

    #@0
    .prologue
    .line 1326
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->setSize(I)V

    #@5
    .line 1324
    return-void
.end method
