.class public Lorg/apache/xpath/compiler/Keywords;
.super Ljava/lang/Object;
.source "Keywords.java"


# static fields
.field private static final greylist FROM_ANCESTORS_OR_SELF_STRING:Ljava/lang/String; = "ancestor-or-self"

.field private static final greylist FROM_ANCESTORS_STRING:Ljava/lang/String; = "ancestor"

.field private static final greylist FROM_ATTRIBUTES_STRING:Ljava/lang/String; = "attribute"

.field private static final greylist FROM_CHILDREN_STRING:Ljava/lang/String; = "child"

.field private static final greylist FROM_DESCENDANTS_OR_SELF_STRING:Ljava/lang/String; = "descendant-or-self"

.field private static final greylist FROM_DESCENDANTS_STRING:Ljava/lang/String; = "descendant"

.field private static final greylist FROM_FOLLOWING_SIBLINGS_STRING:Ljava/lang/String; = "following-sibling"

.field private static final greylist FROM_FOLLOWING_STRING:Ljava/lang/String; = "following"

.field private static final greylist FROM_NAMESPACE_STRING:Ljava/lang/String; = "namespace"

.field private static final greylist FROM_PARENT_STRING:Ljava/lang/String; = "parent"

.field private static final greylist FROM_PRECEDING_SIBLINGS_STRING:Ljava/lang/String; = "preceding-sibling"

.field private static final greylist FROM_PRECEDING_STRING:Ljava/lang/String; = "preceding"

.field private static final greylist FROM_SELF_ABBREVIATED_STRING:Ljava/lang/String; = "."

.field private static final greylist FROM_SELF_STRING:Ljava/lang/String; = "self"

.field public static final greylist FUNC_BOOLEAN_STRING:Ljava/lang/String; = "boolean"

.field public static final greylist FUNC_CEILING_STRING:Ljava/lang/String; = "ceiling"

.field public static final greylist FUNC_CONCAT_STRING:Ljava/lang/String; = "concat"

.field public static final greylist FUNC_CONTAINS_STRING:Ljava/lang/String; = "contains"

.field public static final greylist FUNC_COUNT_STRING:Ljava/lang/String; = "count"

.field public static final greylist FUNC_CURRENT_STRING:Ljava/lang/String; = "current"

.field public static final greylist FUNC_DOCLOCATION_STRING:Ljava/lang/String; = "document-location"

.field public static final greylist FUNC_EXT_ELEM_AVAILABLE_STRING:Ljava/lang/String; = "element-available"

.field public static final greylist FUNC_EXT_FUNCTION_AVAILABLE_STRING:Ljava/lang/String; = "function-available"

.field public static final greylist FUNC_FALSE_STRING:Ljava/lang/String; = "false"

.field public static final greylist FUNC_FLOOR_STRING:Ljava/lang/String; = "floor"

.field public static final greylist FUNC_GENERATE_ID_STRING:Ljava/lang/String; = "generate-id"

.field static final greylist FUNC_ID_STRING:Ljava/lang/String; = "id"

.field public static final greylist FUNC_KEY_STRING:Ljava/lang/String; = "key"

.field public static final greylist FUNC_LANG_STRING:Ljava/lang/String; = "lang"

.field public static final greylist FUNC_LAST_STRING:Ljava/lang/String; = "last"

.field public static final greylist FUNC_LOCAL_PART_STRING:Ljava/lang/String; = "local-name"

.field public static final greylist FUNC_NAMESPACE_STRING:Ljava/lang/String; = "namespace-uri"

.field public static final greylist FUNC_NAME_STRING:Ljava/lang/String; = "name"

.field public static final greylist FUNC_NORMALIZE_SPACE_STRING:Ljava/lang/String; = "normalize-space"

.field public static final greylist FUNC_NOT_STRING:Ljava/lang/String; = "not"

.field public static final greylist FUNC_NUMBER_STRING:Ljava/lang/String; = "number"

.field public static final greylist FUNC_POSITION_STRING:Ljava/lang/String; = "position"

.field public static final greylist FUNC_ROUND_STRING:Ljava/lang/String; = "round"

.field public static final greylist FUNC_STARTS_WITH_STRING:Ljava/lang/String; = "starts-with"

.field public static final greylist FUNC_STRING_LENGTH_STRING:Ljava/lang/String; = "string-length"

.field public static final greylist FUNC_STRING_STRING:Ljava/lang/String; = "string"

.field public static final greylist FUNC_SUBSTRING_AFTER_STRING:Ljava/lang/String; = "substring-after"

.field public static final greylist FUNC_SUBSTRING_BEFORE_STRING:Ljava/lang/String; = "substring-before"

.field public static final greylist FUNC_SUBSTRING_STRING:Ljava/lang/String; = "substring"

.field public static final greylist FUNC_SUM_STRING:Ljava/lang/String; = "sum"

.field public static final greylist FUNC_SYSTEM_PROPERTY_STRING:Ljava/lang/String; = "system-property"

.field public static final greylist FUNC_TRANSLATE_STRING:Ljava/lang/String; = "translate"

.field public static final greylist FUNC_TRUE_STRING:Ljava/lang/String; = "true"

.field public static final greylist FUNC_UNPARSED_ENTITY_URI_STRING:Ljava/lang/String; = "unparsed-entity-uri"

.field private static final greylist NODETYPE_ANYELEMENT_STRING:Ljava/lang/String; = "*"

.field private static final greylist NODETYPE_COMMENT_STRING:Ljava/lang/String; = "comment"

.field private static final greylist NODETYPE_NODE_STRING:Ljava/lang/String; = "node"

.field private static final greylist NODETYPE_PI_STRING:Ljava/lang/String; = "processing-instruction"

.field private static final greylist NODETYPE_TEXT_STRING:Ljava/lang/String; = "text"

.field private static greylist m_axisnames:Ljava/util/Hashtable;

.field private static greylist m_keywords:Ljava/util/Hashtable;

.field private static greylist m_nodetests:Ljava/util/Hashtable;

.field private static greylist m_nodetypes:Ljava/util/Hashtable;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 12

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    .line 42
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    .line 218
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ancestor"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ancestor-or-self"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "attribute"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "child"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x29

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "descendant"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "descendant-or-self"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "following"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "following-sibling"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "preceding"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x2f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "preceding-sibling"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "self"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v3, 0x31

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v3, "namespace"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v3, 0x406

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "comment"

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v5, 0x407

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v6, "text"

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v7, 0x408

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v8, "processing-instruction"

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v9, 0x409

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    const-string v10, "node"

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v11, 0x24

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    const-string v11, "*"

    invoke-virtual {v0, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "."

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist getAxisName(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 272
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_axisnames:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static greylist getKeyWord(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 280
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_keywords:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static greylist getNodeType(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 284
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static greylist lookupNodeTest(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 276
    sget-object v0, Lorg/apache/xpath/compiler/Keywords;->m_nodetests:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
