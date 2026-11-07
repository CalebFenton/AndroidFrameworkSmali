.class final Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;
.super Ljava/lang/Object;
.source "HttpURLConnectionFactory.java"

# interfaces
.implements Lcom/android/okhttp/Dns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DnsAdapter"
.end annotation


# instance fields
.field private final blacklist adaptee:Lcom/android/okhttp/internalandroidapi/Dns;


# direct methods
.method constructor blacklist <init>(Lcom/android/okhttp/internalandroidapi/Dns;)V
    .registers 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 182
    instance-of v0, p1, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 185
    :cond_6
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    check-cast p1, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;

    iget-object p1, p1, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 177
    const-class v0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist lookup(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 172
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    invoke-interface {p0, p1}, Lcom/android/okhttp/internalandroidapi/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/android/okhttp/internalandroidapi/HttpURLConnectionFactory$DnsAdapter;->adaptee:Lcom/android/okhttp/internalandroidapi/Dns;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
