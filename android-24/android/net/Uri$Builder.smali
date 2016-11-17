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
.field private authority:Landroid/net/Uri$Part;

.field private fragment:Landroid/net/Uri$Part;

.field private opaquePart:Landroid/net/Uri$Part;

.field private path:Landroid/net/Uri$PathPart;

.field private query:Landroid/net/Uri$Part;

.field private scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private hasSchemeOrAuthority()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1546
    iget-object v2, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1547
    iget-object v2, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    #@8
    if-eqz v2, :cond_1

    #@a
    iget-object v2, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    #@c
    sget-object v3, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    #@e
    if-eq v2, v3, :cond_1

    #@10
    .line 1546
    :cond_0
    :goto_0
    return v0

    #@11
    :cond_1
    move v0, v1

    #@12
    .line 1547
    goto :goto_0
.end method


# virtual methods
.method public appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "newSegment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1433
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    #@2
    invoke-static {v0, p1}, Landroid/net/Uri$PathPart;->appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "newSegment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1426
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    #@2
    invoke-static {v0, p1}, Landroid/net/Uri$PathPart;->appendDecodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1486
    iput-object v4, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    #@3
    .line 1488
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-static {p1, v4}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    const-string/jumbo v3, "="

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 1489
    invoke-static {p2, v4}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .line 1488
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 1491
    .local v0, "encodedParameter":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    #@25
    if-nez v2, :cond_0

    #@27
    .line 1492
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@2a
    move-result-object v2

    #@2b
    iput-object v2, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    #@2d
    .line 1493
    return-object p0

    #@2e
    .line 1496
    :cond_0
    iget-object v2, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    #@30
    invoke-virtual {v2}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 1497
    .local v1, "oldQuery":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@39
    move-result v2

    #@3a
    if-nez v2, :cond_2

    #@3c
    .line 1498
    :cond_1
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@3f
    move-result-object v2

    #@40
    iput-object v2, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    #@42
    .line 1503
    :goto_0
    return-object p0

    #@43
    .line 1500
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    const-string/jumbo v3, "&"

    #@4f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    invoke-static {v2}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@5e
    move-result-object v2

    #@5f
    iput-object v2, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    #@61
    goto :goto_0
.end method

.method authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "authority"    # Landroid/net/Uri$Part;

    #@0
    .prologue
    .line 1371
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    #@3
    .line 1373
    iput-object p1, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    #@5
    .line 1374
    return-object p0
.end method

.method public authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1381
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public build()Landroid/net/Uri;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1520
    iget-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1521
    iget-object v0, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1522
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@b
    .line 1523
    const-string/jumbo v1, "An opaque URI must have a scheme."

    #@e
    .line 1522
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 1526
    :cond_0
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    #@14
    iget-object v1, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    #@16
    iget-object v2, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    #@18
    iget-object v4, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    #@1a
    invoke-direct {v0, v1, v2, v4, v6}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$OpaqueUri;)V

    #@1d
    return-object v0

    #@1e
    .line 1529
    :cond_1
    iget-object v3, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    #@20
    .line 1530
    .local v3, "path":Landroid/net/Uri$PathPart;
    if-eqz v3, :cond_2

    #@22
    sget-object v0, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    #@24
    if-ne v3, v0, :cond_4

    #@26
    .line 1531
    :cond_2
    sget-object v3, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    #@28
    .line 1540
    :cond_3
    :goto_0
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    #@2a
    .line 1541
    iget-object v1, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    #@2c
    iget-object v2, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    #@2e
    iget-object v4, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    #@30
    iget-object v5, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    #@32
    .line 1540
    invoke-direct/range {v0 .. v6}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$HierarchicalUri;)V

    #@35
    return-object v0

    #@36
    .line 1535
    :cond_4
    invoke-direct {p0}, Landroid/net/Uri$Builder;->hasSchemeOrAuthority()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_3

    #@3c
    .line 1536
    invoke-static {v3}, Landroid/net/Uri$PathPart;->makeAbsolute(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;

    #@3f
    move-result-object v3

    #@40
    goto :goto_0
.end method

.method public clearQuery()Landroid/net/Uri$Builder;
    .locals 1

    #@0
    .prologue
    .line 1510
    const/4 v0, 0x0

    #@1
    check-cast v0, Landroid/net/Uri$Part;

    #@3
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1388
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "fragment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1474
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public encodedOpaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "opaquePart"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1366
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1419
    invoke-static {p1}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1455
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 0
    .param p1, "fragment"    # Landroid/net/Uri$Part;

    #@0
    .prologue
    .line 1459
    iput-object p1, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    #@2
    .line 1460
    return-object p0
.end method

.method public fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "fragment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1467
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 0
    .param p1, "opaquePart"    # Landroid/net/Uri$Part;

    #@0
    .prologue
    .line 1347
    iput-object p1, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    #@2
    .line 1348
    return-object p0
.end method

.method public opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "opaquePart"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1357
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "path"    # Landroid/net/Uri$PathPart;

    #@0
    .prologue
    .line 1393
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    #@3
    .line 1395
    iput-object p1, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    #@5
    .line 1396
    return-object p0
.end method

.method public path(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1408
    invoke-static {p1}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "query"    # Landroid/net/Uri$Part;

    #@0
    .prologue
    .line 1438
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    #@3
    .line 1440
    iput-object p1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    #@5
    .line 1441
    return-object p0
.end method

.method public query(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1448
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0
    .param p1, "scheme"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1342
    iput-object p1, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    #@2
    .line 1343
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1553
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
