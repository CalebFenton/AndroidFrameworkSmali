.class public final Lcom/android/internal/vibrator/persistence/XmlSerializerException;
.super Ljava/lang/Exception;
.source "XmlSerializerException.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method
