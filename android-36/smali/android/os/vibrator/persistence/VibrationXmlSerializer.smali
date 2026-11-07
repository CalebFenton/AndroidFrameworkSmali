.class public final Landroid/os/vibrator/persistence/VibrationXmlSerializer;
.super Ljava/lang/Object;
.source "VibrationXmlSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;,
        Landroid/os/vibrator/persistence/VibrationXmlSerializer$Flags;
    }
.end annotation


# static fields
.field public static final blacklist FLAG_ALLOW_HIDDEN_APIS:I = 0x1

.field public static final blacklist FLAG_PRETTY_PRINT:I = 0x2

.field private static final blacklist XML_ENCODING:Ljava/lang/String;

.field private static final blacklist XML_FEATURE_INDENT_OUTPUT:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 76
    sget-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v0}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->XML_ENCODING:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method public static blacklist serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;)V
    .registers 3
    .param p0, "effect"    # Landroid/os/VibrationEffect;
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;I)V

    .line 95
    return-void
.end method

.method public static blacklist serialize(Landroid/os/VibrationEffect;Ljava/io/Writer;I)V
    .registers 8
    .param p0, "effect"    # Landroid/os/VibrationEffect;
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    nop

    .line 109
    invoke-static {p0, p2}, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->toSerializedVibration(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object v0

    .line 110
    .local v0, "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v1

    .line 111
    .local v1, "xmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    move v2, v3

    :goto_11
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 112
    invoke-interface {v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 113
    sget-object v2, Landroid/os/vibrator/persistence/VibrationXmlSerializer;->XML_ENCODING:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 114
    invoke-interface {v0, v1}, Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 115
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 116
    return-void
.end method

.method private static blacklist toSerializedVibration(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;
    .registers 6
    .param p0, "effect"    # Landroid/os/VibrationEffect;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            "I)",
            "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<",
            "+",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;
        }
    .end annotation

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "serializerFlags":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_7

    .line 123
    or-int/lit8 v0, v0, 0x1

    .line 127
    :cond_7
    :try_start_7
    invoke-static {}, Landroid/os/vibrator/Flags;->normalizedPwleEffects()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 128
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/VibrationEffectSerializer;->serialize(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object v1

    .local v1, "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    goto :goto_16

    .line 131
    .end local v1    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    :cond_12
    invoke-static {p0, v0}, Lcom/android/internal/vibrator/persistence/LegacyVibrationEffectXmlSerializer;->serialize(Landroid/os/VibrationEffect;I)Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;

    move-result-object v1

    .line 134
    .restart local v1    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    :goto_16
    invoke-static {v1, p0}, Lcom/android/internal/vibrator/persistence/XmlValidator;->checkSerializedVibration(Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;Landroid/os/VibrationEffect;)V
    :try_end_19
    .catch Lcom/android/internal/vibrator/persistence/XmlSerializerException; {:try_start_7 .. :try_end_19} :catch_1b

    .line 138
    nop

    .line 140
    return-object v1

    .line 135
    .end local v1    # "serializedVibration":Lcom/android/internal/vibrator/persistence/XmlSerializedVibration;, "Lcom/android/internal/vibrator/persistence/XmlSerializedVibration<+Landroid/os/VibrationEffect;>;"
    :catch_1b
    move-exception v1

    .line 137
    .local v1, "e":Lcom/android/internal/vibrator/persistence/XmlSerializerException;
    new-instance v2, Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Landroid/os/vibrator/persistence/VibrationXmlSerializer$SerializationFailedException;-><init>(Landroid/os/VibrationEffect;Ljava/lang/Throwable;Landroid/os/vibrator/persistence/VibrationXmlSerializer-IA;)V

    throw v2
.end method
