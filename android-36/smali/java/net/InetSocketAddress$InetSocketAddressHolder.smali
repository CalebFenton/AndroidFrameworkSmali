.class Ljava/net/InetSocketAddress$InetSocketAddressHolder;
.super Ljava/lang/Object;
.source "InetSocketAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InetSocketAddressHolder"
.end annotation


# instance fields
.field private greylist-max-o addr:Ljava/net/InetAddress;

.field private greylist-max-o hostname:Ljava/lang/String;

.field private greylist-max-o port:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetaddr(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;
    .registers 1

    iget-object p0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgethostname(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetport(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I
    .registers 1

    iget p0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetAddress(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/net/InetAddress;
    .registers 1

    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHostName(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHostString(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getHostString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPort(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)I
    .registers 1

    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->getPort()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misUnresolved(Ljava/net/InetSocketAddress$InetSocketAddressHolder;)Z
    .registers 1

    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->isUnresolved()Z

    move-result p0

    return p0
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    .line 68
    iput p3, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/net/InetAddress;ILjava/net/InetSocketAddress-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;-><init>(Ljava/lang/String;Ljava/net/InetAddress;I)V

    return-void
.end method

.method private greylist-max-o getAddress()Ljava/net/InetAddress;
    .registers 2

    .line 76
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method private greylist-max-o getHostName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    return-object v0

    .line 82
    :cond_7
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_12

    .line 83
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getHostString()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 89
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    return-object v0

    .line 90
    :cond_7
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_29

    .line 91
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 92
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->holder()Ljava/net/InetAddress$InetAddressHolder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress$InetAddressHolder;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_22
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 96
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o getPort()I
    .registers 2

    .line 72
    iget v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    return v0
.end method

.method private greylist-max-o isUnresolved()Z
    .registers 2

    .line 100
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x0

    if-eqz p1, :cond_44

    instance-of v1, p1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    if-nez v1, :cond_8

    goto :goto_44

    .line 125
    :cond_8
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;

    .line 127
    .local v1, "that":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    iget-object v2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    const/4 v3, 0x1

    if-eqz v2, :cond_19

    .line 128
    iget-object v2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    iget-object v4, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v2, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, "sameIP":Z
    goto :goto_3a

    .line 129
    .end local v2    # "sameIP":Z
    :cond_19
    iget-object v2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v2, :cond_2f

    .line 130
    iget-object v2, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_2d

    iget-object v2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    iget-object v4, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    move v2, v3

    goto :goto_2e

    :cond_2d
    move v2, v0

    .restart local v2    # "sameIP":Z
    :goto_2e
    goto :goto_3a

    .line 133
    .end local v2    # "sameIP":Z
    :cond_2f
    iget-object v2, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_39

    iget-object v2, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-nez v2, :cond_39

    move v2, v3

    goto :goto_3a

    :cond_39
    move v2, v0

    .line 134
    .restart local v2    # "sameIP":Z
    :goto_3a
    if-eqz v2, :cond_43

    iget v4, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    iget v5, v1, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    if-ne v4, v5, :cond_43

    move v0, v3

    :cond_43
    return v0

    .line 124
    .end local v1    # "that":Ljava/net/InetSocketAddress$InetSocketAddressHolder;
    .end local v2    # "sameIP":Z
    :cond_44
    :goto_44
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 139
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_e

    .line 140
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    add-int/2addr v0, v1

    return v0

    .line 141
    :cond_e
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 142
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    add-int/2addr v0, v1

    return v0

    .line 143
    :cond_20
    iget v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 108
    invoke-direct {p0}, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->isUnresolved()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/<unresolved>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "formatted":Ljava/lang/String;
    goto :goto_58

    .line 111
    .end local v0    # "formatted":Ljava/lang/String;
    :cond_1c
    iget-object v0, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0    # "formatted":Ljava/lang/String;
    iget-object v1, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->addr:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_58

    .line 113
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 114
    .local v1, "i":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .end local v1    # "i":I
    :cond_58
    :goto_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/InetSocketAddress$InetSocketAddressHolder;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
