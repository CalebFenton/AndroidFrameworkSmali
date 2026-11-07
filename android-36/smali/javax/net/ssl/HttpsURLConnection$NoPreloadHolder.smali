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
.field public static greylist-max-o defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 201
    :try_start_0
    const-string v0, "com.android.okhttp.internal.tls.OkHostnameVerifier"

    .line 202
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "INSTANCE"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HostnameVerifier;

    sput-object v0, Ljavax/net/ssl/HttpsURLConnection$NoPreloadHolder;->defaultHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    .line 206
    nop

    .line 207
    return-void

    .line 204
    :catch_17
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Failed to obtain okhttp HostnameVerifier"

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
