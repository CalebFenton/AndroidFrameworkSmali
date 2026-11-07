.class public final Lcom/android/okhttp/internal/http/RouteException;
.super Ljava/lang/Exception;
.source "RouteException.java"


# static fields
.field private static final greylist-max-o addSuppressedExceptionMethod:Ljava/lang/reflect/Method;


# instance fields
.field private greylist-max-o lastException:Ljava/io/IOException;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 33
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    const/4 v0, 0x0

    .line 37
    :goto_12
    sput-object v0, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/io/IOException;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 43
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    return-void
.end method

.method private greylist-max-o addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V
    .registers 3

    .line 56
    sget-object p0, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_b

    .line 58
    :try_start_4
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_b} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method


# virtual methods
.method public greylist-max-o addConnectException(Ljava/io/IOException;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V

    .line 52
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    return-void
.end method

.method public greylist-max-o getLastConnectException()Ljava/io/IOException;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    return-object p0
.end method
