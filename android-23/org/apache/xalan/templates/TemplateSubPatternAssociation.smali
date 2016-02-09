.class Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
.super Ljava/lang/Object;
.source "TemplateSubPatternAssociation.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x7b8c69ad0478a9f6L


# instance fields
.field private m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_pattern:Ljava/lang/String;

.field m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

.field private m_targetString:Ljava/lang/String;

.field private m_template:Lorg/apache/xalan/templates/ElemTemplate;

.field private m_wild:Z


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/ElemTemplate;Lorg/apache/xpath/patterns/StepPattern;Ljava/lang/String;)V
    .locals 2
    .param p1, "template"    # Lorg/apache/xalan/templates/ElemTemplate;
    .param p2, "pattern"    # Lorg/apache/xpath/patterns/StepPattern;
    .param p3, "pat"    # Ljava/lang/String;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@6
    .line 67
    iput-object p3, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_pattern:Ljava/lang/String;

    #@8
    .line 68
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@a
    .line 69
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@c
    .line 70
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@e
    invoke-virtual {v0}, Lorg/apache/xpath/patterns/StepPattern;->getTargetString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    #@14
    .line 71
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    #@16
    const-string/jumbo v1, "*"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v0

    #@1d
    iput-boolean v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_wild:Z

    #@1f
    .line 64
    return-void
.end method

.method private matchModes(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)Z
    .locals 1
    .param p1, "m1"    # Lorg/apache/xml/utils/QName;
    .param p2, "m2"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 136
    if-nez p1, :cond_0

    #@2
    if-nez p2, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    .line 137
    :cond_0
    if-eqz p1, :cond_1

    #@8
    if-eqz p2, :cond_1

    #@a
    invoke-virtual {p1, p2}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    goto :goto_0

    #@f
    :cond_1
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@6
    .line 87
    .local v0, "tspa":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    const/4 v1, 0x0

    #@7
    iput-object v1, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@9
    .line 89
    return-object v0
.end method

.method public getDocOrderPos()I
    .locals 1

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplate;->getUid()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final getImportLevel()I
    .locals 1

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@2
    return-object v0
.end method

.method public final getPattern()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_pattern:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getStepPattern()Lorg/apache/xpath/patterns/StepPattern;
    .locals 1

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@2
    return-object v0
.end method

.method public final getTargetString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getTemplate()Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1

    #@0
    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@2
    return-object v0
.end method

.method public final isWild()Z
    .locals 1

    #@0
    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_wild:Z

    #@2
    return v0
.end method

.method matchMode(Lorg/apache/xml/utils/QName;)Z
    .locals 1
    .param p1, "m1"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplate;->getMode()Lorg/apache/xml/utils/QName;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchModes(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public matches(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)Z
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetNode"    # I
    .param p3, "mode"    # Lorg/apache/xml/utils/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 155
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@2
    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->getMatchScore(Lorg/apache/xpath/XPathContext;I)D

    #@5
    move-result-wide v0

    #@6
    .line 157
    .local v0, "score":D
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@8
    cmpl-double v2, v2, v0

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 158
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_template:Lorg/apache/xalan/templates/ElemTemplate;

    #@e
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplate;->getMode()Lorg/apache/xml/utils/QName;

    #@11
    move-result-object v2

    #@12
    invoke-direct {p0, p3, v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchModes(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)Z

    #@15
    move-result v2

    #@16
    .line 157
    :goto_0
    return v2

    #@17
    :cond_0
    const/4 v2, 0x0

    #@18
    goto :goto_0
.end method

.method public setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V
    .locals 0
    .param p1, "mp"    # Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@0
    .prologue
    .line 247
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_next:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@2
    .line 245
    return-void
.end method

.method public setTargetString(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_targetString:Ljava/lang/String;

    #@2
    .line 109
    return-void
.end method
