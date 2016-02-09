.class public final Lcom/android/okhttp/internal/http/RouteException;
.super Ljava/lang/Exception;
.source "RouteException.java"


# static fields
.field private static final addSuppressedExceptionMethod:Ljava/lang/reflect/Method;


# instance fields
.field private lastException:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    .line 31
    :try_start_0
    const-class v2, Ljava/lang/Throwable;

    #@2
    const-string/jumbo v3, "addSuppressed"

    #@5
    const/4 v4, 0x1

    #@6
    new-array v4, v4, [Ljava/lang/Class;

    #@8
    const-class v5, Ljava/lang/Throwable;

    #@a
    const/4 v6, 0x0

    #@b
    aput-object v5, v4, v6

    #@d
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    .line 35
    :goto_0
    sput-object v1, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    #@13
    .line 26
    return-void

    #@14
    .line 32
    :catch_0
    move-exception v0

    #@15
    .line 33
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    #@16
    .local v1, "m":Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "cause"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 41
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    #@5
    .line 39
    return-void
.end method

.method private addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V
    .locals 4
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "suppressed"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 54
    sget-object v1, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 56
    :try_start_0
    sget-object v1, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedExceptionMethod:Ljava/lang/reflect/Method;

    #@6
    const/4 v2, 0x1

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    const/4 v3, 0x0

    #@a
    aput-object p2, v2, v3

    #@c
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 53
    :cond_0
    :goto_0
    return-void

    #@10
    .line 57
    :catch_0
    move-exception v0

    #@11
    .local v0, "ignored":Ljava/lang/ReflectiveOperationException;
    goto :goto_0
.end method


# virtual methods
.method public addConnectException(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    #@2
    invoke-direct {p0, p1, v0}, Lcom/android/okhttp/internal/http/RouteException;->addSuppressedIfPossible(Ljava/io/IOException;Ljava/io/IOException;)V

    #@5
    .line 50
    iput-object p1, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    #@7
    .line 48
    return-void
.end method

.method public getLastConnectException()Ljava/io/IOException;
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/okhttp/internal/http/RouteException;->lastException:Ljava/io/IOException;

    #@2
    return-object v0
.end method
