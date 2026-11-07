.class public final Landroid/net/Uri$Builder;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private greylist-max-o authority:Landroid/net/Uri$Part;

.field private greylist-max-o fragment:Landroid/net/Uri$Part;

.field private greylist-max-o opaquePart:Landroid/net/Uri$Part;

.field private greylist-max-o path:Landroid/net/Uri$PathPart;

.field private greylist-max-o query:Landroid/net/Uri$Part;

.field private greylist-max-o scheme:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o hasSchemeOrAuthority()Z
    .registers 3

    .line 1598
    iget-object v0, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    sget-object v1, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    if-eq v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method


# virtual methods
.method public whitelist appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "newSegment"    # Ljava/lang/String;

    .line 1485
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    invoke-static {v0, p1}, Landroid/net/Uri$PathPart;->appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "newSegment"    # Ljava/lang/String;

    .line 1478
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    invoke-static {v0, p1}, Landroid/net/Uri$PathPart;->appendDecodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1538
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1541
    invoke-static {p2, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1543
    .local v0, "encodedParameter":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    if-nez v1, :cond_2d

    .line 1544
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    .line 1545
    return-object p0

    .line 1548
    :cond_2d
    iget-object v1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    invoke-virtual {v1}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v1

    .line 1549
    .local v1, "oldQuery":Ljava/lang/String;
    if-eqz v1, :cond_5a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_5a

    .line 1552
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v2

    iput-object v2, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    goto :goto_60

    .line 1550
    :cond_5a
    :goto_5a
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v2

    iput-object v2, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    .line 1555
    :goto_60
    return-object p0
.end method

.method greylist-max-o authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "authority"    # Landroid/net/Uri$Part;

    .line 1423
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 1425
    iput-object p1, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    .line 1426
    return-object p0
.end method

.method public whitelist authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "authority"    # Ljava/lang/String;

    .line 1433
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist build()Landroid/net/Uri;
    .registers 9

    .line 1572
    iget-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    if-eqz v0, :cond_1d

    .line 1573
    iget-object v0, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 1578
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    iget-object v1, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    iget-object v3, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri-IA;)V

    return-object v0

    .line 1574
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An opaque URI must have a scheme."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1581
    :cond_1d
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    .line 1582
    .local v0, "path":Landroid/net/Uri$PathPart;
    if-eqz v0, :cond_34

    sget-object v1, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    if-ne v0, v1, :cond_26

    goto :goto_34

    .line 1587
    :cond_26
    invoke-direct {p0}, Landroid/net/Uri$Builder;->hasSchemeOrAuthority()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1588
    invoke-static {v0}, Landroid/net/Uri$PathPart;->makeAbsolute(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;

    move-result-object v0

    move-object v4, v0

    goto :goto_37

    .line 1587
    :cond_32
    move-object v4, v0

    goto :goto_37

    .line 1583
    :cond_34
    :goto_34
    sget-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    move-object v4, v0

    .line 1592
    .end local v0    # "path":Landroid/net/Uri$PathPart;
    .local v4, "path":Landroid/net/Uri$PathPart;
    :goto_37
    new-instance v1, Landroid/net/Uri$HierarchicalUri;

    iget-object v2, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    iget-object v5, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    iget-object v6, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri-IA;)V

    return-object v1
.end method

.method public whitelist clearQuery()Landroid/net/Uri$Builder;
    .registers 3

    .line 1562
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri$Part;

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "authority"    # Ljava/lang/String;

    .line 1440
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "fragment"    # Ljava/lang/String;

    .line 1526
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist encodedOpaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "opaquePart"    # Ljava/lang/String;

    .line 1418
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 1471
    invoke-static {p1}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .line 1507
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .registers 2
    .param p1, "fragment"    # Landroid/net/Uri$Part;

    .line 1511
    iput-object p1, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    .line 1512
    return-object p0
.end method

.method public whitelist fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "fragment"    # Ljava/lang/String;

    .line 1519
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .registers 2
    .param p1, "opaquePart"    # Landroid/net/Uri$Part;

    .line 1399
    iput-object p1, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 1400
    return-object p0
.end method

.method public whitelist opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "opaquePart"    # Ljava/lang/String;

    .line 1409
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "path"    # Landroid/net/Uri$PathPart;

    .line 1445
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 1447
    iput-object p1, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    .line 1448
    return-object p0
.end method

.method public whitelist path(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 1460
    invoke-static {p1}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "query"    # Landroid/net/Uri$Part;

    .line 1490
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 1492
    iput-object p1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    .line 1493
    return-object p0
.end method

.method public whitelist query(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3
    .param p1, "query"    # Ljava/lang/String;

    .line 1500
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 4
    .param p1, "scheme"    # Ljava/lang/String;

    .line 1390
    if-eqz p1, :cond_d

    .line 1391
    const-string v0, "://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    goto :goto_10

    .line 1393
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    .line 1395
    :goto_10
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 1605
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
