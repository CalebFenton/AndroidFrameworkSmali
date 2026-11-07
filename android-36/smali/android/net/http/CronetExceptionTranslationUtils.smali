.class public Landroid/net/http/CronetExceptionTranslationUtils;
.super Ljava/lang/Object;
.source "CronetExceptionTranslationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/CronetExceptionTranslationUtils$CronetRunnable;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist executeTranslatingExceptions(Landroid/net/http/CronetExceptionTranslationUtils$CronetRunnable;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/http/CronetExceptionTranslationUtils$CronetRunnable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    .local p0, "work":Landroid/net/http/CronetExceptionTranslationUtils$CronetRunnable;, "Landroid/net/http/CronetExceptionTranslationUtils$CronetRunnable<TT;>;"
    :try_start_0
    invoke-interface {p0}, Landroid/net/http/CronetExceptionTranslationUtils$CronetRunnable;->run()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Landroid/net/connectivity/org/chromium/net/CronetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 34
    :catch_5
    move-exception v0

    .line 35
    .local v0, "e":Landroid/net/connectivity/org/chromium/net/CronetException;
    invoke-static {v0}, Landroid/net/http/CronetExceptionTranslationUtils;->translateException(Landroid/net/connectivity/org/chromium/net/CronetException;)Landroid/net/http/HttpException;

    move-result-object v1

    throw v1
.end method

.method public static blacklist maybeTranslateException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 56
    instance-of v0, p0, Landroid/net/connectivity/org/chromium/net/InlineExecutionProhibitedException;

    if-eqz v0, :cond_d

    .line 58
    new-instance v0, Landroid/net/http/InlineExecutionProhibitedException;

    invoke-direct {v0}, Landroid/net/http/InlineExecutionProhibitedException;-><init>()V

    .line 60
    .local v0, "translatedException":Landroid/net/http/InlineExecutionProhibitedException;
    invoke-virtual {v0, p0}, Landroid/net/http/InlineExecutionProhibitedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 61
    return-object v0

    .line 64
    .end local v0    # "translatedException":Landroid/net/http/InlineExecutionProhibitedException;
    :cond_d
    return-object p0
.end method

.method public static blacklist translateException(Landroid/net/connectivity/org/chromium/net/CronetException;)Landroid/net/http/HttpException;
    .registers 3
    .param p0, "e"    # Landroid/net/connectivity/org/chromium/net/CronetException;

    .line 40
    instance-of v0, p0, Landroid/net/connectivity/org/chromium/net/QuicException;

    if-eqz v0, :cond_d

    .line 41
    new-instance v0, Landroid/net/http/QuicExceptionWrapper;

    move-object v1, p0

    check-cast v1, Landroid/net/connectivity/org/chromium/net/QuicException;

    invoke-direct {v0, v1}, Landroid/net/http/QuicExceptionWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/QuicException;)V

    return-object v0

    .line 44
    :cond_d
    instance-of v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkException;

    if-eqz v0, :cond_1a

    .line 45
    new-instance v0, Landroid/net/http/NetworkExceptionWrapper;

    move-object v1, p0

    check-cast v1, Landroid/net/connectivity/org/chromium/net/NetworkException;

    invoke-direct {v0, v1}, Landroid/net/http/NetworkExceptionWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/NetworkException;)V

    return-object v0

    .line 48
    :cond_1a
    instance-of v0, p0, Landroid/net/connectivity/org/chromium/net/CallbackException;

    if-eqz v0, :cond_27

    .line 49
    new-instance v0, Landroid/net/http/CallbackExceptionWrapper;

    move-object v1, p0

    check-cast v1, Landroid/net/connectivity/org/chromium/net/CallbackException;

    invoke-direct {v0, v1}, Landroid/net/http/CallbackExceptionWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/CallbackException;)V

    return-object v0

    .line 52
    :cond_27
    new-instance v0, Landroid/net/http/CronetExceptionWrapper;

    invoke-direct {v0, p0}, Landroid/net/http/CronetExceptionWrapper;-><init>(Landroid/net/connectivity/org/chromium/net/CronetException;)V

    return-object v0
.end method
