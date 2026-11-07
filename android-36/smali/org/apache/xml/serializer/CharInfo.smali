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
.field static final greylist ASCII_MAX:I = 0x80

.field public static final greylist HTML_ENTITIES_RESOURCE:Ljava/lang/String;

.field private static final greylist LOW_ORDER_BITMASK:I = 0x1f

.field private static final greylist SHIFT_PER_WORD:I = 0x5

.field static final greylist S_CARRIAGERETURN:C = '\r'

.field static final greylist S_GT:C = '>'

.field static final greylist S_HORIZONAL_TAB:C = '\t'

.field static final greylist S_LINEFEED:C = '\n'

.field static final greylist S_LINE_SEPARATOR:C = '\u2028'

.field static final greylist S_LT:C = '<'

.field static final greylist S_NEL:C = '\u0085'

.field static final greylist S_QUOTE:C = '\"'

.field static final greylist S_SPACE:C = ' '

.field public static final greylist XML_ENTITIES_RESOURCE:Ljava/lang/String;

.field private static greylist m_getCharInfoCache:Ljava/util/Hashtable;


# instance fields
.field private final greylist array_of_bits:[I

.field private greylist firstWordNotUsed:I

.field private final greylist m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

.field private greylist m_charToString:Ljava/util/HashMap;

.field greylist onlyQuotAmpLtGt:Z

.field private final greylist shouldMapAttrChar_ASCII:[Z

.field private final greylist shouldMapTextChar_ASCII:[Z


# direct methods
.method static constructor greylist <clinit>()V
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".HTMLEntities"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/CharInfo;->HTML_ENTITIES_RESOURCE:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".XMLEntities"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/CharInfo;->XML_ENTITIES_RESOURCE:Ljava/lang/String;

    .line 565
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 3

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    .line 158
    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/CharInfo;->createEmptySetOfIntegers(I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    const/16 v0, 0x80

    .line 160
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    .line 161
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    .line 162
    new-instance v0, Lorg/apache/xml/serializer/CharInfo$CharKey;

    invoke-direct {v0}, Lorg/apache/xml/serializer/CharInfo$CharKey;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    .line 176
    invoke-direct {p0}, Lorg/apache/xml/serializer/CharInfo;-><init>()V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    const/4 v0, 0x0

    if-eqz p3, :cond_12

    .line 194
    :try_start_d
    invoke-static {p1}, Ljava/util/PropertyResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    :cond_12
    move-object v1, v0

    :goto_13
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_38

    .line 199
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object p1

    .line 200
    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p3

    if-eqz p3, :cond_d3

    .line 201
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 202
    invoke-virtual {v1, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    .line 204
    invoke-direct {p0, p3, v0}, Lorg/apache/xml/serializer/CharInfo;->defineEntity(Ljava/lang/String;C)Z

    move-result p3

    if-eqz p3, :cond_1b

    move v3, v2

    goto :goto_1b

    :cond_38
    if-eqz p3, :cond_48

    .line 215
    :try_start_3a
    const-class p3, Lorg/apache/xml/serializer/CharInfo;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    :goto_40
    move-object v0, p3

    goto :goto_65

    :catchall_42
    move-exception p0

    goto/16 :goto_122

    :catch_45
    move-exception p0

    goto/16 :goto_108

    .line 217
    :cond_48
    invoke-static {}, Lorg/apache/xml/serializer/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    if-nez p3, :cond_54

    .line 219
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    :goto_52
    move-object v0, p3

    goto :goto_59

    .line 221
    :cond_54
    invoke-virtual {p3, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_58} :catch_45
    .catchall {:try_start_3a .. :try_end_58} :catchall_42

    goto :goto_52

    :goto_59
    if-nez v0, :cond_65

    .line 226
    :try_start_5b
    new-instance p3, Ljava/net/URL;

    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p3
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_64} :catch_65
    .catchall {:try_start_5b .. :try_end_64} :catchall_42

    goto :goto_40

    :catch_65
    :cond_65
    :goto_65
    if-eqz v0, :cond_f6

    .line 260
    :try_start_67
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v1, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_73
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_67 .. :try_end_73} :catch_74
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_73} :catch_45
    .catchall {:try_start_67 .. :try_end_73} :catchall_42

    goto :goto_7e

    .line 262
    :catch_74
    :try_start_74
    new-instance p3, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 265
    :goto_7e
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move v4, v3

    :goto_83
    if-eqz v1, :cond_cc

    .line 268
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c7

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_94

    goto :goto_c7

    :cond_94
    const/16 v5, 0x20

    .line 274
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-le v6, v3, :cond_c2

    .line 277
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_c2

    .line 282
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_b6

    .line 286
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 289
    :cond_b6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-char v1, v1

    .line 291
    invoke-direct {p0, v7, v1}, Lorg/apache/xml/serializer/CharInfo;->defineEntity(Ljava/lang/String;C)Z

    move-result v1

    if-eqz v1, :cond_c2

    move v4, v2

    .line 297
    :cond_c2
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_83

    .line 269
    :cond_c7
    :goto_c7
    invoke-virtual {p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_83

    .line 300
    :cond_cc
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_cf} :catch_45
    .catchall {:try_start_74 .. :try_end_cf} :catchall_42

    .line 312
    :try_start_cf
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_d2

    :catch_d2
    move v3, v4

    .line 318
    :cond_d3
    iput-boolean v3, p0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    .line 329
    const-string p1, "xml"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p3, 0x22

    if-eqz p1, :cond_e3

    .line 332
    iget-object p1, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    aput-boolean v2, p1, p3

    .line 335
    :cond_e3
    const-string p1, "html"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f5

    .line 339
    iget-object p1, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    const/16 p2, 0x3c

    aput-boolean v2, p1, p2

    .line 342
    iget-object p0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    aput-boolean v2, p0, p3

    :cond_f5
    return-void

    .line 233
    :cond_f6
    :try_start_f6
    new-instance p0, Ljava/lang/RuntimeException;

    sget-object p2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string p3, "ER_RESOURCE_COULD_NOT_FIND"

    filled-new-array {p1, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 234
    invoke-virtual {p2, p3, v1}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_108} :catch_45
    .catchall {:try_start_f6 .. :try_end_108} :catchall_42

    .line 302
    :goto_108
    :try_start_108
    new-instance p2, Ljava/lang/RuntimeException;

    sget-object p3, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_RESOURCE_COULD_NOT_LOAD"

    .line 306
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v2, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 303
    invoke-virtual {p3, v1, p0}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_122
    .catchall {:try_start_108 .. :try_end_122} :catchall_42

    :goto_122
    if-eqz v0, :cond_127

    .line 312
    :try_start_124
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_127} :catch_127

    .line 315
    :catch_127
    :cond_127
    throw p0
.end method

.method synthetic constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/xml/serializer/CharInfo-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xml/serializer/CharInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static greylist arrayIndex(I)I
    .registers 1

    .line 0
    shr-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private static greylist bit(I)I
    .registers 2

    .line 0
    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private greylist createEmptySetOfIntegers(I)[I
    .registers 3

    const/4 v0, 0x0

    .line 592
    iput v0, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    add-int/lit8 p1, p1, -0x1

    .line 594
    invoke-static {p1}, Lorg/apache/xml/serializer/CharInfo;->arrayIndex(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [I

    return-object p0
.end method

.method private greylist defineEntity(Ljava/lang/String;C)Z
    .registers 5

    .line 366
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x3b

    .line 368
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p0, p1, p2}, Lorg/apache/xml/serializer/CharInfo;->defineChar2StringMapping(Ljava/lang/String;C)Z

    move-result p0

    return p0
.end method

.method private greylist extraEntity(Ljava/lang/String;I)Z
    .registers 4

    const/16 p0, 0x80

    if-ge p2, p0, :cond_3a

    const/16 p0, 0x22

    const/4 v0, 0x1

    if-eq p2, p0, :cond_31

    const/16 p0, 0x26

    if-eq p2, p0, :cond_28

    const/16 p0, 0x3c

    if-eq p2, p0, :cond_1f

    const/16 p0, 0x3e

    if-eq p2, p0, :cond_16

    return v0

    .line 677
    :cond_16
    const-string p0, "&gt;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    return v0

    .line 673
    :cond_1f
    const-string p0, "&lt;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    return v0

    .line 669
    :cond_28
    const-string p0, "&amp;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    return v0

    .line 665
    :cond_31
    const-string p0, "&quot;"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    return v0

    :cond_3a
    const/4 p0, 0x0

    return p0
.end method

.method private final greylist get(I)Z
    .registers 5

    shr-int/lit8 v0, p1, 0x5

    .line 635
    iget v1, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    .line 636
    iget-object p0, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_14

    return v0

    :cond_14
    return v2
.end method

.method static greylist getCharInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xml/serializer/CharInfo;
    .registers 4

    .line 491
    sget-object v0, Lorg/apache/xml/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/serializer/CharInfo;

    if-eqz v0, :cond_f

    .line 493
    invoke-static {v0}, Lorg/apache/xml/serializer/CharInfo;->mutableCopyOf(Lorg/apache/xml/serializer/CharInfo;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 v0, 0x1

    .line 498
    :try_start_10
    invoke-static {p0, p1, v0}, Lorg/apache/xml/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;

    move-result-object v0

    .line 502
    sget-object v1, Lorg/apache/xml/serializer/CharInfo;->m_getCharInfoCache:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    invoke-static {v0}, Lorg/apache/xml/serializer/CharInfo;->mutableCopyOf(Lorg/apache/xml/serializer/CharInfo;)Lorg/apache/xml/serializer/CharInfo;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e

    return-object p0

    :catch_1e
    const/4 v0, 0x0

    .line 508
    :try_start_1f
    invoke-static {p0, p1, v0}, Lorg/apache/xml/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    const/16 v1, 0x3a

    .line 514
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_30

    .line 516
    invoke-static {p0}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURIFromRelative(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_34

    :cond_30
    const/4 v1, 0x0

    .line 520
    :try_start_31
    invoke-static {p0, v1}, Lorg/apache/xml/serializer/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_34
    .catch Ljavax/xml/transform/TransformerException; {:try_start_31 .. :try_end_34} :catch_39

    .line 526
    :goto_34
    invoke-static {p0, p1, v0}, Lorg/apache/xml/serializer/CharInfo;->getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;

    move-result-object p0

    return-object p0

    :catch_39
    move-exception p0

    .line 522
    new-instance p1, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method private static greylist getCharInfoBasedOnPrivilege(Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serializer/CharInfo;
    .registers 4

    .line 462
    new-instance v0, Lorg/apache/xml/serializer/CharInfo$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/xml/serializer/CharInfo$1;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xml/serializer/CharInfo;

    return-object p0
.end method

.method private static greylist mutableCopyOf(Lorg/apache/xml/serializer/CharInfo;)Lorg/apache/xml/serializer/CharInfo;
    .registers 6

    .line 536
    new-instance v0, Lorg/apache/xml/serializer/CharInfo;

    invoke-direct {v0}, Lorg/apache/xml/serializer/CharInfo;-><init>()V

    .line 538
    iget-object v1, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    array-length v2, v1

    .line 539
    iget-object v3, v0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    iget v1, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    iput v1, v0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    .line 543
    iget-object v1, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    array-length v2, v1

    .line 544
    iget-object v3, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    iget-object v1, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    array-length v2, v1

    .line 547
    iget-object v3, v0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    iget-object v1, p0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    .line 553
    iget-boolean p0, p0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    iput-boolean p0, v0, Lorg/apache/xml/serializer/CharInfo;->onlyQuotAmpLtGt:Z

    return-object v0
.end method

.method private final greylist set(I)V
    .registers 5

    .line 606
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->setASCIItextDirty(I)V

    .line 607
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->setASCIIattrDirty(I)V

    shr-int/lit8 v0, p1, 0x5

    add-int/lit8 v1, v0, 0x1

    .line 612
    iget v2, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    if-ge v2, v1, :cond_10

    .line 613
    iput v1, p0, Lorg/apache/xml/serializer/CharInfo;->firstWordNotUsed:I

    .line 615
    :cond_10
    iget-object p0, p0, Lorg/apache/xml/serializer/CharInfo;->array_of_bits:[I

    aget v1, p0, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    or-int/2addr p1, v1

    aput p1, p0, v0

    return-void
.end method

.method private greylist setASCIIattrDirty(I)V
    .registers 3

    if-ltz p1, :cond_b

    const/16 v0, 0x80

    if-ge p1, v0, :cond_b

    .line 711
    iget-object p0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    :cond_b
    return-void
.end method

.method private greylist setASCIItextDirty(I)V
    .registers 3

    if-ltz p1, :cond_b

    const/16 v0, 0x80

    if-ge p1, v0, :cond_b

    .line 697
    iget-object p0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    :cond_b
    return-void
.end method


# virtual methods
.method greylist defineChar2StringMapping(Ljava/lang/String;C)Z
    .registers 5

    .line 731
    new-instance v0, Lorg/apache/xml/serializer/CharInfo$CharKey;

    invoke-direct {v0, p2}, Lorg/apache/xml/serializer/CharInfo$CharKey;-><init>(C)V

    .line 732
    iget-object v1, p0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-direct {p0, p2}, Lorg/apache/xml/serializer/CharInfo;->set(I)V

    .line 735
    invoke-direct {p0, p1, p2}, Lorg/apache/xml/serializer/CharInfo;->extraEntity(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method greylist getOutputStringForChar(C)Ljava/lang/String;
    .registers 3

    .line 408
    iget-object v0, p0, Lorg/apache/xml/serializer/CharInfo;->m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

    invoke-virtual {v0, p1}, Lorg/apache/xml/serializer/CharInfo$CharKey;->setChar(C)V

    .line 409
    iget-object p1, p0, Lorg/apache/xml/serializer/CharInfo;->m_charToString:Ljava/util/HashMap;

    iget-object p0, p0, Lorg/apache/xml/serializer/CharInfo;->m_charKey:Lorg/apache/xml/serializer/CharInfo$CharKey;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method final greylist shouldMapAttrChar(I)Z
    .registers 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_9

    .line 427
    iget-object p0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapAttrChar_ASCII:[Z

    aget-boolean p0, p0, p1

    return p0

    .line 431
    :cond_9
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->get(I)Z

    move-result p0

    return p0
.end method

.method final greylist shouldMapTextChar(I)Z
    .registers 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_9

    .line 450
    iget-object p0, p0, Lorg/apache/xml/serializer/CharInfo;->shouldMapTextChar_ASCII:[Z

    aget-boolean p0, p0, p1

    return p0

    .line 454
    :cond_9
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/CharInfo;->get(I)Z

    move-result p0

    return p0
.end method
