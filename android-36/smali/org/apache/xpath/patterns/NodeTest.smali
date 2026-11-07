.class public Lorg/apache/xpath/patterns/NodeTest;
.super Lorg/apache/xpath/Expression;
.source "NodeTest.java"


# static fields
.field public static final greylist SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

.field public static final greylist SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

.field public static final greylist SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber;

.field public static final greylist SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

.field public static final greylist SCORE_QNAME:Lorg/apache/xpath/objects/XNumber;

.field public static final greylist SHOW_BYFUNCTION:I = 0x10000

.field public static final greylist SUPPORTS_PRE_STRIPPING:Ljava/lang/String; = "http://xml.apache.org/xpath/features/whitespace-pre-stripping"

.field public static final greylist WILD:Ljava/lang/String; = "*"

.field static final whitelist serialVersionUID:J = -0x4f9cee24b2b98886L


# instance fields
.field private greylist m_isTotallyWild:Z

.field protected greylist m_name:Ljava/lang/String;

.field greylist m_namespace:Ljava/lang/String;

.field greylist m_score:Lorg/apache/xpath/objects/XNumber;

.field protected greylist m_whatToShow:I


# direct methods
.method static constructor greylist <clinit>()V
    .registers 3

    .line 158
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v1, -0x4020000000000000L    # -0.5

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    .line 165
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v1, -0x4030000000000000L    # -0.25

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber;

    .line 173
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_QNAME:Lorg/apache/xpath/objects/XNumber;

    .line 181
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    .line 188
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lorg/apache/xpath/objects/XNumber;-><init>(D)V

    sput-object v0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 257
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(I)V
    .registers 2

    .line 211
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    .line 212
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(I)V

    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 200
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    .line 201
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/xpath/patterns/NodeTest;->initNodeTest(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static greylist debugWhatToShow(I)V
    .registers 6

    .line 416
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_e

    .line 419
    const-string v1, "SHOW_ATTRIBUTE"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_e
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_17

    .line 422
    const-string v1, "SHOW_NAMESPACE"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_17
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_20

    .line 425
    const-string v1, "SHOW_CDATA_SECTION"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_20
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_29

    .line 428
    const-string v1, "SHOW_COMMENT"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_29
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_32

    .line 431
    const-string v1, "SHOW_DOCUMENT"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_32
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_3b

    .line 434
    const-string v1, "SHOW_DOCUMENT_FRAGMENT"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3b
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_44

    .line 437
    const-string v1, "SHOW_DOCUMENT_TYPE"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_44
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_4d

    .line 440
    const-string v1, "SHOW_ELEMENT"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4d
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_56

    .line 443
    const-string v1, "SHOW_ENTITY"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_56
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_5f

    .line 446
    const-string v1, "SHOW_ENTITY_REFERENCE"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5f
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_68

    .line 449
    const-string v1, "SHOW_NOTATION"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_68
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_71

    .line 452
    const-string v1, "SHOW_PROCESSING_INSTRUCTION"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_71
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_7a

    .line 455
    const-string v1, "SHOW_TEXT"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 457
    :cond_7a
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_7f
    if-ge v2, v1, :cond_96

    if-lez v2, :cond_8a

    .line 462
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 464
    :cond_8a
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    :cond_96
    if-nez v1, :cond_ae

    .line 468
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty whatToShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 470
    :cond_ae
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static greylist getNodeTypeTest(I)I
    .registers 3

    .line 0
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_12

    const/4 p0, 0x3

    return p0

    :cond_12
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_19

    const/16 p0, 0x9

    return p0

    :cond_19
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_20

    const/16 p0, 0xb

    return p0

    :cond_20
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_27

    const/16 p0, 0xd

    return p0

    :cond_27
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x8

    if-eqz v0, :cond_2e

    return v1

    :cond_2e
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_34

    const/4 p0, 0x7

    return p0

    :cond_34
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_3b

    const/16 p0, 0xa

    return p0

    :cond_3b
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_41

    const/4 p0, 0x6

    return p0

    :cond_41
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_47

    const/4 p0, 0x5

    return p0

    :cond_47
    and-int/lit16 v0, p0, 0x800

    if-eqz v0, :cond_4e

    const/16 p0, 0xc

    return p0

    :cond_4e
    and-int/2addr p0, v1

    if-eqz p0, :cond_53

    const/4 p0, 0x4

    return p0

    :cond_53
    const/4 p0, 0x0

    return p0
.end method

.method private static final greylist subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eq p0, p1, :cond_11

    if-eqz p0, :cond_f

    .line 488
    const-string v0, "*"

    if-eq p1, v0, :cond_11

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method private static final greylist subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eq p0, p1, :cond_1a

    if-eqz p0, :cond_18

    .line 506
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    const-string v0, "*"

    if-eq p1, v0, :cond_1a

    .line 507
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_1a

    :cond_15
    if-nez p1, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected greylist calcScore()V
    .registers 4

    .line 324
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    const-string v1, "*"

    if-nez v0, :cond_f

    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 325
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    iput-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_2b

    :cond_f
    if-eq v0, v1, :cond_13

    if-nez v0, :cond_1c

    .line 326
    :cond_13
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-ne v2, v1, :cond_1c

    .line 328
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NODETEST:Lorg/apache/xpath/objects/XNumber;

    iput-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_2b

    :cond_1c
    if-eq v0, v1, :cond_27

    .line 329
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-ne v2, v1, :cond_27

    .line 330
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NSWILD:Lorg/apache/xpath/objects/XNumber;

    iput-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    goto :goto_2b

    .line 332
    :cond_27
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_QNAME:Lorg/apache/xpath/objects/XNumber;

    iput-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    :goto_2b
    if-nez v0, :cond_33

    .line 334
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-ne v0, v1, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    iput-boolean v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    return-void
.end method

.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3

    const/4 p1, 0x0

    .line 689
    const-string p2, "callVisitors should not be called for this object!!!"

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    return-void
.end method

.method public greylist deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 5

    .line 220
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 223
    :cond_8
    check-cast p1, Lorg/apache/xpath/patterns/NodeTest;

    .line 225
    iget-object v0, p1, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 227
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-nez v2, :cond_13

    return v1

    .line 229
    :cond_13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 232
    :cond_1a
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-eqz v0, :cond_1f

    return v1

    .line 235
    :cond_1f
    iget-object v0, p1, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v0, :cond_2f

    .line 237
    iget-object v2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-nez v2, :cond_28

    return v1

    .line 239
    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    return v1

    .line 242
    :cond_2f
    iget-object v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    if-eqz v0, :cond_34

    return v1

    .line 245
    :cond_34
    iget v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    iget v2, p1, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    if-eq v0, v2, :cond_3b

    return v1

    .line 248
    :cond_3b
    iget-boolean p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    iget-boolean p1, p1, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    if-eq p0, p1, :cond_42

    return v1

    :cond_42
    const/4 p0, 0x1

    return p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 673
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object p0

    return-object p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 529
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object p1

    .line 530
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v0

    .line 532
    iget v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    .line 533
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    :cond_10
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    shl-int v0, v2, v0

    and-int/2addr v0, v1

    if-eq v0, v2, :cond_65

    const/4 v1, 0x2

    if-eq v0, v1, :cond_65

    const/4 v1, 0x4

    if-eq v0, v1, :cond_62

    const/16 v1, 0x8

    if-eq v0, v1, :cond_62

    const/16 v1, 0x40

    if-eq v0, v1, :cond_50

    const/16 v1, 0x80

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x100

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x400

    if-eq v0, v1, :cond_4a

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_38

    .line 580
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 569
    :cond_38
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    .line 571
    iget-object p2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_47

    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    :cond_47
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 541
    :cond_4a
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 543
    :cond_4d
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 552
    :cond_50
    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 553
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    :cond_5f
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 550
    :cond_62
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 576
    :cond_65
    iget-boolean v0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    if-nez v0, :cond_85

    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {p1, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_82

    goto :goto_85

    .line 577
    :cond_82
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    :cond_85
    :goto_85
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0
.end method

.method public greylist execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 604
    iget p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    const/4 p4, -0x1

    if-ne p1, p4, :cond_8

    .line 605
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 608
    :cond_8
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result p4

    const/4 v0, 0x1

    sub-int/2addr p4, v0

    shl-int p4, v0, p4

    and-int/2addr p1, p4

    if-eq p1, v0, :cond_61

    const/4 p4, 0x2

    if-eq p1, p4, :cond_61

    const/4 p4, 0x4

    if-eq p1, p4, :cond_5e

    const/16 p4, 0x8

    if-eq p1, p4, :cond_5e

    const/16 p4, 0x40

    if-eq p1, p4, :cond_4c

    const/16 p4, 0x80

    if-eq p1, p4, :cond_49

    const/16 p4, 0x100

    if-eq p1, p4, :cond_46

    const/16 p4, 0x400

    if-eq p1, p4, :cond_46

    const/16 p4, 0x1000

    if-eq p1, p4, :cond_34

    .line 653
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 642
    :cond_34
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    .line 644
    iget-object p2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    :cond_43
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 614
    :cond_46
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 616
    :cond_49
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 625
    :cond_4c
    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 626
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    :cond_5b
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 623
    :cond_5e
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    .line 649
    :cond_61
    iget-boolean p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_isTotallyWild:Z

    if-nez p1, :cond_81

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    invoke-static {p1, p4}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatchNS(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7e

    invoke-interface {p3, p2}, Lorg/apache/xml/dtm/DTM;->getLocalName(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7e

    goto :goto_81

    .line 650
    :cond_7e
    sget-object p0, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    return-object p0

    :cond_81
    :goto_81
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0
.end method

.method public greylist fixupVariables(Ljava/util/Vector;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public greylist getDefaultScore()D
    .registers 3

    .line 345
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNumber;->num()D

    move-result-wide v0

    return-wide v0
.end method

.method public greylist getLocalName()Ljava/lang/String;
    .registers 1

    .line 130
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    return-object p0
.end method

.method public greylist getNamespace()Ljava/lang/String;
    .registers 1

    .line 104
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getStaticScore()Lorg/apache/xpath/objects/XNumber;
    .registers 1

    .line 306
    iget-object p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-object p0
.end method

.method public greylist getWhatToShow()I
    .registers 1

    .line 76
    iget p0, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    return p0
.end method

.method public greylist initNodeTest(I)V
    .registers 2

    .line 269
    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    .line 271
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    return-void
.end method

.method public greylist initNodeTest(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 287
    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    .line 288
    iput-object p2, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    .line 291
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    return-void
.end method

.method public greylist setLocalName(Ljava/lang/String;)V
    .registers 2

    .line 140
    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_name:Ljava/lang/String;

    return-void
.end method

.method public greylist setNamespace(Ljava/lang/String;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_namespace:Ljava/lang/String;

    return-void
.end method

.method public greylist setStaticScore(Lorg/apache/xpath/objects/XNumber;)V
    .registers 2

    .line 315
    iput-object p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_score:Lorg/apache/xpath/objects/XNumber;

    return-void
.end method

.method public greylist setWhatToShow(I)V
    .registers 2

    .line 88
    iput p1, p0, Lorg/apache/xpath/patterns/NodeTest;->m_whatToShow:I

    return-void
.end method
