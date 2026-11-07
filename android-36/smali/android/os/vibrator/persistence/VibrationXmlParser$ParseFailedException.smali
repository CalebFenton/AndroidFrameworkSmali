.class public final Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;
.super Ljava/io/IOException;
.source "VibrationXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/vibrator/persistence/VibrationXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParseFailedException"
.end annotation


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/vibrator/persistence/XmlParserException;)V
    .registers 3
    .param p1, "parserException"    # Lcom/android/internal/vibrator/persistence/XmlParserException;

    .line 400
    invoke-virtual {p1}, Lcom/android/internal/vibrator/persistence/XmlParserException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/vibrator/persistence/XmlParserException;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Lcom/android/internal/vibrator/persistence/XmlParserException;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 396
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 397
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 404
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;Landroid/os/vibrator/persistence/VibrationXmlParser-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/os/vibrator/persistence/VibrationXmlParser$ParseFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
