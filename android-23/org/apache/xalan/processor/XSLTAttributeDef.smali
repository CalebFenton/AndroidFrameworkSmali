.class public Lorg/apache/xalan/processor/XSLTAttributeDef;
.super Ljava/lang/Object;
.source "XSLTAttributeDef.java"


# static fields
.field static final ERROR:I = 0x1

.field static final FATAL:I = 0x0

.field static final S_FOREIGNATTR_SETTER:Ljava/lang/String; = "setForeignAttr"

.field static final T_AVT:I = 0x3

.field static final T_AVT_QNAME:I = 0x12

.field static final T_CDATA:I = 0x1

.field static final T_CHAR:I = 0x6

.field static final T_ENUM:I = 0xb

.field static final T_ENUM_OR_PQNAME:I = 0x10

.field static final T_EXPR:I = 0x5

.field static final T_NCNAME:I = 0x11

.field static final T_NMTOKEN:I = 0xd

.field static final T_NUMBER:I = 0x7

.field static final T_PATTERN:I = 0x4

.field static final T_PREFIXLIST:I = 0x14

.field static final T_PREFIX_URLLIST:I = 0xf

.field static final T_QNAME:I = 0x9

.field static final T_QNAMES:I = 0xa

.field static final T_QNAMES_RESOLVE_NULL:I = 0x13

.field static final T_SIMPLEPATTERNLIST:I = 0xc

.field static final T_STRINGLIST:I = 0xe

.field static final T_URL:I = 0x2

.field static final T_YESNO:I = 0x8

.field static final WARNING:I = 0x2

.field static final m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;


# instance fields
.field private m_default:Ljava/lang/String;

.field private m_enums:Lorg/apache/xml/utils/StringToIntTable;

.field m_errorType:I

.field private m_name:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_required:Z

.field m_setterString:Ljava/lang/String;

.field private m_supportsAVT:Z

.field private m_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 274
    new-instance v0, Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@3
    const-string/jumbo v1, "*"

    #@6
    const-string/jumbo v2, "*"

    #@9
    .line 275
    const/4 v3, 0x1

    #@a
    const/4 v6, 0x2

    #@b
    move v5, v4

    #@c
    .line 274
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;-><init>(Ljava/lang/String;Ljava/lang/String;IZZI)V

    #@f
    sput-object v0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@11
    .line 47
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "supportsAVT"    # Z
    .param p5, "errorType"    # I
    .param p6, "defaultVal"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 416
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    #@6
    .line 431
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    #@9
    .line 93
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    #@b
    .line 94
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    #@d
    .line 95
    iput p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    #@f
    .line 96
    const/4 v0, 0x0

    #@10
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    #@12
    .line 97
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    #@14
    .line 98
    iput p5, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    #@16
    .line 99
    iput-object p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    #@18
    .line 90
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZI)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "required"    # Z
    .param p5, "supportsAVT"    # Z
    .param p6, "errorType"    # I

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 416
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    #@6
    .line 431
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    #@9
    .line 69
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    #@b
    .line 70
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    #@d
    .line 71
    iput p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    #@f
    .line 72
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    #@11
    .line 73
    iput-boolean p5, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    #@13
    .line 74
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    #@15
    .line 67
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "supportsAVT"    # Z
    .param p5, "prefixedQNameValAllowed"    # Z
    .param p6, "errorType"    # I
    .param p7, "k1"    # Ljava/lang/String;
    .param p8, "v1"    # I
    .param p9, "k2"    # Ljava/lang/String;
    .param p10, "v2"    # I

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 416
    iput v1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    #@6
    .line 431
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    #@9
    .line 121
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    #@b
    .line 122
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    #@d
    .line 123
    if-eqz p5, :cond_0

    #@f
    const/16 v0, 0x10

    #@11
    :goto_0
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    #@13
    .line 124
    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    #@15
    .line 125
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    #@17
    .line 126
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    #@19
    .line 127
    new-instance v0, Lorg/apache/xml/utils/StringToIntTable;

    #@1b
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    #@1e
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@20
    .line 129
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@22
    invoke-virtual {v0, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    #@25
    .line 130
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@27
    invoke-virtual {v0, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    #@2a
    .line 118
    return-void

    #@2b
    .line 123
    :cond_0
    const/16 v0, 0xb

    #@2d
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "supportsAVT"    # Z
    .param p5, "prefixedQNameValAllowed"    # Z
    .param p6, "errorType"    # I
    .param p7, "k1"    # Ljava/lang/String;
    .param p8, "v1"    # I
    .param p9, "k2"    # Ljava/lang/String;
    .param p10, "v2"    # I
    .param p11, "k3"    # Ljava/lang/String;
    .param p12, "v3"    # I

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 416
    const/4 v0, 0x2

    #@4
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    #@6
    .line 431
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    #@9
    .line 154
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    #@b
    .line 155
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    #@d
    .line 156
    if-eqz p5, :cond_0

    #@f
    const/16 v0, 0x10

    #@11
    :goto_0
    iput v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    #@13
    .line 157
    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    #@15
    .line 158
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    #@17
    .line 159
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    #@19
    .line 160
    new-instance v0, Lorg/apache/xml/utils/StringToIntTable;

    #@1b
    const/4 v1, 0x3

    #@1c
    invoke-direct {v0, v1}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    #@1f
    iput-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@21
    .line 162
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@23
    invoke-virtual {v0, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    #@26
    .line 163
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@28
    invoke-virtual {v0, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    #@2b
    .line 164
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@2d
    invoke-virtual {v0, p11, p12}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    #@30
    .line 151
    return-void

    #@31
    .line 156
    :cond_0
    const/16 v0, 0xb

    #@33
    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "required"    # Z
    .param p4, "supportsAVT"    # Z
    .param p5, "prefixedQNameValAllowed"    # Z
    .param p6, "errorType"    # I
    .param p7, "k1"    # Ljava/lang/String;
    .param p8, "v1"    # I
    .param p9, "k2"    # Ljava/lang/String;
    .param p10, "v2"    # I
    .param p11, "k3"    # Ljava/lang/String;
    .param p12, "v3"    # I
    .param p13, "k4"    # Ljava/lang/String;
    .param p14, "v4"    # I

    #@0
    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 416
    const/4 v2, 0x2

    #@4
    iput v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    #@6
    .line 431
    const/4 v2, 0x0

    #@7
    iput-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    #@9
    .line 190
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    #@b
    .line 191
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    #@d
    .line 192
    if-eqz p5, :cond_0

    #@f
    const/16 v2, 0x10

    #@11
    :goto_0
    iput v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    #@13
    .line 193
    iput-boolean p3, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    #@15
    .line 194
    iput-boolean p4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    #@17
    .line 195
    iput p6, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    #@19
    .line 196
    new-instance v2, Lorg/apache/xml/utils/StringToIntTable;

    #@1b
    const/4 v3, 0x4

    #@1c
    invoke-direct {v2, v3}, Lorg/apache/xml/utils/StringToIntTable;-><init>(I)V

    #@1f
    iput-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@21
    .line 198
    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@23
    invoke-virtual {v2, p7, p8}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    #@26
    .line 199
    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@28
    invoke-virtual {v2, p9, p10}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    #@2b
    .line 200
    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@2d
    move/from16 v0, p12

    #@2f
    invoke-virtual {v2, p11, v0}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    #@32
    .line 201
    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@34
    move-object/from16 v0, p13

    #@36
    move/from16 v1, p14

    #@38
    invoke-virtual {v2, v0, v1}, Lorg/apache/xml/utils/StringToIntTable;->put(Ljava/lang/String;I)V

    #@3b
    .line 187
    return-void

    #@3c
    .line 192
    :cond_0
    const/16 v2, 0xb

    #@3e
    goto :goto_0
.end method

.method private getEnum(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringToIntTable;->get(Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private getEnumNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 358
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_enums:Lorg/apache/xml/utils/StringToIntTable;

    #@2
    invoke-virtual {v0}, Lorg/apache/xml/utils/StringToIntTable;->keys()[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private getListOfEnums()Ljava/lang/StringBuffer;
    .locals 4

    #@0
    .prologue
    .line 1540
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 1541
    .local v0, "enumNamesList":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnumNames()[Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 1543
    .local v1, "enumValues":[Ljava/lang/String;
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    array-length v3, v1

    #@b
    if-ge v2, v3, :cond_1

    #@d
    .line 1545
    if-lez v2, :cond_0

    #@f
    .line 1547
    const/16 v3, 0x20

    #@11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@14
    .line 1549
    :cond_0
    aget-object v3, v1, v2

    #@16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19
    .line 1543
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1551
    :cond_1
    return-object v0
.end method

.method private getPrimativeClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1492
    instance-of v1, p1, Lorg/apache/xpath/XPath;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1493
    const-class v1, Lorg/apache/xpath/XPath;

    #@6
    return-object v1

    #@7
    .line 1495
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    .line 1497
    .local v0, "cl":Ljava/lang/Class;
    const-class v1, Ljava/lang/Double;

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 1499
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@11
    .line 1502
    :cond_1
    const-class v1, Ljava/lang/Float;

    #@13
    if-ne v0, v1, :cond_3

    #@15
    .line 1504
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@17
    .line 1531
    :cond_2
    :goto_0
    return-object v0

    #@18
    .line 1506
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    #@1a
    if-ne v0, v1, :cond_4

    #@1c
    .line 1508
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@1e
    goto :goto_0

    #@1f
    .line 1510
    :cond_4
    const-class v1, Ljava/lang/Byte;

    #@21
    if-ne v0, v1, :cond_5

    #@23
    .line 1512
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@25
    goto :goto_0

    #@26
    .line 1514
    :cond_5
    const-class v1, Ljava/lang/Character;

    #@28
    if-ne v0, v1, :cond_6

    #@2a
    .line 1516
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@2c
    goto :goto_0

    #@2d
    .line 1518
    :cond_6
    const-class v1, Ljava/lang/Short;

    #@2f
    if-ne v0, v1, :cond_7

    #@31
    .line 1520
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@33
    goto :goto_0

    #@34
    .line 1522
    :cond_7
    const-class v1, Ljava/lang/Integer;

    #@36
    if-ne v0, v1, :cond_8

    #@38
    .line 1524
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@3a
    goto :goto_0

    #@3b
    .line 1526
    :cond_8
    const-class v1, Ljava/lang/Long;

    #@3d
    if-ne v0, v1, :cond_2

    #@3f
    .line 1528
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@41
    goto :goto_0
.end method

.method private handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "exc"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1654
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getErrorType()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 1652
    :goto_0
    return-void

    #@8
    .line 1658
    :pswitch_0
    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@b
    goto :goto_0

    #@c
    .line 1661
    :pswitch_1
    invoke-virtual {p1, p2, p3}, Lorg/apache/xalan/processor/StylesheetHandler;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    #@f
    goto :goto_0

    #@10
    .line 1654
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processYESNO(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    const/4 v0, 0x1

    #@3
    .line 1359
    const-string/jumbo v2, "yes"

    #@6
    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    const-string/jumbo v2, "no"

    #@f
    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    :goto_0
    if-nez v2, :cond_1

    #@15
    .line 1361
    const-string/jumbo v2, "INVALID_BOOLEAN"

    #@18
    const/4 v3, 0x2

    #@19
    new-array v3, v3, [Ljava/lang/Object;

    #@1b
    aput-object p3, v3, v1

    #@1d
    aput-object p5, v3, v0

    #@1f
    invoke-direct {p0, p1, v2, v3, v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@22
    .line 1362
    return-object v4

    #@23
    :cond_0
    move v2, v0

    #@24
    .line 1359
    goto :goto_0

    #@25
    .line 1365
    :cond_1
    new-instance v2, Ljava/lang/Boolean;

    #@27
    const-string/jumbo v3, "yes"

    #@2a
    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_2

    #@30
    :goto_1
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    #@33
    return-object v2

    #@34
    :cond_2
    move v0, v1

    #@35
    goto :goto_1
.end method


# virtual methods
.method getDefault()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 373
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getErrorType()I
    .locals 1

    #@0
    .prologue
    .line 425
    iget v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_errorType:I

    #@2
    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 292
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getRequired()Z
    .locals 1

    #@0
    .prologue
    .line 398
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_required:Z

    #@2
    return v0
.end method

.method public getSetterMethodName()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 446
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    #@2
    if-nez v4, :cond_6

    #@4
    .line 448
    sget-object v4, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@6
    if-ne v4, p0, :cond_0

    #@8
    .line 450
    const-string/jumbo v4, "setForeignAttr"

    #@b
    return-object v4

    #@c
    .line 452
    :cond_0
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    #@e
    const-string/jumbo v5, "*"

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    .line 454
    const-string/jumbo v4, "addLiteralResultAttribute"

    #@1a
    iput-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    #@1c
    .line 456
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    #@1e
    return-object v4

    #@1f
    .line 459
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    #@24
    .line 461
    .local v3, "outBuf":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "set"

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2a
    .line 463
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    #@2c
    if-eqz v4, :cond_2

    #@2e
    .line 464
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_namespace:Ljava/lang/String;

    #@30
    const-string/jumbo v5, "http://www.w3.org/XML/1998/namespace"

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v4

    #@37
    .line 463
    if-eqz v4, :cond_2

    #@39
    .line 466
    const-string/jumbo v4, "Xml"

    #@3c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3f
    .line 469
    :cond_2
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    #@41
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@44
    move-result v2

    #@45
    .line 471
    .local v2, "n":I
    const/4 v1, 0x0

    #@46
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    #@48
    .line 473
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    #@4a
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@4d
    move-result v0

    #@4e
    .line 475
    .local v0, "c":C
    const/16 v4, 0x2d

    #@50
    if-ne v4, v0, :cond_4

    #@52
    .line 477
    add-int/lit8 v1, v1, 0x1

    #@54
    .line 479
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_name:Ljava/lang/String;

    #@56
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@59
    move-result v0

    #@5a
    .line 480
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    #@5d
    move-result v0

    #@5e
    .line 487
    :cond_3
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@61
    .line 471
    add-int/lit8 v1, v1, 0x1

    #@63
    goto :goto_0

    #@64
    .line 482
    :cond_4
    if-nez v1, :cond_3

    #@66
    .line 484
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    #@69
    move-result v0

    #@6a
    goto :goto_1

    #@6b
    .line 490
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@6e
    move-result-object v4

    #@6f
    iput-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    #@71
    .line 493
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "outBuf":Ljava/lang/StringBuffer;
    :cond_6
    iget-object v4, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_setterString:Ljava/lang/String;

    #@73
    return-object v4
.end method

.method getSupportsAVT()Z
    .locals 1

    #@0
    .prologue
    .line 413
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_supportsAVT:Z

    #@2
    return v0
.end method

.method getType()I
    .locals 1

    #@0
    .prologue
    .line 324
    iget v0, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_type:I

    #@2
    return v0
.end method

.method processAVT(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/AVT;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move-object v6, p6

    #@8
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 522
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    return-object v0

    #@c
    .line 525
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v7

    #@d
    .line 526
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@f
    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@12
    throw v1
.end method

.method processAVT_QNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 13
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 974
    const/4 v8, 0x0

    #@1
    .line 977
    .local v8, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_0
    new-instance v1, Lorg/apache/xalan/templates/AVT;

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object/from16 v4, p3

    #@7
    move-object/from16 v5, p4

    #@9
    move-object/from16 v6, p5

    #@b
    move-object/from16 v7, p6

    #@d
    invoke-direct/range {v1 .. v7}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 980
    .local v1, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    #@13
    .end local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    move-result v2

    #@14
    if-eqz v2, :cond_4

    #@16
    .line 982
    const/16 v2, 0x3a

    #@18
    move-object/from16 v0, p5

    #@1a
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    #@1d
    move-result v9

    #@1e
    .line 984
    .local v9, "indexOfNSSep":I
    if-ltz v9, :cond_0

    #@20
    .line 986
    const/4 v2, 0x0

    #@21
    move-object/from16 v0, p5

    #@23
    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@26
    move-result-object v11

    #@27
    .line 987
    .local v11, "prefix":Ljava/lang/String;
    invoke-static {v11}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@2a
    move-result v2

    #@2b
    if-nez v2, :cond_0

    #@2d
    .line 989
    const-string/jumbo v2, "INVALID_QNAME"

    #@30
    const/4 v3, 0x2

    #@31
    new-array v3, v3, [Ljava/lang/Object;

    #@33
    const/4 v4, 0x0

    #@34
    aput-object p3, v3, v4

    #@36
    const/4 v4, 0x1

    #@37
    aput-object p5, v3, v4

    #@39
    const/4 v4, 0x0

    #@3a
    invoke-direct {p0, p1, v2, v3, v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@3d
    .line 990
    const/4 v2, 0x0

    #@3e
    return-object v2

    #@3f
    .line 994
    .end local v11    # "prefix":Ljava/lang/String;
    :cond_0
    if-gez v9, :cond_2

    #@41
    .line 995
    move-object/from16 v10, p5

    #@43
    .line 997
    .local v10, "localName":Ljava/lang/String;
    :goto_0
    if-eqz v10, :cond_1

    #@45
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    #@48
    move-result v2

    #@49
    if-nez v2, :cond_3

    #@4b
    .line 1000
    :cond_1
    const-string/jumbo v2, "INVALID_QNAME"

    #@4e
    const/4 v3, 0x2

    #@4f
    new-array v3, v3, [Ljava/lang/Object;

    #@51
    const/4 v4, 0x0

    #@52
    aput-object p3, v3, v4

    #@54
    const/4 v4, 0x1

    #@55
    aput-object p5, v3, v4

    #@57
    const/4 v4, 0x0

    #@58
    invoke-direct {p0, p1, v2, v3, v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@5b
    .line 1001
    const/4 v2, 0x0

    #@5c
    return-object v2

    #@5d
    .line 995
    .end local v10    # "localName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v9, 0x1

    #@5f
    move-object/from16 v0, p5

    #@61
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@64
    move-result-object v10

    #@65
    .restart local v10    # "localName":Ljava/lang/String;
    goto :goto_0

    #@66
    .line 998
    :cond_3
    invoke-static {v10}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    #@69
    move-result v2

    #@6a
    if-eqz v2, :cond_1

    #@6c
    .line 1011
    .end local v9    # "indexOfNSSep":I
    .end local v10    # "localName":Ljava/lang/String;
    :cond_4
    return-object v1

    #@6d
    .line 1006
    .end local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v12

    #@6e
    .local v12, "te":Ljavax/xml/transform/TransformerException;
    move-object v1, v8

    #@6f
    .line 1008
    .end local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    :goto_1
    new-instance v2, Lorg/xml/sax/SAXException;

    #@71
    invoke-direct {v2, v12}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@74
    throw v2

    #@75
    .line 1006
    .end local v12    # "te":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v12

    #@76
    .restart local v12    # "te":Ljavax/xml/transform/TransformerException;
    goto :goto_1
.end method

.method processCDATA(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 548
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 551
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move-object v5, p5

    #@d
    move-object v6, p6

    #@e
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 552
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    return-object v0

    #@12
    .line 555
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v7

    #@13
    .line 556
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@15
    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@18
    throw v1

    #@19
    .line 559
    .end local v7    # "te":Ljavax/xml/transform/TransformerException;
    :cond_0
    return-object p5
.end method

.method processCHAR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 581
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 584
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move-object v5, p5

    #@d
    move-object v6, p6

    #@e
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@11
    .line 587
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    #@1a
    move-result v1

    #@1b
    const/4 v2, 0x1

    #@1c
    if-eq v1, v2, :cond_0

    #@1e
    .line 588
    const-string/jumbo v1, "INVALID_TCHAR"

    #@21
    const/4 v2, 0x2

    #@22
    new-array v2, v2, [Ljava/lang/Object;

    #@24
    const/4 v3, 0x0

    #@25
    aput-object p3, v2, v3

    #@27
    const/4 v3, 0x1

    #@28
    aput-object p5, v2, v3

    #@2a
    const/4 v3, 0x0

    #@2b
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 589
    const/4 v1, 0x0

    #@2f
    return-object v1

    #@30
    .line 591
    :cond_0
    return-object v0

    #@31
    .line 594
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v7

    #@32
    .line 595
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@34
    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@37
    throw v1

    #@38
    .line 598
    .end local v7    # "te":Ljavax/xml/transform/TransformerException;
    :cond_1
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    #@3b
    move-result v1

    #@3c
    const/4 v2, 0x1

    #@3d
    if-eq v1, v2, :cond_2

    #@3f
    .line 600
    const-string/jumbo v1, "INVALID_TCHAR"

    #@42
    const/4 v2, 0x2

    #@43
    new-array v2, v2, [Ljava/lang/Object;

    #@45
    const/4 v3, 0x0

    #@46
    aput-object p3, v2, v3

    #@48
    const/4 v3, 0x1

    #@49
    aput-object p5, v2, v3

    #@4b
    const/4 v3, 0x0

    #@4c
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@4f
    .line 601
    const/4 v1, 0x0

    #@50
    return-object v1

    #@51
    .line 604
    :cond_2
    new-instance v1, Ljava/lang/Character;

    #@53
    const/4 v2, 0x0

    #@54
    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    #@57
    move-result v2

    #@58
    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    #@5b
    return-object v1
.end method

.method processENUM(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 12
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 627
    const/4 v8, 0x0

    #@1
    .line 628
    .local v8, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 631
    :try_start_0
    new-instance v1, Lorg/apache/xalan/templates/AVT;

    #@9
    move-object v2, p1

    #@a
    move-object v3, p2

    #@b
    move-object v4, p3

    #@c
    move-object/from16 v5, p4

    #@e
    move-object/from16 v6, p5

    #@10
    move-object/from16 v7, p6

    #@12
    invoke-direct/range {v1 .. v7}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 634
    .end local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    .local v1, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/xalan/templates/AVT;->isSimple()Z
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_1

    #@1b
    return-object v1

    #@1c
    .line 637
    .end local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v11

    #@1d
    .local v11, "te":Ljavax/xml/transform/TransformerException;
    move-object v1, v8

    #@1e
    .line 638
    .end local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    :goto_0
    new-instance v2, Lorg/xml/sax/SAXException;

    #@20
    invoke-direct {v2, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@23
    throw v2

    #@24
    .end local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v11    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    :cond_0
    move-object v1, v8

    #@25
    .line 642
    .end local v8    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v1    # "avt":Lorg/apache/xalan/templates/AVT;
    :cond_1
    move-object/from16 v0, p5

    #@27
    invoke-direct {p0, v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnum(Ljava/lang/String;)I

    #@2a
    move-result v10

    #@2b
    .line 644
    .local v10, "retVal":I
    const/16 v2, -0x2710

    #@2d
    if-ne v10, v2, :cond_2

    #@2f
    .line 646
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    #@32
    move-result-object v9

    #@33
    .line 647
    .local v9, "enumNamesList":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "INVALID_ENUM"

    #@36
    const/4 v3, 0x3

    #@37
    new-array v3, v3, [Ljava/lang/Object;

    #@39
    const/4 v4, 0x0

    #@3a
    aput-object p3, v3, v4

    #@3c
    const/4 v4, 0x1

    #@3d
    aput-object p5, v3, v4

    #@3f
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    const/4 v5, 0x2

    #@44
    aput-object v4, v3, v5

    #@46
    const/4 v4, 0x0

    #@47
    invoke-direct {p0, p1, v2, v3, v4}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@4a
    .line 648
    const/4 v2, 0x0

    #@4b
    return-object v2

    #@4c
    .line 651
    .end local v9    # "enumNamesList":Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_3

    #@52
    return-object v1

    #@53
    .line 652
    :cond_3
    new-instance v2, Ljava/lang/Integer;

    #@55
    invoke-direct {v2, v10}, Ljava/lang/Integer;-><init>(I)V

    #@58
    return-object v2

    #@59
    .line 637
    .end local v10    # "retVal":I
    :catch_1
    move-exception v11

    #@5a
    .restart local v11    # "te":Ljavax/xml/transform/TransformerException;
    goto :goto_0
.end method

.method processENUM_OR_PQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 16
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 677
    const/4 v12, 0x0

    #@1
    .line 679
    .local v12, "objToReturn":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_1

    #@7
    .line 682
    :try_start_0
    new-instance v2, Lorg/apache/xalan/templates/AVT;

    #@9
    move-object/from16 v3, p1

    #@b
    move-object/from16 v4, p2

    #@d
    move-object/from16 v5, p3

    #@f
    move-object/from16 v6, p4

    #@11
    move-object/from16 v7, p5

    #@13
    move-object/from16 v8, p6

    #@15
    invoke-direct/range {v2 .. v8}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@18
    .line 683
    .local v2, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/AVT;->isSimple()Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result v3

    #@1c
    if-nez v3, :cond_0

    #@1e
    return-object v2

    #@1f
    .line 684
    :cond_0
    move-object v12, v2

    #@20
    .line 693
    .end local v2    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v12    # "objToReturn":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    #@22
    move-object/from16 v1, p5

    #@24
    invoke-direct {v0, v1}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getEnum(Ljava/lang/String;)I

    #@27
    move-result v11

    #@28
    .line 695
    .local v11, "key":I
    const/16 v3, -0x2710

    #@2a
    if-eq v11, v3, :cond_3

    #@2c
    .line 697
    if-nez v12, :cond_2

    #@2e
    new-instance v12, Ljava/lang/Integer;

    #@30
    invoke-direct {v12, v11}, Ljava/lang/Integer;-><init>(I)V

    #@33
    .line 736
    :cond_2
    return-object v12

    #@34
    .line 687
    .end local v11    # "key":I
    .restart local v12    # "objToReturn":Ljava/lang/Object;
    :catch_0
    move-exception v15

    #@35
    .line 688
    .local v15, "te":Ljavax/xml/transform/TransformerException;
    new-instance v3, Lorg/xml/sax/SAXException;

    #@37
    invoke-direct {v3, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@3a
    throw v3

    #@3b
    .line 705
    .end local v12    # "objToReturn":Ljava/lang/Object;
    .end local v15    # "te":Ljavax/xml/transform/TransformerException;
    .restart local v11    # "key":I
    :cond_3
    :try_start_1
    new-instance v13, Lorg/apache/xml/utils/QName;

    #@3d
    const/4 v3, 0x1

    #@3e
    move-object/from16 v0, p5

    #@40
    move-object/from16 v1, p1

    #@42
    invoke-direct {v13, v0, v1, v3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V

    #@45
    .line 706
    .local v13, "qname":Lorg/apache/xml/utils/QName;
    if-nez v12, :cond_4

    #@47
    move-object v12, v13

    #@48
    .line 708
    :cond_4
    invoke-virtual {v13}, Lorg/apache/xml/utils/QName;->getPrefix()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    if-nez v3, :cond_2

    #@4e
    .line 709
    invoke-direct/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    #@51
    move-result-object v9

    #@52
    .line 711
    .local v9, "enumNamesList":Ljava/lang/StringBuffer;
    const-string/jumbo v3, " <qname-but-not-ncname>"

    #@55
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@58
    .line 712
    const-string/jumbo v3, "INVALID_ENUM"

    #@5b
    const/4 v4, 0x3

    #@5c
    new-array v4, v4, [Ljava/lang/Object;

    #@5e
    const/4 v5, 0x0

    #@5f
    aput-object p3, v4, v5

    #@61
    const/4 v5, 0x1

    #@62
    aput-object p5, v4, v5

    #@64
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    const/4 v6, 0x2

    #@69
    aput-object v5, v4, v6

    #@6b
    const/4 v5, 0x0

    #@6c
    move-object/from16 v0, p0

    #@6e
    move-object/from16 v1, p1

    #@70
    invoke-direct {v0, v1, v3, v4, v5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@73
    .line 713
    const/4 v3, 0x0

    #@74
    return-object v3

    #@75
    .line 727
    .end local v9    # "enumNamesList":Ljava/lang/StringBuffer;
    .end local v13    # "qname":Lorg/apache/xml/utils/QName;
    :catch_1
    move-exception v14

    #@76
    .line 728
    .local v14, "re":Ljava/lang/RuntimeException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    #@79
    move-result-object v9

    #@7a
    .line 729
    .restart local v9    # "enumNamesList":Ljava/lang/StringBuffer;
    const-string/jumbo v3, " <qname-but-not-ncname>"

    #@7d
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@80
    .line 731
    const-string/jumbo v3, "INVALID_ENUM"

    #@83
    const/4 v4, 0x3

    #@84
    new-array v4, v4, [Ljava/lang/Object;

    #@86
    const/4 v5, 0x0

    #@87
    aput-object p3, v4, v5

    #@89
    const/4 v5, 0x1

    #@8a
    aput-object p5, v4, v5

    #@8c
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@8f
    move-result-object v5

    #@90
    const/4 v6, 0x2

    #@91
    aput-object v5, v4, v6

    #@93
    move-object/from16 v0, p0

    #@95
    move-object/from16 v1, p1

    #@97
    invoke-direct {v0, v1, v3, v4, v14}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@9a
    .line 732
    const/4 v3, 0x0

    #@9b
    return-object v3

    #@9c
    .line 718
    .end local v9    # "enumNamesList":Ljava/lang/StringBuffer;
    .end local v14    # "re":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v10

    #@9d
    .line 719
    .local v10, "ie":Ljava/lang/IllegalArgumentException;
    invoke-direct/range {p0 .. p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getListOfEnums()Ljava/lang/StringBuffer;

    #@a0
    move-result-object v9

    #@a1
    .line 720
    .restart local v9    # "enumNamesList":Ljava/lang/StringBuffer;
    const-string/jumbo v3, " <qname-but-not-ncname>"

    #@a4
    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a7
    .line 722
    const-string/jumbo v3, "INVALID_ENUM"

    #@aa
    const/4 v4, 0x3

    #@ab
    new-array v4, v4, [Ljava/lang/Object;

    #@ad
    const/4 v5, 0x0

    #@ae
    aput-object p3, v4, v5

    #@b0
    const/4 v5, 0x1

    #@b1
    aput-object p5, v4, v5

    #@b3
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@b6
    move-result-object v5

    #@b7
    const/4 v6, 0x2

    #@b8
    aput-object v5, v4, v6

    #@ba
    move-object/from16 v0, p0

    #@bc
    move-object/from16 v1, p1

    #@be
    invoke-direct {v0, v1, v3, v4, v10}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@c1
    .line 723
    const/4 v3, 0x0

    #@c2
    return-object v3
.end method

.method processEXPR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 3
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 763
    :try_start_0
    invoke-virtual {p1, p5, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v0

    #@4
    .line 765
    .local v0, "expr":Lorg/apache/xpath/XPath;
    return-object v0

    #@5
    .line 768
    .end local v0    # "expr":Lorg/apache/xpath/XPath;
    :catch_0
    move-exception v1

    #@6
    .line 769
    .local v1, "te":Ljavax/xml/transform/TransformerException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@8
    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@b
    throw v2
.end method

.method processNCNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 9
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1035
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_2

    #@6
    .line 1037
    const/4 v7, 0x0

    #@7
    .line 1040
    .local v7, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move-object v3, p3

    #@c
    move-object v4, p4

    #@d
    move-object v5, p5

    #@e
    move-object v6, p6

    #@f
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 1043
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    #@15
    .end local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    move-result v1

    #@16
    if-eqz v1, :cond_0

    #@18
    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 1048
    :cond_0
    return-object v0

    #@1f
    .line 1045
    :cond_1
    const-string/jumbo v1, "INVALID_NCNAME"

    #@22
    const/4 v2, 0x2

    #@23
    new-array v2, v2, [Ljava/lang/Object;

    #@25
    const/4 v3, 0x0

    #@26
    aput-object p3, v2, v3

    #@28
    const/4 v3, 0x1

    #@29
    aput-object p5, v2, v3

    #@2b
    const/4 v3, 0x0

    #@2c
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    #@2f
    .line 1046
    const/4 v1, 0x0

    #@30
    return-object v1

    #@31
    .line 1051
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v8

    #@32
    .local v8, "te":Ljavax/xml/transform/TransformerException;
    move-object v0, v7

    #@33
    .line 1053
    .end local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :goto_0
    new-instance v1, Lorg/xml/sax/SAXException;

    #@35
    invoke-direct {v1, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@38
    throw v1

    #@39
    .line 1057
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v8    # "te":Ljavax/xml/transform/TransformerException;
    :cond_2
    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_3

    #@3f
    .line 1059
    const-string/jumbo v1, "INVALID_NCNAME"

    #@42
    const/4 v2, 0x2

    #@43
    new-array v2, v2, [Ljava/lang/Object;

    #@45
    const/4 v3, 0x0

    #@46
    aput-object p3, v2, v3

    #@48
    const/4 v3, 0x1

    #@49
    aput-object p5, v2, v3

    #@4b
    const/4 v3, 0x0

    #@4c
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@4f
    .line 1060
    const/4 v1, 0x0

    #@50
    return-object v1

    #@51
    .line 1062
    :cond_3
    return-object p5

    #@52
    .line 1051
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_1
    move-exception v8

    #@53
    .restart local v8    # "te":Ljavax/xml/transform/TransformerException;
    goto :goto_0
.end method

.method processNMTOKEN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 9
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    const/4 v8, 0x0

    #@4
    .line 792
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_2

    #@a
    .line 795
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    #@c
    move-object v1, p1

    #@d
    move-object v2, p2

    #@e
    move-object v3, p3

    #@f
    move-object v4, p4

    #@10
    move-object v5, p5

    #@11
    move-object v6, p6

    #@12
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    #@15
    .line 798
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 802
    :cond_0
    return-object v0

    #@22
    .line 799
    :cond_1
    const-string/jumbo v1, "INVALID_NMTOKEN"

    #@25
    const/4 v2, 0x2

    #@26
    new-array v2, v2, [Ljava/lang/Object;

    #@28
    const/4 v3, 0x0

    #@29
    aput-object p3, v2, v3

    #@2b
    const/4 v3, 0x1

    #@2c
    aput-object p5, v2, v3

    #@2e
    const/4 v3, 0x0

    #@2f
    invoke-direct {p0, p1, v1, v2, v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 800
    return-object v8

    #@33
    .line 805
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v7

    #@34
    .line 806
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@36
    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@39
    throw v1

    #@3a
    .line 809
    .end local v7    # "te":Ljavax/xml/transform/TransformerException;
    :cond_2
    invoke-static {p5}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidNmtoken(Ljava/lang/String;)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_3

    #@40
    .line 810
    const-string/jumbo v1, "INVALID_NMTOKEN"

    #@43
    new-array v2, v2, [Ljava/lang/Object;

    #@45
    aput-object p3, v2, v3

    #@47
    aput-object p5, v2, v4

    #@49
    invoke-direct {p0, p1, v1, v2, v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@4c
    .line 811
    return-object v8

    #@4d
    .line 814
    :cond_3
    return-object p5
.end method

.method processNUMBER(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 11
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 874
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    .line 877
    const/4 v7, 0x0

    #@7
    .line 880
    .local v7, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    #@9
    move-object v1, p1

    #@a
    move-object v2, p2

    #@b
    move-object v3, p3

    #@c
    move-object v4, p4

    #@d
    move-object/from16 v5, p5

    #@f
    move-object/from16 v6, p6

    #@11
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 883
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    #@17
    .end local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    move-result v1

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 885
    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    #@1d
    move-result-object v10

    #@1e
    .line 897
    :cond_0
    return-object v0

    #@1f
    .line 893
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v8

    #@20
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    move-object v0, v7

    #@21
    .line 894
    .end local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :goto_0
    const-string/jumbo v1, "INVALID_NUMBER"

    #@24
    const/4 v2, 0x2

    #@25
    new-array v2, v2, [Ljava/lang/Object;

    #@27
    const/4 v3, 0x0

    #@28
    aput-object p3, v2, v3

    #@2a
    const/4 v3, 0x1

    #@2b
    aput-object p5, v2, v3

    #@2d
    invoke-direct {p0, p1, v1, v2, v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@30
    .line 895
    const/4 v1, 0x0

    #@31
    return-object v1

    #@32
    .line 889
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_1
    move-exception v9

    #@33
    .local v9, "te":Ljavax/xml/transform/TransformerException;
    move-object v0, v7

    #@34
    .line 890
    .end local v7    # "avt":Lorg/apache/xalan/templates/AVT;
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :goto_1
    new-instance v1, Lorg/xml/sax/SAXException;

    #@36
    invoke-direct {v1, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@39
    throw v1

    #@3a
    .line 904
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    .end local v9    # "te":Ljavax/xml/transform/TransformerException;
    :cond_1
    :try_start_2
    invoke-static/range {p5 .. p5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@3d
    move-result-object v1

    #@3e
    return-object v1

    #@3f
    .line 907
    :catch_2
    move-exception v8

    #@40
    .line 908
    .restart local v8    # "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "INVALID_NUMBER"

    #@43
    const/4 v2, 0x2

    #@44
    new-array v2, v2, [Ljava/lang/Object;

    #@46
    const/4 v3, 0x0

    #@47
    aput-object p3, v2, v3

    #@49
    const/4 v3, 0x1

    #@4a
    aput-object p5, v2, v3

    #@4c
    invoke-direct {p0, p1, v1, v2, v8}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@4f
    .line 909
    const/4 v1, 0x0

    #@50
    return-object v1

    #@51
    .line 889
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_3
    move-exception v9

    #@52
    .restart local v9    # "te":Ljavax/xml/transform/TransformerException;
    goto :goto_1

    #@53
    .line 893
    .end local v9    # "te":Ljavax/xml/transform/TransformerException;
    :catch_4
    move-exception v8

    #@54
    .restart local v8    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method processPATTERN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 3
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 841
    :try_start_0
    invoke-virtual {p1, p5, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v0

    #@4
    .line 843
    .local v0, "pattern":Lorg/apache/xpath/XPath;
    return-object v0

    #@5
    .line 846
    .end local v0    # "pattern":Lorg/apache/xpath/XPath;
    :catch_0
    move-exception v1

    #@6
    .line 847
    .local v1, "te":Ljavax/xml/transform/TransformerException;
    new-instance v2, Lorg/xml/sax/SAXException;

    #@8
    invoke-direct {v2, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@b
    throw v2
.end method

.method processPREFIX_LIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .locals 10
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1271
    new-instance v4, Ljava/util/StringTokenizer;

    #@2
    const-string/jumbo v6, " \t\n\r\u000c"

    #@5
    invoke-direct {v4, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 1272
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    #@b
    move-result v1

    #@c
    .line 1273
    .local v1, "nStrings":I
    new-instance v3, Lorg/apache/xml/utils/StringVector;

    #@e
    invoke-direct {v3, v1}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    #@11
    .line 1275
    .local v3, "strings":Lorg/apache/xml/utils/StringVector;
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@14
    .line 1277
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 1278
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 1279
    .local v5, "url":Ljava/lang/String;
    const-string/jumbo v6, "#default"

    #@1f
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v6

    #@23
    if-nez v6, :cond_0

    #@25
    if-eqz v5, :cond_1

    #@27
    .line 1280
    :cond_0
    invoke-virtual {v3, v2}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    #@2a
    .line 1275
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 1282
    :cond_1
    new-instance v6, Lorg/xml/sax/SAXException;

    #@2f
    .line 1284
    const-string/jumbo v7, "ER_CANT_RESOLVE_NSPREFIX"

    #@32
    .line 1285
    const/4 v8, 0x1

    #@33
    new-array v8, v8, [Ljava/lang/Object;

    #@35
    const/4 v9, 0x0

    #@36
    aput-object v2, v8, v9

    #@38
    .line 1283
    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3b
    move-result-object v7

    #@3c
    .line 1282
    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v6

    #@40
    .line 1289
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method processPREFIX_URLLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .locals 10
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1233
    new-instance v4, Ljava/util/StringTokenizer;

    #@2
    const-string/jumbo v6, " \t\n\r\u000c"

    #@5
    invoke-direct {v4, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 1234
    .local v4, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    #@b
    move-result v1

    #@c
    .line 1235
    .local v1, "nStrings":I
    new-instance v3, Lorg/apache/xml/utils/StringVector;

    #@e
    invoke-direct {v3, v1}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    #@11
    .line 1237
    .local v3, "strings":Lorg/apache/xml/utils/StringVector;
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@14
    .line 1239
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 1240
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    .line 1242
    .local v5, "url":Ljava/lang/String;
    if-eqz v5, :cond_0

    #@1e
    .line 1243
    invoke-virtual {v3, v5}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    #@21
    .line 1237
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1245
    :cond_0
    new-instance v6, Lorg/xml/sax/SAXException;

    #@26
    const-string/jumbo v7, "ER_CANT_RESOLVE_NSPREFIX"

    #@29
    const/4 v8, 0x1

    #@2a
    new-array v8, v8, [Ljava/lang/Object;

    #@2c
    const/4 v9, 0x0

    #@2d
    aput-object v2, v8, v9

    #@2f
    invoke-static {v7, v8}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    #@36
    throw v6

    #@37
    .line 1249
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method processQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v5, 0x1

    #@4
    .line 937
    :try_start_0
    new-instance v1, Lorg/apache/xml/utils/QName;

    #@6
    const/4 v3, 0x1

    #@7
    invoke-direct {v1, p5, p1, v3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 938
    .local v1, "qname":Lorg/apache/xml/utils/QName;
    return-object v1

    #@b
    .line 946
    .end local v1    # "qname":Lorg/apache/xml/utils/QName;
    :catch_0
    move-exception v2

    #@c
    .line 948
    .local v2, "re":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "INVALID_QNAME"

    #@f
    new-array v4, v4, [Ljava/lang/Object;

    #@11
    aput-object p3, v4, v6

    #@13
    aput-object p5, v4, v5

    #@15
    invoke-direct {p0, p1, v3, v4, v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@18
    .line 949
    return-object v7

    #@19
    .line 941
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    #@1a
    .line 943
    .local v0, "ie":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "INVALID_QNAME"

    #@1d
    new-array v4, v4, [Ljava/lang/Object;

    #@1f
    aput-object p3, v4, v6

    #@21
    aput-object p5, v4, v5

    #@23
    invoke-direct {p0, p1, v3, v4, v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@26
    .line 944
    return-object v7
.end method

.method processQNAMES(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 6
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1088
    new-instance v3, Ljava/util/StringTokenizer;

    #@2
    const-string/jumbo v4, " \t\n\r\u000c"

    #@5
    invoke-direct {v3, p5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 1089
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    #@b
    move-result v1

    #@c
    .line 1090
    .local v1, "nQNames":I
    new-instance v2, Ljava/util/Vector;

    #@e
    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(I)V

    #@11
    .line 1092
    .local v2, "qnames":Ljava/util/Vector;
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@14
    .line 1095
    new-instance v4, Lorg/apache/xml/utils/QName;

    #@16
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    invoke-direct {v4, v5, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    #@1d
    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@20
    .line 1092
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 1098
    :cond_0
    return-object v2
.end method

.method final processQNAMESRNU(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1125
    new-instance v5, Ljava/util/StringTokenizer;

    #@2
    const-string/jumbo v6, " \t\n\r\u000c"

    #@5
    invoke-direct {v5, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 1126
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    #@b
    move-result v2

    #@c
    .line 1127
    .local v2, "nQNames":I
    new-instance v3, Ljava/util/Vector;

    #@e
    invoke-direct {v3, v2}, Ljava/util/Vector;-><init>(I)V

    #@11
    .line 1129
    .local v3, "qnames":Ljava/util/Vector;
    const-string/jumbo v6, ""

    #@14
    invoke-virtual {p1, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 1130
    .local v0, "defaultURI":Ljava/lang/String;
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@1b
    .line 1132
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 1133
    .local v4, "tok":Ljava/lang/String;
    const/16 v6, 0x3a

    #@21
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    #@24
    move-result v6

    #@25
    const/4 v7, -0x1

    #@26
    if-ne v6, v7, :cond_0

    #@28
    .line 1134
    new-instance v6, Lorg/apache/xml/utils/QName;

    #@2a
    invoke-direct {v6, v0, v4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@30
    .line 1130
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_0

    #@33
    .line 1136
    :cond_0
    new-instance v6, Lorg/apache/xml/utils/QName;

    #@35
    invoke-direct {v6, v4, p1}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    #@38
    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@3b
    goto :goto_1

    #@3c
    .line 1139
    .end local v4    # "tok":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method processSIMPLEPATTERNLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/util/Vector;
    .locals 7
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1166
    :try_start_0
    new-instance v5, Ljava/util/StringTokenizer;

    #@2
    const-string/jumbo v6, " \t\n\r\u000c"

    #@5
    invoke-direct {v5, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 1167
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    #@b
    move-result v1

    #@c
    .line 1168
    .local v1, "nPatterns":I
    new-instance v3, Ljava/util/Vector;

    #@e
    invoke-direct {v3, v1}, Ljava/util/Vector;-><init>(I)V

    #@11
    .line 1170
    .local v3, "patterns":Ljava/util/Vector;
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@14
    .line 1173
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {p1, v6, p6}, Lorg/apache/xalan/processor/StylesheetHandler;->createMatchPatternXPath(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    #@1b
    move-result-object v2

    #@1c
    .line 1175
    .local v2, "pattern":Lorg/apache/xpath/XPath;
    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 1170
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1178
    .end local v2    # "pattern":Lorg/apache/xpath/XPath;
    :cond_0
    return-object v3

    #@23
    .line 1181
    .end local v0    # "i":I
    .end local v1    # "nPatterns":I
    .end local v3    # "patterns":Ljava/util/Vector;
    .end local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v4

    #@24
    .line 1182
    .local v4, "te":Ljavax/xml/transform/TransformerException;
    new-instance v6, Lorg/xml/sax/SAXException;

    #@26
    invoke-direct {v6, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@29
    throw v6
.end method

.method processSTRINGLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;
    .locals 5
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1202
    new-instance v3, Ljava/util/StringTokenizer;

    #@2
    const-string/jumbo v4, " \t\n\r\u000c"

    #@5
    invoke-direct {v3, p5, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 1203
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    #@b
    move-result v1

    #@c
    .line 1204
    .local v1, "nStrings":I
    new-instance v2, Lorg/apache/xml/utils/StringVector;

    #@e
    invoke-direct {v2, v1}, Lorg/apache/xml/utils/StringVector;-><init>(I)V

    #@11
    .line 1206
    .local v2, "strings":Lorg/apache/xml/utils/StringVector;
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@14
    .line 1208
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v2, v4}, Lorg/apache/xml/utils/StringVector;->addElement(Ljava/lang/String;)V

    #@1b
    .line 1206
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1211
    :cond_0
    return-object v2
.end method

.method processURL(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 8
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1313
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSupportsAVT()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1316
    :try_start_0
    new-instance v0, Lorg/apache/xalan/templates/AVT;

    #@8
    move-object v1, p1

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move-object v5, p5

    #@d
    move-object v6, p6

    #@e
    invoke-direct/range {v0 .. v6}, Lorg/apache/xalan/templates/AVT;-><init>(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1324
    .local v0, "avt":Lorg/apache/xalan/templates/AVT;
    return-object v0

    #@12
    .line 1327
    .end local v0    # "avt":Lorg/apache/xalan/templates/AVT;
    :catch_0
    move-exception v7

    #@13
    .line 1328
    .local v7, "te":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/xml/sax/SAXException;

    #@15
    invoke-direct {v1, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    #@18
    throw v1

    #@19
    .line 1335
    .end local v7    # "te":Ljavax/xml/transform/TransformerException;
    :cond_0
    return-object p5
.end method

.method processValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;
    .locals 2
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "rawName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;
    .param p6, "owner"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1387
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getType()I

    #@3
    move-result v1

    #@4
    .line 1388
    .local v1, "type":I
    const/4 v0, 0x0

    #@5
    .line 1390
    .local v0, "processedValue":Ljava/lang/Object;
    packed-switch v1, :pswitch_data_0

    #@8
    .line 1459
    .end local v0    # "processedValue":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@9
    .line 1393
    .restart local v0    # "processedValue":Ljava/lang/Object;
    :pswitch_0
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processAVT(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/AVT;

    #@c
    move-result-object v0

    #@d
    goto :goto_0

    #@e
    .line 1396
    :pswitch_1
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processCDATA(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    goto :goto_0

    #@13
    .line 1399
    :pswitch_2
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processCHAR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    goto :goto_0

    #@18
    .line 1402
    :pswitch_3
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processENUM(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    goto :goto_0

    #@1d
    .line 1405
    :pswitch_4
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processEXPR(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    goto :goto_0

    #@22
    .line 1408
    :pswitch_5
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNMTOKEN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    goto :goto_0

    #@27
    .line 1411
    :pswitch_6
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPATTERN(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    goto :goto_0

    #@2c
    .line 1414
    :pswitch_7
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNUMBER(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    goto :goto_0

    #@31
    .line 1417
    :pswitch_8
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    goto :goto_0

    #@36
    .line 1420
    :pswitch_9
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAMES(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    #@39
    move-result-object v0

    #@3a
    goto :goto_0

    #@3b
    .line 1423
    :pswitch_a
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processQNAMESRNU(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    #@3e
    move-result-object v0

    #@3f
    goto :goto_0

    #@40
    .line 1426
    :pswitch_b
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processSIMPLEPATTERNLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/util/Vector;

    #@43
    move-result-object v0

    #@44
    goto :goto_0

    #@45
    .line 1430
    :pswitch_c
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processURL(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    goto :goto_0

    #@4a
    .line 1433
    :pswitch_d
    invoke-direct/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processYESNO(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    #@4d
    move-result-object v0

    #@4e
    goto :goto_0

    #@4f
    .line 1436
    :pswitch_e
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processSTRINGLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    #@52
    move-result-object v0

    #@53
    goto :goto_0

    #@54
    .line 1439
    :pswitch_f
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPREFIX_URLLIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    #@57
    move-result-object v0

    #@58
    goto :goto_0

    #@59
    .line 1443
    :pswitch_10
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processENUM_OR_PQNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@5c
    move-result-object v0

    #@5d
    goto :goto_0

    #@5e
    .line 1446
    :pswitch_11
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processNCNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    goto :goto_0

    #@63
    .line 1449
    :pswitch_12
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processAVT_QNAME(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    goto :goto_0

    #@68
    .line 1452
    :pswitch_13
    invoke-virtual/range {p0 .. p5}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processPREFIX_LIST(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/utils/StringVector;

    #@6b
    move-result-object v0

    #@6c
    goto :goto_0

    #@6d
    .line 1390
    nop

    #@6e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_d
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_b
        :pswitch_5
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z
    .locals 15
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "attrUri"    # Ljava/lang/String;
    .param p3, "attrLocalName"    # Ljava/lang/String;
    .param p4, "attrRawName"    # Ljava/lang/String;
    .param p5, "attrValue"    # Ljava/lang/String;
    .param p6, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1571
    const-string/jumbo v11, "xmlns"

    #@3
    move-object/from16 v0, p4

    #@5
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v11

    #@9
    if-nez v11, :cond_0

    #@b
    const-string/jumbo v11, "xmlns:"

    #@e
    move-object/from16 v0, p4

    #@10
    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@13
    move-result v11

    #@14
    if-eqz v11, :cond_1

    #@16
    .line 1572
    :cond_0
    const/4 v11, 0x1

    #@17
    return v11

    #@18
    .line 1574
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getSetterMethodName()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    .line 1578
    .local v9, "setterString":Ljava/lang/String;
    if-eqz v9, :cond_3

    #@1e
    .line 1585
    :try_start_0
    const-string/jumbo v11, "setForeignAttr"

    #@21
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v11

    #@25
    if-eqz v11, :cond_4

    #@27
    .line 1588
    if-nez p2, :cond_2

    #@29
    const-string/jumbo p2, ""

    #@2c
    .line 1590
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getClass()Ljava/lang/Class;

    #@2f
    move-result-object v8

    #@30
    .line 1591
    .local v8, "sclass":Ljava/lang/Class;
    const/4 v11, 0x4

    #@31
    new-array v1, v11, [Ljava/lang/Class;

    #@33
    const/4 v11, 0x0

    #@34
    aput-object v8, v1, v11

    #@36
    const/4 v11, 0x1

    #@37
    aput-object v8, v1, v11

    #@39
    .line 1592
    const/4 v11, 0x2

    #@3a
    aput-object v8, v1, v11

    #@3c
    const/4 v11, 0x3

    #@3d
    aput-object v8, v1, v11

    #@3f
    .line 1594
    .local v1, "argTypes":[Ljava/lang/Class;
    invoke-virtual/range {p6 .. p6}, Lorg/apache/xalan/templates/ElemTemplateElement;->getClass()Ljava/lang/Class;

    #@42
    move-result-object v11

    #@43
    invoke-virtual {v11, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@46
    move-result-object v5

    #@47
    .line 1596
    .local v5, "meth":Ljava/lang/reflect/Method;
    const/4 v11, 0x4

    #@48
    new-array v2, v11, [Ljava/lang/Object;

    #@4a
    const/4 v11, 0x0

    #@4b
    aput-object p2, v2, v11

    #@4d
    const/4 v11, 0x1

    #@4e
    aput-object p3, v2, v11

    #@50
    .line 1597
    const/4 v11, 0x2

    #@51
    aput-object p4, v2, v11

    #@53
    const/4 v11, 0x3

    #@54
    aput-object p5, v2, v11

    #@56
    .line 1626
    .end local v8    # "sclass":Ljava/lang/Class;
    .local v2, "args":[Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p6

    #@58
    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 1649
    .end local v1    # "argTypes":[Ljava/lang/Class;
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    :cond_3
    const/4 v11, 0x1

    #@5c
    return v11

    #@5d
    .line 1601
    :cond_4
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->processValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Ljava/lang/Object;

    #@60
    move-result-object v10

    #@61
    .line 1605
    .local v10, "value":Ljava/lang/Object;
    if-nez v10, :cond_5

    #@63
    const/4 v11, 0x0

    #@64
    return v11

    #@65
    .line 1608
    :cond_5
    const/4 v11, 0x1

    #@66
    new-array v1, v11, [Ljava/lang/Class;

    #@68
    invoke-direct {p0, v10}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getPrimativeClass(Ljava/lang/Object;)Ljava/lang/Class;

    #@6b
    move-result-object v11

    #@6c
    const/4 v12, 0x0

    #@6d
    aput-object v11, v1, v12
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    #@6f
    .line 1612
    .restart local v1    # "argTypes":[Ljava/lang/Class;
    :try_start_1
    invoke-virtual/range {p6 .. p6}, Lorg/apache/xalan/templates/ElemTemplateElement;->getClass()Ljava/lang/Class;

    #@72
    move-result-object v11

    #@73
    invoke-virtual {v11, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    #@76
    move-result-object v5

    #@77
    .line 1623
    .restart local v5    # "meth":Ljava/lang/reflect/Method;
    :goto_1
    const/4 v11, 0x1

    #@78
    :try_start_2
    new-array v2, v11, [Ljava/lang/Object;

    #@7a
    const/4 v11, 0x0

    #@7b
    aput-object v10, v2, v11

    #@7d
    .restart local v2    # "args":[Ljava/lang/Object;
    goto :goto_0

    #@7e
    .line 1615
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v6

    #@7f
    .line 1616
    .local v6, "nsme":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@82
    move-result-object v3

    #@83
    .line 1619
    .local v3, "cl":Ljava/lang/Class;
    const/4 v11, 0x0

    #@84
    aput-object v3, v1, v11

    #@86
    .line 1620
    invoke-virtual/range {p6 .. p6}, Lorg/apache/xalan/templates/ElemTemplateElement;->getClass()Ljava/lang/Class;

    #@89
    move-result-object v11

    #@8a
    invoke-virtual {v11, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    #@8d
    move-result-object v5

    #@8e
    .restart local v5    # "meth":Ljava/lang/reflect/Method;
    goto :goto_1

    #@8f
    .line 1642
    .end local v1    # "argTypes":[Ljava/lang/Class;
    .end local v3    # "cl":Ljava/lang/Class;
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    .end local v6    # "nsme":Ljava/lang/NoSuchMethodException;
    .end local v10    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v7

    #@90
    .line 1643
    .local v7, "nsme":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v11, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    #@93
    .line 1644
    const/4 v12, 0x2

    #@94
    new-array v12, v12, [Ljava/lang/Object;

    #@96
    const-string/jumbo v13, "name"

    #@99
    const/4 v14, 0x0

    #@9a
    aput-object v13, v12, v14

    #@9c
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    #@9f
    move-result-object v13

    #@a0
    const/4 v14, 0x1

    #@a1
    aput-object v13, v12, v14

    #@a3
    .line 1643
    move-object/from16 v0, p1

    #@a5
    invoke-direct {p0, v0, v11, v12, v7}, Lorg/apache/xalan/processor/XSLTAttributeDef;->handleError(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@a8
    .line 1645
    const/4 v11, 0x0

    #@a9
    return v11

    #@aa
    .line 1637
    .end local v7    # "nsme":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v4

    #@ab
    .line 1638
    .local v4, "iae":Ljava/lang/IllegalAccessException;
    const-string/jumbo v11, "ER_FAILED_CALLING_METHOD"

    #@ae
    const/4 v12, 0x1

    #@af
    new-array v12, v12, [Ljava/lang/Object;

    #@b1
    const/4 v13, 0x0

    #@b2
    aput-object v9, v12, v13

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v11, v12, v4}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@b9
    .line 1639
    const/4 v11, 0x0

    #@ba
    return v11

    #@bb
    .line 1629
    .end local v4    # "iae":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    #@bc
    .line 1630
    .restart local v6    # "nsme":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v11, "setForeignAttr"

    #@bf
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c2
    move-result v11

    #@c3
    if-nez v11, :cond_3

    #@c5
    .line 1632
    const-string/jumbo v11, "ER_FAILED_CALLING_METHOD"

    #@c8
    const/4 v12, 0x1

    #@c9
    new-array v12, v12, [Ljava/lang/Object;

    #@cb
    const/4 v13, 0x0

    #@cc
    aput-object v9, v12, v13

    #@ce
    move-object/from16 v0, p1

    #@d0
    invoke-virtual {v0, v11, v12, v6}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    #@d3
    .line 1633
    const/4 v11, 0x0

    #@d4
    return v11
.end method

.method setDefAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .locals 7
    .param p1, "handler"    # Lorg/apache/xalan/processor/StylesheetHandler;
    .param p2, "elem"    # Lorg/apache/xalan/templates/ElemTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    #@0
    .prologue
    .line 1474
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getNamespace()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 1475
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    move-object v0, p0

    #@11
    move-object v1, p1

    #@12
    move-object v6, p2

    #@13
    .line 1474
    invoke-virtual/range {v0 .. v6}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    #@16
    .line 1472
    return-void
.end method

.method setDefault(Ljava/lang/String;)V
    .locals 0
    .param p1, "def"    # Ljava/lang/String;

    #@0
    .prologue
    .line 383
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_default:Ljava/lang/String;

    #@2
    .line 381
    return-void
.end method
