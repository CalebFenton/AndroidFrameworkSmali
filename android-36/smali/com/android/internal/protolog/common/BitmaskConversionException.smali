.class public Lcom/android/internal/protolog/common/BitmaskConversionException;
.super Ljava/lang/RuntimeException;
.source "BitmaskConversionException.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
