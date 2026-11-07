.class final Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
.super Ljava/lang/Object;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ClientSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HostAndPort"
.end annotation


# instance fields
.field final blacklist host:Ljava/lang/String;

.field final blacklist port:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    .line 234
    iput p2, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->port:I

    .line 235
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 244
    instance-of v0, p1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 245
    return v1

    .line 247
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    .line 248
    .local v0, "lhs":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v2, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->port:I

    iget v3, v0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->port:I

    if-ne v2, v3, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->port:I

    add-int/2addr v0, v1

    return v0
.end method
