.class Ljava/net/Parts;
.super Ljava/lang/Object;
.source "URL.java"


# instance fields
.field path:Ljava/lang/String;

.field query:Ljava/lang/String;

.field ref:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x2f

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1319
    const/16 v3, 0x23

    #@9
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    #@c
    move-result v0

    #@d
    .line 1320
    .local v0, "ind":I
    if-gez v0, :cond_1

    #@f
    :goto_0
    iput-object v2, p0, Ljava/net/Parts;->ref:Ljava/lang/String;

    #@11
    .line 1321
    if-gez v0, :cond_2

    #@13
    .line 1322
    :goto_1
    const/16 v2, 0x3f

    #@15
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@18
    move-result v1

    #@19
    .line 1323
    .local v1, "q":I
    const/4 v2, -0x1

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 1324
    add-int/lit8 v2, v1, 0x1

    #@1e
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    iput-object v2, p0, Ljava/net/Parts;->query:Ljava/lang/String;

    #@24
    .line 1325
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    #@2a
    .line 1329
    :goto_2
    iget-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    #@2c
    if-eqz v2, :cond_0

    #@2e
    iget-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    #@30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@33
    move-result v2

    #@34
    if-lez v2, :cond_0

    #@36
    iget-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    #@38
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    #@3b
    move-result v2

    #@3c
    if-eq v2, v5, :cond_0

    #@3e
    .line 1330
    if-eqz p2, :cond_0

    #@40
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_4

    #@46
    .line 1318
    :cond_0
    :goto_3
    return-void

    #@47
    .line 1320
    .end local v1    # "q":I
    :cond_1
    add-int/lit8 v2, v0, 0x1

    #@49
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    goto :goto_0

    #@4e
    .line 1321
    :cond_2
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@51
    move-result-object p1

    #@52
    goto :goto_1

    #@53
    .line 1327
    .restart local v1    # "q":I
    :cond_3
    iput-object p1, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    #@55
    goto :goto_2

    #@56
    .line 1331
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    iget-object v3, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    iput-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    #@6b
    goto :goto_3
.end method


# virtual methods
.method getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1336
    iget-object v0, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1340
    iget-object v0, p0, Ljava/net/Parts;->query:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getRef()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1344
    iget-object v0, p0, Ljava/net/Parts;->ref:Ljava/lang/String;

    #@2
    return-object v0
.end method
