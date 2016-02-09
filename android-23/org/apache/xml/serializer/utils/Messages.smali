.class public final Lorg/apache/xml/serializer/utils/Messages;
.super Ljava/lang/Object;
.source "Messages.java"


# instance fields
.field private final m_locale:Ljava/util/Locale;

.field private m_resourceBundle:Ljava/util/ListResourceBundle;

.field private m_resourceBundleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "resourceBundle"    # Ljava/lang/String;

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_locale:Ljava/util/Locale;

    #@9
    .line 124
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@b
    .line 121
    return-void
.end method

.method private final createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 11
    .param p1, "fResourceBundle"    # Ljava/util/ListResourceBundle;
    .param p2, "msgKey"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 205
    const/4 v1, 0x0

    #@1
    .line 206
    .local v1, "fmsg":Ljava/lang/String;
    const/4 v6, 0x0

    #@2
    .line 207
    .local v6, "throwex":Z
    const/4 v4, 0x0

    #@3
    .line 209
    .local v4, "msg":Ljava/lang/String;
    if-eqz p2, :cond_0

    #@5
    .line 210
    invoke-virtual {p1, p2}, Ljava/util/ListResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    .line 214
    .end local v4    # "msg":Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_1

    #@b
    .line 216
    const/4 v6, 0x1

    #@c
    .line 225
    :try_start_0
    const-string/jumbo v7, "BAD_MSGKEY"

    #@f
    .line 226
    const/4 v8, 0x2

    #@10
    new-array v8, v8, [Ljava/lang/Object;

    #@12
    const/4 v9, 0x0

    #@13
    aput-object p2, v8, v9

    #@15
    iget-object v9, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@17
    const/4 v10, 0x1

    #@18
    aput-object v9, v8, v10

    #@1a
    .line 224
    invoke-static {v7, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    move-result-object v4

    #@1e
    .line 286
    .end local v1    # "fmsg":Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_5

    #@20
    .line 288
    new-instance v7, Ljava/lang/RuntimeException;

    #@22
    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@25
    throw v7

    #@26
    .line 212
    .restart local v1    # "fmsg":Ljava/lang/String;
    .restart local v4    # "msg":Ljava/lang/String;
    :cond_0
    const-string/jumbo p2, ""

    #@29
    goto :goto_0

    #@2a
    .line 229
    .end local v4    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@2b
    .line 234
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v8, "The message key \'"

    #@33
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v7

    #@3b
    .line 236
    const-string/jumbo v8, "\' is not in the message class \'"

    #@3e
    .line 234
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v7

    #@42
    .line 237
    iget-object v8, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@44
    .line 234
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v7

    #@48
    .line 237
    const-string/jumbo v8, "\'"

    #@4b
    .line 234
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v7

    #@4f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    .local v4, "msg":Ljava/lang/String;
    goto :goto_1

    #@54
    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "msg":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_4

    #@56
    .line 247
    :try_start_1
    array-length v5, p3

    #@57
    .line 249
    .local v5, "n":I
    const/4 v3, 0x0

    #@58
    .local v3, "i":I
    :goto_2
    if-ge v3, v5, :cond_3

    #@5a
    .line 251
    aget-object v7, p3, v3

    #@5c
    if-nez v7, :cond_2

    #@5e
    .line 252
    const-string/jumbo v7, ""

    #@61
    aput-object v7, p3, v3

    #@63
    .line 249
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@65
    goto :goto_2

    #@66
    .line 255
    :cond_3
    invoke-static {v4, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@69
    move-result-object v1

    #@6a
    .local v1, "fmsg":Ljava/lang/String;
    goto :goto_1

    #@6b
    .line 259
    .end local v3    # "i":I
    .end local v5    # "n":I
    .local v1, "fmsg":Ljava/lang/String;
    :catch_1
    move-exception v0

    #@6c
    .line 260
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    #@6d
    .line 266
    :try_start_2
    const-string/jumbo v7, "BAD_MSGFORMAT"

    #@70
    .line 267
    const/4 v8, 0x2

    #@71
    new-array v8, v8, [Ljava/lang/Object;

    #@73
    const/4 v9, 0x0

    #@74
    aput-object p2, v8, v9

    #@76
    iget-object v9, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@78
    const/4 v10, 0x1

    #@79
    aput-object v9, v8, v10

    #@7b
    .line 265
    invoke-static {v7, v8}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7e
    move-result-object v1

    #@7f
    .line 268
    .local v1, "fmsg":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v7

    #@88
    const-string/jumbo v8, " "

    #@8b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v7

    #@8f
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v7

    #@93
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@96
    move-result-object v1

    #@97
    goto :goto_1

    #@98
    .line 271
    .end local v1    # "fmsg":Ljava/lang/String;
    :catch_2
    move-exception v2

    #@99
    .line 275
    .local v2, "formatfailed":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v8, "The format of message \'"

    #@a1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v7

    #@a5
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v7

    #@a9
    .line 277
    const-string/jumbo v8, "\' in message class \'"

    #@ac
    .line 275
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v7

    #@b0
    .line 278
    iget-object v8, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@b2
    .line 275
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    .line 279
    const-string/jumbo v8, "\' failed."

    #@b9
    .line 275
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v7

    #@bd
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v1

    #@c1
    .restart local v1    # "fmsg":Ljava/lang/String;
    goto/16 :goto_1

    #@c3
    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "formatfailed":Ljava/lang/Exception;
    .local v1, "fmsg":Ljava/lang/String;
    :cond_4
    move-object v1, v4

    #@c4
    .local v1, "fmsg":Ljava/lang/String;
    goto/16 :goto_1

    #@c6
    .line 291
    .end local v1    # "fmsg":Ljava/lang/String;
    :cond_5
    return-object v1
.end method

.method private getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_locale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method private getResourceBundle()Ljava/util/ListResourceBundle;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    #@2
    return-object v0
.end method

.method private static getResourceSuffix(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "_"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 359
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    .line 361
    .local v0, "country":Ljava/lang/String;
    const-string/jumbo v2, "TW"

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, "_"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 364
    :cond_0
    return-object v1
.end method

.method private loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;
    .locals 10
    .param p1, "resourceBundle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    #@0
    .prologue
    .line 307
    iput-object p1, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@2
    .line 308
    invoke-direct {p0}, Lorg/apache/xml/serializer/utils/Messages;->getLocale()Ljava/util/Locale;

    #@5
    move-result-object v3

    #@6
    .line 316
    .local v3, "locale":Ljava/util/Locale;
    :try_start_0
    iget-object v6, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@8
    invoke-static {v6, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    #@b
    move-result-object v5

    #@c
    .line 317
    .local v5, "rb":Ljava/util/ResourceBundle;
    move-object v0, v5

    #@d
    check-cast v0, Ljava/util/ListResourceBundle;

    #@f
    move-object v4, v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 342
    .end local v5    # "rb":Ljava/util/ResourceBundle;
    .local v4, "lrb":Ljava/util/ListResourceBundle;
    :goto_0
    iput-object v4, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    #@12
    .line 343
    return-object v4

    #@13
    .line 320
    .end local v4    # "lrb":Ljava/util/ListResourceBundle;
    :catch_0
    move-exception v1

    #@14
    .line 328
    .local v1, "e":Ljava/util/MissingResourceException;
    :try_start_1
    iget-object v6, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@16
    .line 329
    new-instance v7, Ljava/util/Locale;

    #@18
    const-string/jumbo v8, "en"

    #@1b
    const-string/jumbo v9, "US"

    #@1e
    invoke-direct {v7, v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 327
    invoke-static {v6, v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Ljava/util/ListResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@27
    .restart local v4    # "lrb":Ljava/util/ListResourceBundle;
    goto :goto_0

    #@28
    .line 332
    .end local v4    # "lrb":Ljava/util/ListResourceBundle;
    :catch_1
    move-exception v2

    #@29
    .line 336
    .local v2, "e2":Ljava/util/MissingResourceException;
    new-instance v6, Ljava/util/MissingResourceException;

    #@2b
    .line 337
    new-instance v7, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v8, "Could not load any resource bundles."

    #@33
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    iget-object v8, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    .line 338
    iget-object v8, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@43
    .line 339
    const-string/jumbo v9, ""

    #@46
    .line 336
    invoke-direct {v6, v7, v8, v9}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@49
    throw v6
.end method


# virtual methods
.method public final createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "msgKey"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 175
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@6
    invoke-direct {p0, v0}, Lorg/apache/xml/serializer/utils/Messages;->loadResourceBundle(Ljava/lang/String;)Ljava/util/ListResourceBundle;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    #@c
    .line 177
    :cond_0
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 179
    iget-object v0, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundle:Ljava/util/ListResourceBundle;

    #@12
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/xml/serializer/utils/Messages;->createMsg(Ljava/util/ListResourceBundle;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 182
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v1, "Could not load the resource bundles: "

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Lorg/apache/xml/serializer/utils/Messages;->m_resourceBundleName:Ljava/lang/String;

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method
