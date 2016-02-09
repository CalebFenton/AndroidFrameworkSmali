.class Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
.super Ljava/lang/Object;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ClientSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HostAndPort"
.end annotation


# instance fields
.field final host:Ljava/lang/String;

.field final port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 130
    iput-object p1, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    #@5
    .line 131
    iput p2, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->port:I

    #@7
    .line 129
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 141
    instance-of v2, p1, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 142
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 144
    check-cast v0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;

    #@9
    .line 145
    .local v0, "lhs":Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;
    iget-object v2, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    #@b
    iget-object v3, v0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    iget v2, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->port:I

    #@15
    iget v3, v0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->port:I

    #@17
    if-ne v2, v3, :cond_1

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->host:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget v1, p0, Lcom/android/org/conscrypt/ClientSessionContext$HostAndPort;->port:I

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method
