.class final Lsun/security/ssl/ProtocolList;
.super Ljava/lang/Object;
.source "ProtocolList.java"


# instance fields
.field final helloVersion:Lsun/security/ssl/ProtocolVersion;

.field final max:Lsun/security/ssl/ProtocolVersion;

.field final min:Lsun/security/ssl/ProtocolVersion;

.field private protocolNames:[Ljava/lang/String;

.field private final protocols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lsun/security/ssl/ProtocolVersion;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/ProtocolVersion;>;"
    const/4 v2, 0x0

    #@1
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    iput-object p1, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@6
    .line 58
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    const/4 v1, 0x1

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 59
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@11
    sget-object v1, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    .line 58
    if-eqz v0, :cond_0

    #@19
    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    const-string/jumbo v1, "SSLv2Hello cannot be enabled unless at least one other supported version is also enabled."

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 65
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_1

    #@2a
    .line 66
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@2c
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@2f
    .line 67
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Lsun/security/ssl/ProtocolVersion;

    #@37
    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    #@39
    .line 68
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@3b
    iget-object v1, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v1

    #@41
    add-int/lit8 v1, v1, -0x1

    #@43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Lsun/security/ssl/ProtocolVersion;

    #@49
    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    #@4b
    .line 69
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@4d
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v0

    #@51
    check-cast v0, Lsun/security/ssl/ProtocolVersion;

    #@53
    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    #@55
    .line 55
    :goto_0
    return-void

    #@56
    .line 71
    :cond_1
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    #@58
    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    #@5a
    .line 72
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    #@5c
    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    #@5e
    .line 73
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    #@60
    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    #@62
    goto :goto_0
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 52
    invoke-static {p1}, Lsun/security/ssl/ProtocolList;->convert([Ljava/lang/String;)Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lsun/security/ssl/ProtocolList;-><init>(Ljava/util/ArrayList;)V

    #@7
    .line 51
    return-void
.end method

.method private static convert([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lsun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    if-nez p0, :cond_0

    #@2
    .line 79
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "Protocols may not be null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 82
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@d
    const/4 v3, 0x3

    #@e
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    .line 83
    .local v2, "versions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/ProtocolVersion;>;"
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    #@13
    if-ge v0, v3, :cond_2

    #@15
    .line 84
    aget-object v3, p0, v0

    #@17
    invoke-static {v3}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    #@1a
    move-result-object v1

    #@1b
    .line 85
    .local v1, "version":Lsun/security/ssl/ProtocolVersion;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_1

    #@21
    .line 86
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    .line 83
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 90
    .end local v1    # "version":Lsun/security/ssl/ProtocolVersion;
    :cond_2
    return-object v2
.end method


# virtual methods
.method collection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method contains(Lsun/security/ssl/ProtocolVersion;)Z
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 99
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 100
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 102
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method selectProtocolVersion(Lsun/security/ssl/ProtocolVersion;)Lsun/security/ssl/ProtocolVersion;
    .locals 5
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    .line 125
    const/4 v2, 0x0

    #@1
    .line 126
    .local v2, "selectedVersion":Lsun/security/ssl/ProtocolVersion;
    iget-object v3, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@3
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6
    move-result-object v1

    #@7
    .end local v2    # "selectedVersion":Lsun/security/ssl/ProtocolVersion;
    .local v1, "pv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lsun/security/ssl/ProtocolVersion;

    #@13
    .line 127
    .local v0, "pv":Lsun/security/ssl/ProtocolVersion;
    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    #@15
    iget v4, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    #@17
    if-le v3, v4, :cond_1

    #@19
    .line 133
    .end local v0    # "pv":Lsun/security/ssl/ProtocolVersion;
    :cond_0
    return-object v2

    #@1a
    .line 130
    .restart local v0    # "pv":Lsun/security/ssl/ProtocolVersion;
    :cond_1
    move-object v2, v0

    #@1b
    .local v2, "selectedVersion":Lsun/security/ssl/ProtocolVersion;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method declared-synchronized toStringArray()[Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 140
    :try_start_0
    iget-object v4, p0, Lsun/security/ssl/ProtocolList;->protocolNames:[Ljava/lang/String;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 141
    iget-object v4, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v4

    #@b
    new-array v4, v4, [Ljava/lang/String;

    #@d
    iput-object v4, p0, Lsun/security/ssl/ProtocolList;->protocolNames:[Ljava/lang/String;

    #@f
    .line 142
    const/4 v0, 0x0

    #@10
    .line 143
    .local v0, "i":I
    iget-object v4, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    #@12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v3

    #@16
    .local v3, "version$iterator":Ljava/util/Iterator;
    move v1, v0

    #@17
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_0

    #@1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lsun/security/ssl/ProtocolVersion;

    #@23
    .line 144
    .local v2, "version":Lsun/security/ssl/ProtocolVersion;
    iget-object v4, p0, Lsun/security/ssl/ProtocolList;->protocolNames:[Ljava/lang/String;

    #@25
    add-int/lit8 v0, v1, 0x1

    #@27
    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v5, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    #@29
    aput-object v5, v4, v1

    #@2b
    move v1, v0

    #@2c
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@2d
    .line 147
    .end local v1    # "i":I
    .end local v2    # "version":Lsun/security/ssl/ProtocolVersion;
    .end local v3    # "version$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v4, p0, Lsun/security/ssl/ProtocolList;->protocolNames:[Ljava/lang/String;

    #@2f
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    monitor-exit p0

    #@36
    return-object v4

    #@37
    :catchall_0
    move-exception v4

    #@38
    monitor-exit p0

    #@39
    throw v4
.end method
