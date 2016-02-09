.class public Lorg/apache/xpath/compiler/Keywords;
.super Ljava/lang/Object;
.source "Keywords.java"


# static fields
.field private static final FROM_ANCESTORS_OR_SELF_STRING:Ljava/lang/String; = "ancestor-or-self"

.field private static final FROM_ANCESTORS_STRING:Ljava/lang/String; = "ancestor"

.field private static final FROM_ATTRIBUTES_STRING:Ljava/lang/String; = "attribute"

.field private static final FROM_CHILDREN_STRING:Ljava/lang/String; = "child"

.field private static final FROM_DESCENDANTS_OR_SELF_STRING:Ljava/lang/String; = "descendant-or-self"

.field private static final FROM_DESCENDANTS_STRING:Ljava/lang/String; = "descendant"

.field private static final FROM_FOLLOWING_SIBLINGS_STRING:Ljava/lang/String; = "following-sibling"

.field private static final FROM_FOLLOWING_STRING:Ljava/lang/String; = "following"

.field private static final FROM_NAMESPACE_STRING:Ljava/lang/String; = "namespace"

.field private static final FROM_PARENT_STRING:Ljava/lang/String; = "parent"

.field private static final FROM_PRECEDING_SIBLINGS_STRING:Ljava/lang/String; = "preceding-sibling"

.field private static final FROM_PRECEDING_STRING:Ljava/lang/String; = "preceding"

.field private static final FROM_SELF_ABBREVIATED_STRING:Ljava/lang/String; = "."

.field private static final FROM_SELF_STRING:Ljava/lang/String; = "self"

.field public static final FUNC_BOOLEAN_STRING:Ljava/lang/String; = "boolean"

.field public static final FUNC_CEILING_STRING:Ljava/lang/String; = "ceiling"

.field public static final FUNC_CONCAT_STRING:Ljava/lang/String; = "concat"

.field public static final FUNC_CONTAINS_STRING:Ljava/lang/String; = "contains"

.field public static final FUNC_COUNT_STRING:Ljava/lang/String; = "count"

.field public static final FUNC_CURRENT_STRING:Ljava/lang/String; = "current"

.field public static final FUNC_DOCLOCATION_STRING:Ljava/lang/String; = "document-location"

.field public static final FUNC_EXT_ELEM_AVAILABLE_STRING:Ljava/lang/String; = "element-available"

.field public static final FUNC_EXT_FUNCTION_AVAILABLE_STRING:Ljava/lang/String; = "function-available"

.field public static final FUNC_FALSE_STRING:Ljava/lang/String; = "false"

.field public static final FUNC_FLOOR_STRING:Ljava/lang/String; = "floor"

.field public static final FUNC_GENERATE_ID_STRING:Ljava/lang/String; = "generate-id"

.field static final FUNC_ID_STRING:Ljava/lang/String; = "id"

.field public static final FUNC_KEY_STRING:Ljava/lang/String; = "key"

.field public static final FUNC_LANG_STRING:Ljava/lang/String; = "lang"

.field public static final FUNC_LAST_STRING:Ljava/lang/String; = "last"

.field public static final FUNC_LOCAL_PART_STRING:Ljava/lang/String; = "local-name"

.field public static final FUNC_NAMESPACE_STRING:Ljava/lang/String; = "namespace-uri"

.field public static final FUNC_NAME_STRING:Ljava/lang/String; = "name"

.field public static final FUNC_NORMALIZE_SPACE_STRING:Ljava/lang/String; = "normalize-space"

.field public static final FUNC_NOT_STRING:Ljava/lang/String; = "not"

.field public static final FUNC_NUMBER_STRING:Ljava/lang/String; = "number"

.field public static final FUNC_POSITION_STRING:Ljava/lang/String; = "position"

.field public static final FUNC_ROUND_STRING:Ljava/lang/String; = "round"

.field public static final FUNC_STARTS_WITH_STRING:Ljava/lang/String; = "starts-with"

.field public static final FUNC_STRING_LENGTH_STRING:Ljava/lang/String; = "string-length"

.field public static final FUNC_STRING_STRING:Ljava/lang/String; = "string"

.field public static final FUNC_SUBSTRING_AFTER_STRING:Ljava/lang/String; = "substring-after"

.field public static final FUNC_SUBSTRING_BEFORE_STRING:Ljava/lang/String; = "substring-before"

.field public static final FUNC_SUBSTRING_STRING:Ljava/lang/String; = "substring"

.field public static final FUNC_SUM_STRING:Ljava/lang/String; = "sum"

.field public static final FUNC_SYSTEM_PROPERTY_STRING:Ljava/lang/String; = "system-property"

.field public static final FUNC_TRANSLATE_STRING:Ljava/lang/String; = "translate"

.field public static final FUNC_TRUE_STRING:Ljava/lang/String; = "true"

.field public static final FUNC_UNPARSED_ENTITY_URI_STRING:Ljava/lang/String; = "unparsed-entity-uri"

.field private static final NODETYPE_ANYELEMENT_STRING:Ljava/lang/String; = "*"

.field private static final NODETYPE_COMMENT_STRING:Ljava/lang/String; = "comment"

.field private static final NODETYPE_NODE_STRING:Ljava/lang/String; = "node"

.field private static final NODETYPE_PI_STRING:Ljava/lang/String; = "processing-instruction"

.field private static final NODETYPE_TEXT_STRING:Ljava/lang/String; = "text"

.field private static m_axisnames:Ljava/util/Hashtable;

.field private static m_keywords:Ljava/util/Hashtable;

.field private static m_nodetests:Ljava/util/Hashtable;

.field private static m_nodetypes:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x409

    #@2
    const/16 v7, 0x408

    #@4
    const/16 v6, 0x407

    #@6
    const/16 v5, 0x406

    #@8
    const/16 v4, 0x30

    #@a
    .line 33
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    #@11
    .line 36
    new-instance v0, Ljava/util/Hashtable;

    #@13
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@16
    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@18
    .line 39
    new-instance v0, Ljava/util/Hashtable;

    #@1a
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@1d
    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    #@1f
    .line 42
    new-instance v0, Ljava/util/Hashtable;

    #@21
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@24
    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    #@26
    .line 218
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@28
    const-string/jumbo v1, "ancestor"

    #@2b
    .line 219
    new-instance v2, Ljava/lang/Integer;

    #@2d
    const/16 v3, 0x25

    #@2f
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@32
    .line 218
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    .line 220
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@37
    const-string/jumbo v1, "ancestor-or-self"

    #@3a
    .line 221
    new-instance v2, Ljava/lang/Integer;

    #@3c
    const/16 v3, 0x26

    #@3e
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@41
    .line 220
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 222
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@46
    const-string/jumbo v1, "attribute"

    #@49
    .line 223
    new-instance v2, Ljava/lang/Integer;

    #@4b
    const/16 v3, 0x27

    #@4d
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@50
    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 224
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@55
    const-string/jumbo v1, "child"

    #@58
    .line 225
    new-instance v2, Ljava/lang/Integer;

    #@5a
    const/16 v3, 0x28

    #@5c
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@5f
    .line 224
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    .line 226
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@64
    const-string/jumbo v1, "descendant"

    #@67
    .line 227
    new-instance v2, Ljava/lang/Integer;

    #@69
    const/16 v3, 0x29

    #@6b
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@6e
    .line 226
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 228
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@73
    const-string/jumbo v1, "descendant-or-self"

    #@76
    .line 229
    new-instance v2, Ljava/lang/Integer;

    #@78
    const/16 v3, 0x2a

    #@7a
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@7d
    .line 228
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@80
    .line 230
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@82
    const-string/jumbo v1, "following"

    #@85
    .line 231
    new-instance v2, Ljava/lang/Integer;

    #@87
    const/16 v3, 0x2b

    #@89
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@8c
    .line 230
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8f
    .line 232
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@91
    const-string/jumbo v1, "following-sibling"

    #@94
    .line 233
    new-instance v2, Ljava/lang/Integer;

    #@96
    const/16 v3, 0x2c

    #@98
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@9b
    .line 232
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    .line 234
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@a0
    const-string/jumbo v1, "parent"

    #@a3
    .line 235
    new-instance v2, Ljava/lang/Integer;

    #@a5
    const/16 v3, 0x2d

    #@a7
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@aa
    .line 234
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    .line 236
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@af
    const-string/jumbo v1, "preceding"

    #@b2
    .line 237
    new-instance v2, Ljava/lang/Integer;

    #@b4
    const/16 v3, 0x2e

    #@b6
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@b9
    .line 236
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    .line 238
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@be
    const-string/jumbo v1, "preceding-sibling"

    #@c1
    .line 239
    new-instance v2, Ljava/lang/Integer;

    #@c3
    const/16 v3, 0x2f

    #@c5
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@c8
    .line 238
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    .line 240
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@cd
    const-string/jumbo v1, "self"

    #@d0
    .line 241
    new-instance v2, Ljava/lang/Integer;

    #@d2
    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    #@d5
    .line 240
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d8
    .line 242
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@da
    const-string/jumbo v1, "namespace"

    #@dd
    .line 243
    new-instance v2, Ljava/lang/Integer;

    #@df
    const/16 v3, 0x31

    #@e1
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@e4
    .line 242
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e7
    .line 244
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    #@e9
    const-string/jumbo v1, "comment"

    #@ec
    .line 245
    new-instance v2, Ljava/lang/Integer;

    #@ee
    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    #@f1
    .line 244
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f4
    .line 246
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    #@f6
    const-string/jumbo v1, "text"

    #@f9
    .line 247
    new-instance v2, Ljava/lang/Integer;

    #@fb
    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    #@fe
    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@101
    .line 248
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    #@103
    const-string/jumbo v1, "processing-instruction"

    #@106
    .line 249
    new-instance v2, Ljava/lang/Integer;

    #@108
    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    #@10b
    .line 248
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10e
    .line 250
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    #@110
    const-string/jumbo v1, "node"

    #@113
    .line 251
    new-instance v2, Ljava/lang/Integer;

    #@115
    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    #@118
    .line 250
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11b
    .line 252
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    #@11d
    const-string/jumbo v1, "*"

    #@120
    .line 253
    new-instance v2, Ljava/lang/Integer;

    #@122
    const/16 v3, 0x24

    #@124
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@127
    .line 252
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12a
    .line 254
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    #@12c
    const-string/jumbo v1, "."

    #@12f
    .line 255
    new-instance v2, Ljava/lang/Integer;

    #@131
    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    #@134
    .line 254
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@137
    .line 256
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    #@139
    const-string/jumbo v1, "id"

    #@13c
    .line 257
    new-instance v2, Ljava/lang/Integer;

    #@13e
    const/4 v3, 0x4

    #@13f
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@142
    .line 256
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@145
    .line 258
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    #@147
    const-string/jumbo v1, "key"

    #@14a
    .line 259
    new-instance v2, Ljava/lang/Integer;

    #@14c
    const/4 v3, 0x5

    #@14d
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@150
    .line 258
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@153
    .line 261
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    #@155
    const-string/jumbo v1, "comment"

    #@158
    .line 262
    new-instance v2, Ljava/lang/Integer;

    #@15a
    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    #@15d
    .line 261
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@160
    .line 263
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    #@162
    const-string/jumbo v1, "text"

    #@165
    .line 264
    new-instance v2, Ljava/lang/Integer;

    #@167
    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    #@16a
    .line 263
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16d
    .line 265
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    #@16f
    const-string/jumbo v1, "processing-instruction"

    #@172
    .line 266
    new-instance v2, Ljava/lang/Integer;

    #@174
    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    #@177
    .line 265
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17a
    .line 267
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    #@17c
    const-string/jumbo v1, "node"

    #@17f
    .line 268
    new-instance v2, Ljava/lang/Integer;

    #@181
    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    #@184
    .line 267
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@187
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getAxisName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 272
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static getKeyWord(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 280
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static getNodeType(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 284
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method static lookupNodeTest(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 276
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
