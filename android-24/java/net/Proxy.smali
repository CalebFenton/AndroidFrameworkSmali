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
.field public static final NO_PROXY:Ljava/net/Proxy;


# instance fields
.field private sa:Ljava/net/SocketAddress;

.field private type:Ljava/net/Proxy$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    new-instance v0, Ljava/net/Proxy;

    #@2
    invoke-direct {v0}, Ljava/net/Proxy;-><init>()V

    #@5
    sput-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@7
    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iget-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@5
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@7
    iput-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@9
    .line 77
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Ljava/net/Proxy;->sa:Ljava/net/SocketAddress;

    #@c
    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "type"    # Ljava/net/Proxy$Type;
    .param p2, "sa"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@5
    if-eq p1, v0, :cond_0

    #@7
    instance-of v0, p2, Ljava/net/InetSocketAddress;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 96
    iput-object p1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@d
    .line 97
    iput-object p2, p0, Ljava/net/Proxy;->sa:Ljava/net/SocketAddress;

    #@f
    .line 93
    return-void

    #@10
    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "type "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " is not compatible with address "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method


# virtual methods
.method public address()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Ljava/net/Proxy;->sa:Ljava/net/SocketAddress;

    #@2
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 149
    if-eqz p1, :cond_1

    #@3
    instance-of v2, p1, Ljava/net/Proxy;

    #@5
    if-eqz v2, :cond_1

    #@7
    move-object v0, p1

    #@8
    .line 151
    check-cast v0, Ljava/net/Proxy;

    #@a
    .line 152
    .local v0, "p":Ljava/net/Proxy;
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@11
    move-result-object v3

    #@12
    if-ne v2, v3, :cond_3

    #@14
    .line 153
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@17
    move-result-object v2

    #@18
    if-nez v2, :cond_2

    #@1a
    .line 154
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@1d
    move-result-object v2

    #@1e
    if-nez v2, :cond_0

    #@20
    const/4 v1, 0x1

    #@21
    :cond_0
    return v1

    #@22
    .line 150
    .end local v0    # "p":Ljava/net/Proxy;
    :cond_1
    return v1

    #@23
    .line 156
    .restart local v0    # "p":Ljava/net/Proxy;
    :cond_2
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v1, v2}, Ljava/net/SocketAddress;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    return v1

    #@30
    .line 158
    :cond_3
    return v1
.end method

.method public final hashCode()I
    .locals 2

    #@0
    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 168
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/net/Proxy$Type;->hashCode()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 169
    :cond_0
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/net/Proxy$Type;->hashCode()I

    #@16
    move-result v0

    #@17
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/net/SocketAddress;->hashCode()I

    #@1e
    move-result v1

    #@1f
    add-int/2addr v0, v1

    #@20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 130
    const-string/jumbo v0, "DIRECT"

    #@b
    return-object v0

    #@c
    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, " @ "

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    return-object v0
.end method

.method public type()Ljava/net/Proxy$Type;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@2
    return-object v0
.end method
