.class Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;
.super Ljava/lang/Object;
.source "HttpsURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/net/ssl/HttpsURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field public static defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field public static defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 116
    :try_start_0
    const-string/jumbo v1, "com.android.okhttp.internal.tls.OkHostnameVerifier"

    #@3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    .line 117
    const-string/jumbo v2, "INSTANCE"

    #@a
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@d
    move-result-object v1

    #@e
    .line 117
    const/4 v2, 0x0

    #@f
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 115
    check-cast v1, Ljavax/net/ssl/HostnameVerifier;

    #@15
    sput-object v1, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 123
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Ljavax/net/ssl/SSLSocketFactory;

    #@1d
    sput-object v1, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    #@1f
    .line 111
    return-void

    #@20
    .line 118
    :catch_0
    move-exception v0

    #@21
    .line 119
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    #@23
    const-string/jumbo v2, "Failed to obtain okhttp HostnameVerifier"

    #@26
    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
