.class public Ljava/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Proxy$Type;
    }
.end annotation


# static fields
.field public static final whitelist test-api NO_PROXY:Ljava/net/Proxy;


# instance fields
.field private greylist-max-o sa:Ljava/net/SocketAddress;

.field private greylist-max-o type:Ljava/net/Proxy$Type;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Ljava/net/Proxy;

    invoke-direct {v0}, Ljava/net/Proxy;-><init>()V

    sput-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-void
.end method

.method private constructor greylist-max-r <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    iput-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Proxy;->sa:Ljava/net/SocketAddress;

    .line 78
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    .registers 6
    .param p1, "type"    # Ljava/net/Proxy$Type;
    .param p2, "sa"    # Ljava/net/SocketAddress;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq p1, v0, :cond_10

    instance-of v0, p2, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_10

    .line 96
    iput-object p1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    .line 97
    iput-object p2, p0, Ljava/net/Proxy;->sa:Ljava/net/SocketAddress;

    .line 98
    return-void

    .line 95
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not compatible with address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api address()Ljava/net/SocketAddress;
    .registers 2

    .line 117
    iget-object v0, p0, Ljava/net/Proxy;->sa:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 149
    const/4 v0, 0x0

    if-eqz p1, :cond_31

    instance-of v1, p1, Ljava/net/Proxy;

    if-nez v1, :cond_8

    goto :goto_31

    .line 151
    :cond_8
    move-object v1, p1

    check-cast v1, Ljava/net/Proxy;

    .line 152
    .local v1, "p":Ljava/net/Proxy;
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    if-ne v2, v3, :cond_30

    .line 153
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    if-nez v2, :cond_23

    .line 154
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    if-nez v2, :cond_22

    const/4 v0, 0x1

    :cond_22
    return v0

    .line 156
    :cond_23
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 158
    :cond_30
    return v0

    .line 150
    .end local v1    # "p":Ljava/net/Proxy;
    :cond_31
    :goto_31
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 167
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    if-nez v0, :cond_f

    .line 168
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy$Type;->hashCode()I

    move-result v0

    return v0

    .line 169
    :cond_f
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy$Type;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 129
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_b

    .line 130
    const-string v0, "DIRECT"

    return-object v0

    .line 131
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api type()Ljava/net/Proxy$Type;
    .registers 2

    .line 106
    iget-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    return-object v0
.end method
