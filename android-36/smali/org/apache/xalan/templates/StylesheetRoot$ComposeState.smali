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
.field private greylist m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field greylist m_marks:Lorg/apache/xml/utils/IntStack;

.field private greylist m_maxStackFrameSize:I

.field private greylist m_variableNames:Ljava/util/Vector;

.field final synthetic greylist this$0:Lorg/apache/xalan/templates/StylesheetRoot;


# direct methods
.method constructor greylist <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1249
    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->this$0:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    new-instance v0, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 1283
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    .line 1334
    new-instance v0, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v0}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    .line 1250
    invoke-static {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->-$$Nest$fgetm_variables(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_3b

    .line 1253
    invoke-static {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->-$$Nest$fgetm_variables(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/ElemVariable;

    .line 1254
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3b
    return-void
.end method


# virtual methods
.method greylist addVariableName(Lorg/apache/xml/utils/QName;)I
    .registers 4

    .line 1293
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1294
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1295
    iget-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v1

    sub-int/2addr p1, v1

    .line 1296
    iget v1, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    if-le p1, v1, :cond_1e

    add-int/lit8 v1, v1, 0x1

    .line 1297
    iput v1, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    :cond_1e
    return v0
.end method

.method greylist getCurrentStackFrameSize()I
    .registers 1

    .line 1318
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method greylist getFrameSize()I
    .registers 1

    .line 1308
    iget p0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    return p0
.end method

.method greylist getGlobalsSize()I
    .registers 1

    .line 1331
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->this$0:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-static {p0}, Lorg/apache/xalan/templates/StylesheetRoot;->-$$Nest$fgetm_variables(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public greylist getQNameID(Lorg/apache/xml/utils/QName;)I
    .registers 4

    .line 1272
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 1273
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    .line 1272
    invoke-virtual {p0, v0, p1, v1}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method greylist getVariableNames()Ljava/util/Vector;
    .registers 1

    .line 1356
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    return-object p0
.end method

.method greylist popStackMark()V
    .registers 2

    .line 1343
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v0}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v0

    .line 1344
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->setCurrentStackFrameSize(I)V

    return-void
.end method

.method greylist pushStackMark()V
    .registers 2

    .line 1338
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getCurrentStackFrameSize()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/xml/utils/IntStack;->push(I)I

    return-void
.end method

.method greylist resetStackFrameSize()V
    .registers 2

    const/4 v0, 0x0

    .line 1303
    iput v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    return-void
.end method

.method greylist setCurrentStackFrameSize(I)V
    .registers 2

    .line 1326
    iget-object p0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->setSize(I)V

    return-void
.end method
