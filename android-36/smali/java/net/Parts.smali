.class Ljava/net/Parts;
.super Ljava/lang/Object;
.source "URL.java"


# instance fields
.field blacklist path:Ljava/lang/String;

.field blacklist query:Ljava/lang/String;

.field blacklist ref:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    .line 1518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1519
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1520
    .local v0, "ind":I
    if-gez v0, :cond_d

    const/4 v1, 0x0

    goto :goto_13

    :cond_d
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_13
    iput-object v1, p0, Ljava/net/Parts;->ref:Ljava/lang/String;

    .line 1521
    const/4 v1, 0x0

    if-gez v0, :cond_1a

    move-object v2, p1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1522
    .end local p1    # "file":Ljava/lang/String;
    .local v2, "file":Ljava/lang/String;
    :goto_1e
    const/16 p1, 0x3f

    invoke-virtual {v2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    .line 1523
    .local p1, "q":I
    const/4 v3, -0x1

    if-eq p1, v3, :cond_36

    .line 1524
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/Parts;->query:Ljava/lang/String;

    .line 1525
    invoke-virtual {v2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    goto :goto_38

    .line 1527
    :cond_36
    iput-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    .line 1530
    :goto_38
    iget-object v3, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    if-eqz v3, :cond_6b

    iget-object v3, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6b

    iget-object v3, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_6b

    if-eqz p2, :cond_6b

    .line 1531
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    .line 1535
    :cond_6b
    return-void
.end method


# virtual methods
.method blacklist getPath()Ljava/lang/String;
    .registers 2

    .line 1538
    iget-object v0, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getQuery()Ljava/lang/String;
    .registers 2

    .line 1542
    iget-object v0, p0, Ljava/net/Parts;->query:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getRef()Ljava/lang/String;
    .registers 2

    .line 1546
    iget-object v0, p0, Ljava/net/Parts;->ref:Ljava/lang/String;

    return-object v0
.end method
