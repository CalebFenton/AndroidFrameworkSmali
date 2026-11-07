.class final Ljava/net/UrlDeserializedState;
.super Ljava/lang/Object;
.source "URL.java"


# instance fields
.field private final greylist-max-o authority:Ljava/lang/String;

.field private final greylist-max-o file:Ljava/lang/String;

.field private final greylist-max-o hashCode:I

.field private final greylist-max-o host:Ljava/lang/String;

.field private final greylist-max-o port:I

.field private final greylist-max-o protocol:Ljava/lang/String;

.field private final greylist-max-o ref:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "file"    # Ljava/lang/String;
    .param p6, "ref"    # Ljava/lang/String;
    .param p7, "hashCode"    # I

    .line 1562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1563
    iput-object p1, p0, Ljava/net/UrlDeserializedState;->protocol:Ljava/lang/String;

    .line 1564
    iput-object p2, p0, Ljava/net/UrlDeserializedState;->host:Ljava/lang/String;

    .line 1565
    iput p3, p0, Ljava/net/UrlDeserializedState;->port:I

    .line 1566
    iput-object p4, p0, Ljava/net/UrlDeserializedState;->authority:Ljava/lang/String;

    .line 1567
    iput-object p5, p0, Ljava/net/UrlDeserializedState;->file:Ljava/lang/String;

    .line 1568
    iput-object p6, p0, Ljava/net/UrlDeserializedState;->ref:Ljava/lang/String;

    .line 1569
    iput p7, p0, Ljava/net/UrlDeserializedState;->hashCode:I

    .line 1570
    return-void
.end method


# virtual methods
.method greylist-max-o getAuthority()Ljava/lang/String;
    .registers 2

    .line 1581
    iget-object v0, p0, Ljava/net/UrlDeserializedState;->authority:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getFile()Ljava/lang/String;
    .registers 2

    .line 1589
    iget-object v0, p0, Ljava/net/UrlDeserializedState;->file:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getHashCode()I
    .registers 2

    .line 1597
    iget v0, p0, Ljava/net/UrlDeserializedState;->hashCode:I

    return v0
.end method

.method greylist-max-o getHost()Ljava/lang/String;
    .registers 2

    .line 1577
    iget-object v0, p0, Ljava/net/UrlDeserializedState;->host:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getPort()I
    .registers 2

    .line 1585
    iget v0, p0, Ljava/net/UrlDeserializedState;->port:I

    return v0
.end method

.method greylist-max-o getProtocol()Ljava/lang/String;
    .registers 2

    .line 1573
    iget-object v0, p0, Ljava/net/UrlDeserializedState;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o getRef()Ljava/lang/String;
    .registers 2

    .line 1593
    iget-object v0, p0, Ljava/net/UrlDeserializedState;->ref:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o reconstituteUrlString()Ljava/lang/String;
    .registers 4

    .line 1603
    iget-object v0, p0, Ljava/net/UrlDeserializedState;->protocol:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1604
    .local v0, "len":I
    iget-object v1, p0, Ljava/net/UrlDeserializedState;->authority:Ljava/lang/String;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Ljava/net/UrlDeserializedState;->authority:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 1605
    iget-object v1, p0, Ljava/net/UrlDeserializedState;->authority:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1606
    :cond_1d
    iget-object v1, p0, Ljava/net/UrlDeserializedState;->file:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 1607
    iget-object v1, p0, Ljava/net/UrlDeserializedState;->file:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 1609
    :cond_28
    iget-object v1, p0, Ljava/net/UrlDeserializedState;->ref:Ljava/lang/String;

    if-eqz v1, :cond_35

    .line 1610
    iget-object v1, p0, Ljava/net/UrlDeserializedState;->ref:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1611
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1612
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/net/UrlDeserializedState;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    iget-object v2, p0, Ljava/net/UrlDeserializedState;->authority:Ljava/lang/String;

    if-eqz v2, :cond_5a

    iget-object v2, p0, Ljava/net/UrlDeserializedState;->authority:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5a

    .line 1615
    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    iget-object v2, p0, Ljava/net/UrlDeserializedState;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    :cond_5a
    iget-object v2, p0, Ljava/net/UrlDeserializedState;->file:Ljava/lang/String;

    if-eqz v2, :cond_63

    .line 1619
    iget-object v2, p0, Ljava/net/UrlDeserializedState;->file:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1621
    :cond_63
    iget-object v2, p0, Ljava/net/UrlDeserializedState;->ref:Ljava/lang/String;

    if-eqz v2, :cond_71

    .line 1622
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1623
    iget-object v2, p0, Ljava/net/UrlDeserializedState;->ref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    :cond_71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
