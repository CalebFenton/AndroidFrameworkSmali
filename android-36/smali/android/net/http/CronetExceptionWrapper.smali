.class Landroid/net/http/CronetExceptionWrapper;
.super Landroid/net/http/HttpException;
.source "CronetExceptionWrapper.java"


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/CronetException;)V
    .registers 4
    .param p1, "e"    # Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 24
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/CronetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/CronetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/CronetExceptionTranslationUtils;->maybeTranslateException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method
