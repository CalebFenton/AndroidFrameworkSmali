.class public Lorg/apache/xalan/templates/TemplateList;
.super Ljava/lang/Object;
.source "TemplateList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final serialVersionUID:J = 0x508acbed134bd097L


# instance fields
.field private m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_namedTemplates:Ljava/util/Hashtable;

.field private m_patternTable:Ljava/util/Hashtable;

.field private m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;


# direct methods
.method static synthetic -get0(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x59

    #@2
    const/4 v1, 0x0

    #@3
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 768
    new-instance v0, Ljava/util/Hashtable;

    #@8
    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    #@b
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    #@d
    .line 777
    new-instance v0, Ljava/util/Hashtable;

    #@f
    invoke-direct {v0, v2}, Ljava/util/Hashtable;-><init>(I)V

    #@12
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@14
    .line 781
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@16
    .line 785
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@18
    .line 789
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@1a
    .line 793
    iput-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@1c
    .line 52
    return-void
.end method

.method private addObjectIfNotFound(Ljava/lang/Object;Ljava/util/Vector;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/util/Vector;

    #@0
    .prologue
    .line 742
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    #@3
    move-result v2

    #@4
    .line 743
    .local v2, "n":I
    const/4 v0, 0x1

    #@5
    .line 745
    .local v0, "addIt":Z
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@8
    .line 747
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    if-ne v3, p1, :cond_2

    #@e
    .line 749
    const/4 v0, 0x0

    #@f
    .line 755
    :cond_0
    if-eqz v0, :cond_1

    #@11
    .line 757
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@14
    .line 739
    :cond_1
    return-void

    #@15
    .line 745
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_0
.end method

.method private checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    .locals 0
    .param p1, "head"    # Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .param p2, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p3, "targetNode"    # I
    .param p4, "mode"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 727
    return-void
.end method

.method private getHead(Ljava/lang/String;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@8
    return-object v0
.end method

.method private getNamedTemplates()Ljava/util/Hashtable;
    .locals 1

    #@0
    .prologue
    .line 806
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method private getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D
    .locals 6
    .param p1, "matchPat"    # Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@0
    .prologue
    .line 392
    invoke-virtual {p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getPriority()D

    #@7
    move-result-wide v2

    #@8
    .line 394
    .local v2, "priority":D
    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    #@a
    cmpl-double v1, v2, v4

    #@c
    if-nez v1, :cond_0

    #@e
    .line 396
    invoke-virtual {p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getStepPattern()Lorg/apache/xpath/patterns/StepPattern;

    #@11
    move-result-object v0

    #@12
    .line 398
    .local v0, "ex":Lorg/apache/xpath/Expression;
    instance-of v1, v0, Lorg/apache/xpath/patterns/NodeTest;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 400
    check-cast v0, Lorg/apache/xpath/patterns/NodeTest;

    #@18
    .end local v0    # "ex":Lorg/apache/xpath/Expression;
    invoke-virtual {v0}, Lorg/apache/xpath/patterns/NodeTest;->getDefaultScore()D

    #@1b
    move-result-wide v4

    #@1c
    return-wide v4

    #@1d
    .line 404
    :cond_0
    return-wide v2
.end method

.method private insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .locals 11
    .param p1, "head"    # Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .param p2, "item"    # Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .param p3, "isWildCardInsert"    # Z

    #@0
    .prologue
    .line 233
    invoke-direct {p0, p2}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    #@3
    move-result-wide v6

    #@4
    .line 235
    .local v6, "priority":D
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    #@7
    move-result v1

    #@8
    .line 236
    .local v1, "importLevel":I
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    #@b
    move-result v0

    #@c
    .line 237
    .local v0, "docOrder":I
    move-object v3, p1

    #@d
    .line 255
    .local v3, "insertPoint":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_0
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@10
    move-result-object v5

    #@11
    .line 256
    .local v5, "next":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    if-nez v5, :cond_2

    #@13
    .line 276
    :cond_0
    if-eqz v5, :cond_1

    #@15
    if-ne v3, p1, :cond_a

    #@17
    .line 278
    :cond_1
    invoke-direct {p0, v3}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    #@1a
    move-result-wide v8

    #@1b
    .line 279
    .local v8, "workPriority":D
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    #@1e
    move-result v10

    #@1f
    if-le v1, v10, :cond_5

    #@21
    .line 280
    const/4 v2, 0x1

    #@22
    .line 297
    .end local v8    # "workPriority":D
    .local v2, "insertBefore":Z
    :goto_1
    if-eqz p3, :cond_c

    #@24
    .line 299
    if-eqz v2, :cond_b

    #@26
    .line 301
    invoke-virtual {p2, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    #@29
    .line 303
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    .line 305
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setTargetString(Ljava/lang/String;)V

    #@30
    .line 306
    invoke-direct {p0, v4, p2}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    #@33
    .line 307
    return-object p2

    #@34
    .line 260
    .end local v2    # "insertBefore":Z
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v5}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    #@37
    move-result-wide v8

    #@38
    .line 261
    .restart local v8    # "workPriority":D
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    #@3b
    move-result v10

    #@3c
    if-gt v1, v10, :cond_0

    #@3e
    .line 263
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    #@41
    move-result v10

    #@42
    if-ge v1, v10, :cond_3

    #@44
    .line 264
    move-object v3, v5

    #@45
    goto :goto_0

    #@46
    .line 265
    :cond_3
    cmpl-double v10, v6, v8

    #@48
    if-gtz v10, :cond_0

    #@4a
    .line 267
    cmpg-double v10, v6, v8

    #@4c
    if-gez v10, :cond_4

    #@4e
    .line 268
    move-object v3, v5

    #@4f
    goto :goto_0

    #@50
    .line 269
    :cond_4
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    #@53
    move-result v10

    #@54
    if-ge v0, v10, :cond_0

    #@56
    .line 272
    move-object v3, v5

    #@57
    goto :goto_0

    #@58
    .line 281
    :cond_5
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    #@5b
    move-result v10

    #@5c
    if-ge v1, v10, :cond_6

    #@5e
    .line 282
    const/4 v2, 0x0

    #@5f
    .restart local v2    # "insertBefore":Z
    goto :goto_1

    #@60
    .line 283
    .end local v2    # "insertBefore":Z
    :cond_6
    cmpl-double v10, v6, v8

    #@62
    if-lez v10, :cond_7

    #@64
    .line 284
    const/4 v2, 0x1

    #@65
    .restart local v2    # "insertBefore":Z
    goto :goto_1

    #@66
    .line 285
    .end local v2    # "insertBefore":Z
    :cond_7
    cmpg-double v10, v6, v8

    #@68
    if-gez v10, :cond_8

    #@6a
    .line 286
    const/4 v2, 0x0

    #@6b
    .restart local v2    # "insertBefore":Z
    goto :goto_1

    #@6c
    .line 287
    .end local v2    # "insertBefore":Z
    :cond_8
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    #@6f
    move-result v10

    #@70
    if-lt v0, v10, :cond_9

    #@72
    .line 288
    const/4 v2, 0x1

    #@73
    .restart local v2    # "insertBefore":Z
    goto :goto_1

    #@74
    .line 290
    .end local v2    # "insertBefore":Z
    :cond_9
    const/4 v2, 0x0

    #@75
    .restart local v2    # "insertBefore":Z
    goto :goto_1

    #@76
    .line 293
    .end local v2    # "insertBefore":Z
    .end local v8    # "workPriority":D
    :cond_a
    const/4 v2, 0x0

    #@77
    .restart local v2    # "insertBefore":Z
    goto :goto_1

    #@78
    .line 311
    :cond_b
    invoke-virtual {p2, v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    #@7b
    .line 312
    invoke-virtual {v3, p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    #@7e
    .line 313
    return-object p1

    #@7f
    .line 318
    :cond_c
    if-eqz v2, :cond_f

    #@81
    .line 320
    invoke-virtual {p2, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    #@84
    .line 322
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    #@87
    move-result v10

    #@88
    if-nez v10, :cond_d

    #@8a
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    #@8d
    move-result v10

    #@8e
    if-eqz v10, :cond_e

    #@90
    .line 323
    :cond_d
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@92
    .line 326
    :goto_2
    return-object p2

    #@93
    .line 325
    :cond_e
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    #@96
    move-result-object v10

    #@97
    invoke-direct {p0, v10, p2}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    #@9a
    goto :goto_2

    #@9b
    .line 330
    :cond_f
    invoke-virtual {p2, v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    #@9e
    .line 331
    invoke-virtual {v3, p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    #@a1
    .line 332
    return-object p1
.end method

.method private insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V
    .locals 6
    .param p1, "pattern"    # Lorg/apache/xpath/patterns/StepPattern;
    .param p2, "template"    # Lorg/apache/xalan/templates/ElemTemplate;

    #@0
    .prologue
    .line 346
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getTargetString()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 348
    .local v4, "target":Ljava/lang/String;
    if-eqz v4, :cond_0

    #@6
    .line 350
    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplate;->getMatch()Lorg/apache/xpath/XPath;

    #@9
    move-result-object v5

    #@a
    invoke-virtual {v5}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 352
    .local v3, "pstring":Ljava/lang/String;
    new-instance v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@10
    invoke-direct {v0, p2, p1, v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;-><init>(Lorg/apache/xalan/templates/ElemTemplate;Lorg/apache/xpath/patterns/StepPattern;Ljava/lang/String;)V

    #@13
    .line 355
    .local v0, "association":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    #@16
    move-result v2

    #@17
    .line 356
    .local v2, "isWildCard":Z
    if-eqz v2, :cond_1

    #@19
    .line 357
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@1b
    .line 360
    .local v1, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_0
    if-nez v1, :cond_3

    #@1d
    .line 362
    if-eqz v2, :cond_2

    #@1f
    .line 363
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@21
    .line 343
    .end local v0    # "association":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .end local v1    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .end local v2    # "isWildCard":Z
    .end local v3    # "pstring":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    #@22
    .line 358
    .restart local v0    # "association":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .restart local v2    # "isWildCard":Z
    .restart local v3    # "pstring":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v4}, Lorg/apache/xalan/templates/TemplateList;->getHead(Ljava/lang/String;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@25
    move-result-object v1

    #@26
    .restart local v1    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@27
    .line 365
    :cond_2
    invoke-direct {p0, v4, v0}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    #@2a
    goto :goto_1

    #@2b
    .line 369
    :cond_3
    const/4 v5, 0x0

    #@2c
    invoke-direct {p0, v1, v0, v5}, Lorg/apache/xalan/templates/TemplateList;->insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@2f
    goto :goto_1
.end method

.method private putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "assoc"    # Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@0
    .prologue
    .line 845
    const-string/jumbo v0, "#text"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 846
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@b
    .line 852
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 842
    return-void

    #@11
    .line 847
    :cond_1
    const-string/jumbo v0, "/"

    #@14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 848
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@1c
    goto :goto_0

    #@1d
    .line 849
    :cond_2
    const-string/jumbo v0, "#comment"

    #@20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 850
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@28
    goto :goto_0
.end method

.method private setNamedTemplates(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "v"    # Ljava/util/Hashtable;

    #@0
    .prologue
    .line 820
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    #@2
    .line 818
    return-void
.end method


# virtual methods
.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .locals 6
    .param p1, "sroot"    # Lorg/apache/xalan/templates/StylesheetRoot;

    #@0
    .prologue
    .line 182
    iget-object v4, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@2
    if-eqz v4, :cond_1

    #@4
    .line 184
    iget-object v4, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@9
    move-result-object v0

    #@a
    .line 186
    .local v0, "associations":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 189
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@16
    .line 190
    .local v2, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    iget-object v3, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@18
    .line 192
    .local v3, "wild":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_0
    if-eqz v3, :cond_0

    #@1a
    .line 197
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->clone()Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@20
    const/4 v5, 0x1

    #@21
    .line 196
    invoke-direct {p0, v2, v4, v5}, Lorg/apache/xalan/templates/TemplateList;->insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v2

    #@25
    .line 201
    :goto_1
    invoke-virtual {v3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@28
    move-result-object v3

    #@29
    goto :goto_0

    #@2a
    .line 173
    .end local v0    # "associations":Ljava/util/Enumeration;
    .end local v2    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .end local v3    # "wild":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_1
    return-void

    #@2b
    .line 199
    .restart local v0    # "associations":Ljava/util/Enumeration;
    .restart local v2    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .restart local v3    # "wild":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :catch_0
    move-exception v1

    #@2c
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    goto :goto_1
.end method

.method dumpAssociationTables()V
    .locals 5

    #@0
    .prologue
    .line 136
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    .line 138
    .local v0, "associations":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 141
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@12
    .line 143
    .local v1, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_1
    if-eqz v1, :cond_0

    #@14
    .line 145
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "("

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    const-string/jumbo v4, ", "

    #@2d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v3

    #@31
    .line 146
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    .line 146
    const-string/jumbo v4, ")"

    #@3c
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v3

    #@44
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@47
    .line 148
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@4a
    move-result-object v1

    #@4b
    goto :goto_1

    #@4c
    .line 151
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4e
    const-string/jumbo v3, "\n....."

    #@51
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@54
    goto :goto_0

    #@55
    .line 154
    .end local v1    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_1
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@57
    .line 156
    .restart local v1    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@59
    const-string/jumbo v3, "wild card list: "

    #@5c
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@5f
    .line 158
    :goto_2
    if-eqz v1, :cond_2

    #@61
    .line 160
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@63
    new-instance v3, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v4, "("

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v3

    #@77
    const-string/jumbo v4, ", "

    #@7a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    .line 161
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v3

    #@86
    .line 161
    const-string/jumbo v4, ")"

    #@89
    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v3

    #@8d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v3

    #@91
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@94
    .line 163
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@97
    move-result-object v1

    #@98
    goto :goto_2

    #@99
    .line 166
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@9b
    const-string/jumbo v3, "\n....."

    #@9e
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a1
    .line 133
    return-void
.end method

.method public getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .locals 4
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetNode"    # I
    .param p3, "dtm"    # Lorg/apache/xml/dtm/DTM;

    #@0
    .prologue
    .line 433
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@3
    move-result v1

    #@4
    .line 436
    .local v1, "targetNodeType":S
    packed-switch v1, :pswitch_data_0

    #@7
    .line 465
    :pswitch_0
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@9
    .line 466
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    .line 465
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@13
    .line 469
    .local v0, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_0
    if-nez v0, :cond_0

    #@15
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@17
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :cond_0
    return-object v0

    #@18
    .line 440
    :pswitch_1
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@1a
    .line 441
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 440
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@24
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@25
    .line 445
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_2
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@27
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@28
    .line 449
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_3
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@2a
    .line 450
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    .line 449
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@34
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@35
    .line 453
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_4
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@37
    .line 454
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 453
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@41
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@42
    .line 457
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_5
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@44
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@45
    .line 461
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_6
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@47
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@48
    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getTemplate(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 1
    .param p1, "qname"    # Lorg/apache/xml/utils/QName;

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    #@8
    return-object v0
.end method

.method public getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetNode"    # I
    .param p3, "mode"    # Lorg/apache/xml/utils/QName;
    .param p4, "maxImportLevel"    # I
    .param p5, "endImportLevel"    # I
    .param p6, "quietConflictWarnings"    # Z
    .param p7, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 666
    invoke-virtual {p0, p1, p2, p7}, Lorg/apache/xalan/templates/TemplateList;->getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@4
    move-result-object v0

    #@5
    .line 668
    .local v0, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    if-eqz v0, :cond_2

    #@7
    .line 673
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    #@a
    .line 674
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    #@d
    .line 679
    :cond_0
    const/4 v2, -0x1

    #@e
    if-le p4, v2, :cond_3

    #@10
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    #@13
    move-result v2

    #@14
    if-le v2, p4, :cond_3

    #@16
    .line 697
    :cond_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v0

    #@1a
    if-nez v0, :cond_0

    #@1c
    .line 701
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@1f
    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@22
    .line 706
    :cond_2
    return-object v4

    #@23
    .line 683
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    move-result v2

    #@27
    sub-int v3, p4, p5

    #@29
    if-gt v2, v3, :cond_4

    #@2b
    .line 701
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@2e
    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@31
    .line 684
    return-object v4

    #@32
    .line 685
    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    #@35
    move-result-object v1

    #@36
    .line 686
    .local v1, "template":Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@39
    .line 688
    iget-object v2, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@3b
    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    #@3e
    move-result-object v2

    #@3f
    sget-object v3, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@41
    if-eq v2, v3, :cond_1

    #@43
    .line 689
    invoke-virtual {v0, p3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    #@46
    move-result v2

    #@47
    .line 688
    if-eqz v2, :cond_1

    #@49
    .line 691
    if-eqz p6, :cond_5

    #@4b
    .line 692
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4e
    .line 701
    :cond_5
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@51
    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@54
    .line 694
    return-object v1

    #@55
    .line 700
    .end local v1    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :catchall_0
    move-exception v2

    #@56
    .line 701
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@59
    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@5c
    .line 700
    throw v2
.end method

.method public getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetNode"    # I
    .param p3, "mode"    # Lorg/apache/xml/utils/QName;
    .param p4, "quietConflictWarnings"    # Z
    .param p5, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 601
    invoke-virtual {p0, p1, p2, p5}, Lorg/apache/xalan/templates/TemplateList;->getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@4
    move-result-object v0

    #@5
    .line 603
    .local v0, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    if-eqz v0, :cond_3

    #@7
    .line 608
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    #@a
    .line 609
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    #@d
    .line 614
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    #@10
    move-result-object v1

    #@11
    .line 615
    .local v1, "template":Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@14
    .line 617
    iget-object v2, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@16
    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    #@19
    move-result-object v2

    #@1a
    sget-object v3, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@1c
    if-eq v2, v3, :cond_2

    #@1e
    .line 618
    invoke-virtual {v0, p3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    #@21
    move-result v2

    #@22
    .line 617
    if-eqz v2, :cond_2

    #@24
    .line 620
    if-eqz p4, :cond_1

    #@26
    .line 621
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 630
    :cond_1
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@2c
    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@2f
    .line 623
    return-object v1

    #@30
    .line 626
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    move-result-object v0

    #@34
    if-nez v0, :cond_0

    #@36
    .line 630
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@39
    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@3c
    .line 635
    .end local v1    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_3
    return-object v4

    #@3d
    .line 629
    :catchall_0
    move-exception v2

    #@3e
    .line 630
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    #@41
    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@44
    .line 629
    throw v2
.end method

.method public getTemplateFast(Lorg/apache/xpath/XPathContext;IILorg/apache/xml/utils/QName;IZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .locals 5
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .param p2, "targetNode"    # I
    .param p3, "expTypeID"    # I
    .param p4, "mode"    # Lorg/apache/xml/utils/QName;
    .param p5, "maxImportLevel"    # I
    .param p6, "quietConflictWarnings"    # Z
    .param p7, "dtm"    # Lorg/apache/xml/dtm/DTM;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 504
    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    #@4
    move-result v2

    #@5
    packed-switch v2, :pswitch_data_0

    #@8
    .line 533
    :pswitch_0
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@a
    .line 534
    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 533
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@14
    .line 537
    .local v0, "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :goto_0
    if-nez v0, :cond_0

    #@16
    .line 539
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@18
    .line 540
    if-nez v0, :cond_0

    #@1a
    .line 541
    return-object v4

    #@1b
    .line 508
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_1
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@1d
    .line 509
    invoke-interface {p7, p3}, Lorg/apache/xml/dtm/DTM;->getLocalNameFromExpandedNameID(I)Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    .line 508
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@27
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@28
    .line 513
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_2
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@2a
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@2b
    .line 517
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_3
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@2d
    .line 518
    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    .line 517
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@37
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@38
    .line 521
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_4
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    #@3a
    .line 522
    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 521
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@44
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@45
    .line 525
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_5
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@47
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@48
    .line 529
    .end local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :pswitch_6
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    #@4a
    .restart local v0    # "head":Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    goto :goto_0

    #@4b
    .line 547
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    #@4e
    .line 552
    :cond_1
    const/4 v2, -0x1

    #@4f
    if-le p5, v2, :cond_3

    #@51
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    #@54
    move-result v2

    #@55
    if-le v2, p5, :cond_3

    #@57
    .line 568
    :cond_2
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    move-result-object v0

    #@5b
    if-nez v0, :cond_1

    #@5d
    .line 572
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@60
    .line 575
    return-object v4

    #@61
    .line 556
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    #@64
    move-result-object v1

    #@65
    .line 557
    .local v1, "template":Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    #@68
    .line 559
    iget-object v2, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    #@6a
    invoke-virtual {v2, p1, p2, p7, p3}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    #@6d
    move-result-object v2

    #@6e
    sget-object v3, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    #@70
    if-eq v2, v3, :cond_2

    #@72
    .line 560
    invoke-virtual {v0, p4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    #@75
    move-result v2

    #@76
    .line 559
    if-eqz v2, :cond_2

    #@78
    .line 562
    if-eqz p6, :cond_4

    #@7a
    .line 563
    invoke-direct {p0, v0, p1, p2, p4}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@7d
    .line 572
    :cond_4
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@80
    .line 565
    return-object v1

    #@81
    .line 571
    .end local v1    # "template":Lorg/apache/xalan/templates/ElemTemplate;
    :catchall_0
    move-exception v2

    #@82
    .line 572
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    #@85
    .line 571
    throw v2

    #@86
    .line 504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getWalker()Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
    .locals 2

    #@0
    .prologue
    .line 715
    new-instance v0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;-><init>(Lorg/apache/xalan/templates/TemplateList;Lorg/apache/xalan/templates/TemplateList$TemplateWalker;)V

    #@6
    return-object v0
.end method

.method public setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V
    .locals 14
    .param p1, "template"    # Lorg/apache/xalan/templates/ElemTemplate;

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 66
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getMatch()Lorg/apache/xpath/XPath;

    #@5
    move-result-object v4

    #@6
    .line 68
    .local v4, "matchXPath":Lorg/apache/xpath/XPath;
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    #@9
    move-result-object v9

    #@a
    if-nez v9, :cond_0

    #@c
    if-nez v4, :cond_0

    #@e
    .line 70
    const-string/jumbo v9, "ER_NEED_NAME_OR_MATCH_ATTRIB"

    #@11
    .line 71
    new-array v10, v13, [Ljava/lang/Object;

    #@13
    const-string/jumbo v11, "xsl:template"

    #@16
    aput-object v11, v10, v12

    #@18
    .line 70
    invoke-virtual {p1, v9, v10}, Lorg/apache/xalan/templates/ElemTemplate;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@1b
    .line 74
    :cond_0
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    #@1e
    move-result-object v9

    #@1f
    if-eqz v9, :cond_1

    #@21
    .line 76
    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    #@23
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    #@26
    move-result-object v10

    #@27
    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplate;

    #@2d
    .line 77
    .local v1, "existingTemplate":Lorg/apache/xalan/templates/ElemTemplate;
    if-nez v1, :cond_3

    #@2f
    .line 79
    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    #@31
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    #@34
    move-result-object v10

    #@35
    invoke-virtual {v9, v10, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 99
    .end local v1    # "existingTemplate":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    #@3a
    .line 101
    invoke-virtual {v4}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    #@3d
    move-result-object v3

    #@3e
    .line 103
    .local v3, "matchExpr":Lorg/apache/xpath/Expression;
    instance-of v9, v3, Lorg/apache/xpath/patterns/StepPattern;

    #@40
    if-eqz v9, :cond_5

    #@42
    .line 105
    check-cast v3, Lorg/apache/xpath/patterns/StepPattern;

    #@44
    .end local v3    # "matchExpr":Lorg/apache/xpath/Expression;
    invoke-direct {p0, v3, p1}, Lorg/apache/xalan/templates/TemplateList;->insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V

    #@47
    .line 64
    :cond_2
    return-void

    #@48
    .line 84
    .restart local v1    # "existingTemplate":Lorg/apache/xalan/templates/ElemTemplate;
    :cond_3
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    #@4f
    move-result v0

    #@50
    .line 85
    .local v0, "existingPrecedence":I
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v9}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    #@57
    move-result v6

    #@58
    .line 86
    .local v6, "newPrecedence":I
    if-le v6, v0, :cond_4

    #@5a
    .line 89
    iget-object v9, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    #@5c
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    #@5f
    move-result-object v10

    #@60
    invoke-virtual {v9, v10, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    goto :goto_0

    #@64
    .line 91
    :cond_4
    if-ne v6, v0, :cond_1

    #@66
    .line 92
    const-string/jumbo v9, "ER_DUPLICATE_NAMED_TEMPLATE"

    #@69
    .line 93
    new-array v10, v13, [Ljava/lang/Object;

    #@6b
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    #@6e
    move-result-object v11

    #@6f
    aput-object v11, v10, v12

    #@71
    .line 92
    invoke-virtual {p1, v9, v10}, Lorg/apache/xalan/templates/ElemTemplate;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    #@74
    goto :goto_0

    #@75
    .line 107
    .end local v0    # "existingPrecedence":I
    .end local v1    # "existingTemplate":Lorg/apache/xalan/templates/ElemTemplate;
    .end local v6    # "newPrecedence":I
    .restart local v3    # "matchExpr":Lorg/apache/xpath/Expression;
    :cond_5
    instance-of v9, v3, Lorg/apache/xpath/patterns/UnionPattern;

    #@77
    if-eqz v9, :cond_2

    #@79
    move-object v8, v3

    #@7a
    .line 109
    check-cast v8, Lorg/apache/xpath/patterns/UnionPattern;

    #@7c
    .line 110
    .local v8, "upat":Lorg/apache/xpath/patterns/UnionPattern;
    invoke-virtual {v8}, Lorg/apache/xpath/patterns/UnionPattern;->getPatterns()[Lorg/apache/xpath/patterns/StepPattern;

    #@7f
    move-result-object v7

    #@80
    .line 111
    .local v7, "pats":[Lorg/apache/xpath/patterns/StepPattern;
    array-length v5, v7

    #@81
    .line 113
    .local v5, "n":I
    const/4 v2, 0x0

    #@82
    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_2

    #@84
    .line 115
    aget-object v9, v7, v2

    #@86
    invoke-direct {p0, v9, p1}, Lorg/apache/xalan/templates/TemplateList;->insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V

    #@89
    .line 113
    add-int/lit8 v2, v2, 0x1

    #@8b
    goto :goto_1
.end method
