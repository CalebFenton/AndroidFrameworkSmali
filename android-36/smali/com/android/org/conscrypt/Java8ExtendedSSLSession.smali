.class Lcom/android/org/conscrypt/Java8ExtendedSSLSession;
.super Lcom/android/org/conscrypt/Java7ExtendedSSLSession;
.source "Java8ExtendedSSLSession.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/conscrypt/ExternalSession;)V
    .registers 2
    .param p1, "delegate"    # Lcom/android/org/conscrypt/ExternalSession;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/Java7ExtendedSSLSession;-><init>(Lcom/android/org/conscrypt/ExternalSession;)V

    .line 33
    return-void
.end method


# virtual methods
.method public final whitelist test-api getRequestedServerNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/android/org/conscrypt/Java8ExtendedSSLSession;->delegate:Lcom/android/org/conscrypt/ExternalSession;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ExternalSession;->getRequestedServerName()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "requestedServerName":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 42
    :cond_d
    new-instance v1, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
