.class public abstract Lcom/android/okhttp/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static greylist instance:Lcom/android/okhttp/internal/Internal;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/android/okhttp/OkHttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/Internal;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist initializeInstanceForTests()V
    .registers 1

    .line 49
    new-instance v0, Lcom/android/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/android/okhttp/OkHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract greylist addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;)V
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract greylist addLenient(Lcom/android/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract greylist apply(Lcom/android/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract greylist callEngineGetStreamAllocation(Lcom/android/okhttp/Call;)Lcom/android/okhttp/internal/http/StreamAllocation;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract greylist callEnqueue(Lcom/android/okhttp/Call;Lcom/android/okhttp/Callback;Z)V
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract greylist connectionBecameIdle(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)Z
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract greylist get(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/Address;Lcom/android/okhttp/internal/http/StreamAllocation;)Lcom/android/okhttp/internal/io/RealConnection;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract greylist getHttpUrlChecked(Ljava/lang/String;)Lcom/android/okhttp/HttpUrl;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract greylist internalCache(Lcom/android/okhttp/OkHttpClient;)Lcom/android/okhttp/internal/InternalCache;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract greylist put(Lcom/android/okhttp/ConnectionPool;Lcom/android/okhttp/internal/io/RealConnection;)V
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract greylist routeDatabase(Lcom/android/okhttp/ConnectionPool;)Lcom/android/okhttp/internal/RouteDatabase;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method

.method public abstract greylist setCache(Lcom/android/okhttp/OkHttpClient;Lcom/android/okhttp/internal/InternalCache;)V
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end method
