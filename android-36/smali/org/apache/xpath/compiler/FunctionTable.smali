.class public Lorg/apache/xpath/compiler/FunctionTable;
.super Ljava/lang/Object;
.source "FunctionTable.java"


# static fields
.field public static final greylist FUNC_BOOLEAN:I = 0xe

.field public static final greylist FUNC_CEILING:I = 0x11

.field public static final greylist FUNC_CONCAT:I = 0x1b

.field public static final greylist FUNC_CONTAINS:I = 0x16

.field public static final greylist FUNC_COUNT:I = 0x3

.field public static final greylist FUNC_CURRENT:I = 0x0

.field public static final greylist FUNC_DOCLOCATION:I = 0x23

.field public static final greylist FUNC_EXT_ELEM_AVAILABLE:I = 0x22

.field public static final greylist FUNC_EXT_FUNCTION_AVAILABLE:I = 0x21

.field public static final greylist FUNC_FALSE:I = 0xd

.field public static final greylist FUNC_FLOOR:I = 0x10

.field public static final greylist FUNC_GENERATE_ID:I = 0xa

.field public static final greylist FUNC_ID:I = 0x4

.field public static final greylist FUNC_KEY:I = 0x5

.field public static final greylist FUNC_LANG:I = 0x20

.field public static final greylist FUNC_LAST:I = 0x1

.field public static final greylist FUNC_LOCAL_PART:I = 0x7

.field public static final greylist FUNC_NAMESPACE:I = 0x8

.field public static final greylist FUNC_NORMALIZE_SPACE:I = 0x19

.field public static final greylist FUNC_NOT:I = 0xb

.field public static final greylist FUNC_NUMBER:I = 0xf

.field public static final greylist FUNC_POSITION:I = 0x2

.field public static final greylist FUNC_QNAME:I = 0x9

.field public static final greylist FUNC_ROUND:I = 0x12

.field public static final greylist FUNC_STARTS_WITH:I = 0x15

.field public static final greylist FUNC_STRING:I = 0x14

.field public static final greylist FUNC_STRING_LENGTH:I = 0x1e

.field public static final greylist FUNC_SUBSTRING:I = 0x1d

.field public static final greylist FUNC_SUBSTRING_AFTER:I = 0x18

.field public static final greylist FUNC_SUBSTRING_BEFORE:I = 0x17

.field public static final greylist FUNC_SUM:I = 0x13

.field public static final greylist FUNC_SYSTEM_PROPERTY:I = 0x1f

.field public static final greylist FUNC_TRANSLATE:I = 0x1a

.field public static final greylist FUNC_TRUE:I = 0xc

.field public static final greylist FUNC_UNPARSED_ENTITY_URI:I = 0x24

.field private static final greylist NUM_ALLOWABLE_ADDINS:I = 0x1e

.field private static final greylist NUM_BUILT_IN_FUNCS:I = 0x25

.field private static greylist m_functionID:Ljava/util/HashMap;

.field private static greylist m_functions:[Ljava/lang/Class;


# instance fields
.field private greylist m_funcNextFreeIndex:I

.field private greylist m_functionID_customer:Ljava/util/HashMap;

.field private greylist m_functions_customer:[Ljava/lang/Class;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 17

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    const/16 v1, 0x25

    .line 177
    new-array v1, v1, [Ljava/lang/Class;

    sput-object v1, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    .line 178
    const-class v2, Lorg/apache/xpath/functions/FuncCurrent;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 179
    const-class v2, Lorg/apache/xpath/functions/FuncLast;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 180
    const-class v2, Lorg/apache/xpath/functions/FuncPosition;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 181
    const-class v2, Lorg/apache/xpath/functions/FuncCount;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 182
    const-class v2, Lorg/apache/xpath/functions/FuncId;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 183
    const-class v2, Lorg/apache/xalan/templates/FuncKey;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    .line 185
    const-class v2, Lorg/apache/xpath/functions/FuncLocalPart;

    const/4 v9, 0x7

    aput-object v2, v1, v9

    .line 187
    const-class v2, Lorg/apache/xpath/functions/FuncNamespace;

    const/16 v10, 0x8

    aput-object v2, v1, v10

    .line 189
    const-class v2, Lorg/apache/xpath/functions/FuncQname;

    const/16 v11, 0x9

    aput-object v2, v1, v11

    .line 190
    const-class v2, Lorg/apache/xpath/functions/FuncGenerateId;

    const/16 v12, 0xa

    aput-object v2, v1, v12

    .line 192
    const-class v2, Lorg/apache/xpath/functions/FuncNot;

    const/16 v13, 0xb

    aput-object v2, v1, v13

    .line 193
    const-class v2, Lorg/apache/xpath/functions/FuncTrue;

    const/16 v14, 0xc

    aput-object v2, v1, v14

    .line 194
    const-class v2, Lorg/apache/xpath/functions/FuncFalse;

    const/16 v15, 0xd

    aput-object v2, v1, v15

    .line 195
    const-class v2, Lorg/apache/xpath/functions/FuncBoolean;

    const/16 v15, 0xe

    aput-object v2, v1, v15

    .line 196
    const-class v2, Lorg/apache/xpath/functions/FuncLang;

    const/16 v15, 0x20

    aput-object v2, v1, v15

    .line 197
    const-class v2, Lorg/apache/xpath/functions/FuncNumber;

    const/16 v15, 0xf

    aput-object v2, v1, v15

    .line 198
    const-class v2, Lorg/apache/xpath/functions/FuncFloor;

    const/16 v15, 0x10

    aput-object v2, v1, v15

    .line 199
    const-class v2, Lorg/apache/xpath/functions/FuncCeiling;

    const/16 v15, 0x11

    aput-object v2, v1, v15

    .line 200
    const-class v2, Lorg/apache/xpath/functions/FuncRound;

    const/16 v15, 0x12

    aput-object v2, v1, v15

    .line 201
    const-class v2, Lorg/apache/xpath/functions/FuncSum;

    const/16 v15, 0x13

    aput-object v2, v1, v15

    .line 202
    const-class v2, Lorg/apache/xpath/functions/FuncString;

    const/16 v15, 0x14

    aput-object v2, v1, v15

    .line 203
    const-class v2, Lorg/apache/xpath/functions/FuncStartsWith;

    const/16 v15, 0x15

    aput-object v2, v1, v15

    const/16 v2, 0x16

    .line 205
    const-class v16, Lorg/apache/xpath/functions/FuncContains;

    aput-object v16, v1, v2

    const/16 v2, 0x17

    .line 206
    const-class v16, Lorg/apache/xpath/functions/FuncSubstringBefore;

    aput-object v16, v1, v2

    const/16 v2, 0x18

    .line 208
    const-class v16, Lorg/apache/xpath/functions/FuncSubstringAfter;

    aput-object v16, v1, v2

    const/16 v2, 0x19

    .line 210
    const-class v16, Lorg/apache/xpath/functions/FuncNormalizeSpace;

    aput-object v16, v1, v2

    const/16 v2, 0x1a

    .line 212
    const-class v16, Lorg/apache/xpath/functions/FuncTranslate;

    aput-object v16, v1, v2

    const/16 v2, 0x1b

    .line 214
    const-class v16, Lorg/apache/xpath/functions/FuncConcat;

    aput-object v16, v1, v2

    const/16 v2, 0x1f

    .line 215
    const-class v16, Lorg/apache/xpath/functions/FuncSystemProperty;

    aput-object v16, v1, v2

    const/16 v2, 0x21

    .line 217
    const-class v16, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    aput-object v16, v1, v2

    const/16 v2, 0x22

    .line 219
    const-class v16, Lorg/apache/xpath/functions/FuncExtElementAvailable;

    aput-object v16, v1, v2

    const/16 v2, 0x1d

    .line 221
    const-class v16, Lorg/apache/xpath/functions/FuncSubstring;

    aput-object v16, v1, v2

    const/16 v2, 0x1e

    .line 223
    const-class v16, Lorg/apache/xpath/functions/FuncStringLength;

    aput-object v16, v1, v2

    const/16 v2, 0x23

    .line 225
    const-class v16, Lorg/apache/xpath/functions/FuncDoclocation;

    aput-object v16, v1, v2

    const/16 v2, 0x24

    .line 227
    const-class v16, Lorg/apache/xpath/functions/FuncUnparsedEntityURI;

    aput-object v16, v1, v2

    .line 232
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "last"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "local-name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "namespace-uri"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v12}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "generate-id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v13}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "not"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v14}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "true"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "false"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "boolean"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "lang"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "floor"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "ceiling"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "round"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "sum"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "string"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v15}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "starts-with"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "contains"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "substring-before"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "substring-after"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "normalize-space"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "translate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "concat"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "system-property"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "function-available"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "element-available"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1d

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "substring"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "string-length"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "unparsed-entity-uri"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "document-location"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 2

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 152
    new-array v0, v0, [Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    const/16 v0, 0x25

    .line 173
    iput v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    return-void
.end method


# virtual methods
.method public greylist functionAvailable(Ljava/lang/String;)Z
    .registers 4

    .line 400
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 403
    :cond_a
    iget-object p0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_13

    return v1

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method greylist getFunction(I)Lorg/apache/xpath/functions/Function;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/16 v0, 0x25

    if-ge p1, v0, :cond_f

    .line 333
    :try_start_4
    sget-object p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/functions/Function;

    return-object p0

    .line 335
    :cond_f
    iget-object p0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    .line 336
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xpath/functions/Function;
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_1a} :catch_26
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    .line 340
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_26
    move-exception p0

    .line 338
    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method greylist getFunctionID(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 352
    iget-object p0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_e

    .line 353
    sget-object p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_e
    return-object p0
.end method

.method greylist getFunctionName(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x25

    if-ge p1, v0, :cond_d

    .line 312
    sget-object p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 313
    :cond_d
    iget-object p0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    sub-int/2addr p1, v0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist installFunction(Ljava/lang/String;Ljava/lang/Class;)I
    .registers 6

    .line 367
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/FunctionTable;->getFunctionID(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 371
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x25

    if-ge v0, v1, :cond_20

    .line 374
    iget v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    .line 375
    iget-object v1, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_20
    iget-object p0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    add-int/lit8 p1, v0, -0x25

    aput-object p2, p0, p1

    return v0

    .line 381
    :cond_27
    iget v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    .line 383
    iget-object v1, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    add-int/lit8 v2, v0, -0x25

    aput-object p2, v1, v2

    .line 385
    iget-object p0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method
