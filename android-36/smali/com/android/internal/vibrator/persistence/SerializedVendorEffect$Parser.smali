.class final Lcom/android/internal/vibrator/persistence/SerializedVendorEffect$Parser;
.super Ljava/lang/Object;
.source "SerializedVendorEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Parser"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist parseNext(Lcom/android/modules/utils/TypedXmlPullParser;I)Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;
    .registers 9
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/vibrator/persistence/XmlParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const-string/jumbo v0, "vendor-effect"

    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkStartTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 95
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkTagHasNoUnexpectedAttributes(Lcom/android/modules/utils/TypedXmlPullParser;[Ljava/lang/String;)V

    .line 98
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readNextText(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)V

    .line 101
    :try_start_f
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_20

    move v3, v4

    goto :goto_21

    :cond_20
    move v3, v1

    :goto_21
    const-string v5, "Expected tag %s to have base64 representation of vendor data, got empty"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 107
    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 106
    invoke-static {v3}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 108
    .local v3, "vendorData":Landroid/os/PersistableBundle;
    invoke-virtual {v3}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3e

    move v1, v4

    :cond_3e
    const-string v4, "Expected tag %s to have non-empty vendor data, got empty bundle"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkParserCondition(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_47} :catch_5a
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_47} :catch_5a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_47} :catch_51

    .line 119
    .end local v2    # "text":Ljava/lang/String;
    nop

    .line 122
    invoke-static {p0}, Lcom/android/internal/vibrator/persistence/XmlReader;->readEndTag(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 124
    new-instance v0, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;

    invoke-direct {v0, v3}, Lcom/android/internal/vibrator/persistence/SerializedVendorEffect;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0

    .line 117
    .end local v3    # "vendorData":Landroid/os/PersistableBundle;
    :catch_51
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/android/internal/vibrator/persistence/XmlParserException;

    const-string v2, "Error reading vendor data from decoded bytes"

    invoke-direct {v1, v2, v0}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5a
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/android/internal/vibrator/persistence/XmlParserException;

    .line 115
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 113
    const-string v3, "Expected base64 representation of vendor data in tag %s, got %s"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
