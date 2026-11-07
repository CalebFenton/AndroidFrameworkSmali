.class public Landroid/net/http/CallbackExceptionWrapper;
.super Landroid/net/http/CallbackException;
.source "CallbackExceptionWrapper.java"


# direct methods
.method protected constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/CallbackException;)V
    .registers 4
    .param p1, "e"    # Landroid/net/connectivity/org/chromium/net/CallbackException;

    .line 26
    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/CallbackException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/CallbackException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Landroid/net/http/CronetExceptionTranslationUtils;->maybeTranslateException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/http/CallbackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method
