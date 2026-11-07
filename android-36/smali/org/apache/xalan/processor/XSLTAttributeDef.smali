.class public Lorg/apache/xalan/processor/XSLTAttributeDef;
.super Ljava/lang/Object;
.source "XSLTAttributeDef.java"


# static fields
.field static final greylist ERROR:I = 0x1

.field static final greylist FATAL:I = 0x0

.field static final greylist S_FOREIGNATTR_SETTER:Ljava/lang/String; = "setForeignAttr"

.field static final greylist T_AVT:I = 0x3

.field static final greylist T_AVT_QNAME:I = 0x12

.field static final greylist T_CDATA:I = 0x1

.field static final greylist T_CHAR:I = 0x6

.field static final greylist T_ENUM:I = 0xb

.field static final greylist T_ENUM_OR_PQNAME:I = 0x10

.field static final greylist T_EXPR:I = 0x5

.field static final greylist T_NCNAME:I = 0x11

.field static final greylist T_NMTOKEN:I = 0xd

.field static final greylist T_NUMBER:I = 0x7

.field static final greylist T_PATTERN:I = 0x4

.field static final greylist T_PREFIXLIST:I = 0x14

.field static final greylist T_PREFIX_URLLIST:I = 0xf

.field static final greylist T_QNAME:I = 0x9

.field static final greylist T_QNAMES:I = 0xa

.field static final greylist T_QNAMES_RESOLVE_NULL:I = 0x13

.field static final greylist T_SIMPLEPATTERNLIST:I = 0xc

.field static final greylist T_STRINGLIST:I = 0xe

.field static final greylist T_URL:I = 0x2

.field static final greylist T_YESNO:I = 0x8

.field static final greylist WARNING:I = 0x2

.field static final greylist m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;


# instance fields
.field private greylist m_default:Ljava/lang/String;

.field private greylist m_enums:Lorg/apache/xml/utils/StringToIntTable;

.field greylist m_errorType:I

.field private greylist m_name:Ljava/lang/String;

.field private greylist m_namespace:Ljava/lang/String;

.field private greylist m_required:Z

.field greylist m_setterString:Ljava/lang/String;

.field private greylist m_supportsAVT:Z

.field private greylist m_type:I


# direct methods
.method static constructor greylist <clinit>()V
    .registers 7

    .line 274
    new-instance v0, Lorg/apache/xalan/processor/XSLTAttributeDef;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v1, "*"

    const-string v2, "*"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    sput-object v0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    return-void
.end method

.method constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V
    .registers 8

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 431
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    .line 95
    iput p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    .line 97
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 98
    iput p5, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 99
    iput-object p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    return-void
.end method

.method constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .registers 8

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 431
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    .line 71
    iput p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    .line 72
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    .line 73
    iput-boolean p5, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 74
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    return-void
.end method

.method constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V
    .registers 13

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 416
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    const/4 v1, 0x0

    .line 431
    iput-object v1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    if-eqz p5, :cond_12

    const/16 p1, 0x10

    goto :goto_14

    :cond_12
    const/16 p1, 0xb

    .line 123
    :goto_14
    iput p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    .line 124
    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    .line 125
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 126
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 127
    new-instance p1, Lorg/apache/xml/utils/StringToIntTable;

    invoke-direct {p1, v0}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    .line 129
    invoke-virtual {p1, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 130
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {p0, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    return-void
.end method

.method constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 14

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 416
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    const/4 v0, 0x0

    .line 431
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    if-eqz p5, :cond_12

    const/16 p1, 0x10

    goto :goto_14

    :cond_12
    const/16 p1, 0xb

    .line 156
    :goto_14
    iput p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    .line 157
    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    .line 158
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 159
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 160
    new-instance p1, Lorg/apache/xml/utils/StringToIntTable;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    .line 162
    invoke-virtual {p1, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 163
    iget-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {p1, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 164
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {p0, p11, p12}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    return-void
.end method

.method constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .registers 16

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 416
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    const/4 v0, 0x0

    .line 431
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    if-eqz p5, :cond_12

    const/16 p1, 0x10

    goto :goto_14

    :cond_12
    const/16 p1, 0xb

    .line 192
    :goto_14
    iput p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    .line 193
    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    .line 194
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    .line 195
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    .line 196
    new-instance p1, Lorg/apache/xml/utils/StringToIntTable;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    .line 198
    invoke-virtual {p1, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 199
    iget-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {p1, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 200
    iget-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {p1, p11, p12}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    .line 201
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {p0, p13, p14}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    return-void
.end method

.method private greylist getEnum(Ljava/lang/String;)I
    .registers 2

    .line 345
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/StringToIntTable;->get(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private greylist getEnumNames()[Ljava/lang/String;
    .registers 1

    .line 358
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    invoke-virtual {p0}, Lorg/apache/xml/utils/StringToIntTable;->keys()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist getListOfEnums()Ljava/lang/StringBuffer;
    .registers 4

    .line 1540
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1541
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnumNames()[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 1543
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_1c

    if-lez v1, :cond_14

    const/16 v2, 0x20

    .line 1547
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1549
    :cond_14
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return-object v0
.end method

.method private greylist getPrimativeClass(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 2

    .line 1492
    instance-of p0, p1, Lorg/apache/xpath/XPath;

    if-eqz p0, :cond_7

    .line 1493
    const-class p0, Lorg/apache/xpath/XPath;

    return-object p0

    .line 1495
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1497
    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_11

    .line 1499
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 1502
    :cond_11
    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_18

    .line 1504
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 1506
    :cond_18
    const-class p1, Ljava/lang/Boolean;

    if-ne p0, p1, :cond_1f

    .line 1508
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 1510
    :cond_1f
    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_26

    .line 1512
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 1514
    :cond_26
    const-class p1, Ljava/lang/Character;

    if-ne p0, p1, :cond_2d

    .line 1516
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 1518
    :cond_2d
    const-class p1, Ljava/lang/Short;

    if-ne p0, p1, :cond_34

    .line 1520
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 1522
    :cond_34
    const-class p1, Ljava/lang/Integer;

    if-ne p0, p1, :cond_3b

    .line 1524
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 1526
    :cond_3b
    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_41

    .line 1528
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    :cond_41
    return-object p0
.end method

.method private greylist handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1654
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getErrorType()I

    move-result p0

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 p4, 0x2

    if-eq p0, p4, :cond_d

    return-void

    .line 1661
    :cond_d
    invoke-virtual {p1, p2, p3}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1658
    :cond_11
    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method private greylist processYESNO(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1359
    const-string p2, "yes"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1b

    const-string p4, "no"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1b

    .line 1361
    const-string p2, "INVALID_BOOLEAN"

    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object p4

    .line 1365
    :cond_1b
    new-instance p0, Ljava/lang/Boolean;

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p0
.end method


# virtual methods
.method greylist getDefault()Ljava/lang/String;
    .registers 1

    .line 373
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    return-object p0
.end method

.method greylist getErrorType()I
    .registers 1

    .line 425
    iget p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    return p0
.end method

.method greylist getName()Ljava/lang/String;
    .registers 1

    .line 307
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    return-object p0
.end method

.method greylist getNamespace()Ljava/lang/String;
    .registers 1

    .line 292
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    return-object p0
.end method

.method greylist getRequired()Z
    .registers 1

    .line 398
    iget-boolean p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    return p0
.end method

.method public greylist getSetterMethodName()Ljava/lang/String;
    .registers 6

    .line 446
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    if-nez v0, :cond_67

    .line 448
    sget-object v0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    if-ne v0, p0, :cond_b

    .line 450
    const-string p0, "setForeignAttr"

    return-object p0

    .line 452
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 454
    const-string v0, "addLiteralResultAttribute"

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    return-object v0

    .line 459
    :cond_1a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 461
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    iget-object v1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    if-eqz v1, :cond_35

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 466
    const-string v1, "Xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    :cond_35
    iget-object v1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v1, :cond_61

    .line 473
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v4, v3, :cond_55

    add-int/lit8 v2, v2, 0x1

    .line 479
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 480
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    goto :goto_5b

    :cond_55
    if-nez v2, :cond_5b

    .line 484
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 487
    :cond_5b
    :goto_5b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 490
    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    .line 493
    :cond_67
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    return-object p0
.end method

.method greylist getSupportsAVT()Z
    .registers 1

    .line 413
    iget-boolean p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    return p0
.end method

.method greylist getType()I
    .registers 1

    .line 324
    iget p0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    return p0
.end method

.method greylist processAVT(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/AVT;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 520
    :try_start_0
    new-instance p0, Lorg/apache/xalan/templates/AVT;

    invoke-direct/range {p0 .. p6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    move-exception v0

    move-object p0, v0

    .line 526
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method greylist processAVT_QNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 977
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 980
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result p1

    if-eqz p1, :cond_4f

    const/16 p1, 0x3a

    .line 982
    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1
    :try_end_17
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_17} :catch_50

    .line 984
    const-string p2, "INVALID_QNAME"

    const/4 p3, 0x0

    if-ltz p1, :cond_2f

    const/4 p4, 0x0

    .line 986
    :try_start_1d
    invoke-virtual {v5, p4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 987
    invoke-static {p4}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2f

    .line 989
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1, p3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object p3

    :cond_2f
    if-gez p1, :cond_33

    move-object p1, v5

    goto :goto_39

    :cond_33
    add-int/lit8 p1, p1, 0x1

    .line 995
    invoke-virtual {v5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :goto_39
    if-eqz p1, :cond_47

    .line 997
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_47

    .line 998
    invoke-static {p1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4f

    .line 1000
    :cond_47
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1, p3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_4e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d .. :try_end_4e} :catch_50

    return-object p3

    :cond_4f
    return-object v0

    :catch_50
    move-exception v0

    move-object p0, v0

    .line 1008
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method greylist processCDATA(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 551
    :try_start_6
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_11
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    move-object p0, v0

    .line 556
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1a
    move-object v5, p5

    return-object v5
.end method

.method greylist processCHAR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 581
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v0

    const-string v7, "INVALID_TCHAR"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_33

    .line 584
    :try_start_a
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 587
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result p2

    if-eqz p2, :cond_2a

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p2, v8, :cond_2a

    .line 588
    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v7, p2, v9}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_29
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_29} :catch_2b

    return-object v9

    :cond_2a
    return-object v0

    :catch_2b
    move-exception v0

    move-object p0, v0

    .line 595
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 598
    :cond_33
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p2, v8, :cond_41

    .line 600
    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v7, p2, v9}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v9

    .line 604
    :cond_41
    new-instance p0, Ljava/lang/Character;

    const/4 p1, 0x0

    invoke-virtual {p5, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Character;-><init>(C)V

    return-object p0
.end method

.method greylist processENUM(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 628
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 631
    :try_start_7
    new-instance v2, Lorg/apache/xalan/templates/AVT;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 634
    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result p1
    :try_end_16
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_16} :catch_19

    if-nez p1, :cond_25

    return-object v2

    :catch_19
    move-exception v0

    move-object p0, v0

    .line 638
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_21
    move-object v3, p1

    move-object v5, p3

    move-object v7, p5

    move-object v2, v1

    .line 642
    :cond_25
    invoke-direct {p0, v7}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnum(Ljava/lang/String;)I

    move-result p1

    const/16 p2, -0x2710

    if-ne p1, p2, :cond_3f

    .line 646
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object p1

    .line 647
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v5, v7, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "INVALID_ENUM"

    invoke-direct {p0, v3, p2, p1, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v1

    .line 651
    :cond_3f
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result p0

    if-eqz p0, :cond_46

    return-object v2

    .line 652
    :cond_46
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    return-object p0
.end method

.method greylist processENUM_OR_PQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 677
    const-string v7, "INVALID_ENUM"

    const-string v8, " <qname-but-not-ncname>"

    .line 679
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_26

    .line 682
    :try_start_b
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 683
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result p2
    :try_end_1b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_b .. :try_end_1b} :catch_1e

    if-nez p2, :cond_27

    return-object v0

    :catch_1e
    move-exception v0

    move-object p0, v0

    .line 688
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_26
    move-object v0, v9

    .line 693
    :cond_27
    invoke-direct {p0, p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnum(Ljava/lang/String;)I

    move-result p2

    const/16 v2, -0x2710

    if-eq p2, v2, :cond_38

    if-nez v0, :cond_37

    .line 697
    new-instance p0, Ljava/lang/Integer;

    invoke-direct {p0, p2}, Ljava/lang/Integer;-><init>(I)V

    return-object p0

    :cond_37
    return-object v0

    .line 705
    :cond_38
    :try_start_38
    new-instance p2, Lorg/apache/xml/utils/QName;

    const/4 v2, 0x1

    invoke-direct {p2, p5, p1, v2}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V

    if-nez v0, :cond_41

    move-object v0, p2

    .line 708
    :cond_41
    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_60

    .line 709
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object p2

    .line 711
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 712
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p3, p5, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v7, p2, v9}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_59} :catch_5d
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_59} :catch_5a

    return-object v9

    :catch_5a
    move-exception v0

    move-object p2, v0

    goto :goto_61

    :catch_5d
    move-exception v0

    move-object p2, v0

    goto :goto_74

    :cond_60
    return-object v0

    .line 728
    :goto_61
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 729
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, p5, v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, v7, p3, p2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v9

    .line 719
    :goto_74
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 720
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 722
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p3, p5, v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, v7, p3, p2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v9
.end method

.method greylist processEXPR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 763
    :try_start_0
    invoke-virtual {p1, p5, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object p0
    :try_end_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 769
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method greylist processNCNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1035
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v0

    const-string v1, "INVALID_NCNAME"

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    .line 1040
    :try_start_9
    new-instance v3, Lorg/apache/xalan/templates/AVT;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 1043
    invoke-virtual {v3}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_29

    .line 1045
    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2, v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_28} :catch_2a

    return-object v2

    :cond_29
    return-object v3

    :catch_2a
    move-exception v0

    move-object p0, v0

    .line 1053
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 1057
    :cond_32
    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_40

    .line 1059
    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2, v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v2

    :cond_40
    return-object p5
.end method

.method greylist processNMTOKEN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 792
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v0

    const-string v1, "INVALID_NMTOKEN"

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    .line 795
    :try_start_9
    new-instance v3, Lorg/apache/xalan/templates/AVT;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 798
    invoke-virtual {v3}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_29

    .line 799
    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2, v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_28
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_28} :catch_2a

    return-object v2

    :cond_29
    return-object v3

    :catch_2a
    move-exception v0

    move-object p0, v0

    .line 806
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 809
    :cond_32
    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_40

    .line 810
    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2, v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v2

    :cond_40
    return-object p5
.end method

.method greylist processNUMBER(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 874
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result v0

    const/4 v7, 0x0

    const-string v8, "INVALID_NUMBER"

    if-eqz v0, :cond_32

    .line 880
    :try_start_9
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 883
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 885
    invoke-static {p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_1d} :catch_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    move-exception v0

    move-object p2, v0

    goto :goto_22

    :cond_21
    return-object v0

    .line 894
    :goto_22
    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, v8, p3, p2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v7

    :catch_2a
    move-exception v0

    move-object p0, v0

    .line 890
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 904
    :cond_32
    :try_start_32
    invoke-static {p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_36} :catch_37

    return-object p0

    :catch_37
    move-exception v0

    move-object p2, v0

    .line 908
    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, v8, p3, p2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object v7
.end method

.method greylist processPATTERN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 841
    :try_start_0
    invoke-virtual {p1, p5, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object p0
    :try_end_4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 847
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method greylist processPREFIX_LIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1271
    new-instance p0, Ljava/util/StringTokenizer;

    const-string p2, " \t\n\r\u000c"

    invoke-direct {p0, p5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    .line 1273
    new-instance p3, Lorg/apache/xml/utils/StringVector;

    invoke-direct {p3, p2}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    const/4 p4, 0x0

    :goto_11
    if-ge p4, p2, :cond_3c

    .line 1277
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p5

    .line 1278
    invoke-virtual {p1, p5}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1279
    const-string v1, "#default"

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    if-eqz v0, :cond_26

    goto :goto_36

    .line 1282
    :cond_26
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_CANT_RESOLVE_NSPREFIX"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p2

    .line 1283
    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1280
    :cond_36
    :goto_36
    invoke-virtual {p3, p5}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_11

    :cond_3c
    return-object p3
.end method

.method greylist processPREFIX_URLLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1233
    new-instance p0, Ljava/util/StringTokenizer;

    const-string p2, " \t\n\r\u000c"

    invoke-direct {p0, p5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    .line 1235
    new-instance p3, Lorg/apache/xml/utils/StringVector;

    invoke-direct {p3, p2}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    const/4 p4, 0x0

    :goto_11
    if-ge p4, p2, :cond_33

    .line 1239
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p5

    .line 1240
    invoke-virtual {p1, p5}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 1243
    invoke-virtual {p3, v0}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_11

    .line 1245
    :cond_23
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_CANT_RESOLVE_NSPREFIX"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    return-object p3
.end method

.method greylist processQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 937
    const-string p2, "INVALID_QNAME"

    const/4 p4, 0x0

    :try_start_3
    new-instance p6, Lorg/apache/xml/utils/QName;

    const/4 v0, 0x1

    invoke-direct {p6, p5, p1, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_9} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_9} :catch_a

    return-object p6

    :catch_a
    move-exception p6

    goto :goto_e

    :catch_c
    move-exception p6

    goto :goto_16

    .line 948
    :goto_e
    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object p4

    .line 943
    :goto_16
    filled-new-array {p3, p5}, [Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return-object p4
.end method

.method greylist processQNAMES(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1088
    new-instance p0, Ljava/util/StringTokenizer;

    const-string p2, " \t\n\r\u000c"

    invoke-direct {p0, p5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    .line 1090
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3, p2}, Ljava/util/Vector;-><init>(I)V

    const/4 p4, 0x0

    :goto_11
    if-ge p4, p2, :cond_22

    .line 1095
    new-instance p5, Lorg/apache/xml/utils/QName;

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {p3, p5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_11

    :cond_22
    return-object p3
.end method

.method final greylist processQNAMESRNU(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1125
    new-instance p0, Ljava/util/StringTokenizer;

    const-string p2, " \t\n\r\u000c"

    invoke-direct {p0, p5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    .line 1127
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3, p2}, Ljava/util/Vector;-><init>(I)V

    .line 1129
    const-string p4, ""

    invoke-virtual {p1, p4}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    :goto_17
    if-ge p5, p2, :cond_3a

    .line 1132
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3a

    .line 1133
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2f

    .line 1134
    new-instance v1, Lorg/apache/xml/utils/QName;

    invoke-direct {v1, p4, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_37

    .line 1136
    :cond_2f
    new-instance v1, Lorg/apache/xml/utils/QName;

    invoke-direct {v1, v0, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    invoke-virtual {p3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_37
    add-int/lit8 p5, p5, 0x1

    goto :goto_17

    :cond_3a
    return-object p3
.end method

.method greylist processSIMPLEPATTERNLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/util/Vector;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1166
    :try_start_0
    new-instance p0, Ljava/util/StringTokenizer;

    const-string p2, " \t\n\r\u000c"

    invoke-direct {p0, p5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p2

    .line 1168
    new-instance p3, Ljava/util/Vector;

    invoke-direct {p3, p2}, Ljava/util/Vector;-><init>(I)V

    const/4 p4, 0x0

    :goto_11
    if-ge p4, p2, :cond_21

    .line 1173
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object p5

    .line 1175
    invoke-virtual {p3, p5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_1e} :catch_22

    add-int/lit8 p4, p4, 0x1

    goto :goto_11

    :cond_21
    return-object p3

    :catch_22
    move-exception p0

    .line 1182
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method greylist processSTRINGLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .registers 6

    .line 1202
    new-instance p0, Ljava/util/StringTokenizer;

    const-string p1, " \t\n\r\u000c"

    invoke-direct {p0, p5, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    .line 1204
    new-instance p2, Lorg/apache/xml/utils/StringVector;

    invoke-direct {p2, p1}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    const/4 p3, 0x0

    :goto_11
    if-ge p3, p1, :cond_1d

    .line 1208
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_11

    :cond_1d
    return-object p2
.end method

.method greylist processURL(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1313
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 1316
    :try_start_6
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_11
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    move-object p0, v0

    .line 1328
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1a
    move-object v5, p5

    return-object v5
.end method

.method greylist processValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1387
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_f4

    const/4 p0, 0x0

    return-object p0

    :pswitch_9
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1452
    invoke-virtual/range {p1 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPREFIX_LIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    move-result-object p0

    return-object p0

    :pswitch_14
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1423
    invoke-virtual/range {p1 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAMESRNU(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    return-object p0

    :pswitch_1f
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1449
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processAVT_QNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2b
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1446
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNCNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1443
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processENUM_OR_PQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_43
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1439
    invoke-virtual/range {p1 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPREFIX_URLLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    move-result-object p0

    return-object p0

    :pswitch_4e
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1436
    invoke-virtual/range {p1 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processSTRINGLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    move-result-object p0

    return-object p0

    :pswitch_59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1408
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNMTOKEN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_65
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1426
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processSIMPLEPATTERNLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/util/Vector;

    move-result-object p0

    return-object p0

    :pswitch_71
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1402
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processENUM(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_7d
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1420
    invoke-virtual/range {p1 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAMES(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p0

    return-object p0

    :pswitch_88
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1417
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_94
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 1433
    invoke-direct/range {p1 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processYESNO(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_9f
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1414
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNUMBER(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_ab
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1399
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processCHAR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_b7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1405
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processEXPR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_c3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1411
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPATTERN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_cf
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1393
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processAVT(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/AVT;

    move-result-object p0

    return-object p0

    :pswitch_db
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1430
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processURL(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_e7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1396
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processCDATA(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_e7
        :pswitch_db
        :pswitch_cf
        :pswitch_c3
        :pswitch_b7
        :pswitch_ab
        :pswitch_9f
        :pswitch_94
        :pswitch_88
        :pswitch_7d
        :pswitch_71
        :pswitch_65
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_37
        :pswitch_2b
        :pswitch_1f
        :pswitch_14
        :pswitch_9
    .end packed-switch
.end method

.method greylist setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1571
    const-string v1, "ER_FAILED_CALLING_METHOD"

    const-string v2, "setForeignAttr"

    const-string v0, "xmlns"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_a6

    const-string v0, "xmlns:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_a6

    .line 1574
    :cond_17
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSetterMethodName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a6

    const/4 v5, 0x0

    .line 1585
    :try_start_1e
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    if-nez p2, :cond_32

    .line 1588
    const-string p2, ""

    goto :goto_32

    :catch_29
    move-exception v0

    move-object p2, v0

    goto :goto_80

    :catch_2c
    move-exception v0

    move-object p0, v0

    goto :goto_90

    :catch_2f
    move-exception v0

    move-object p0, v0

    goto :goto_98

    .line 1590
    :cond_32
    :goto_32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v6, 0x4

    .line 1591
    new-array v6, v6, [Ljava/lang/Class;

    aput-object v0, v6, v5

    aput-object v0, v6, v3

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    .line 1594
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1596
    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    goto :goto_7c

    .line 1601
    :cond_50
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_57

    return v5

    .line 1608
    :cond_57
    new-array p3, v3, [Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getPrimativeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p4

    aput-object p4, p3, v5
    :try_end_5f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_5f} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_5f} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_5f} :catch_29

    .line 1612
    :try_start_5f
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4, v4, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3
    :try_end_67
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5f .. :try_end_67} :catch_69
    .catch Ljava/lang/IllegalAccessException; {:try_start_5f .. :try_end_67} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5f .. :try_end_67} :catch_29

    :goto_67
    move-object v0, p3

    goto :goto_78

    .line 1616
    :catch_69
    :try_start_69
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 1619
    aput-object p4, p3, v5

    .line 1620
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4, v4, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    goto :goto_67

    .line 1623
    :goto_78
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 1626
    :goto_7c
    invoke-virtual {v0, p6, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_69 .. :try_end_7f} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_69 .. :try_end_7f} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_69 .. :try_end_7f} :catch_29

    goto :goto_a6

    .line 1643
    :goto_80
    const-string p3, "name"

    .line 1644
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object p4

    filled-new-array {p3, p4}, [Ljava/lang/Object;

    move-result-object p3

    .line 1643
    const-string p4, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    invoke-direct {p0, p1, p4, p3, p2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return v5

    .line 1638
    :goto_90
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return v5

    .line 1630
    :goto_98
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a6

    .line 1632
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2, p0}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    return v5

    :cond_a6
    :goto_a6
    return v3
.end method

.method greylist setDefAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1474
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1475
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 1474
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    return-void
.end method

.method greylist setDefault(Ljava/lang/String;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    return-void
.end method
