.class public Lorg/apache/xalan/processor/XSLTElementDef;
.super Ljava/lang/Object;
.source "XSLTElementDef.java"


# static fields
.field static final greylist T_ANY:I = 0x3

.field static final greylist T_ELEMENT:I = 0x1

.field static final greylist T_PCDATA:I = 0x2


# instance fields
.field private greylist m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

.field private greylist m_classObject:Ljava/lang/Class;

.field private greylist m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

.field private greylist m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

.field private greylist m_has_required:Z

.field greylist m_isOrdered:Z

.field private greylist m_lastOrder:I

.field private greylist m_multiAllowed:Z

.field private greylist m_name:Ljava/lang/String;

.field private greylist m_nameAlias:Ljava/lang/String;

.field private greylist m_namespace:Ljava/lang/String;

.field private greylist m_order:I

.field private greylist m_required:Z

.field greylist m_requiredFound:Ljava/util/Hashtable;

.field private greylist m_type:I


# direct methods
.method constructor greylist <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 343
    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    const/4 v1, 0x0

    .line 672
    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    .line 687
    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    .line 746
    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    const/4 v1, -0x1

    .line 781
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 797
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    .line 822
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    return-void
.end method

.method constructor greylist <init>(Ljava/lang/Class;Lorg/apache/xalan/processor/XSLTElementProcessor;I)V
    .registers 5

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 672
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    .line 687
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    .line 746
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    const/4 v0, -0x1

    .line 781
    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 797
    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    const/4 v0, 0x1

    .line 822
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    .line 246
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    .line 247
    iput p3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    .line 249
    invoke-virtual {p0, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V
    .registers 17

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    .line 343
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    const/4 v2, 0x0

    .line 672
    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    .line 687
    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    .line 746
    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    const/4 v2, -0x1

    .line 781
    iput v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 797
    iput v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    .line 822
    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 59
    invoke-virtual/range {v0 .. v7}, Lorg/apache/xalan/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    if-eqz p2, :cond_4c

    .line 61
    const-string v0, "http://www.w3.org/1999/XSL/Transform"

    .line 62
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "http://xml.apache.org/xalan"

    .line 63
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "http://xml.apache.org/xslt"

    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 66
    :cond_3a
    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, p2, p3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    if-eqz p4, :cond_4c

    .line 68
    new-instance v0, Lorg/apache/xml/utils/QName;

    invoke-direct {v0, p2, p4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    :cond_4c
    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V
    .registers 11

    .line 229
    invoke-direct/range {p0 .. p8}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    .line 231
    iput p9, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 232
    iput-boolean p10, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;Z)V
    .registers 12

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 343
    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    const/4 v1, 0x0

    .line 687
    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    .line 746
    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    const/4 v1, -0x1

    .line 781
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 797
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    .line 822
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    .line 88
    iput-boolean p9, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p0

    .line 89
    invoke-virtual/range {p2 .. p9}, Lorg/apache/xalan/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    if-eqz p3, :cond_4b

    .line 91
    const-string p0, "http://www.w3.org/1999/XSL/Transform"

    .line 92
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    const-string p0, "http://xml.apache.org/xalan"

    .line 93
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    const-string p0, "http://xml.apache.org/xslt"

    .line 94
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 96
    :cond_39
    new-instance p0, Lorg/apache/xml/utils/QName;

    invoke-direct {p0, p3, p4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    if-eqz p5, :cond_4b

    .line 98
    new-instance p0, Lorg/apache/xml/utils/QName;

    invoke-direct {p0, p3, p5}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    :cond_4b
    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V
    .registers 23

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p11

    .line 204
    invoke-direct/range {v0 .. v10}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    move/from16 p1, p9

    .line 208
    iput-boolean p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V
    .registers 11

    .line 121
    invoke-direct/range {p0 .. p9}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;Z)V

    .line 124
    iput-boolean p10, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V
    .registers 13

    .line 148
    invoke-direct/range {p0 .. p10}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V

    .line 151
    iput p11, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 152
    iput-boolean p12, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    return-void
.end method

.method constructor greylist <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V
    .registers 14

    .line 177
    invoke-direct/range {p0 .. p10}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V

    .line 180
    iput p12, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    .line 181
    iput-boolean p13, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    .line 182
    iput-boolean p11, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    return-void
.end method

.method private greylist QNameEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 448
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    .line 449
    invoke-static {p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    .line 450
    invoke-static {p0, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist equalsMayBeNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p1, p0, :cond_f

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    .line 308
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static greylist equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_9

    .line 329
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_9
    if-nez p1, :cond_d

    move v2, v0

    goto :goto_11

    .line 330
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_11
    if-eq v1, v2, :cond_14

    return v0

    :cond_14
    if-nez v1, :cond_18

    const/4 p0, 0x1

    return p0

    .line 334
    :cond_18
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method greylist build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V
    .registers 8

    .line 268
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    .line 269
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    .line 270
    iput-object p3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    .line 271
    iput-object p4, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    .line 272
    iput-object p5, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

    .line 274
    invoke-virtual {p0, p6}, Lorg/apache/xalan/processor/XSLTElementDef;->setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    .line 276
    iput-object p7, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    .line 278
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->hasRequired()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    if-eqz p1, :cond_55

    .line 280
    array-length p1, p1

    const/4 p2, 0x0

    :goto_1b
    if-ge p2, p1, :cond_55

    .line 283
    iget-object p3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    aget-object p3, p3, p2

    if-eqz p3, :cond_52

    .line 285
    invoke-virtual {p3}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequired()Z

    move-result p4

    if-eqz p4, :cond_52

    .line 287
    iget-object p4, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez p4, :cond_34

    .line 288
    new-instance p4, Ljava/util/Hashtable;

    invoke-direct {p4}, Ljava/util/Hashtable;-><init>()V

    iput-object p4, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    .line 289
    :cond_34
    iget-object p4, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {p3}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object p5

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "xsl:"

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p5, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    add-int/lit8 p2, p2, 0x1

    goto :goto_1b

    :cond_55
    return-void
.end method

.method greylist getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTAttributeDef;
    .registers 11

    .line 580
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object p0

    .line 581
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_4c

    .line 585
    aget-object v3, p0, v2

    .line 586
    invoke-virtual {v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 587
    invoke-virtual {v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v5

    .line 589
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-static {p1, v4}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_48

    if-eqz v4, :cond_32

    .line 590
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_32

    goto :goto_48

    .line 594
    :cond_32
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    if-nez v4, :cond_3c

    move-object v1, v3

    goto :goto_49

    .line 601
    :cond_3c
    invoke-static {p1, v4}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 602
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    :cond_48
    :goto_48
    return-object v3

    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_4c
    if-nez v1, :cond_5f

    .line 610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_5f

    const-string p0, "http://www.w3.org/1999/XSL/Transform"

    invoke-static {p1, p0}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5f

    .line 612
    sget-object p0, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    return-object p0

    :cond_5f
    return-object v1
.end method

.method greylist getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;
    .registers 1

    .line 564
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

    return-object p0
.end method

.method greylist getClassObject()Ljava/lang/Class;
    .registers 1

    .line 666
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    return-object p0
.end method

.method public greylist getElementProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .registers 1

    .line 632
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    return-object p0
.end method

.method public greylist getElements()[Lorg/apache/xalan/processor/XSLTElementDef;
    .registers 1

    .line 423
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    return-object p0
.end method

.method greylist getLastOrder()I
    .registers 1

    .line 806
    iget p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    return p0
.end method

.method greylist getMultiAllowed()Z
    .registers 1

    .line 831
    iget-boolean p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    return p0
.end method

.method greylist getName()Ljava/lang/String;
    .registers 1

    .line 392
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    return-object p0
.end method

.method greylist getNameAlias()Ljava/lang/String;
    .registers 1

    .line 407
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    return-object p0
.end method

.method greylist getNamespace()Ljava/lang/String;
    .registers 1

    .line 377
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    return-object p0
.end method

.method greylist getOrder()I
    .registers 1

    .line 790
    iget p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    return p0
.end method

.method greylist getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .registers 13

    .line 467
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 470
    :cond_6
    array-length v0, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v5, v1

    move v6, v2

    :goto_c
    if-ge v4, v0, :cond_50

    .line 475
    iget-object v7, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    aget-object v7, v7, v4

    .line 480
    iget-object v8, v7, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 484
    const-string v8, "http://www.w3.org/1999/XSL/Transform"

    invoke-static {p1, v8}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    .line 486
    iget-object v5, v7, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    .line 487
    invoke-virtual {v7}, Lorg/apache/xalan/processor/XSLTElementDef;->getOrder()I

    move-result v3

    .line 488
    invoke-virtual {v7}, Lorg/apache/xalan/processor/XSLTElementDef;->getMultiAllowed()Z

    move-result v6

    goto :goto_4d

    .line 491
    :cond_2f
    invoke-direct {v7, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->QNameEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4d

    .line 493
    invoke-virtual {v7}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequired()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 494
    invoke-virtual {v7}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lorg/apache/xalan/processor/XSLTElementDef;->setRequiredFound(Ljava/lang/String;Z)V

    .line 495
    :cond_42
    invoke-virtual {v7}, Lorg/apache/xalan/processor/XSLTElementDef;->getOrder()I

    move-result v3

    .line 496
    invoke-virtual {v7}, Lorg/apache/xalan/processor/XSLTElementDef;->getMultiAllowed()Z

    move-result v6

    .line 497
    iget-object v5, v7, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    goto :goto_50

    :cond_4d
    :goto_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_50
    :goto_50
    if-eqz v5, :cond_6c

    .line 502
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->isOrdered()Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 504
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->getLastOrder()I

    move-result p1

    if-le v3, p1, :cond_62

    .line 506
    invoke-virtual {p0, v3}, Lorg/apache/xalan/processor/XSLTElementDef;->setLastOrder(I)V

    return-object v5

    :cond_62
    if-ne v3, p1, :cond_67

    if-nez v6, :cond_67

    return-object v1

    :cond_67
    if-ge v3, p1, :cond_6c

    if-lez v3, :cond_6c

    return-object v1

    :cond_6c
    return-object v5
.end method

.method greylist getProcessorForUnknown(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .registers 8

    .line 534
    iget-object p2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    const/4 v0, 0x0

    if-nez p2, :cond_6

    return-object v0

    .line 537
    :cond_6
    array-length p2, p2

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p2, :cond_24

    .line 541
    iget-object v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    aget-object v2, v2, v1

    .line 543
    iget-object v3, v2, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    const-string v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_21

    .line 545
    iget-object p0, v2, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    return-object p0

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_24
    return-object v0
.end method

.method greylist getRequired()Z
    .registers 1

    .line 696
    iget-boolean p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    return p0
.end method

.method greylist getRequiredElem()Ljava/lang/String;
    .registers 4

    .line 730
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 732
    :cond_6
    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    .line 734
    const-string v0, ""

    const/4 v1, 0x1

    .line 735
    :goto_d
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3e

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    goto :goto_28

    .line 740
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_3e
    return-object v0
.end method

.method greylist getRequiredFound()Z
    .registers 1

    .line 718
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 720
    :cond_6
    invoke-virtual {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result p0

    return p0
.end method

.method greylist getType()I
    .registers 1

    .line 352
    iget p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    return p0
.end method

.method greylist hasRequired()Z
    .registers 1

    .line 681
    iget-boolean p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    return p0
.end method

.method greylist isOrdered()Z
    .registers 1

    .line 775
    iget-boolean p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    return p0
.end method

.method public greylist setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 646
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    .line 648
    invoke-virtual {p1, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setElemDef(Lorg/apache/xalan/processor/XSLTElementDef;)V

    :cond_7
    return-void
.end method

.method greylist setElements([Lorg/apache/xalan/processor/XSLTElementDef;)V
    .registers 2

    .line 433
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    return-void
.end method

.method greylist setLastOrder(I)V
    .registers 2

    .line 816
    iput p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    return-void
.end method

.method greylist setRequiredFound(Ljava/lang/String;Z)V
    .registers 3

    .line 707
    iget-object p2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 708
    iget-object p0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method greylist setType(I)V
    .registers 2

    .line 362
    iput p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    return-void
.end method
