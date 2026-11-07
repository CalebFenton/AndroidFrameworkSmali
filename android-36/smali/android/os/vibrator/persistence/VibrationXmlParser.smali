.class public final Landroid/os/vibrator/persistence/VibrationXmlParser;
.super Ljava/lang/Object;
.source "VibrationXmlParser.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;,
        Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;,
        Landroid/os/vibrator/persistence/VibrationXmlParser$Flags;
    }
.end annotation


# static fields
.field public static final blacklist APPLICATION_VIBRATION_XML_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.haptics.vibration+xml"

.field public static final blacklist FLAG_ALLOW_HIDDEN_APIS:I = 0x1


# direct methods
.method public static synthetic blacklist $r8$lambda$-R-0-KdYRLwY70_HKmLQlQShGJ8(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 2

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$CboBSd8Io_UpVlYlm872u5okLwk(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;
    .registers 2

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    return-void
.end method

.method public static blacklist isSupportedMimeType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 171
    const-string v0, "application/vnd.android.haptics.vibration+xml"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist parse(Ljava/io/InputStream;)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseDocument(Ljava/io/Reader;)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 2
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocument(Ljava/io/Reader;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseDocument(Ljava/io/Reader;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 3
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    new-instance v0, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/vibrator/persistence/ParsedVibration;

    return-object v0
.end method

.method private static blacklist parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;
    .registers 7
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "I",
            "Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    .local p2, "parseLogic":Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;, "Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser<TT;>;"
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    .line 360
    .local v1, "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    const-string/jumbo v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 361
    invoke-interface {v1, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 364
    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentStart(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 367
    invoke-interface {p2, v1, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;->parse(Lcom/android/modules/utils/TypedXmlPullParser;I)Ljava/lang/Object;

    move-result-object v2

    .line 370
    .local v2, "result":Ljava/lang/Object;, "TT;"
    invoke-static {v1}, Lcom/android/internal/vibrator/persistence/XmlReader;->readDocumentEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_19} :catch_21
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_1 .. :try_end_19} :catch_1a

    .line 372
    return-object v2

    .line 375
    .end local v1    # "parser":Lcom/android/modules/utils/TypedXmlPullParser;
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_1a
    move-exception v1

    .line 376
    .local v1, "e":Lcom/android/internal/vibrator/persistence/XmlParserException;
    new-instance v2, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    invoke-direct {v2, v1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Lcom/android/internal/vibrator/persistence/XmlParserException;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw v2

    .line 373
    .end local v1    # "e":Lcom/android/internal/vibrator/persistence/XmlParserException;
    :catch_21
    move-exception v1

    .line 374
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    const-string v3, "Error initializing XMLPullParser"

    invoke-direct {v2, v3, v1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw v2
.end method

.method public static blacklist parseElement(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v0
    :try_end_4
    .catch Lcom/android/internal/vibrator/persistence/XmlParserException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 301
    :catch_5
    move-exception v0

    .line 302
    .local v0, "e":Lcom/android/internal/vibrator/persistence/XmlParserException;
    new-instance v1, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Lcom/android/internal/vibrator/persistence/XmlParserException;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw v1
.end method

.method private static blacklist parseElementInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 6
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 310
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 312
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "tagName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_58

    :cond_e
    goto :goto_25

    :sswitch_f
    const-string/jumbo v1, "vibration-select"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_26

    :sswitch_1a
    const-string/jumbo v1, "vibration-effect"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_26

    :goto_25
    const/4 v1, -0x1

    :goto_26
    packed-switch v1, :pswitch_data_62

    .line 319
    new-instance v1, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when parsing a vibration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Ljava/lang/String;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V

    throw v1

    .line 317
    :pswitch_49
    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationSelectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;

    move-result-object v1

    return-object v1

    .line 315
    :pswitch_4e
    new-instance v1, Landroid/os/vibrator/persistence/ParsedVibration;

    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/vibrator/persistence/ParsedVibration;-><init>(Landroid/os/VibrationEffect;)V

    return-object v1

    :sswitch_data_58
    .sparse-switch
        0x97892c -> :sswitch_1a
        0x18700497 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_49
    .end packed-switch
.end method

.method public static whitelist parseVibrationEffect(Ljava/io/InputStream;)Landroid/os/VibrationEffect;
    .registers 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffect(Ljava/io/Reader;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseVibrationEffect(Ljava/io/Reader;)Landroid/os/VibrationEffect;
    .registers 2
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffect(Ljava/io/Reader;I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseVibrationEffect(Ljava/io/Reader;I)Landroid/os/VibrationEffect;
    .registers 3
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    new-instance v0, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/os/vibrator/persistence/VibrationXmlParser$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseDocumentInternal(Ljava/io/Reader;ILandroid/os/vibrator/persistence/VibrationXmlParser$ElementParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method private static blacklist parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "parserFlags":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_7

    .line 345
    or-int/lit8 v0, v0, 0x1

    .line 347
    :cond_7
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectXmlParser;->parseTag(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;->deserialize()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/VibrationEffect;

    return-object v1
.end method

.method private static blacklist parseVibrationSelectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/vibrator/persistence/ParsedVibration;
    .registers 5
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/vibrator/persistence/XmlParserException;
        }
    .end annotation

    .line 328
    const-string/jumbo v0, "vibration-select"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 331
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 332
    .local v0, "rootDepth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v1, "effects":Ljava/util/List;, "Ljava/util/List<Landroid/os/VibrationEffect;>;"
    :goto_15
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextTagWithin(Lcom/android/modules/utils/TypedXmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 334
    invoke-static {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser;->parseVibrationEffectInternal(Lcom/android/modules/utils/TypedXmlPullParser;I)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 336
    :cond_23
    new-instance v2, Landroid/os/vibrator/persistence/ParsedVibration;

    invoke-direct {v2, v1}, Landroid/os/vibrator/persistence/ParsedVibration;-><init>(Ljava/util/List;)V

    return-object v2
.end method
