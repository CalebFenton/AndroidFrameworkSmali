.class final Lcom/android/okhttp/HttpHandler$CleartextURLFilter;
.super Ljava/lang/Object;
.source "HttpHandler.java"

# interfaces
.implements Lcom/android/okhttp/internal/URLFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/HttpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CleartextURLFilter"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/HttpHandler$1;)V
    .registers 2

    .line 122
    invoke-direct {p0}, Lcom/android/okhttp/HttpHandler$CleartextURLFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist checkURLPermitted(Ljava/net/URL;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-static {}, Llibcore/net/NetworkSecurityPolicy;->getInstance()Llibcore/net/NetworkSecurityPolicy;

    move-result-object p1

    invoke-virtual {p1, p0}, Llibcore/net/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    return-void

    .line 127
    :cond_f
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleartext HTTP traffic to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not permitted"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
