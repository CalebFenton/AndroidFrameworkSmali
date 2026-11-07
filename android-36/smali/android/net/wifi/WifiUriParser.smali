.class public Landroid/net/wifi/WifiUriParser;
.super Ljava/lang/Object;
.source "WifiUriParser.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field static final blacklist DELIMITER_QR_CODE:Ljava/lang/String; = ";"

.field static final blacklist PREFIX_DPP:Ljava/lang/String; = "DPP:"

.field static final blacklist PREFIX_DPP_INFORMATION:Ljava/lang/String; = "I:"

.field static final blacklist PREFIX_DPP_PUBLIC_KEY:Ljava/lang/String; = "K:"

.field static final blacklist PREFIX_ZXING_HIDDEN_SSID:Ljava/lang/String; = "H:"

.field static final blacklist PREFIX_ZXING_PASSWORD:Ljava/lang/String; = "P:"

.field static final blacklist PREFIX_ZXING_SECURITY:Ljava/lang/String; = "T:"

.field static final blacklist PREFIX_ZXING_SSID:Ljava/lang/String; = "S:"

.field static final blacklist PREFIX_ZXING_TRANSITION_DISABLE:Ljava/lang/String; = "R:"

.field static final blacklist PREFIX_ZXING_WIFI_NETWORK_CONFIG:Ljava/lang/String; = "WIFI:"

.field static final blacklist SCHEME_DPP:Ljava/lang/String; = "DPP"

.field static final blacklist SCHEME_ZXING_WIFI_NETWORK_CONFIG:Ljava/lang/String; = "WIFI"

.field private static final blacklist SECURITY_ADB:Ljava/lang/String; = "ADB"

.field static final blacklist SECURITY_NO_PASSWORD:Ljava/lang/String; = "nopass"

.field static final blacklist SECURITY_SAE:Ljava/lang/String; = "SAE"

.field static final blacklist SECURITY_WEP:Ljava/lang/String; = "WEP"

.field static final blacklist SECURITY_WPA_PSK:Ljava/lang/String; = "WPA"

.field static final blacklist TAG:Ljava/lang/String; = "WifiUriParser"

.field static final blacklist URI_DELIMITER_CHAR:C = ';'


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addQuotation(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # Ljava/lang/String;

    .line 294
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 295
    const-string v0, ""

    return-object v0

    .line 298
    :cond_9
    invoke-static {}, Landroid/net/wifi/WifiUriParser;->mockableIsFlagNewUriParsingForEscapeCharacterEnabled()Z

    move-result v0

    const-string v1, "\""

    if-nez v0, :cond_25

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_25

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 300
    return-object p0

    .line 304
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist generateWifiConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Landroid/net/wifi/WifiConfiguration;
    .registers 11
    .param p0, "security"    # Ljava/lang/String;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "preSharedKey"    # Ljava/lang/String;
    .param p3, "hiddenSsid"    # Z
    .param p4, "networkId"    # I
    .param p5, "isTransitionDisabled"    # Z

    .line 331
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 332
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    invoke-static {p1}, Landroid/net/wifi/WifiUriParser;->addQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 333
    iput-boolean p3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 334
    iput p4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 336
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v1, :cond_c4

    const-string v1, "nopass"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto/16 :goto_c4

    .line 346
    :cond_22
    const-string v1, "WEP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 347
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 350
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 351
    .local v1, "length":I
    const/16 v2, 0xa

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_4a

    .line 352
    :cond_3d
    const-string v2, "[0-9A-Fa-f]*"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 353
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p2, v2, v4

    goto :goto_52

    .line 355
    :cond_4a
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p2}, Landroid/net/wifi/WifiUriParser;->addQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 357
    .end local v1    # "length":I
    :goto_52
    goto :goto_bb

    :cond_53
    const-string v1, "WPA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_8a

    .line 358
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 359
    .local v1, "securityParamsList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/SecurityParams;>;"
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v3

    .line 361
    .local v3, "scannedSecurityParam":Landroid/net/wifi/SecurityParams;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    if-eqz p5, :cond_75

    .line 363
    invoke-virtual {v3, v4}, Landroid/net/wifi/SecurityParams;->setEnabled(Z)V

    .line 364
    nop

    .line 365
    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v2

    .line 364
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_75
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(Ljava/util/List;)V

    .line 370
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 371
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_89

    .line 373
    :cond_83
    invoke-static {p2}, Landroid/net/wifi/WifiUriParser;->addQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 375
    .end local v1    # "securityParamsList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/SecurityParams;>;"
    .end local v3    # "scannedSecurityParam":Landroid/net/wifi/SecurityParams;
    :goto_89
    goto :goto_bb

    :cond_8a
    const-string v1, "SAE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 376
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 377
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_bb

    .line 378
    invoke-static {p2}, Landroid/net/wifi/WifiUriParser;->addQuotation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_bb

    .line 380
    :cond_a2
    const-string v1, "ADB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 381
    const-string v1, "WifiUriParser"

    const-string v2, "Security key: ADB, the ssid and passphrase should NOT add quotation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 383
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_bb

    .line 384
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 390
    :cond_bb
    :goto_bb
    return-object v0

    .line 387
    :cond_bc
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported security"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_c4
    :goto_c4
    new-array v1, v3, [Landroid/net/wifi/SecurityParams;

    .line 339
    invoke-static {v4}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v3

    aput-object v3, v1, v4

    .line 341
    const/4 v3, 0x6

    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v3

    aput-object v3, v1, v2

    .line 338
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(Ljava/util/List;)V

    .line 343
    return-object v0
.end method

.method private static blacklist getKeyValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "prefixUri"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "keyValueString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?<!\\\\)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 256
    .local p0, "keyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 257
    .local v1, "keyValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/WifiUriParser$$ExternalSyntheticBackport0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "strippedKeyValue":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    .end local v1    # "keyValue":Ljava/lang/String;
    .end local v2    # "strippedKeyValue":Ljava/lang/String;
    :cond_23
    goto :goto_4

    .line 263
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getZxingUriElement(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .registers 8
    .param p0, "uriSubString"    # Ljava/lang/String;
    .param p1, "prefixString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 212
    .local v1, "numberOfCharHandled":I
    const/4 v2, 0x0

    .line 213
    .local v2, "isPreviousCharEscaped":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "i":I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_37

    .line 214
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 215
    .local v4, "ch":C
    add-int/lit8 v1, v1, 0x1

    .line 216
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_24

    .line 217
    if-eqz v2, :cond_22

    .line 219
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    const/4 v2, 0x0

    .line 221
    goto :goto_34

    .line 223
    :cond_22
    const/4 v2, 0x1

    goto :goto_34

    .line 224
    :cond_24
    const/16 v5, 0x3b

    if-ne v4, v5, :cond_30

    .line 225
    if-nez v2, :cond_2b

    .line 226
    goto :goto_37

    .line 228
    :cond_2b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    const/4 v2, 0x0

    goto :goto_34

    .line 231
    :cond_30
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    const/4 v2, 0x0

    .line 213
    .end local v4    # "ch":C
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 235
    .end local v3    # "i":I
    :cond_37
    :goto_37
    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private static blacklist isValidConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "security"    # Ljava/lang/String;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "preSharedKey"    # Ljava/lang/String;

    .line 310
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string v0, "nopass"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 311
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 312
    return v1

    .line 316
    :cond_16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 317
    return v1

    .line 320
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist mockableIsFlagNewUriParsingForEscapeCharacterEnabled()Z
    .registers 1

    .line 89
    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->newUriParsingForEscapeCharacter()Z

    move-result v0

    return v0
.end method

.method public static whitelist parseUri(Ljava/lang/String;)Landroid/net/wifi/UriParserResults;
    .registers 3
    .param p0, "uri"    # Ljava/lang/String;

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 105
    const-string v0, "DPP:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 106
    invoke-static {p0}, Landroid/net/wifi/WifiUriParser;->parseWifiDppUri(Ljava/lang/String;)Landroid/net/wifi/UriParserResults;

    move-result-object v0

    return-object v0

    .line 107
    :cond_13
    const-string v0, "WIFI:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 108
    invoke-static {p0}, Landroid/net/wifi/WifiUriParser;->parseZxingWifiUriParser(Ljava/lang/String;)Landroid/net/wifi/UriParserResults;

    move-result-object v0

    return-object v0

    .line 110
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupport scheme (Not start with DPP:/WIFI:)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty Wifi Uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist parseWifiDppUri(Ljava/lang/String;)Landroid/net/wifi/UriParserResults;
    .registers 7
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 117
    const-string v0, "DPP:"

    const-string v1, ";"

    invoke-static {p0, v0, v1}, Landroid/net/wifi/WifiUriParser;->getKeyValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "keyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "K:"

    invoke-static {v0, v1}, Landroid/net/wifi/WifiUriParser;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "publicKey":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 124
    const-string v2, "I:"

    invoke-static {v0, v2}, Landroid/net/wifi/WifiUriParser;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "information":Ljava/lang/String;
    new-instance v3, Landroid/net/wifi/UriParserResults;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v2, v5}, Landroid/net/wifi/UriParserResults;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    return-object v3

    .line 121
    .end local v2    # "information":Ljava/lang/String;
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid format, publicKey is empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist parseZxingWifiUriParser(Ljava/lang/String;)Landroid/net/wifi/UriParserResults;
    .registers 21
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 132
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 133
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x0

    .line 134
    .local v2, "security":Ljava/lang/String;
    const/4 v3, 0x0

    .line 135
    .local v3, "ssid":Ljava/lang/String;
    const/4 v4, 0x0

    .line 136
    .local v4, "password":Ljava/lang/String;
    const/4 v5, 0x0

    .line 137
    .local v5, "hiddenSsidString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 138
    .local v6, "transitionDisabledValue":Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiUriParser;->mockableIsFlagNewUriParsingForEscapeCharacterEnabled()Z

    move-result v7

    const-string v8, "WIFI:"

    const-string v9, "R:"

    const-string v10, "H:"

    const-string v11, "P:"

    const-string v12, "S:"

    const-string v13, "T:"

    if-eqz v7, :cond_14c

    .line 139
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "wifiQr":Ljava/lang/String;
    const/4 v8, 0x0

    .line 142
    .local v8, "start":I
    :goto_23
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_13d

    .line 143
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 144
    .local v14, "value":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 145
    .local v15, "ch":C
    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_58

    .line 146
    move-object/from16 v16, v1

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v16, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v14, v12}, Landroid/net/wifi/WifiUriParser;->getZxingUriElement(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 147
    .local v1, "zxingUriElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v17, v2

    .end local v2    # "security":Ljava/lang/String;
    .local v17, "security":Ljava/lang/String;
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 148
    .end local v3    # "ssid":Ljava/lang/String;
    .local v2, "ssid":Ljava/lang/String;
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    add-int v3, v3, v18

    move v8, v3

    move-object v3, v2

    move-object/from16 v2, v17

    .end local v8    # "start":I
    .local v3, "start":I
    goto/16 :goto_139

    .line 149
    .end local v16    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "security":Ljava/lang/String;
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    .local v2, "security":Ljava/lang/String;
    .local v3, "ssid":Ljava/lang/String;
    .restart local v8    # "start":I
    :cond_58
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "security":Ljava/lang/String;
    .restart local v16    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v17    # "security":Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 150
    invoke-static {v14, v13}, Landroid/net/wifi/WifiUriParser;->getZxingUriElement(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 151
    .local v1, "zxingUriElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 152
    .end local v17    # "security":Ljava/lang/String;
    .restart local v2    # "security":Ljava/lang/String;
    move-object/from16 v17, v2

    .end local v2    # "security":Ljava/lang/String;
    .restart local v17    # "security":Ljava/lang/String;
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    add-int v2, v2, v18

    move v8, v2

    move-object/from16 v2, v17

    .end local v8    # "start":I
    .local v2, "start":I
    goto/16 :goto_139

    .line 153
    .end local v1    # "zxingUriElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "start":I
    .restart local v8    # "start":I
    :cond_80
    invoke-virtual {v14, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 154
    invoke-static {v14, v11}, Landroid/net/wifi/WifiUriParser;->getZxingUriElement(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 155
    .restart local v1    # "zxingUriElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 156
    .end local v4    # "password":Ljava/lang/String;
    .local v2, "password":Ljava/lang/String;
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    add-int v4, v4, v18

    move v8, v4

    move-object v4, v2

    move-object/from16 v2, v17

    .end local v8    # "start":I
    .local v4, "start":I
    goto/16 :goto_139

    .line 157
    .end local v1    # "zxingUriElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "password":Ljava/lang/String;
    .local v4, "password":Ljava/lang/String;
    .restart local v8    # "start":I
    :cond_a3
    invoke-virtual {v14, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 158
    invoke-static {v14, v10}, Landroid/net/wifi/WifiUriParser;->getZxingUriElement(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 159
    .restart local v1    # "zxingUriElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 160
    .end local v5    # "hiddenSsidString":Ljava/lang/String;
    .local v2, "hiddenSsidString":Ljava/lang/String;
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v8

    .line 161
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    add-int v5, v5, v18

    move v8, v5

    move-object v5, v2

    move-object/from16 v2, v17

    .end local v8    # "start":I
    .local v5, "start":I
    goto/16 :goto_139

    .line 162
    .end local v1    # "zxingUriElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "hiddenSsidString":Ljava/lang/String;
    .local v5, "hiddenSsidString":Ljava/lang/String;
    .restart local v8    # "start":I
    :cond_c6
    invoke-virtual {v14, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 163
    invoke-static {v14, v9}, Landroid/net/wifi/WifiUriParser;->getZxingUriElement(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 165
    .restart local v1    # "zxingUriElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 166
    .end local v6    # "transitionDisabledValue":Ljava/lang/String;
    .local v2, "transitionDisabledValue":Ljava/lang/String;
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    .line 167
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v18

    add-int v6, v6, v18

    move v8, v6

    move-object v6, v2

    move-object/from16 v2, v17

    .end local v8    # "start":I
    .local v6, "start":I
    goto :goto_139

    .line 168
    .end local v1    # "zxingUriElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "transitionDisabledValue":Ljava/lang/String;
    .local v6, "transitionDisabledValue":Ljava/lang/String;
    .restart local v8    # "start":I
    :cond_e8
    invoke-static {v15}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_12d

    const/16 v1, 0x3b

    if-ne v15, v1, :cond_f7

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    goto :goto_131

    .line 172
    :cond_f7
    const-string v1, ""

    invoke-static {v14, v1}, Landroid/net/wifi/WifiUriParser;->getZxingUriElement(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 173
    .restart local v1    # "zxingUriElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 174
    .local v2, "unsupportedUriPrefix":Ljava/lang/String;
    move-object/from16 v18, v3

    .end local v3    # "ssid":Ljava/lang/String;
    .local v18, "ssid":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    .end local v4    # "password":Ljava/lang/String;
    .local v19, "password":Ljava/lang/String;
    const-string v4, "UnsupportedUriPrefix Found:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiUriParser"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v8, v3

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto :goto_139

    .line 168
    .end local v1    # "zxingUriElement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "unsupportedUriPrefix":Ljava/lang/String;
    .end local v18    # "ssid":Ljava/lang/String;
    .end local v19    # "password":Ljava/lang/String;
    .restart local v3    # "ssid":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    :cond_12d
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 170
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .restart local v18    # "ssid":Ljava/lang/String;
    .restart local v19    # "password":Ljava/lang/String;
    :goto_131
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    .line 177
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "ch":C
    .end local v17    # "security":Ljava/lang/String;
    .end local v18    # "ssid":Ljava/lang/String;
    .end local v19    # "password":Ljava/lang/String;
    .local v2, "security":Ljava/lang/String;
    .restart local v3    # "ssid":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    :goto_139
    move-object/from16 v1, v16

    goto/16 :goto_23

    .line 142
    .end local v16    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    :cond_13d
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    .line 178
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "security":Ljava/lang/String;
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .end local v7    # "wifiQr":Ljava/lang/String;
    .end local v8    # "start":I
    .restart local v16    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v17    # "security":Ljava/lang/String;
    .restart local v18    # "ssid":Ljava/lang/String;
    .restart local v19    # "password":Ljava/lang/String;
    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    goto :goto_177

    .line 179
    .end local v16    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v17    # "security":Ljava/lang/String;
    .end local v18    # "ssid":Ljava/lang/String;
    .end local v19    # "password":Ljava/lang/String;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "security":Ljava/lang/String;
    .restart local v3    # "ssid":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    :cond_14c
    move-object/from16 v16, v1

    .line 180
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "config":Landroid/net/wifi/WifiConfiguration;
    const-string v1, ";"

    invoke-static {v0, v8, v1}, Landroid/net/wifi/WifiUriParser;->getKeyValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, "keyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, v13}, Landroid/net/wifi/WifiUriParser;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v1, v12}, Landroid/net/wifi/WifiUriParser;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {v1, v11}, Landroid/net/wifi/WifiUriParser;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-static {v1, v10}, Landroid/net/wifi/WifiUriParser;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-static {v1, v9}, Landroid/net/wifi/WifiUriParser;->getValueOrNull(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 189
    invoke-static {v2}, Landroid/net/wifi/WifiUriParser;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v3}, Landroid/net/wifi/WifiUriParser;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-static {v4}, Landroid/net/wifi/WifiUriParser;->removeBackSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    .line 193
    .end local v1    # "keyValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "security":Ljava/lang/String;
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .local v7, "security":Ljava/lang/String;
    .local v8, "ssid":Ljava/lang/String;
    .local v9, "password":Ljava/lang/String;
    :goto_177
    const-string v1, "true"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 194
    .local v10, "hiddenSsid":Z
    const-string v1, "1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    .line 195
    .local v12, "isTransitionDisabled":Z
    invoke-static {v7, v8, v9}, Landroid/net/wifi/WifiUriParser;->isValidConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18f

    .line 196
    const/4 v11, -0x1

    invoke-static/range {v7 .. v12}, Landroid/net/wifi/WifiUriParser;->generateWifiConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .end local v16    # "config":Landroid/net/wifi/WifiConfiguration;
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    goto :goto_191

    .line 195
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_18f
    move-object/from16 v1, v16

    .line 201
    .end local v16    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_191
    if-eqz v1, :cond_19b

    .line 204
    new-instance v2, Landroid/net/wifi/UriParserResults;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4, v1}, Landroid/net/wifi/UriParserResults;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    return-object v2

    .line 202
    :cond_19b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid format, can\'t generate WifiConfiguration"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static blacklist removeBackSlash(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "input"    # Ljava/lang/String;

    .line 268
    if-nez p0, :cond_4

    .line 269
    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 274
    .local v1, "backSlash":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 275
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 276
    .local v3, "ch":C
    const/16 v4, 0x5c

    if-eq v3, v4, :cond_1e

    .line 277
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    const/4 v1, 0x0

    goto :goto_26

    .line 280
    :cond_1e
    if-eqz v1, :cond_25

    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    const/4 v1, 0x0

    .line 283
    goto :goto_26

    .line 286
    :cond_25
    const/4 v1, 0x1

    .line 274
    .end local v3    # "ch":C
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 290
    .end local v2    # "i":I
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
