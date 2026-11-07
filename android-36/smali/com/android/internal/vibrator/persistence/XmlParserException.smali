.class public final Lcom/android/internal/vibrator/persistence/XmlParserException;
.super Ljava/lang/Exception;
.source "XmlParserException.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return-void
.end method

.method public static blacklist createFromPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)Lcom/android/internal/vibrator/persistence/XmlParserException;
    .registers 7
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;
    .param p3, "cause"    # Lorg/xmlpull/v1/XmlPullParserException;

    .line 46
    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlParserException;

    const-string v1, "Error parsing %s = %s in tag %s"

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static blacklist createFromPullParserException(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParserException;)Lcom/android/internal/vibrator/persistence/XmlParserException;
    .registers 5
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "cause"    # Lorg/xmlpull/v1/XmlPullParserException;

    .line 36
    new-instance v0, Lcom/android/internal/vibrator/persistence/XmlParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/vibrator/persistence/XmlParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
