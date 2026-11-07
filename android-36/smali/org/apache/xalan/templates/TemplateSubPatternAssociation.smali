.class Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
.super Ljava/lang/Object;
.source "TemplateSubPatternAssociation.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final whitelist serialVersionUID:J = -0x7b8c69ad0478a9f6L


# instance fields
.field private greylist m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private greylist m_pattern:Ljava/lang/String;

.field greylist m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

.field private greylist m_targetString:Ljava/lang/String;

.field private greylist m_template:Lorg/apache/xalan/templates/ElemTemplate;

.field private greylist m_wild:Z


# direct methods
.method constructor greylist <init>(Lorg/apache/xalan/templates/ElemTemplate;Lorg/apache/xpath/patterns/StepPattern;Ljava/lang/String;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 67
    iput-object p3, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_pattern:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    .line 69
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    .line 70
    invoke-virtual {p2}, Lorg/apache/xpath/patterns/StepPattern;->getTargetString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    .line 71
    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_wild:Z

    return-void
.end method

.method private greylist matchModes(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)Z
    .registers 3

    if-nez p1, :cond_4

    if-eqz p2, :cond_e

    :cond_4
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    .line 137
    invoke-virtual {p1, p2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 85
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-object p0
.end method

.method public greylist getDocOrderPos()I
    .registers 1

    .line 201
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getUid()I

    move-result p0

    return p0
.end method

.method public final greylist getImportLevel()I
    .registers 1

    .line 212
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result p0

    return p0
.end method

.method public final greylist getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .registers 1

    .line 233
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-object p0
.end method

.method public final greylist getPattern()Ljava/lang/String;
    .registers 1

    .line 190
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_pattern:Ljava/lang/String;

    return-object p0
.end method

.method public final greylist getStepPattern()Lorg/apache/xpath/patterns/StepPattern;
    .registers 1

    .line 179
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-object p0
.end method

.method public final greylist getTargetString()Ljava/lang/String;
    .registers 1

    .line 100
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    return-object p0
.end method

.method public final greylist getTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 1

    .line 223
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0
.end method

.method public final greylist isWild()Z
    .registers 1

    .line 168
    iget-boolean p0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_wild:Z

    return p0
.end method

.method greylist matchMode(Lorg/apache/xml/utils/QName;)Z
    .registers 3

    .line 123
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplate;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchModes(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)Z

    move-result p0

    return p0
.end method

.method public greylist matches(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    move-result-wide p1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double p1, v0, p1

    if-eqz p1, :cond_1a

    .line 157
    iget-object p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    .line 158
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getMode()Lorg/apache/xml/utils/QName;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchModes(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public greylist setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-void
.end method

.method public greylist setTargetString(Ljava/lang/String;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    return-void
.end method
