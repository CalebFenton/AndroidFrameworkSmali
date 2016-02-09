.class public Lorg/apache/xpath/compiler/FunctionTable;
.super Ljava/lang/Object;
.source "FunctionTable.java"


# static fields
.field public static final FUNC_BOOLEAN:I = 0xe

.field public static final FUNC_CEILING:I = 0x11

.field public static final FUNC_CONCAT:I = 0x1b

.field public static final FUNC_CONTAINS:I = 0x16

.field public static final FUNC_COUNT:I = 0x3

.field public static final FUNC_CURRENT:I = 0x0

.field public static final FUNC_DOCLOCATION:I = 0x23

.field public static final FUNC_EXT_ELEM_AVAILABLE:I = 0x22

.field public static final FUNC_EXT_FUNCTION_AVAILABLE:I = 0x21

.field public static final FUNC_FALSE:I = 0xd

.field public static final FUNC_FLOOR:I = 0x10

.field public static final FUNC_GENERATE_ID:I = 0xa

.field public static final FUNC_ID:I = 0x4

.field public static final FUNC_KEY:I = 0x5

.field public static final FUNC_LANG:I = 0x20

.field public static final FUNC_LAST:I = 0x1

.field public static final FUNC_LOCAL_PART:I = 0x7

.field public static final FUNC_NAMESPACE:I = 0x8

.field public static final FUNC_NORMALIZE_SPACE:I = 0x19

.field public static final FUNC_NOT:I = 0xb

.field public static final FUNC_NUMBER:I = 0xf

.field public static final FUNC_POSITION:I = 0x2

.field public static final FUNC_QNAME:I = 0x9

.field public static final FUNC_ROUND:I = 0x12

.field public static final FUNC_STARTS_WITH:I = 0x15

.field public static final FUNC_STRING:I = 0x14

.field public static final FUNC_STRING_LENGTH:I = 0x1e

.field public static final FUNC_SUBSTRING:I = 0x1d

.field public static final FUNC_SUBSTRING_AFTER:I = 0x18

.field public static final FUNC_SUBSTRING_BEFORE:I = 0x17

.field public static final FUNC_SUM:I = 0x13

.field public static final FUNC_SYSTEM_PROPERTY:I = 0x1f

.field public static final FUNC_TRANSLATE:I = 0x1a

.field public static final FUNC_TRUE:I = 0xc

.field public static final FUNC_UNPARSED_ENTITY_URI:I = 0x24

.field private static final NUM_ALLOWABLE_ADDINS:I = 0x1e

.field private static final NUM_BUILT_IN_FUNCS:I = 0x25

.field private static m_functionID:Ljava/util/HashMap;

.field private static m_functions:[Ljava/lang/Class;


# instance fields
.field private m_funcNextFreeIndex:I

.field private m_functionID_customer:Ljava/util/HashMap;

.field private m_functions_customer:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 147
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    sput-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@c
    .line 177
    const/16 v0, 0x25

    #@e
    new-array v0, v0, [Ljava/lang/Class;

    #@10
    sput-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@12
    .line 178
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@14
    const-class v1, Lorg/apache/xpath/functions/FuncCurrent;

    #@16
    aput-object v1, v0, v3

    #@18
    .line 179
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@1a
    const-class v1, Lorg/apache/xpath/functions/FuncLast;

    #@1c
    aput-object v1, v0, v4

    #@1e
    .line 180
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@20
    const-class v1, Lorg/apache/xpath/functions/FuncPosition;

    #@22
    aput-object v1, v0, v5

    #@24
    .line 181
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@26
    const-class v1, Lorg/apache/xpath/functions/FuncCount;

    #@28
    aput-object v1, v0, v6

    #@2a
    .line 182
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@2c
    const-class v1, Lorg/apache/xpath/functions/FuncId;

    #@2e
    aput-object v1, v0, v7

    #@30
    .line 183
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@32
    .line 184
    const-class v1, Lorg/apache/xalan/templates/FuncKey;

    #@34
    .line 183
    const/4 v2, 0x5

    #@35
    aput-object v1, v0, v2

    #@37
    .line 185
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@39
    .line 186
    const-class v1, Lorg/apache/xpath/functions/FuncLocalPart;

    #@3b
    .line 185
    const/4 v2, 0x7

    #@3c
    aput-object v1, v0, v2

    #@3e
    .line 187
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@40
    .line 188
    const-class v1, Lorg/apache/xpath/functions/FuncNamespace;

    #@42
    .line 187
    const/16 v2, 0x8

    #@44
    aput-object v1, v0, v2

    #@46
    .line 189
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@48
    const-class v1, Lorg/apache/xpath/functions/FuncQname;

    #@4a
    const/16 v2, 0x9

    #@4c
    aput-object v1, v0, v2

    #@4e
    .line 190
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@50
    .line 191
    const-class v1, Lorg/apache/xpath/functions/FuncGenerateId;

    #@52
    .line 190
    const/16 v2, 0xa

    #@54
    aput-object v1, v0, v2

    #@56
    .line 192
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@58
    const-class v1, Lorg/apache/xpath/functions/FuncNot;

    #@5a
    const/16 v2, 0xb

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 193
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@60
    const-class v1, Lorg/apache/xpath/functions/FuncTrue;

    #@62
    const/16 v2, 0xc

    #@64
    aput-object v1, v0, v2

    #@66
    .line 194
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@68
    const-class v1, Lorg/apache/xpath/functions/FuncFalse;

    #@6a
    const/16 v2, 0xd

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 195
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@70
    const-class v1, Lorg/apache/xpath/functions/FuncBoolean;

    #@72
    const/16 v2, 0xe

    #@74
    aput-object v1, v0, v2

    #@76
    .line 196
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@78
    const-class v1, Lorg/apache/xpath/functions/FuncLang;

    #@7a
    const/16 v2, 0x20

    #@7c
    aput-object v1, v0, v2

    #@7e
    .line 197
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@80
    const-class v1, Lorg/apache/xpath/functions/FuncNumber;

    #@82
    const/16 v2, 0xf

    #@84
    aput-object v1, v0, v2

    #@86
    .line 198
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@88
    const-class v1, Lorg/apache/xpath/functions/FuncFloor;

    #@8a
    const/16 v2, 0x10

    #@8c
    aput-object v1, v0, v2

    #@8e
    .line 199
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@90
    const-class v1, Lorg/apache/xpath/functions/FuncCeiling;

    #@92
    const/16 v2, 0x11

    #@94
    aput-object v1, v0, v2

    #@96
    .line 200
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@98
    const-class v1, Lorg/apache/xpath/functions/FuncRound;

    #@9a
    const/16 v2, 0x12

    #@9c
    aput-object v1, v0, v2

    #@9e
    .line 201
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@a0
    const-class v1, Lorg/apache/xpath/functions/FuncSum;

    #@a2
    const/16 v2, 0x13

    #@a4
    aput-object v1, v0, v2

    #@a6
    .line 202
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@a8
    const-class v1, Lorg/apache/xpath/functions/FuncString;

    #@aa
    const/16 v2, 0x14

    #@ac
    aput-object v1, v0, v2

    #@ae
    .line 203
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@b0
    .line 204
    const-class v1, Lorg/apache/xpath/functions/FuncStartsWith;

    #@b2
    .line 203
    const/16 v2, 0x15

    #@b4
    aput-object v1, v0, v2

    #@b6
    .line 205
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@b8
    const-class v1, Lorg/apache/xpath/functions/FuncContains;

    #@ba
    const/16 v2, 0x16

    #@bc
    aput-object v1, v0, v2

    #@be
    .line 206
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@c0
    .line 207
    const-class v1, Lorg/apache/xpath/functions/FuncSubstringBefore;

    #@c2
    .line 206
    const/16 v2, 0x17

    #@c4
    aput-object v1, v0, v2

    #@c6
    .line 208
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@c8
    .line 209
    const-class v1, Lorg/apache/xpath/functions/FuncSubstringAfter;

    #@ca
    .line 208
    const/16 v2, 0x18

    #@cc
    aput-object v1, v0, v2

    #@ce
    .line 210
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@d0
    .line 211
    const-class v1, Lorg/apache/xpath/functions/FuncNormalizeSpace;

    #@d2
    .line 210
    const/16 v2, 0x19

    #@d4
    aput-object v1, v0, v2

    #@d6
    .line 212
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@d8
    .line 213
    const-class v1, Lorg/apache/xpath/functions/FuncTranslate;

    #@da
    .line 212
    const/16 v2, 0x1a

    #@dc
    aput-object v1, v0, v2

    #@de
    .line 214
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@e0
    const-class v1, Lorg/apache/xpath/functions/FuncConcat;

    #@e2
    const/16 v2, 0x1b

    #@e4
    aput-object v1, v0, v2

    #@e6
    .line 215
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@e8
    .line 216
    const-class v1, Lorg/apache/xpath/functions/FuncSystemProperty;

    #@ea
    .line 215
    const/16 v2, 0x1f

    #@ec
    aput-object v1, v0, v2

    #@ee
    .line 217
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@f0
    .line 218
    const-class v1, Lorg/apache/xpath/functions/FuncExtFunctionAvailable;

    #@f2
    .line 217
    const/16 v2, 0x21

    #@f4
    aput-object v1, v0, v2

    #@f6
    .line 219
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@f8
    .line 220
    const-class v1, Lorg/apache/xpath/functions/FuncExtElementAvailable;

    #@fa
    .line 219
    const/16 v2, 0x22

    #@fc
    aput-object v1, v0, v2

    #@fe
    .line 221
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@100
    .line 222
    const-class v1, Lorg/apache/xpath/functions/FuncSubstring;

    #@102
    .line 221
    const/16 v2, 0x1d

    #@104
    aput-object v1, v0, v2

    #@106
    .line 223
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@108
    .line 224
    const-class v1, Lorg/apache/xpath/functions/FuncStringLength;

    #@10a
    .line 223
    const/16 v2, 0x1e

    #@10c
    aput-object v1, v0, v2

    #@10e
    .line 225
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@110
    .line 226
    const-class v1, Lorg/apache/xpath/functions/FuncDoclocation;

    #@112
    .line 225
    const/16 v2, 0x23

    #@114
    aput-object v1, v0, v2

    #@116
    .line 227
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@118
    .line 228
    const-class v1, Lorg/apache/xpath/functions/FuncUnparsedEntityURI;

    #@11a
    .line 227
    const/16 v2, 0x24

    #@11c
    aput-object v1, v0, v2

    #@11e
    .line 232
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@120
    const-string/jumbo v1, "current"

    #@123
    .line 233
    new-instance v2, Ljava/lang/Integer;

    #@125
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@128
    .line 232
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12b
    .line 234
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@12d
    const-string/jumbo v1, "last"

    #@130
    .line 235
    new-instance v2, Ljava/lang/Integer;

    #@132
    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    #@135
    .line 234
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@138
    .line 236
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@13a
    const-string/jumbo v1, "position"

    #@13d
    .line 237
    new-instance v2, Ljava/lang/Integer;

    #@13f
    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    #@142
    .line 236
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@145
    .line 238
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@147
    const-string/jumbo v1, "count"

    #@14a
    .line 239
    new-instance v2, Ljava/lang/Integer;

    #@14c
    invoke-direct {v2, v6}, Ljava/lang/Integer;-><init>(I)V

    #@14f
    .line 238
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@152
    .line 240
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@154
    const-string/jumbo v1, "id"

    #@157
    .line 241
    new-instance v2, Ljava/lang/Integer;

    #@159
    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    #@15c
    .line 240
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@15f
    .line 242
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@161
    const-string/jumbo v1, "key"

    #@164
    .line 243
    new-instance v2, Ljava/lang/Integer;

    #@166
    const/4 v3, 0x5

    #@167
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@16a
    .line 242
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16d
    .line 244
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@16f
    const-string/jumbo v1, "local-name"

    #@172
    .line 245
    new-instance v2, Ljava/lang/Integer;

    #@174
    const/4 v3, 0x7

    #@175
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@178
    .line 244
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17b
    .line 246
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@17d
    const-string/jumbo v1, "namespace-uri"

    #@180
    .line 247
    new-instance v2, Ljava/lang/Integer;

    #@182
    const/16 v3, 0x8

    #@184
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@187
    .line 246
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@18a
    .line 248
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@18c
    const-string/jumbo v1, "name"

    #@18f
    .line 249
    new-instance v2, Ljava/lang/Integer;

    #@191
    const/16 v3, 0x9

    #@193
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@196
    .line 248
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@199
    .line 250
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@19b
    const-string/jumbo v1, "generate-id"

    #@19e
    .line 251
    new-instance v2, Ljava/lang/Integer;

    #@1a0
    const/16 v3, 0xa

    #@1a2
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@1a5
    .line 250
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a8
    .line 252
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@1aa
    const-string/jumbo v1, "not"

    #@1ad
    .line 253
    new-instance v2, Ljava/lang/Integer;

    #@1af
    const/16 v3, 0xb

    #@1b1
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@1b4
    .line 252
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b7
    .line 254
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@1b9
    const-string/jumbo v1, "true"

    #@1bc
    .line 255
    new-instance v2, Ljava/lang/Integer;

    #@1be
    const/16 v3, 0xc

    #@1c0
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@1c3
    .line 254
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c6
    .line 256
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@1c8
    const-string/jumbo v1, "false"

    #@1cb
    .line 257
    new-instance v2, Ljava/lang/Integer;

    #@1cd
    const/16 v3, 0xd

    #@1cf
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@1d2
    .line 256
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d5
    .line 258
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@1d7
    const-string/jumbo v1, "boolean"

    #@1da
    .line 259
    new-instance v2, Ljava/lang/Integer;

    #@1dc
    const/16 v3, 0xe

    #@1de
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@1e1
    .line 258
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e4
    .line 260
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@1e6
    const-string/jumbo v1, "lang"

    #@1e9
    .line 261
    new-instance v2, Ljava/lang/Integer;

    #@1eb
    const/16 v3, 0x20

    #@1ed
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@1f0
    .line 260
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f3
    .line 262
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@1f5
    const-string/jumbo v1, "number"

    #@1f8
    .line 263
    new-instance v2, Ljava/lang/Integer;

    #@1fa
    const/16 v3, 0xf

    #@1fc
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@1ff
    .line 262
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@202
    .line 264
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@204
    const-string/jumbo v1, "floor"

    #@207
    .line 265
    new-instance v2, Ljava/lang/Integer;

    #@209
    const/16 v3, 0x10

    #@20b
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@20e
    .line 264
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@211
    .line 266
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@213
    const-string/jumbo v1, "ceiling"

    #@216
    .line 267
    new-instance v2, Ljava/lang/Integer;

    #@218
    const/16 v3, 0x11

    #@21a
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@21d
    .line 266
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@220
    .line 268
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@222
    const-string/jumbo v1, "round"

    #@225
    .line 269
    new-instance v2, Ljava/lang/Integer;

    #@227
    const/16 v3, 0x12

    #@229
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@22c
    .line 268
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22f
    .line 270
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@231
    const-string/jumbo v1, "sum"

    #@234
    .line 271
    new-instance v2, Ljava/lang/Integer;

    #@236
    const/16 v3, 0x13

    #@238
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@23b
    .line 270
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@23e
    .line 272
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@240
    const-string/jumbo v1, "string"

    #@243
    .line 273
    new-instance v2, Ljava/lang/Integer;

    #@245
    const/16 v3, 0x14

    #@247
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@24a
    .line 272
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24d
    .line 274
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@24f
    const-string/jumbo v1, "starts-with"

    #@252
    .line 275
    new-instance v2, Ljava/lang/Integer;

    #@254
    const/16 v3, 0x15

    #@256
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@259
    .line 274
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25c
    .line 276
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@25e
    const-string/jumbo v1, "contains"

    #@261
    .line 277
    new-instance v2, Ljava/lang/Integer;

    #@263
    const/16 v3, 0x16

    #@265
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@268
    .line 276
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26b
    .line 278
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@26d
    const-string/jumbo v1, "substring-before"

    #@270
    .line 279
    new-instance v2, Ljava/lang/Integer;

    #@272
    const/16 v3, 0x17

    #@274
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@277
    .line 278
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27a
    .line 280
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@27c
    const-string/jumbo v1, "substring-after"

    #@27f
    .line 281
    new-instance v2, Ljava/lang/Integer;

    #@281
    const/16 v3, 0x18

    #@283
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@286
    .line 280
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@289
    .line 282
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@28b
    const-string/jumbo v1, "normalize-space"

    #@28e
    .line 283
    new-instance v2, Ljava/lang/Integer;

    #@290
    const/16 v3, 0x19

    #@292
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@295
    .line 282
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@298
    .line 284
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@29a
    const-string/jumbo v1, "translate"

    #@29d
    .line 285
    new-instance v2, Ljava/lang/Integer;

    #@29f
    const/16 v3, 0x1a

    #@2a1
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@2a4
    .line 284
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a7
    .line 286
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@2a9
    const-string/jumbo v1, "concat"

    #@2ac
    .line 287
    new-instance v2, Ljava/lang/Integer;

    #@2ae
    const/16 v3, 0x1b

    #@2b0
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@2b3
    .line 286
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b6
    .line 288
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@2b8
    const-string/jumbo v1, "system-property"

    #@2bb
    .line 289
    new-instance v2, Ljava/lang/Integer;

    #@2bd
    const/16 v3, 0x1f

    #@2bf
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@2c2
    .line 288
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c5
    .line 290
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@2c7
    const-string/jumbo v1, "function-available"

    #@2ca
    .line 291
    new-instance v2, Ljava/lang/Integer;

    #@2cc
    const/16 v3, 0x21

    #@2ce
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@2d1
    .line 290
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d4
    .line 292
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@2d6
    const-string/jumbo v1, "element-available"

    #@2d9
    .line 293
    new-instance v2, Ljava/lang/Integer;

    #@2db
    const/16 v3, 0x22

    #@2dd
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@2e0
    .line 292
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e3
    .line 294
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@2e5
    const-string/jumbo v1, "substring"

    #@2e8
    .line 295
    new-instance v2, Ljava/lang/Integer;

    #@2ea
    const/16 v3, 0x1d

    #@2ec
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@2ef
    .line 294
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f2
    .line 296
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@2f4
    const-string/jumbo v1, "string-length"

    #@2f7
    .line 297
    new-instance v2, Ljava/lang/Integer;

    #@2f9
    const/16 v3, 0x1e

    #@2fb
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@2fe
    .line 296
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@301
    .line 298
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@303
    const-string/jumbo v1, "unparsed-entity-uri"

    #@306
    .line 299
    new-instance v2, Ljava/lang/Integer;

    #@308
    const/16 v3, 0x24

    #@30a
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@30d
    .line 298
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@310
    .line 300
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@312
    const-string/jumbo v1, "document-location"

    #@315
    .line 301
    new-instance v2, Ljava/lang/Integer;

    #@317
    const/16 v3, 0x23

    #@319
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@31c
    .line 300
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31f
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 152
    const/16 v0, 0x1e

    #@5
    new-array v0, v0, [Ljava/lang/Class;

    #@7
    iput-object v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    #@9
    .line 157
    new-instance v0, Ljava/util/HashMap;

    #@b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@e
    iput-object v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    #@10
    .line 173
    const/16 v0, 0x25

    #@12
    iput v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    #@14
    .line 304
    return-void
.end method


# virtual methods
.method public functionAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "methName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 400
    sget-object v2, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 401
    .local v0, "tblEntry":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@9
    return v1

    #@a
    .line 403
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    #@c
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .line 404
    if-eqz v0, :cond_1

    #@12
    :goto_0
    return v1

    #@13
    :cond_1
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method

.method getFunction(I)Lorg/apache/xpath/functions/Function;
    .locals 4
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 332
    const/16 v2, 0x25

    #@2
    if-ge p1, v2, :cond_0

    #@4
    .line 333
    :try_start_0
    sget-object v2, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@6
    aget-object v2, v2, p1

    #@8
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Lorg/apache/xpath/functions/Function;

    #@e
    return-object v2

    #@f
    .line 335
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    #@11
    .line 336
    add-int/lit8 v3, p1, -0x25

    #@13
    .line 335
    aget-object v2, v2, v3

    #@15
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Lorg/apache/xpath/functions/Function;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    return-object v2

    #@1c
    .line 339
    :catch_0
    move-exception v1

    #@1d
    .line 340
    .local v1, "ex":Ljava/lang/InstantiationException;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@1f
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 337
    .end local v1    # "ex":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    #@28
    .line 338
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    #@2a
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2
.end method

.method getFunctionID(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 352
    iget-object v1, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 353
    .local v0, "id":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@8
    sget-object v1, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID:Ljava/util/HashMap;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 354
    :cond_0
    return-object v0
.end method

.method getFunctionName(I)Ljava/lang/String;
    .locals 2
    .param p1, "funcID"    # I

    #@0
    .prologue
    .line 312
    const/16 v0, 0x25

    #@2
    if-ge p1, v0, :cond_0

    #@4
    sget-object v0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions:[Ljava/lang/Class;

    #@6
    aget-object v0, v0, p1

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 313
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    #@f
    add-int/lit8 v1, p1, -0x25

    #@11
    aget-object v0, v0, v1

    #@13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public installFunction(Ljava/lang/String;Ljava/lang/Class;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 367
    invoke-virtual {p0, p1}, Lorg/apache/xpath/compiler/FunctionTable;->getFunctionID(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    .line 369
    .local v1, "funcIndexObj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    #@6
    .line 371
    check-cast v1, Ljava/lang/Integer;

    #@8
    .end local v1    # "funcIndexObj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result v0

    #@c
    .line 373
    .local v0, "funcIndex":I
    const/16 v2, 0x25

    #@e
    if-ge v0, v2, :cond_0

    #@10
    .line 374
    iget v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    #@12
    .end local v0    # "funcIndex":I
    add-int/lit8 v2, v0, 0x1

    #@14
    iput v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    #@16
    .line 375
    .restart local v0    # "funcIndex":I
    iget-object v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    #@18
    new-instance v3, Ljava/lang/Integer;

    #@1a
    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    #@1d
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 377
    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    #@22
    add-int/lit8 v3, v0, -0x25

    #@24
    aput-object p2, v2, v3

    #@26
    .line 388
    :goto_0
    return v0

    #@27
    .line 381
    .end local v0    # "funcIndex":I
    .restart local v1    # "funcIndexObj":Ljava/lang/Object;
    :cond_1
    iget v0, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    #@29
    add-int/lit8 v2, v0, 0x1

    #@2b
    iput v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_funcNextFreeIndex:I

    #@2d
    .line 383
    .restart local v0    # "funcIndex":I
    iget-object v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functions_customer:[Ljava/lang/Class;

    #@2f
    add-int/lit8 v3, v0, -0x25

    #@31
    aput-object p2, v2, v3

    #@33
    .line 385
    iget-object v2, p0, Lorg/apache/xpath/compiler/FunctionTable;->m_functionID_customer:Ljava/util/HashMap;

    #@35
    .line 386
    new-instance v3, Ljava/lang/Integer;

    #@37
    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    #@3a
    .line 385
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3d
    goto :goto_0
.end method
