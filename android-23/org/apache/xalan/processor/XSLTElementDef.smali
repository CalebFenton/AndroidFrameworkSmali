.class public Lorg/apache/xalan/processor/XSLTElementDef;
.super Ljava/lang/Object;
.source "XSLTElementDef.java"


# static fields
.field static final T_ANY:I = 0x3

.field static final T_ELEMENT:I = 0x1

.field static final T_PCDATA:I = 0x2


# instance fields
.field private m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

.field private m_classObject:Ljava/lang/Class;

.field private m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

.field private m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

.field private m_has_required:Z

.field m_isOrdered:Z

.field private m_lastOrder:I

.field private m_multiAllowed:Z

.field private m_name:Ljava/lang/String;

.field private m_nameAlias:Ljava/lang/String;

.field private m_namespace:Ljava/lang/String;

.field private m_order:I

.field private m_required:Z

.field m_requiredFound:Ljava/util/Hashtable;

.field private m_type:I


# direct methods
.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 343
    iput v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    #@8
    .line 672
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    #@a
    .line 687
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    #@c
    .line 746
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    #@e
    .line 781
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    #@10
    .line 797
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    #@12
    .line 822
    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    #@14
    .line 42
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lorg/apache/xalan/processor/XSLTElementProcessor;I)V
    .locals 3
    .param p1, "classObject"    # Ljava/lang/Class;
    .param p2, "contentHandler"    # Lorg/apache/xalan/processor/XSLTElementProcessor;
    .param p3, "type"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, -0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 343
    iput v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    #@8
    .line 672
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    #@a
    .line 687
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    #@c
    .line 746
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    #@e
    .line 781
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    #@10
    .line 797
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    #@12
    .line 822
    iput-boolean v2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    #@14
    .line 246
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    #@16
    .line 247
    iput p3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    #@18
    .line 249
    invoke-virtual {p0, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    #@1b
    .line 243
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V
    .locals 8
    .param p1, "schema"    # Lorg/apache/xalan/processor/XSLTSchema;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameAlias"    # Ljava/lang/String;
    .param p5, "elements"    # [Lorg/apache/xalan/processor/XSLTElementDef;
    .param p6, "attributes"    # [Lorg/apache/xalan/processor/XSLTAttributeDef;
    .param p7, "contentHandler"    # Lorg/apache/xalan/processor/XSLTElementProcessor;
    .param p8, "classObject"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 343
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    #@6
    .line 672
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    #@9
    .line 687
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    #@c
    .line 746
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    #@f
    .line 781
    const/4 v0, -0x1

    #@10
    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    #@12
    .line 797
    const/4 v0, -0x1

    #@13
    iput v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    #@15
    .line 822
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    #@18
    move-object v0, p0

    #@19
    move-object v1, p2

    #@1a
    move-object v2, p3

    #@1b
    move-object v3, p4

    #@1c
    move-object v4, p5

    #@1d
    move-object v5, p6

    #@1e
    move-object v6, p7

    #@1f
    move-object/from16 v7, p8

    #@21
    .line 59
    invoke-virtual/range {v0 .. v7}, Lorg/apache/xalan/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    #@24
    .line 61
    if-eqz p2, :cond_1

    #@26
    .line 62
    const-string/jumbo v0, "http://www.w3.org/1999/XSL/Transform"

    #@29
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_0

    #@2f
    .line 63
    const-string/jumbo v0, "http://xml.apache.org/xalan"

    #@32
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    .line 62
    if-nez v0, :cond_0

    #@38
    .line 64
    const-string/jumbo v0, "http://xml.apache.org/xslt"

    #@3b
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    .line 61
    if-eqz v0, :cond_1

    #@41
    .line 66
    :cond_0
    new-instance v0, Lorg/apache/xml/utils/QName;

    #@43
    invoke-direct {v0, p2, p3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@46
    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    #@49
    .line 67
    if-eqz p4, :cond_1

    #@4b
    .line 68
    new-instance v0, Lorg/apache/xml/utils/QName;

    #@4d
    invoke-direct {v0, p2, p4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@50
    invoke-virtual {p1, v0}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    #@53
    .line 57
    :cond_1
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V
    .locals 0
    .param p1, "schema"    # Lorg/apache/xalan/processor/XSLTSchema;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameAlias"    # Ljava/lang/String;
    .param p5, "elements"    # [Lorg/apache/xalan/processor/XSLTElementDef;
    .param p6, "attributes"    # [Lorg/apache/xalan/processor/XSLTAttributeDef;
    .param p7, "contentHandler"    # Lorg/apache/xalan/processor/XSLTElementProcessor;
    .param p8, "classObject"    # Ljava/lang/Class;
    .param p9, "order"    # I
    .param p10, "multiAllowed"    # Z

    #@0
    .prologue
    .line 229
    invoke-direct/range {p0 .. p8}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    #@3
    .line 231
    iput p9, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    #@5
    .line 232
    iput-boolean p10, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    #@7
    .line 227
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;Z)V
    .locals 9
    .param p1, "schema"    # Lorg/apache/xalan/processor/XSLTSchema;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameAlias"    # Ljava/lang/String;
    .param p5, "elements"    # [Lorg/apache/xalan/processor/XSLTElementDef;
    .param p6, "attributes"    # [Lorg/apache/xalan/processor/XSLTAttributeDef;
    .param p7, "contentHandler"    # Lorg/apache/xalan/processor/XSLTElementProcessor;
    .param p8, "classObject"    # Ljava/lang/Class;
    .param p9, "has_required"    # Z

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 343
    const/4 v1, 0x1

    #@4
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    #@6
    .line 672
    const/4 v1, 0x0

    #@7
    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    #@9
    .line 687
    const/4 v1, 0x0

    #@a
    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    #@c
    .line 746
    const/4 v1, 0x0

    #@d
    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    #@f
    .line 781
    const/4 v1, -0x1

    #@10
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    #@12
    .line 797
    const/4 v1, -0x1

    #@13
    iput v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    #@15
    .line 822
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    #@18
    .line 88
    move/from16 v0, p9

    #@1a
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    #@1c
    move-object v1, p0

    #@1d
    move-object v2, p2

    #@1e
    move-object v3, p3

    #@1f
    move-object v4, p4

    #@20
    move-object v5, p5

    #@21
    move-object v6, p6

    #@22
    move-object/from16 v7, p7

    #@24
    move-object/from16 v8, p8

    #@26
    .line 89
    invoke-virtual/range {v1 .. v8}, Lorg/apache/xalan/processor/XSLTElementDef;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V

    #@29
    .line 91
    if-eqz p2, :cond_1

    #@2b
    .line 92
    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    #@2e
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_0

    #@34
    .line 93
    const-string/jumbo v1, "http://xml.apache.org/xalan"

    #@37
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v1

    #@3b
    .line 92
    if-nez v1, :cond_0

    #@3d
    .line 94
    const-string/jumbo v1, "http://xml.apache.org/xslt"

    #@40
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v1

    #@44
    .line 91
    if-eqz v1, :cond_1

    #@46
    .line 96
    :cond_0
    new-instance v1, Lorg/apache/xml/utils/QName;

    #@48
    invoke-direct {v1, p2, p3}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4b
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    #@4e
    .line 97
    if-eqz p4, :cond_1

    #@50
    .line 98
    new-instance v1, Lorg/apache/xml/utils/QName;

    #@52
    invoke-direct {v1, p2, p4}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    invoke-virtual {p1, v1}, Lorg/apache/xalan/processor/XSLTSchema;->addAvailableElement(Lorg/apache/xml/utils/QName;)V

    #@58
    .line 86
    :cond_1
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZIZ)V
    .locals 12
    .param p1, "schema"    # Lorg/apache/xalan/processor/XSLTSchema;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameAlias"    # Ljava/lang/String;
    .param p5, "elements"    # [Lorg/apache/xalan/processor/XSLTElementDef;
    .param p6, "attributes"    # [Lorg/apache/xalan/processor/XSLTAttributeDef;
    .param p7, "contentHandler"    # Lorg/apache/xalan/processor/XSLTElementProcessor;
    .param p8, "classObject"    # Ljava/lang/Class;
    .param p9, "has_order"    # Z
    .param p10, "order"    # I
    .param p11, "multiAllowed"    # Z

    #@0
    .prologue
    move-object v1, p0

    #@1
    move-object v2, p1

    #@2
    move-object v3, p2

    #@3
    move-object v4, p3

    #@4
    move-object/from16 v5, p4

    #@6
    move-object/from16 v6, p5

    #@8
    move-object/from16 v7, p6

    #@a
    move-object/from16 v8, p7

    #@c
    move-object/from16 v9, p8

    #@e
    move/from16 v10, p10

    #@10
    move/from16 v11, p11

    #@12
    .line 204
    invoke-direct/range {v1 .. v11}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;IZ)V

    #@15
    .line 208
    move/from16 v0, p9

    #@17
    iput-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    #@19
    .line 202
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V
    .locals 0
    .param p1, "schema"    # Lorg/apache/xalan/processor/XSLTSchema;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameAlias"    # Ljava/lang/String;
    .param p5, "elements"    # [Lorg/apache/xalan/processor/XSLTElementDef;
    .param p6, "attributes"    # [Lorg/apache/xalan/processor/XSLTAttributeDef;
    .param p7, "contentHandler"    # Lorg/apache/xalan/processor/XSLTElementProcessor;
    .param p8, "classObject"    # Ljava/lang/Class;
    .param p9, "has_required"    # Z
    .param p10, "required"    # Z

    #@0
    .prologue
    .line 121
    invoke-direct/range {p0 .. p9}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;Z)V

    #@3
    .line 124
    iput-boolean p10, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    #@5
    .line 119
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZIZ)V
    .locals 0
    .param p1, "schema"    # Lorg/apache/xalan/processor/XSLTSchema;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameAlias"    # Ljava/lang/String;
    .param p5, "elements"    # [Lorg/apache/xalan/processor/XSLTElementDef;
    .param p6, "attributes"    # [Lorg/apache/xalan/processor/XSLTAttributeDef;
    .param p7, "contentHandler"    # Lorg/apache/xalan/processor/XSLTElementProcessor;
    .param p8, "classObject"    # Ljava/lang/Class;
    .param p9, "has_required"    # Z
    .param p10, "required"    # Z
    .param p11, "order"    # I
    .param p12, "multiAllowed"    # Z

    #@0
    .prologue
    .line 148
    invoke-direct/range {p0 .. p10}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V

    #@3
    .line 151
    iput p11, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    #@5
    .line 152
    iput-boolean p12, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    #@7
    .line 146
    return-void
.end method

.method constructor <init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZZIZ)V
    .locals 0
    .param p1, "schema"    # Lorg/apache/xalan/processor/XSLTSchema;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameAlias"    # Ljava/lang/String;
    .param p5, "elements"    # [Lorg/apache/xalan/processor/XSLTElementDef;
    .param p6, "attributes"    # [Lorg/apache/xalan/processor/XSLTAttributeDef;
    .param p7, "contentHandler"    # Lorg/apache/xalan/processor/XSLTElementProcessor;
    .param p8, "classObject"    # Ljava/lang/Class;
    .param p9, "has_required"    # Z
    .param p10, "required"    # Z
    .param p11, "has_order"    # Z
    .param p12, "order"    # I
    .param p13, "multiAllowed"    # Z

    #@0
    .prologue
    .line 177
    invoke-direct/range {p0 .. p10}, Lorg/apache/xalan/processor/XSLTElementDef;-><init>(Lorg/apache/xalan/processor/XSLTSchema;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;ZZ)V

    #@3
    .line 180
    iput p12, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    #@5
    .line 181
    iput-boolean p13, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    #@7
    .line 182
    iput-boolean p11, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    #@9
    .line 175
    return-void
.end method

.method private QNameEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 448
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    #@2
    invoke-static {v0, p1}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 449
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    #@a
    invoke-static {v0, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 450
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    #@12
    invoke-static {v0, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    #@15
    move-result v0

    #@16
    .line 448
    :goto_0
    return v0

    #@17
    .line 449
    :cond_0
    const/4 v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 448
    :cond_1
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method

.method private static equalsMayBeNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 307
    if-eq p1, p0, :cond_0

    #@2
    .line 308
    if-eqz p0, :cond_1

    #@4
    if-eqz p1, :cond_1

    #@6
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    .line 307
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0

    #@d
    .line 308
    :cond_1
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method private static equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 329
    if-nez p0, :cond_0

    #@3
    const/4 v0, 0x0

    #@4
    .line 330
    .local v0, "len1":I
    :goto_0
    if-nez p1, :cond_1

    #@6
    const/4 v1, 0x0

    #@7
    .line 332
    .local v1, "len2":I
    :goto_1
    if-eq v0, v1, :cond_2

    #@9
    :goto_2
    return v2

    #@a
    .line 329
    .end local v0    # "len1":I
    .end local v1    # "len2":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    .restart local v0    # "len1":I
    goto :goto_0

    #@f
    .line 330
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v1

    #@13
    .restart local v1    # "len2":I
    goto :goto_1

    #@14
    .line 333
    :cond_2
    if-nez v0, :cond_3

    #@16
    const/4 v2, 0x1

    #@17
    goto :goto_2

    #@18
    .line 334
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    goto :goto_2
.end method


# virtual methods
.method build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/xalan/processor/XSLTElementDef;[Lorg/apache/xalan/processor/XSLTAttributeDef;Lorg/apache/xalan/processor/XSLTElementProcessor;Ljava/lang/Class;)V
    .locals 7
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameAlias"    # Ljava/lang/String;
    .param p4, "elements"    # [Lorg/apache/xalan/processor/XSLTElementDef;
    .param p5, "attributes"    # [Lorg/apache/xalan/processor/XSLTAttributeDef;
    .param p6, "contentHandler"    # Lorg/apache/xalan/processor/XSLTElementProcessor;
    .param p7, "classObject"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 268
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    #@2
    .line 269
    iput-object p2, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    #@4
    .line 270
    iput-object p3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    #@6
    .line 271
    iput-object p4, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@8
    .line 272
    iput-object p5, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@a
    .line 274
    invoke-virtual {p0, p6}, Lorg/apache/xalan/processor/XSLTElementDef;->setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V

    #@d
    .line 276
    iput-object p7, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    #@f
    .line 278
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->hasRequired()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_2

    #@15
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@17
    if-eqz v3, :cond_2

    #@19
    .line 280
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@1b
    array-length v2, v3

    #@1c
    .line 281
    .local v2, "n":I
    const/4 v1, 0x0

    #@1d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@1f
    .line 283
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@21
    aget-object v0, v3, v1

    #@23
    .line 285
    .local v0, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    if-eqz v0, :cond_1

    #@25
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequired()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_1

    #@2b
    .line 287
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    #@2d
    if-nez v3, :cond_0

    #@2f
    .line 288
    new-instance v3, Ljava/util/Hashtable;

    #@31
    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    #@34
    iput-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    #@36
    .line 289
    :cond_0
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    #@38
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    new-instance v5, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v6, "xsl:"

    #@44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    .line 281
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@59
    goto :goto_0

    #@5a
    .line 265
    .end local v0    # "def":Lorg/apache/xalan/processor/XSLTElementDef;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    return-void
.end method

.method getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTAttributeDef;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 579
    const/4 v2, 0x0

    #@1
    .line 580
    .local v2, "defaultDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@4
    move-result-object v1

    #@5
    .line 581
    .local v1, "attrDefs":[Lorg/apache/xalan/processor/XSLTAttributeDef;
    array-length v4, v1

    #@6
    .line 583
    .local v4, "nAttrDefs":I
    const/4 v3, 0x0

    #@7
    .end local v2    # "defaultDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    .local v3, "k":I
    :goto_0
    if-ge v3, v4, :cond_4

    #@9
    .line 585
    aget-object v0, v1, v3

    #@b
    .line 586
    .local v0, "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getNamespace()Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    .line 587
    .local v6, "uriDef":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    #@12
    move-result-object v5

    #@13
    .line 589
    .local v5, "nameDef":Ljava/lang/String;
    const-string/jumbo v7, "*"

    #@16
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v7

    #@1a
    if-eqz v7, :cond_1

    #@1c
    invoke-static {p1, v6}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    #@1f
    move-result v7

    #@20
    if-nez v7, :cond_0

    #@22
    .line 590
    if-eqz v6, :cond_1

    #@24
    const-string/jumbo v7, "*"

    #@27
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v7

    #@2b
    if-eqz v7, :cond_1

    #@2d
    if-eqz p1, :cond_1

    #@2f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@32
    move-result v7

    #@33
    if-lez v7, :cond_1

    #@35
    .line 592
    :cond_0
    return-object v0

    #@36
    .line 594
    :cond_1
    const-string/jumbo v7, "*"

    #@39
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v7

    #@3d
    if-eqz v7, :cond_3

    #@3f
    if-nez v6, :cond_3

    #@41
    .line 599
    move-object v2, v0

    #@42
    .line 583
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@44
    goto :goto_0

    #@45
    .line 601
    :cond_3
    invoke-static {p1, v6}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    #@48
    move-result v7

    #@49
    if-eqz v7, :cond_2

    #@4b
    .line 602
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v7

    #@4f
    .line 601
    if-eqz v7, :cond_2

    #@51
    .line 604
    return-object v0

    #@52
    .line 608
    .end local v0    # "attrDef":Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v5    # "nameDef":Ljava/lang/String;
    .end local v6    # "uriDef":Ljava/lang/String;
    :cond_4
    if-nez v2, :cond_5

    #@54
    .line 610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@57
    move-result v7

    #@58
    if-lez v7, :cond_5

    #@5a
    const-string/jumbo v7, "http://www.w3.org/1999/XSL/Transform"

    #@5d
    invoke-static {p1, v7}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    #@60
    move-result v7

    #@61
    if-eqz v7, :cond_6

    #@63
    .line 616
    :cond_5
    return-object v2

    #@64
    .line 612
    :cond_6
    sget-object v7, Lorg/apache/xalan/processor/XSLTAttributeDef;->m_foreignAttr:Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@66
    return-object v7
.end method

.method getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;
    .locals 1

    #@0
    .prologue
    .line 564
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_attributes:[Lorg/apache/xalan/processor/XSLTAttributeDef;

    #@2
    return-object v0
.end method

.method getClassObject()Ljava/lang/Class;
    .locals 1

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_classObject:Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method public getElementProcessor()Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 1

    #@0
    .prologue
    .line 632
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@2
    return-object v0
.end method

.method public getElements()[Lorg/apache/xalan/processor/XSLTElementDef;
    .locals 1

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@2
    return-object v0
.end method

.method getLastOrder()I
    .locals 1

    #@0
    .prologue
    .line 806
    iget v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    #@2
    return v0
.end method

.method getMultiAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 831
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_multiAllowed:Z

    #@2
    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 392
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getNameAlias()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 407
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_nameAlias:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getNamespace()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 377
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_namespace:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getOrder()I
    .locals 1

    #@0
    .prologue
    .line 790
    iget v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_order:I

    #@2
    return v0
.end method

.method getProcessorFor(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 465
    const/4 v1, 0x0

    #@2
    .line 467
    .local v1, "elemDef":Lorg/apache/xalan/processor/XSLTElementProcessor;
    iget-object v7, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@4
    if-nez v7, :cond_0

    #@6
    .line 468
    return-object v9

    #@7
    .line 470
    :cond_0
    iget-object v7, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@9
    array-length v5, v7

    #@a
    .line 471
    .local v5, "n":I
    const/4 v6, -0x1

    #@b
    .line 472
    .local v6, "order":I
    const/4 v4, 0x1

    #@c
    .line 473
    .local v4, "multiAllowed":Z
    const/4 v2, 0x0

    #@d
    .end local v1    # "elemDef":Lorg/apache/xalan/processor/XSLTElementProcessor;
    .end local v4    # "multiAllowed":Z
    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_4

    #@f
    .line 475
    iget-object v7, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@11
    aget-object v0, v7, v2

    #@13
    .line 480
    .local v0, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    iget-object v7, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    #@15
    const-string/jumbo v8, "*"

    #@18
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_2

    #@1e
    .line 484
    const-string/jumbo v7, "http://www.w3.org/1999/XSL/Transform"

    #@21
    invoke-static {p1, v7}, Lorg/apache/xalan/processor/XSLTElementDef;->equalsMayBeNullOrZeroLen(Ljava/lang/String;Ljava/lang/String;)Z

    #@24
    move-result v7

    #@25
    if-nez v7, :cond_1

    #@27
    .line 486
    iget-object v1, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@29
    .line 487
    .local v1, "elemDef":Lorg/apache/xalan/processor/XSLTElementProcessor;
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getOrder()I

    #@2c
    move-result v6

    #@2d
    .line 488
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getMultiAllowed()Z

    #@30
    move-result v4

    #@31
    .line 473
    .end local v1    # "elemDef":Lorg/apache/xalan/processor/XSLTElementProcessor;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 491
    :cond_2
    invoke-direct {v0, p1, p2}, Lorg/apache/xalan/processor/XSLTElementDef;->QNameEquals(Ljava/lang/String;Ljava/lang/String;)Z

    #@37
    move-result v7

    #@38
    if-eqz v7, :cond_1

    #@3a
    .line 493
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getRequired()Z

    #@3d
    move-result v7

    #@3e
    if-eqz v7, :cond_3

    #@40
    .line 494
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getName()Ljava/lang/String;

    #@43
    move-result-object v7

    #@44
    const/4 v8, 0x1

    #@45
    invoke-virtual {p0, v7, v8}, Lorg/apache/xalan/processor/XSLTElementDef;->setRequiredFound(Ljava/lang/String;Z)V

    #@48
    .line 495
    :cond_3
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getOrder()I

    #@4b
    move-result v6

    #@4c
    .line 496
    invoke-virtual {v0}, Lorg/apache/xalan/processor/XSLTElementDef;->getMultiAllowed()Z

    #@4f
    move-result v4

    #@50
    .line 497
    .local v4, "multiAllowed":Z
    iget-object v1, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@52
    .line 502
    .end local v0    # "def":Lorg/apache/xalan/processor/XSLTElementDef;
    .end local v4    # "multiAllowed":Z
    :cond_4
    if-eqz v1, :cond_5

    #@54
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->isOrdered()Z

    #@57
    move-result v7

    #@58
    if-eqz v7, :cond_5

    #@5a
    .line 504
    invoke-virtual {p0}, Lorg/apache/xalan/processor/XSLTElementDef;->getLastOrder()I

    #@5d
    move-result v3

    #@5e
    .line 505
    .local v3, "lastOrder":I
    if-le v6, v3, :cond_6

    #@60
    .line 506
    invoke-virtual {p0, v6}, Lorg/apache/xalan/processor/XSLTElementDef;->setLastOrder(I)V

    #@63
    .line 517
    .end local v3    # "lastOrder":I
    :cond_5
    return-object v1

    #@64
    .line 507
    .restart local v3    # "lastOrder":I
    :cond_6
    if-ne v6, v3, :cond_7

    #@66
    if-eqz v4, :cond_8

    #@68
    .line 511
    :cond_7
    if-ge v6, v3, :cond_5

    #@6a
    if-lez v6, :cond_5

    #@6c
    .line 513
    return-object v9

    #@6d
    .line 509
    :cond_8
    return-object v9
.end method

.method getProcessorForUnknown(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTElementProcessor;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 534
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 535
    return-object v5

    #@6
    .line 537
    :cond_0
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@8
    array-length v2, v3

    #@9
    .line 539
    .local v2, "n":I
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@c
    .line 541
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@e
    aget-object v0, v3, v1

    #@10
    .line 543
    .local v0, "def":Lorg/apache/xalan/processor/XSLTElementDef;
    iget-object v3, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_name:Ljava/lang/String;

    #@12
    const-string/jumbo v4, "unknown"

    #@15
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1e
    move-result v3

    #@1f
    if-lez v3, :cond_1

    #@21
    .line 545
    iget-object v3, v0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@23
    return-object v3

    #@24
    .line 539
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@26
    goto :goto_0

    #@27
    .line 549
    .end local v0    # "def":Lorg/apache/xalan/processor/XSLTElementDef;
    :cond_2
    return-object v5
.end method

.method getRequired()Z
    .locals 1

    #@0
    .prologue
    .line 696
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_required:Z

    #@2
    return v0
.end method

.method getRequiredElem()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 730
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    #@3
    if-nez v3, :cond_0

    #@5
    .line 731
    return-object v4

    #@6
    .line 732
    :cond_0
    iget-object v3, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    #@8
    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@b
    move-result-object v0

    #@c
    .line 733
    .local v0, "elems":Ljava/util/Enumeration;
    const-string/jumbo v2, ""

    #@f
    .line 734
    .local v2, "s":Ljava/lang/String;
    const/4 v1, 0x1

    #@10
    .line 735
    .local v1, "first":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    .line 737
    if-eqz v1, :cond_1

    #@18
    .line 738
    const/4 v1, 0x0

    #@19
    .line 741
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Ljava/lang/String;

    #@28
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    goto :goto_0

    #@31
    .line 740
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    const-string/jumbo v4, ", "

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    goto :goto_1

    #@46
    .line 743
    :cond_2
    return-object v2
.end method

.method getRequiredFound()Z
    .locals 1

    #@0
    .prologue
    .line 718
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 719
    const/4 v0, 0x1

    #@5
    return v0

    #@6
    .line 720
    :cond_0
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    #@8
    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method getType()I
    .locals 1

    #@0
    .prologue
    .line 352
    iget v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    #@2
    return v0
.end method

.method hasRequired()Z
    .locals 1

    #@0
    .prologue
    .line 681
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_has_required:Z

    #@2
    return v0
.end method

.method isOrdered()Z
    .locals 1

    #@0
    .prologue
    .line 775
    iget-boolean v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_isOrdered:Z

    #@2
    return v0
.end method

.method public setElementProcessor(Lorg/apache/xalan/processor/XSLTElementProcessor;)V
    .locals 1
    .param p1, "handler"    # Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@0
    .prologue
    .line 644
    if-eqz p1, :cond_0

    #@2
    .line 646
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@4
    .line 648
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elementProcessor:Lorg/apache/xalan/processor/XSLTElementProcessor;

    #@6
    invoke-virtual {v0, p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;->setElemDef(Lorg/apache/xalan/processor/XSLTElementDef;)V

    #@9
    .line 641
    :cond_0
    return-void
.end method

.method setElements([Lorg/apache/xalan/processor/XSLTElementDef;)V
    .locals 0
    .param p1, "defs"    # [Lorg/apache/xalan/processor/XSLTElementDef;

    #@0
    .prologue
    .line 433
    iput-object p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_elements:[Lorg/apache/xalan/processor/XSLTElementDef;

    #@2
    .line 431
    return-void
.end method

.method setLastOrder(I)V
    .locals 0
    .param p1, "order"    # I

    #@0
    .prologue
    .line 816
    iput p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_lastOrder:I

    #@2
    .line 814
    return-void
.end method

.method setRequiredFound(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "elem"    # Ljava/lang/String;
    .param p2, "found"    # Z

    #@0
    .prologue
    .line 707
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 708
    iget-object v0, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_requiredFound:Ljava/util/Hashtable;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 705
    :cond_0
    return-void
.end method

.method setType(I)V
    .locals 0
    .param p1, "t"    # I

    #@0
    .prologue
    .line 362
    iput p1, p0, Lorg/apache/xalan/processor/XSLTElementDef;->m_type:I

    #@2
    .line 360
    return-void
.end method
