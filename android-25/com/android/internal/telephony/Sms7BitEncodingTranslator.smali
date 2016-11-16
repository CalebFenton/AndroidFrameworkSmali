.class public Lcom/android/internal/telephony/Sms7BitEncodingTranslator;
.super Ljava/lang/Object;
.source "Sms7BitEncodingTranslator.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "Sms7BitEncodingTranslator"

.field private static final XML_CHARACTOR_TAG:Ljava/lang/String; = "Character"

.field private static final XML_FROM_TAG:Ljava/lang/String; = "from"

.field private static final XML_START_TAG:Ljava/lang/String; = "SmsEnforce7BitTranslationTable"

.field private static final XML_TO_TAG:Ljava/lang/String; = "to"

.field private static final XML_TRANSLATION_TYPE_TAG:Ljava/lang/String; = "TranslationType"

.field private static mIs7BitTranslationTableLoaded:Z

.field private static mTranslationTable:Landroid/util/SparseIntArray;

.field private static mTranslationTableCDMA:Landroid/util/SparseIntArray;

.field private static mTranslationTableCommon:Landroid/util/SparseIntArray;

.field private static mTranslationTableGSM:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 35
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@3
    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    #@5
    .line 36
    const/4 v0, 0x0

    #@6
    sput-boolean v0, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    #@8
    .line 37
    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    #@a
    .line 38
    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    #@c
    .line 39
    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    #@e
    .line 40
    sput-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    #@10
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static load7BitTranslationTableFromXml()V
    .locals 11

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    .line 177
    const/4 v2, 0x0

    #@2
    .line 178
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@5
    move-result-object v3

    #@6
    .line 181
    .local v3, "r":Landroid/content/res/Resources;
    sget-boolean v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    #@8
    if-eqz v7, :cond_0

    #@a
    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    #@d
    const-string/jumbo v8, "load7BitTranslationTableFromXml: open normal file"

    #@10
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 182
    :cond_0
    const v7, 0x1110011

    #@16
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@19
    move-result-object v2

    #@1a
    .line 186
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v7, "SmsEnforce7BitTranslationTable"

    #@1d
    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@20
    .line 188
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@23
    .line 189
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    .line 190
    .local v4, "tag":Ljava/lang/String;
    sget-boolean v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    #@29
    if-eqz v7, :cond_1

    #@2b
    .line 191
    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    #@2e
    new-instance v8, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v9, "tag: "

    #@36
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v8

    #@3a
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v8

    #@42
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 193
    :cond_1
    const-string/jumbo v7, "TranslationType"

    #@48
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v7

    #@4c
    if-eqz v7, :cond_8

    #@4e
    .line 194
    const-string/jumbo v7, "Type"

    #@51
    const/4 v8, 0x0

    #@52
    invoke-interface {v2, v8, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    .line 195
    .local v6, "type":Ljava/lang/String;
    sget-boolean v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    #@58
    if-eqz v7, :cond_2

    #@5a
    .line 196
    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    #@5d
    new-instance v8, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v9, "type: "

    #@65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v8

    #@6d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v8

    #@71
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 198
    :cond_2
    const-string/jumbo v7, "common"

    #@77
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v7

    #@7b
    if-eqz v7, :cond_4

    #@7d
    .line 199
    sget-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    #@7f
    sput-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@81
    goto :goto_0

    #@82
    .line 227
    .end local v4    # "tag":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@83
    .line 228
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    #@86
    const-string/jumbo v8, "Got exception while loading 7BitTranslationTable file."

    #@89
    invoke-static {v7, v8, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8c
    .line 230
    instance-of v7, v2, Landroid/content/res/XmlResourceParser;

    #@8e
    if-eqz v7, :cond_3

    #@90
    .line 231
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    #@93
    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return-void

    #@94
    .line 200
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v6    # "type":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string/jumbo v7, "gsm"

    #@97
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v7

    #@9b
    if-eqz v7, :cond_6

    #@9d
    .line 201
    sget-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    #@9f
    sput-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a1
    goto/16 :goto_0

    #@a3
    .line 229
    .end local v4    # "tag":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@a4
    .line 230
    instance-of v8, v2, Landroid/content/res/XmlResourceParser;

    #@a6
    if-eqz v8, :cond_5

    #@a8
    .line 231
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    #@ab
    .line 229
    :cond_5
    throw v7

    #@ac
    .line 202
    .restart local v4    # "tag":Ljava/lang/String;
    .restart local v6    # "type":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string/jumbo v7, "cdma"

    #@af
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b2
    move-result v7

    #@b3
    if-eqz v7, :cond_7

    #@b5
    .line 203
    sget-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    #@b7
    sput-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    #@b9
    goto/16 :goto_0

    #@bb
    .line 205
    :cond_7
    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    #@be
    new-instance v8, Ljava/lang/StringBuilder;

    #@c0
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@c3
    const-string/jumbo v9, "Error Parsing 7BitTranslationTable: found incorrect type"

    #@c6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v8

    #@ca
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v8

    #@ce
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v8

    #@d2
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d5
    goto/16 :goto_0

    #@d7
    .line 207
    .end local v6    # "type":Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, "Character"

    #@da
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dd
    move-result v7

    #@de
    if-eqz v7, :cond_b

    #@e0
    sget-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    #@e2
    if-eqz v7, :cond_b

    #@e4
    .line 209
    const-string/jumbo v7, "from"

    #@e7
    .line 208
    const/4 v8, 0x0

    #@e8
    .line 209
    const/4 v9, -0x1

    #@e9
    .line 208
    invoke-interface {v2, v8, v7, v9}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    #@ec
    move-result v1

    #@ed
    .line 211
    .local v1, "from":I
    const-string/jumbo v7, "to"

    #@f0
    .line 210
    const/4 v8, 0x0

    #@f1
    .line 211
    const/4 v9, -0x1

    #@f2
    .line 210
    invoke-interface {v2, v8, v7, v9}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    #@f5
    move-result v5

    #@f6
    .line 212
    .local v5, "to":I
    if-eq v1, v10, :cond_a

    #@f8
    if-eq v5, v10, :cond_a

    #@fa
    .line 213
    sget-boolean v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    #@fc
    if-eqz v7, :cond_9

    #@fe
    .line 214
    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    #@101
    new-instance v8, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v9, "Loading mapping "

    #@109
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v8

    #@10d
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@110
    move-result-object v9

    #@111
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@114
    move-result-object v9

    #@115
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v8

    #@119
    .line 215
    const-string/jumbo v9, " -> "

    #@11c
    .line 214
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v8

    #@120
    .line 215
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@123
    move-result-object v9

    #@124
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@127
    move-result-object v9

    #@128
    .line 214
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12b
    move-result-object v8

    #@12c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12f
    move-result-object v8

    #@130
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@133
    .line 218
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTable:Landroid/util/SparseIntArray;

    #@135
    invoke-virtual {v7, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    #@138
    goto/16 :goto_0

    #@13a
    .line 220
    :cond_a
    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    #@13d
    const-string/jumbo v8, "Invalid translation table file format"

    #@140
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@143
    goto/16 :goto_0

    #@145
    .line 226
    .end local v1    # "from":I
    .end local v5    # "to":I
    :cond_b
    sget-boolean v7, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    #@147
    if-eqz v7, :cond_c

    #@149
    const-string/jumbo v7, "Sms7BitEncodingTranslator"

    #@14c
    const-string/jumbo v8, "load7BitTranslationTableFromXml: parsing successful, file loaded"

    #@14f
    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@152
    .line 230
    :cond_c
    instance-of v7, v2, Landroid/content/res/XmlResourceParser;

    #@154
    if-eqz v7, :cond_3

    #@156
    .line 231
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    #@159
    goto/16 :goto_1
.end method

.method private static noTranslationNeeded(CZ)Z
    .locals 3
    .param p0, "c"    # C
    .param p1, "isCdmaFormat"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 154
    if-eqz p1, :cond_1

    #@4
    .line 155
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    #@c
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@f
    move-result v1

    #@10
    if-eq v1, v2, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :cond_0
    return v0

    #@14
    .line 158
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->isGsmSeptets(C)Z

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public static translate(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p0, "message"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 61
    if-nez p0, :cond_0

    #@3
    .line 62
    const-string/jumbo v4, "Sms7BitEncodingTranslator"

    #@6
    const-string/jumbo v5, "Null message can not be translated"

    #@9
    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@c
    .line 63
    return-object v6

    #@d
    .line 66
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@10
    move-result v3

    #@11
    .line 67
    .local v3, "size":I
    if-gtz v3, :cond_1

    #@13
    .line 68
    const-string/jumbo v4, ""

    #@16
    return-object v4

    #@17
    .line 71
    :cond_1
    sget-boolean v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    #@19
    if-nez v4, :cond_2

    #@1b
    .line 72
    new-instance v4, Landroid/util/SparseIntArray;

    #@1d
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    #@20
    sput-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    #@22
    .line 73
    new-instance v4, Landroid/util/SparseIntArray;

    #@24
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    #@27
    sput-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    #@29
    .line 74
    new-instance v4, Landroid/util/SparseIntArray;

    #@2b
    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    #@2e
    sput-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    #@30
    .line 75
    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->load7BitTranslationTableFromXml()V

    #@33
    .line 76
    const/4 v4, 0x1

    #@34
    sput-boolean v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mIs7BitTranslationTableLoaded:Z

    #@36
    .line 79
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    #@38
    if-eqz v4, :cond_4

    #@3a
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    #@3c
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    #@3f
    move-result v4

    #@40
    if-lez v4, :cond_4

    #@42
    .line 82
    :cond_3
    new-array v2, v3, [C

    #@44
    .line 83
    .local v2, "output":[C
    invoke-static {}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->useCdmaFormatForMoSms()Z

    #@47
    move-result v1

    #@48
    .line 84
    .local v1, "isCdmaFormat":Z
    const/4 v0, 0x0

    #@49
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_7

    #@4b
    .line 85
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@4e
    move-result v4

    #@4f
    invoke-static {v4, v1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translateIfNeeded(CZ)C

    #@52
    move-result v4

    #@53
    aput-char v4, v2, v0

    #@55
    .line 84
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_0

    #@58
    .line 80
    .end local v0    # "i":I
    .end local v1    # "isCdmaFormat":Z
    .end local v2    # "output":[C
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    #@5a
    if-eqz v4, :cond_5

    #@5c
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    #@5e
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    #@61
    move-result v4

    #@62
    if-gtz v4, :cond_3

    #@64
    .line 81
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    #@66
    if-eqz v4, :cond_6

    #@68
    sget-object v4, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    #@6a
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    #@6d
    move-result v4

    #@6e
    if-gtz v4, :cond_3

    #@70
    .line 91
    :cond_6
    return-object v6

    #@71
    .line 88
    .restart local v0    # "i":I
    .restart local v1    # "isCdmaFormat":Z
    .restart local v2    # "output":[C
    :cond_7
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    return-object v4
.end method

.method private static translateIfNeeded(CZ)C
    .locals 4
    .param p0, "c"    # C
    .param p1, "isCdmaFormat"    # Z

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 106
    invoke-static {p0, p1}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->noTranslationNeeded(CZ)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    .line 107
    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 108
    const-string/jumbo v1, "Sms7BitEncodingTranslator"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "No translation needed for "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 110
    :cond_0
    return p0

    #@2a
    .line 120
    :cond_1
    const/4 v0, -0x1

    #@2b
    .line 122
    .local v0, "translation":I
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    #@2d
    if-eqz v1, :cond_2

    #@2f
    .line 123
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCommon:Landroid/util/SparseIntArray;

    #@31
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@34
    move-result v0

    #@35
    .line 126
    :cond_2
    if-ne v0, v2, :cond_3

    #@37
    .line 127
    if-eqz p1, :cond_5

    #@39
    .line 128
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    #@3b
    if-eqz v1, :cond_3

    #@3d
    .line 129
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableCDMA:Landroid/util/SparseIntArray;

    #@3f
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@42
    move-result v0

    #@43
    .line 138
    :cond_3
    :goto_0
    if-eq v0, v2, :cond_6

    #@45
    .line 139
    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    #@47
    if-eqz v1, :cond_4

    #@49
    .line 140
    const-string/jumbo v1, "Sms7BitEncodingTranslator"

    #@4c
    new-instance v2, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    const-string/jumbo v3, " ("

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    const-string/jumbo v3, ")"

    #@67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v2

    #@6b
    const-string/jumbo v3, " translated to "

    #@6e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    .line 141
    const-string/jumbo v3, " ("

    #@7d
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v2

    #@81
    .line 141
    int-to-char v3, v0

    #@82
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@85
    move-result-object v2

    #@86
    .line 141
    const-string/jumbo v3, ")"

    #@89
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v2

    #@91
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@94
    .line 143
    :cond_4
    int-to-char v1, v0

    #@95
    return v1

    #@96
    .line 132
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    #@98
    if-eqz v1, :cond_3

    #@9a
    .line 133
    sget-object v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->mTranslationTableGSM:Landroid/util/SparseIntArray;

    #@9c
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    #@9f
    move-result v0

    #@a0
    goto :goto_0

    #@a1
    .line 145
    :cond_6
    sget-boolean v1, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->DBG:Z

    #@a3
    if-eqz v1, :cond_7

    #@a5
    .line 146
    const-string/jumbo v1, "Sms7BitEncodingTranslator"

    #@a8
    new-instance v2, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v3, "No translation found for "

    #@b0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    .line 147
    const-string/jumbo v3, "! Replacing for empty space"

    #@bf
    .line 146
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v2

    #@c3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v2

    #@c7
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ca
    .line 149
    :cond_7
    const/16 v1, 0x20

    #@cc
    return v1
.end method

.method private static useCdmaFormatForMoSms()Z
    .locals 2

    #@0
    .prologue
    .line 163
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isImsSmsSupported()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_1

    #@a
    .line 165
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@11
    move-result v0

    #@12
    .line 166
    const/4 v1, 0x2

    #@13
    .line 165
    if-ne v0, v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    :goto_0
    return v0

    #@17
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0

    #@19
    .line 169
    :cond_1
    const-string/jumbo v0, "3gpp2"

    #@1c
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Landroid/telephony/SmsManager;->getImsSmsFormat()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v0

    #@28
    return v0
.end method
