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
.field static final greylist DEBUG:Z = false

.field static final whitelist serialVersionUID:J = 0x508acbed134bd097L


# instance fields
.field private greylist m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private greylist m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private greylist m_namedTemplates:Ljava/util/Hashtable;

.field private greylist m_patternTable:Ljava/util/Hashtable;

.field private greylist m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private greylist m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;


# direct methods
.method static bridge synthetic greylist -$$Nest$fgetm_namedTemplates(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-object p0
.end method

.method static bridge synthetic greylist -$$Nest$fgetm_patternTable(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;
    .registers 1

    .line 0
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    return-object p0
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x59

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    .line 777
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 781
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 785
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 789
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 793
    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-void
.end method

.method private greylist addObjectIfNotFound(Ljava/lang/Object;Ljava/util/Vector;)V
    .registers 5

    .line 742
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_11

    .line 747
    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_e

    return-void

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 757
    :cond_11
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private greylist checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    .registers 5

    .line 0
    return-void
.end method

.method private greylist getHead(Ljava/lang/String;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .registers 2

    .line 833
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-object p0
.end method

.method private greylist getNamedTemplates()Ljava/util/Hashtable;
    .registers 1

    .line 806
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-object p0
.end method

.method private greylist getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D
    .registers 6

    .line 392
    invoke-virtual {p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemTemplate;->getPriority()D

    move-result-wide v0

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double p0, v0, v2

    if-nez p0, :cond_19

    .line 396
    invoke-virtual {p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getStepPattern()Lorg/apache/xpath/patterns/StepPattern;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 400
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->getDefaultScore()D

    move-result-wide p0

    return-wide p0

    :cond_19
    return-wide v0
.end method

.method private greylist insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .registers 15

    .line 233
    invoke-direct {p0, p2}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v0

    .line 235
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v2

    .line 236
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v3

    move-object v4, p1

    .line 255
    :goto_d
    invoke-virtual {v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v5

    if-nez v5, :cond_14

    goto :goto_38

    .line 260
    :cond_14
    invoke-direct {p0, v5}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v6

    .line 261
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v8

    if-le v2, v8, :cond_1f

    goto :goto_38

    .line 263
    :cond_1f
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v8

    if-ge v2, v8, :cond_27

    goto/16 :goto_9f

    :cond_27
    cmpl-double v8, v0, v6

    if-lez v8, :cond_2c

    goto :goto_38

    :cond_2c
    cmpg-double v6, v0, v6

    if-gez v6, :cond_32

    goto/16 :goto_9f

    .line 269
    :cond_32
    invoke-virtual {v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v6

    if-lt v3, v6, :cond_9f

    :goto_38
    const/4 v6, 0x0

    if-eqz v5, :cond_3d

    if-ne v4, p1, :cond_62

    .line 278
    :cond_3d
    invoke-direct {p0, v4}, Lorg/apache/xalan/templates/TemplateList;->getPriorityOrScore(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)D

    move-result-wide v7

    .line 279
    invoke-virtual {v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v9

    const/4 v10, 0x1

    if-le v2, v9, :cond_4a

    :goto_48
    move v6, v10

    goto :goto_62

    .line 281
    :cond_4a
    invoke-virtual {v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v9

    if-ge v2, v9, :cond_51

    goto :goto_62

    :cond_51
    cmpl-double v2, v0, v7

    if-lez v2, :cond_56

    goto :goto_48

    :cond_56
    cmpg-double v0, v0, v7

    if-gez v0, :cond_5b

    goto :goto_62

    .line 287
    :cond_5b
    invoke-virtual {v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getDocOrderPos()I

    move-result v0

    if-lt v3, v0, :cond_62

    goto :goto_48

    :cond_62
    :goto_62
    if-eqz p3, :cond_7b

    if-eqz v6, :cond_74

    .line 301
    invoke-virtual {p2, v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 303
    invoke-virtual {v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-virtual {p2, p1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setTargetString(Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, p1, p2}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    return-object p2

    .line 311
    :cond_74
    invoke-virtual {p2, v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 312
    invoke-virtual {v4, p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    return-object p1

    :cond_7b
    if-eqz v6, :cond_98

    .line 320
    invoke-virtual {p2, v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 322
    invoke-virtual {v4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result p1

    if-nez p1, :cond_95

    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result p1

    if-eqz p1, :cond_8d

    goto :goto_95

    .line 325
    :cond_8d
    invoke-virtual {p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    return-object p2

    .line 323
    :cond_95
    :goto_95
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-object p2

    .line 330
    :cond_98
    invoke-virtual {p2, v5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    .line 331
    invoke-virtual {v4, p2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->setNext(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    return-object p1

    :cond_9f
    :goto_9f
    move-object v4, v5

    goto/16 :goto_d
.end method

.method private greylist insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V
    .registers 6

    .line 346
    invoke-virtual {p1}, Lorg/apache/xpath/patterns/StepPattern;->getTargetString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 350
    invoke-virtual {p2}, Lorg/apache/xalan/templates/ElemTemplate;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v1

    .line 351
    new-instance v2, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    invoke-direct {v2, p2, p1, v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;-><init>(Lorg/apache/xalan/templates/ElemTemplate;Lorg/apache/xpath/patterns/StepPattern;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->isWild()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 357
    iget-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_20

    .line 358
    :cond_1c
    invoke-direct {p0, v0}, Lorg/apache/xalan/templates/TemplateList;->getHead(Ljava/lang/String;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object p2

    :goto_20
    if-nez p2, :cond_2b

    if-eqz p1, :cond_27

    .line 363
    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-void

    .line 365
    :cond_27
    invoke-direct {p0, v0, v2}, Lorg/apache/xalan/templates/TemplateList;->putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V

    return-void

    :cond_2b
    const/4 p1, 0x0

    .line 369
    invoke-direct {p0, p2, v2, p1}, Lorg/apache/xalan/templates/TemplateList;->insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :cond_2f
    return-void
.end method

.method private greylist putHead(Ljava/lang/String;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;)V
    .registers 4

    .line 845
    const-string v0, "#text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 846
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_20

    .line 847
    :cond_b
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 848
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_20

    .line 849
    :cond_16
    const-string v0, "#comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 850
    iput-object p2, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 852
    :cond_20
    :goto_20
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private greylist setNamedTemplates(Ljava/util/Hashtable;)V
    .registers 2

    .line 820
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public greylist compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 6

    .line 182
    iget-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-eqz p1, :cond_2a

    .line 184
    iget-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 186
    :cond_a
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 189
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 190
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :goto_18
    if-eqz v1, :cond_a

    .line 197
    :try_start_1a
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    const/4 v3, 0x1

    .line 196
    invoke-direct {p0, v0, v2, v3}, Lorg/apache/xalan/templates/TemplateList;->insertAssociationIntoList(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Z)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1a .. :try_end_25} :catch_25

    .line 201
    :catch_25
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_18

    :cond_2a
    return-void
.end method

.method greylist dumpAssociationTables()V
    .registers 10

    .line 136
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 138
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const-string v2, "\n....."

    const-string v3, ")"

    const-string v4, ", "

    const-string v5, "("

    if-eqz v1, :cond_4c

    .line 141
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :goto_1a
    if-eqz v1, :cond_46

    .line 145
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v1

    goto :goto_1a

    .line 151
    :cond_46
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 154
    :cond_4c
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 156
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "wild card list: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_55
    if-eqz p0, :cond_81

    .line 160
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTargetString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object p0

    goto :goto_55

    .line 166
    :cond_81
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public greylist getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;
    .registers 4

    .line 433
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result p1

    packed-switch p1, :pswitch_data_4a

    .line 465
    :pswitch_7
    iget-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    .line 466
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p2

    .line 465
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 461
    :pswitch_14
    iget-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 457
    :pswitch_17
    iget-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 453
    :pswitch_1a
    iget-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    .line 454
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p2

    .line 453
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 449
    :pswitch_27
    iget-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    .line 450
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p2

    .line 449
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 445
    :pswitch_34
    iget-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 440
    :pswitch_37
    iget-object p1, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    .line 441
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p2

    .line 440
    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :goto_43
    if-nez p1, :cond_48

    .line 469
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    return-object p0

    :cond_48
    return-object p1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_37
        :pswitch_37
        :pswitch_34
        :pswitch_34
        :pswitch_27
        :pswitch_27
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_7
        :pswitch_14
    .end packed-switch
.end method

.method public greylist getTemplate(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 2

    .line 416
    iget-object p0, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0
.end method

.method public greylist getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;IIZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 666
    invoke-virtual {p0, p1, p2, p7}, Lorg/apache/xalan/templates/TemplateList;->getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object p7

    const/4 v0, 0x0

    if-eqz p7, :cond_5f

    .line 673
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    .line 674
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    :cond_d
    const/4 v1, -0x1

    if-le p4, v1, :cond_19

    .line 679
    :try_start_10
    invoke-virtual {p7}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v1

    if-le v1, p4, :cond_19

    goto :goto_4b

    :catchall_17
    move-exception p0

    goto :goto_58

    .line 683
    :cond_19
    invoke-virtual {p7}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v1
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_17

    sub-int v2, p4, p5

    if-gt v1, v2, :cond_28

    .line 701
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    return-object v0

    .line 685
    :cond_28
    :try_start_28
    invoke-virtual {p7}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    .line 686
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 688
    iget-object v2, p7, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    sget-object v3, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v2, v3, :cond_4b

    .line 689
    invoke-virtual {p7, p3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v2

    if-eqz v2, :cond_4b

    if-eqz p6, :cond_44

    .line 692
    invoke-direct {p0, p7, p1, p2, p3}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_17

    .line 701
    :cond_44
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    return-object v1

    .line 697
    :cond_4b
    :goto_4b
    :try_start_4b
    invoke-virtual {p7}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object p7
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_17

    if-nez p7, :cond_d

    .line 701
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    goto :goto_5f

    .line 701
    :goto_58
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 702
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 703
    throw p0

    :cond_5f
    :goto_5f
    return-object v0
.end method

.method public greylist getTemplate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;ZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 601
    invoke-virtual {p0, p1, p2, p5}, Lorg/apache/xalan/templates/TemplateList;->getHead(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object p5

    if-eqz p5, :cond_46

    .line 608
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    .line 609
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 614
    :cond_c
    :try_start_c
    invoke-virtual {p5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v0

    .line 615
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 617
    iget-object v1, p5, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v1, v2, :cond_32

    .line 618
    invoke-virtual {p5, p3}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v1

    if-eqz v1, :cond_32

    if-eqz p4, :cond_2b

    .line 621
    invoke-direct {p0, p5, p1, p2, p3}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_29

    goto :goto_2b

    :catchall_29
    move-exception p0

    goto :goto_3f

    .line 630
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    return-object v0

    .line 626
    :cond_32
    :try_start_32
    invoke-virtual {p5}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object p5
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_29

    if-nez p5, :cond_c

    .line 630
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    goto :goto_46

    .line 630
    :goto_3f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 631
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 632
    throw p0

    :cond_46
    :goto_46
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist getTemplateFast(Lorg/apache/xpath/XPathContext;IILorg/apache/xml/utils/QName;IZLorg/apache/xml/dtm/DTM;)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 504
    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v0

    packed-switch v0, :pswitch_data_88

    .line 533
    :pswitch_7
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    .line 534
    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 529
    :pswitch_14
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_docPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 525
    :pswitch_17
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_commentPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 521
    :pswitch_1a
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    .line 522
    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 517
    :pswitch_27
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    .line 518
    invoke-interface {p7, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 513
    :pswitch_34
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_textPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    goto :goto_43

    .line 508
    :pswitch_37
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;

    .line 509
    invoke-interface {p7, p3}, Lorg/apache/xml/dtm/DTM;->getLocalNameFromExpandedNameID(I)Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    :goto_43
    const/4 v1, 0x0

    if-nez v0, :cond_4b

    .line 539
    iget-object v0, p0, Lorg/apache/xalan/templates/TemplateList;->m_wildCardPatterns:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-nez v0, :cond_4b

    return-object v1

    .line 547
    :cond_4b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->pushNamespaceContextNull()V

    :cond_4e
    const/4 v2, -0x1

    if-le p5, v2, :cond_5a

    .line 552
    :try_start_51
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getImportLevel()I

    move-result v2

    if-le v2, p5, :cond_5a

    goto :goto_7a

    :catchall_58
    move-exception p0

    goto :goto_84

    .line 556
    :cond_5a
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v2

    .line 557
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->setNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 559
    iget-object v3, v0, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->m_stepPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v3, p1, p2, p7, p3}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v3

    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v3, v4, :cond_7a

    .line 560
    invoke-virtual {v0, p4}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->matchMode(Lorg/apache/xml/utils/QName;)Z

    move-result v3

    if-eqz v3, :cond_7a

    if-eqz p6, :cond_76

    .line 563
    invoke-direct {p0, v0, p1, p2, p4}, Lorg/apache/xalan/templates/TemplateList;->checkConflicts(Lorg/apache/xalan/templates/TemplateSubPatternAssociation;Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/QName;)V
    :try_end_76
    .catchall {:try_start_51 .. :try_end_76} :catchall_58

    .line 572
    :cond_76
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    return-object v2

    .line 568
    :cond_7a
    :goto_7a
    :try_start_7a
    invoke-virtual {v0}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v0
    :try_end_7e
    .catchall {:try_start_7a .. :try_end_7e} :catchall_58

    if-nez v0, :cond_4e

    .line 572
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    return-object v1

    :goto_84
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 573
    throw p0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_37
        :pswitch_37
        :pswitch_34
        :pswitch_34
        :pswitch_27
        :pswitch_27
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_7
        :pswitch_14
    .end packed-switch
.end method

.method public greylist getWalker()Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
    .registers 3

    .line 715
    new-instance v0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;-><init>(Lorg/apache/xalan/templates/TemplateList;Lorg/apache/xalan/templates/TemplateList-IA;)V

    return-object v0
.end method

.method public greylist setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V
    .registers 6

    .line 66
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getMatch()Lorg/apache/xpath/XPath;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v1

    if-nez v1, :cond_17

    if-nez v0, :cond_17

    .line 70
    const-string v1, "xsl:template"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ER_NEED_NAME_OR_MATCH_ATTRIB"

    invoke-virtual {p1, v2, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_17
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 76
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplate;

    if-nez v1, :cond_35

    .line 79
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 84
    :cond_35
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v1

    .line 85
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetComposed;->getImportCountComposed()I

    move-result v2

    if-le v2, v1, :cond_51

    .line 89
    iget-object v1, p0, Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    :cond_51
    if-ne v2, v1, :cond_60

    .line 93
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplate;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 92
    const-string v2, "ER_DUPLICATE_NAMED_TEMPLATE"

    invoke-virtual {p1, v2, v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_60
    :goto_60
    if-eqz v0, :cond_86

    .line 101
    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    .line 103
    instance-of v1, v0, Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v1, :cond_70

    .line 105
    check-cast v0, Lorg/apache/xpath/patterns/StepPattern;

    invoke-direct {p0, v0, p1}, Lorg/apache/xalan/templates/TemplateList;->insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V

    return-void

    .line 107
    :cond_70
    instance-of v1, v0, Lorg/apache/xpath/patterns/UnionPattern;

    if-eqz v1, :cond_86

    .line 109
    check-cast v0, Lorg/apache/xpath/patterns/UnionPattern;

    .line 110
    invoke-virtual {v0}, Lorg/apache/xpath/patterns/UnionPattern;->getPatterns()[Lorg/apache/xpath/patterns/StepPattern;

    move-result-object v0

    .line 111
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7c
    if-ge v2, v1, :cond_86

    .line 115
    aget-object v3, v0, v2

    invoke-direct {p0, v3, p1}, Lorg/apache/xalan/templates/TemplateList;->insertPatternInTable(Lorg/apache/xpath/patterns/StepPattern;Lorg/apache/xalan/templates/ElemTemplate;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_86
    return-void
.end method
