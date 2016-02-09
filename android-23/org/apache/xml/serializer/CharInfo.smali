.class final Lorg/apache/xml/serializer/CharInfo;
.super Ljava/lang/Object;
.source "CharInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/serializer/CharInfo$CharKey;
    }
.end annotation


# static fields
.field static final ASCII_MAX:I = 0x80

.field public static final HTML_ENTITIES_RESOURCE:Ljava/lang/String;

.field private static final LOW_ORDER_BITMASK:I = 0x1f

.field private static final SHIFT_PER_WORD:I = 0x5

.field static final S_CARRIAGERETURN:C = '\r'

.field static final S_GT:C = '>'

.field static final S_HORIZONAL_TAB:C = '\t'

.field static final S_LINEFEED:C = '\n'

.field static final S_LINE_SEPARATOR:C = '\u2028'

.field static final S_LT:C = '<'

.field static final S_NEL:C = '\u0085'

.field static final S_QUOTE:C = '\"'

.field static final S_SPACE:C = ' '

.field public static final XML_ENTITIES_RESOURCE:Ljava/lang/String;

.field private static m_getCharInfoCache:Ljava/util/Hashtable;


# instance fields
.field private final array_of_bits:[I

.field private firstWordNotUsed:I

.field private final m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

.field private m_charToString:Ljava/util/HashMap;

.field onlyQuotAmpLtGt:Z

.field private final shouldMapAttrChar_ASCII:[Z

.field private final shouldMapTextChar_ASCII:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, ".HTMLEntities"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 62
    sput-object v0, Lorg/apache/xml/serializer/CharInfo;->HTML_ENTITIES_RESOURCE:Ljava/lang/String;

    #@18
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, ".XMLEntities"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    .line 69
    sput-object v0, Lorg/apache/xml/serializer/CharInfo;->XML_ENTITIES_RESOURCE:Ljava/lang/String;

    #@30
    .line 565
    new-instance v0, Ljava/util/Hashtable;

    #@32
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@35
    sput-object v0, Lorg/apache/xml/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    #@37
    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x80

    #@2
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 158
    const v0, 0xffff

    #@8
    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/CharInfo;->createEmptySetOfIntegers(I)[I

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    #@e
    .line 159
    const/4 v0, 0x0

    #@f
    iput v0, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    #@11
    .line 160
    new-array v0, v1, [Z

    #@13
    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    #@15
    .line 161
    new-array v0, v1, [Z

    #@17
    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    #@19
    .line 162
    new-instance v0, Lorg/apache/xml/serializer/CharInfo$CharKey;

    #@1b
    invoke-direct {v0}, Lorg/apache/xml/serializer/CharInfo$CharKey;-><init>()V

    #@1e
    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

    #@20
    .line 167
    const/4 v0, 0x1

    #@21
    iput-boolean v0, p0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    #@23
    .line 170
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 24
    .param p1, "entitiesResource"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "internal"    # Z

    #@0
    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Lorg/apache/xml/serializer/CharInfo;-><init>()V

    #@3
    .line 177
    new-instance v18, Ljava/util/HashMap;

    #@5
    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    #@8
    move-object/from16 v0, v18

    #@a
    move-object/from16 v1, p0

    #@c
    iput-object v0, v1, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    #@e
    .line 179
    const/4 v6, 0x0

    #@f
    .line 180
    .local v6, "entities":Ljava/util/ResourceBundle;
    const/4 v14, 0x1

    #@10
    .line 190
    .local v14, "noExtraEntities":Z
    if-eqz p3, :cond_0

    #@12
    .line 194
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/util/PropertyResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v6

    #@16
    .line 198
    .end local v6    # "entities":Ljava/util/ResourceBundle;
    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    #@18
    .line 199
    invoke-virtual {v6}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@1b
    move-result-object v11

    #@1c
    .line 200
    .local v11, "keys":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1f
    move-result v18

    #@20
    if-eqz v18, :cond_d

    #@22
    .line 201
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@25
    move-result-object v13

    #@26
    check-cast v13, Ljava/lang/String;

    #@28
    .line 202
    .local v13, "name":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v17

    #@2c
    .line 203
    .local v17, "value":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2f
    move-result v3

    #@30
    .line 204
    .local v3, "code":I
    int-to-char v0, v3

    #@31
    move/from16 v18, v0

    #@33
    move-object/from16 v0, p0

    #@35
    move/from16 v1, v18

    #@37
    invoke-direct {v0, v13, v1}, Lorg/apache/xml/serializer/CharInfo;->defineEntity(Ljava/lang/String;C)Z

    #@3a
    move-result v8

    #@3b
    .line 205
    .local v8, "extra":Z
    if-eqz v8, :cond_1

    #@3d
    .line 206
    const/4 v14, 0x0

    #@3e
    goto :goto_1

    #@3f
    .line 195
    .end local v3    # "code":I
    .end local v8    # "extra":Z
    .end local v11    # "keys":Ljava/util/Enumeration;
    .end local v13    # "name":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    .restart local v6    # "entities":Ljava/util/ResourceBundle;
    :catch_0
    move-exception v5

    #@40
    .local v5, "e":Ljava/lang/Exception;
    goto :goto_0

    #@41
    .line 209
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "entities":Ljava/util/ResourceBundle;
    :cond_2
    const/4 v10, 0x0

    #@42
    .line 214
    .local v10, "is":Ljava/io/InputStream;
    if-eqz p3, :cond_5

    #@44
    .line 215
    :try_start_1
    const-class v18, Lorg/apache/xml/serializer/CharInfo;

    #@46
    move-object/from16 v0, v18

    #@48
    move-object/from16 v1, p1

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@4d
    move-result-object v10

    #@4e
    .line 232
    .local v10, "is":Ljava/io/InputStream;
    :cond_3
    :goto_2
    if-nez v10, :cond_7

    #@50
    .line 233
    new-instance v18, Ljava/lang/RuntimeException;

    #@52
    .line 234
    sget-object v19, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@54
    .line 235
    const-string/jumbo v20, "ER_RESOURCE_COULD_NOT_FIND"

    #@57
    .line 236
    const/16 v21, 0x2

    #@59
    move/from16 v0, v21

    #@5b
    new-array v0, v0, [Ljava/lang/Object;

    #@5d
    move-object/from16 v21, v0

    #@5f
    const/16 v22, 0x0

    #@61
    aput-object p1, v21, v22

    #@63
    const/16 v22, 0x1

    #@65
    aput-object p1, v21, v22

    #@67
    .line 234
    invoke-virtual/range {v19 .. v21}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6a
    move-result-object v19

    #@6b
    .line 233
    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    .line 301
    .end local v10    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    #@70
    .line 302
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v18, Ljava/lang/RuntimeException;

    #@72
    .line 303
    sget-object v19, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@74
    .line 304
    const-string/jumbo v20, "ER_RESOURCE_COULD_NOT_LOAD"

    #@77
    .line 305
    const/16 v21, 0x4

    #@79
    move/from16 v0, v21

    #@7b
    new-array v0, v0, [Ljava/lang/Object;

    #@7d
    move-object/from16 v21, v0

    #@7f
    const/16 v22, 0x0

    #@81
    aput-object p1, v21, v22

    #@83
    .line 306
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@86
    move-result-object v22

    #@87
    const/16 v23, 0x1

    #@89
    aput-object v22, v21, v23

    #@8b
    .line 307
    const/16 v22, 0x2

    #@8d
    aput-object p1, v21, v22

    #@8f
    .line 308
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@92
    move-result-object v22

    #@93
    const/16 v23, 0x3

    #@95
    aput-object v22, v21, v23

    #@97
    .line 303
    invoke-virtual/range {v19 .. v21}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@9a
    move-result-object v19

    #@9b
    .line 302
    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@9e
    throw v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9f
    .line 309
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    #@a0
    .line 310
    if-eqz v10, :cond_4

    #@a2
    .line 312
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    #@a5
    .line 309
    :cond_4
    :goto_3
    throw v18

    #@a6
    .line 217
    .local v10, "is":Ljava/io/InputStream;
    :cond_5
    :try_start_4
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    #@a9
    move-result-object v2

    #@aa
    .line 218
    .local v2, "cl":Ljava/lang/ClassLoader;
    if-nez v2, :cond_6

    #@ac
    .line 219
    invoke-static/range {p1 .. p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@af
    move-result-object v10

    #@b0
    .line 224
    .local v10, "is":Ljava/io/InputStream;
    :goto_4
    if-nez v10, :cond_3

    #@b2
    .line 226
    :try_start_5
    new-instance v16, Ljava/net/URL;

    #@b4
    move-object/from16 v0, v16

    #@b6
    move-object/from16 v1, p1

    #@b8
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@bb
    .line 227
    .local v16, "url":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@be
    move-result-object v10

    #@bf
    goto :goto_2

    #@c0
    .line 221
    .end local v16    # "url":Ljava/net/URL;
    .local v10, "is":Ljava/io/InputStream;
    :cond_6
    :try_start_6
    move-object/from16 v0, p1

    #@c2
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@c5
    move-result-object v10

    #@c6
    .local v10, "is":Ljava/io/InputStream;
    goto :goto_4

    #@c7
    .line 260
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    :cond_7
    :try_start_7
    new-instance v15, Ljava/io/BufferedReader;

    #@c9
    new-instance v18, Ljava/io/InputStreamReader;

    #@cb
    const-string/jumbo v19, "UTF-8"

    #@ce
    move-object/from16 v0, v18

    #@d0
    move-object/from16 v1, v19

    #@d2
    invoke-direct {v0, v10, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@d5
    move-object/from16 v0, v18

    #@d7
    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@da
    .line 265
    .local v15, "reader":Ljava/io/BufferedReader;
    :goto_5
    :try_start_8
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@dd
    move-result-object v12

    #@de
    .line 267
    .local v12, "line":Ljava/lang/String;
    :goto_6
    if-eqz v12, :cond_c

    #@e0
    .line 268
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@e3
    move-result v18

    #@e4
    if-eqz v18, :cond_8

    #@e6
    const/16 v18, 0x0

    #@e8
    move/from16 v0, v18

    #@ea
    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    #@ed
    move-result v18

    #@ee
    const/16 v19, 0x23

    #@f0
    move/from16 v0, v18

    #@f2
    move/from16 v1, v19

    #@f4
    if-ne v0, v1, :cond_9

    #@f6
    .line 269
    :cond_8
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@f9
    move-result-object v12

    #@fa
    goto :goto_6

    #@fb
    .line 261
    .end local v12    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    #@fc
    .line 262
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v15, Ljava/io/BufferedReader;

    #@fe
    new-instance v18, Ljava/io/InputStreamReader;

    #@100
    move-object/from16 v0, v18

    #@102
    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@105
    move-object/from16 v0, v18

    #@107
    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    #@10a
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    #@10b
    .line 274
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v12    # "line":Ljava/lang/String;
    :cond_9
    const/16 v18, 0x20

    #@10d
    move/from16 v0, v18

    #@10f
    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    #@112
    move-result v9

    #@113
    .line 276
    .local v9, "index":I
    const/16 v18, 0x1

    #@115
    move/from16 v0, v18

    #@117
    if-le v9, v0, :cond_b

    #@119
    .line 277
    const/16 v18, 0x0

    #@11b
    move/from16 v0, v18

    #@11d
    invoke-virtual {v12, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@120
    move-result-object v13

    #@121
    .line 279
    .restart local v13    # "name":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    #@123
    .line 281
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    #@126
    move-result v18

    #@127
    move/from16 v0, v18

    #@129
    if-ge v9, v0, :cond_b

    #@12b
    .line 282
    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@12e
    move-result-object v17

    #@12f
    .line 283
    .restart local v17    # "value":Ljava/lang/String;
    const/16 v18, 0x20

    #@131
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(I)I

    #@134
    move-result v9

    #@135
    .line 285
    if-lez v9, :cond_a

    #@137
    .line 286
    const/16 v18, 0x0

    #@139
    move-object/from16 v0, v17

    #@13b
    move/from16 v1, v18

    #@13d
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@140
    move-result-object v17

    #@141
    .line 289
    :cond_a
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@144
    move-result v3

    #@145
    .line 291
    .restart local v3    # "code":I
    int-to-char v0, v3

    #@146
    move/from16 v18, v0

    #@148
    move-object/from16 v0, p0

    #@14a
    move/from16 v1, v18

    #@14c
    invoke-direct {v0, v13, v1}, Lorg/apache/xml/serializer/CharInfo;->defineEntity(Ljava/lang/String;C)Z

    #@14f
    move-result v8

    #@150
    .line 292
    .restart local v8    # "extra":Z
    if-eqz v8, :cond_b

    #@152
    .line 293
    const/4 v14, 0x0

    #@153
    .line 297
    .end local v3    # "code":I
    .end local v8    # "extra":Z
    .end local v13    # "name":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :cond_b
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@156
    move-result-object v12

    #@157
    goto :goto_6

    #@158
    .line 300
    .end local v9    # "index":I
    :cond_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@15b
    .line 310
    if-eqz v10, :cond_d

    #@15d
    .line 312
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    #@160
    .line 318
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    :cond_d
    :goto_7
    move-object/from16 v0, p0

    #@162
    iput-boolean v14, v0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    #@164
    .line 329
    const-string/jumbo v18, "xml"

    #@167
    move-object/from16 v0, v18

    #@169
    move-object/from16 v1, p2

    #@16b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16e
    move-result v18

    #@16f
    if-eqz v18, :cond_e

    #@171
    .line 332
    move-object/from16 v0, p0

    #@173
    iget-object v0, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    #@175
    move-object/from16 v18, v0

    #@177
    const/16 v19, 0x22

    #@179
    const/16 v20, 0x0

    #@17b
    aput-boolean v20, v18, v19

    #@17d
    .line 335
    :cond_e
    const-string/jumbo v18, "html"

    #@180
    move-object/from16 v0, v18

    #@182
    move-object/from16 v1, p2

    #@184
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@187
    move-result v18

    #@188
    if-eqz v18, :cond_f

    #@18a
    .line 339
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    #@18e
    move-object/from16 v18, v0

    #@190
    const/16 v19, 0x3c

    #@192
    const/16 v20, 0x0

    #@194
    aput-boolean v20, v18, v19

    #@196
    .line 342
    move-object/from16 v0, p0

    #@198
    iget-object v0, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    #@19a
    move-object/from16 v18, v0

    #@19c
    const/16 v19, 0x22

    #@19e
    const/16 v20, 0x0

    #@1a0
    aput-boolean v20, v18, v19

    #@1a2
    .line 173
    :cond_f
    return-void

    #@1a3
    .line 313
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v7

    #@1a4
    .local v7, "except":Ljava/lang/Exception;
    goto :goto_7

    #@1a5
    .end local v7    # "except":Ljava/lang/Exception;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v12    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v7

    #@1a6
    .restart local v7    # "except":Ljava/lang/Exception;
    goto/16 :goto_3

    #@1a8
    .line 228
    .end local v7    # "except":Ljava/lang/Exception;
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v5

    #@1a9
    .restart local v5    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/xml/serializer/CharInfo;)V
    .locals 0
    .param p1, "entitiesResource"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "internal"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/CharInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@3
    return-void
.end method

.method private static arrayIndex(I)I
    .locals 1
    .param p0, "i"    # I

    #@0
    .prologue
    .line 574
    shr-int/lit8 v0, p0, 0x5

    #@2
    return v0
.end method

.method private static bit(I)I
    .locals 3
    .param p0, "i"    # I

    #@0
    .prologue
    .line 583
    and-int/lit8 v1, p0, 0x1f

    #@2
    const/4 v2, 0x1

    #@3
    shl-int v0, v2, v1

    #@5
    .line 584
    .local v0, "ret":I
    return v0
.end method

.method private createEmptySetOfIntegers(I)[I
    .locals 2
    .param p1, "max"    # I

    #@0
    .prologue
    .line 592
    const/4 v1, 0x0

    #@1
    iput v1, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    #@3
    .line 594
    add-int/lit8 v1, p1, -0x1

    #@5
    invoke-static {v1}, Lorg/apache/xml/serializer/CharInfo;->arrayIndex(I)I

    #@8
    move-result v1

    #@9
    add-int/lit8 v1, v1, 0x1

    #@b
    new-array v0, v1, [I

    #@d
    .line 595
    .local v0, "arr":[I
    return-object v0
.end method

.method private defineEntity(Ljava/lang/String;C)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    #@0
    .prologue
    .line 366
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    const-string/jumbo v3, "&"

    #@5
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@8
    .line 367
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 368
    const/16 v3, 0x3b

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@10
    .line 369
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 371
    .local v0, "entityString":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/serializer/CharInfo;->defineChar2StringMapping(Ljava/lang/String;C)Z

    #@17
    move-result v1

    #@18
    .line 372
    .local v1, "extra":Z
    return v1
.end method

.method private extraEntity(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "outputString"    # Ljava/lang/String;
    .param p2, "charToMap"    # I

    #@0
    .prologue
    .line 659
    const/4 v0, 0x0

    #@1
    .line 660
    .local v0, "extra":Z
    const/16 v1, 0x80

    #@3
    if-ge p2, v1, :cond_0

    #@5
    .line 662
    sparse-switch p2, :sswitch_data_0

    #@8
    .line 681
    const/4 v0, 0x1

    #@9
    .line 684
    :cond_0
    :goto_0
    return v0

    #@a
    .line 665
    :sswitch_0
    const-string/jumbo v1, "&quot;"

    #@d
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 666
    const/4 v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 669
    :sswitch_1
    const-string/jumbo v1, "&amp;"

    #@18
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 670
    const/4 v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 673
    :sswitch_2
    const-string/jumbo v1, "&lt;"

    #@23
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_0

    #@29
    .line 674
    const/4 v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 677
    :sswitch_3
    const-string/jumbo v1, "&gt;"

    #@2e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v1

    #@32
    if-nez v1, :cond_0

    #@34
    .line 678
    const/4 v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 662
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch
.end method

.method private final get(I)Z
    .locals 5
    .param p1, "i"    # I

    #@0
    .prologue
    .line 631
    const/4 v0, 0x0

    #@1
    .line 632
    .local v0, "in_the_set":Z
    shr-int/lit8 v1, p1, 0x5

    #@3
    .line 635
    .local v1, "j":I
    iget v2, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 636
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    #@9
    aget v2, v2, v1

    #@b
    .line 637
    and-int/lit8 v3, p1, 0x1f

    #@d
    const/4 v4, 0x1

    #@e
    shl-int v3, v4, v3

    #@10
    .line 636
    and-int/2addr v2, v3

    #@11
    if-eqz v2, :cond_1

    #@13
    const/4 v0, 0x1

    #@14
    .line 639
    :cond_0
    :goto_0
    return v0

    #@15
    .line 636
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method static getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;
    .locals 6
    .param p0, "entitiesFileName"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 491
    sget-object v4, Lorg/apache/xml/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v4, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Lorg/apache/xml/serializer/CharInfo;

    #@9
    .line 492
    .local v1, "charInfo":Lorg/apache/xml/serializer/CharInfo;
    if-eqz v1, :cond_0

    #@b
    .line 493
    invoke-static {v1}, Lorg/apache/xml/serializer/CharInfo;->mutableCopyOf(Lorg/apache/xml/serializer/CharInfo;)Lorg/apache/xml/serializer/CharInfo;

    #@e
    move-result-object v4

    #@f
    return-object v4

    #@10
    .line 499
    :cond_0
    const/4 v4, 0x1

    #@11
    .line 498
    :try_start_0
    invoke-static {p0, p1, v4}, Lorg/apache/xml/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;

    #@14
    move-result-object v1

    #@15
    .line 502
    sget-object v4, Lorg/apache/xml/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    #@17
    invoke-virtual {v4, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 503
    invoke-static {v1}, Lorg/apache/xml/serializer/CharInfo;->mutableCopyOf(Lorg/apache/xml/serializer/CharInfo;)Lorg/apache/xml/serializer/CharInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v4

    #@1e
    return-object v4

    #@1f
    .line 504
    :catch_0
    move-exception v2

    #@20
    .line 509
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    #@21
    .line 508
    :try_start_1
    invoke-static {p0, p1, v4}, Lorg/apache/xml/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@24
    move-result-object v4

    #@25
    return-object v4

    #@26
    .line 510
    :catch_1
    move-exception v2

    #@27
    .line 514
    const/16 v4, 0x3a

    #@29
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    #@2c
    move-result v4

    #@2d
    if-gez v4, :cond_1

    #@2f
    .line 516
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 526
    .local v0, "absoluteEntitiesFileName":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v5}, Lorg/apache/xml/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;

    #@36
    move-result-object v4

    #@37
    return-object v4

    #@38
    .line 520
    .end local v0    # "absoluteEntitiesFileName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    #@39
    :try_start_2
    invoke-static {p0, v4}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2

    #@3c
    move-result-object v0

    #@3d
    .restart local v0    # "absoluteEntitiesFileName":Ljava/lang/String;
    goto :goto_0

    #@3e
    .line 521
    .end local v0    # "absoluteEntitiesFileName":Ljava/lang/String;
    :catch_2
    move-exception v3

    #@3f
    .line 522
    .local v3, "te":Ljavax/xml/transform/TransformerException;
    new-instance v4, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    #@41
    invoke-direct {v4, v3}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@44
    throw v4
.end method

.method private static getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;
    .locals 1
    .param p0, "entitiesFileName"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "internal"    # Z

    #@0
    .prologue
    .line 463
    new-instance v0, Lorg/apache/xml/serializer/CharInfo$1;

    #@2
    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xml/serializer/CharInfo$1;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@5
    .line 462
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lorg/apache/xml/serializer/CharInfo;

    #@b
    return-object v0
.end method

.method private static mutableCopyOf(Lorg/apache/xml/serializer/CharInfo;)Lorg/apache/xml/serializer/CharInfo;
    .locals 5
    .param p0, "charInfo"    # Lorg/apache/xml/serializer/CharInfo;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 536
    new-instance v0, Lorg/apache/xml/serializer/CharInfo;

    #@3
    invoke-direct {v0}, Lorg/apache/xml/serializer/CharInfo;-><init>()V

    #@6
    .line 538
    .local v0, "copy":Lorg/apache/xml/serializer/CharInfo;
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    #@8
    array-length v1, v2

    #@9
    .line 539
    .local v1, "max":I
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    #@b
    iget-object v3, v0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    #@d
    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy([II[III)V

    #@10
    .line 541
    iget v2, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    #@12
    iput v2, v0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    #@14
    .line 543
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    #@16
    array-length v1, v2

    #@17
    .line 544
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    #@19
    iget-object v3, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    #@1b
    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@1e
    .line 546
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    #@20
    array-length v1, v2

    #@21
    .line 547
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    #@23
    iget-object v3, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    #@25
    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@28
    .line 551
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    check-cast v2, Ljava/util/HashMap;

    #@30
    iput-object v2, v0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    #@32
    .line 553
    iget-boolean v2, p0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    #@34
    iput-boolean v2, v0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    #@36
    .line 555
    return-object v0
.end method

.method private final set(I)V
    .locals 6
    .param p1, "i"    # I

    #@0
    .prologue
    .line 606
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->setASCIItextDirty(I)V

    #@3
    .line 607
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->setASCIIattrDirty(I)V

    #@6
    .line 609
    shr-int/lit8 v0, p1, 0x5

    #@8
    .line 610
    .local v0, "j":I
    add-int/lit8 v1, v0, 0x1

    #@a
    .line 612
    .local v1, "k":I
    iget v2, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    #@c
    if-ge v2, v1, :cond_0

    #@e
    .line 613
    iput v1, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    #@10
    .line 615
    :cond_0
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    #@12
    aget v3, v2, v0

    #@14
    and-int/lit8 v4, p1, 0x1f

    #@16
    const/4 v5, 0x1

    #@17
    shl-int v4, v5, v4

    #@19
    or-int/2addr v3, v4

    #@1a
    aput v3, v2, v0

    #@1c
    .line 605
    return-void
.end method

.method private setASCIIattrDirty(I)V
    .locals 2
    .param p1, "j"    # I

    #@0
    .prologue
    .line 709
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x80

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 711
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    #@8
    const/4 v1, 0x1

    #@9
    aput-boolean v1, v0, p1

    #@b
    .line 707
    :cond_0
    return-void
.end method

.method private setASCIItextDirty(I)V
    .locals 2
    .param p1, "j"    # I

    #@0
    .prologue
    .line 695
    if-ltz p1, :cond_0

    #@2
    const/16 v0, 0x80

    #@4
    if-ge p1, v0, :cond_0

    #@6
    .line 697
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    #@8
    const/4 v1, 0x1

    #@9
    aput-boolean v1, v0, p1

    #@b
    .line 693
    :cond_0
    return-void
.end method


# virtual methods
.method defineChar2StringMapping(Ljava/lang/String;C)Z
    .locals 3
    .param p1, "outputString"    # Ljava/lang/String;
    .param p2, "inputChar"    # C

    #@0
    .prologue
    .line 731
    new-instance v0, Lorg/apache/xml/serializer/CharInfo$CharKey;

    #@2
    invoke-direct {v0, p2}, Lorg/apache/xml/serializer/CharInfo$CharKey;-><init>(C)V

    #@5
    .line 732
    .local v0, "character":Lorg/apache/xml/serializer/CharInfo$CharKey;
    iget-object v2, p0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    #@7
    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 733
    invoke-direct {p0, p2}, Lorg/apache/xml/serializer/CharInfo;->set(I)V

    #@d
    .line 735
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/CharInfo;->extraEntity(Ljava/lang/String;I)Z

    #@10
    move-result v1

    #@11
    .line 736
    .local v1, "extraMapping":Z
    return v1
.end method

.method getOutputStringForChar(C)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # C

    #@0
    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

    #@2
    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/CharInfo$CharKey;->setChar(C)V

    #@5
    .line 409
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    #@7
    iget-object v1, p0, Lorg/apache/xml/serializer/CharInfo;->m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

    #@9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/lang/String;

    #@f
    return-object v0
.end method

.method final shouldMapAttrChar(I)Z
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 426
    const/16 v0, 0x80

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 427
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    #@6
    aget-boolean v0, v0, p1

    #@8
    return v0

    #@9
    .line 431
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->get(I)Z

    #@c
    move-result v0

    #@d
    return v0
.end method

.method final shouldMapTextChar(I)Z
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 449
    const/16 v0, 0x80

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 450
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    #@6
    aget-boolean v0, v0, p1

    #@8
    return v0

    #@9
    .line 454
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->get(I)Z

    #@c
    move-result v0

    #@d
    return v0
.end method
