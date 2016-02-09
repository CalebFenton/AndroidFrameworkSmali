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
.field private address:Ljava/net/SocketAddress;

.field private type:Ljava/net/Proxy$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/net/Proxy;

    #@2
    invoke-direct {v0}, Ljava/net/Proxy;-><init>()V

    #@5
    sput-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    #@7
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 73
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@5
    iput-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@7
    .line 74
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    #@a
    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "type"    # Ljava/net/Proxy$Type;
    .param p2, "sa"    # Ljava/net/SocketAddress;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@5
    if-eq p1, v0, :cond_0

    #@7
    if-nez p2, :cond_1

    #@9
    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v1, "Illegal Proxy.Type or SocketAddress argument"

    #@e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v0

    #@12
    .line 64
    :cond_1
    iput-object p1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@14
    .line 65
    iput-object p2, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    #@16
    .line 56
    return-void
.end method


# virtual methods
.method public address()Ljava/net/SocketAddress;
    .locals 1

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

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
    .line 130
    if-ne p0, p1, :cond_0

    #@3
    .line 131
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 133
    :cond_0
    instance-of v2, p1, Ljava/net/Proxy;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 134
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 136
    check-cast v0, Ljava/net/Proxy;

    #@d
    .line 138
    .local v0, "another":Ljava/net/Proxy;
    iget-object v2, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@f
    iget-object v3, v0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@11
    if-ne v2, v3, :cond_2

    #@13
    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    #@15
    iget-object v2, v0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    #@17
    invoke-virtual {v1, v2}, Ljava/net/SocketAddress;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 2

    #@0
    .prologue
    .line 149
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@2
    invoke-virtual {v1}, Ljava/net/Proxy$Type;->hashCode()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, 0x0

    #@8
    .line 150
    .local v0, "ret":I
    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 151
    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    #@e
    invoke-virtual {v1}, Ljava/net/SocketAddress;->hashCode()I

    #@11
    move-result v1

    #@12
    add-int/2addr v0, v1

    #@13
    .line 153
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 106
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 107
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@b
    invoke-virtual {v1}, Ljava/net/Proxy$Type;->toString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 109
    :cond_0
    const-string/jumbo v1, "@"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    .line 110
    iget-object v1, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@1a
    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    #@1c
    if-eq v1, v2, :cond_1

    #@1e
    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    #@20
    if-eqz v1, :cond_1

    #@22
    .line 111
    iget-object v1, p0, Ljava/net/Proxy;->address:Ljava/net/SocketAddress;

    #@24
    invoke-virtual {v1}, Ljava/net/SocketAddress;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 113
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    return-object v1
.end method

.method public type()Ljava/net/Proxy$Type;
    .locals 1

    #@0
    .prologue
    .line 83
    iget-object v0, p0, Ljava/net/Proxy;->type:Ljava/net/Proxy$Type;

    #@2
    return-object v0
.end method
