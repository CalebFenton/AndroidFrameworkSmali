.class public abstract Ljava/net/ProxySelector;
.super Ljava/lang/Object;
.source "ProxySelector.java"


# static fields
.field private static defaultSelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 94
    new-instance v0, Ljava/net/ProxySelectorImpl;

    #@2
    invoke-direct {v0}, Ljava/net/ProxySelectorImpl;-><init>()V

    #@5
    sput-object v0, Ljava/net/ProxySelector;->defaultSelector:Ljava/net/ProxySelector;

    #@7
    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDefault()Ljava/net/ProxySelector;
    .locals 1

    #@0
    .prologue
    .line 100
    sget-object v0, Ljava/net/ProxySelector;->defaultSelector:Ljava/net/ProxySelector;

    #@2
    return-object v0
.end method

.method public static setDefault(Ljava/net/ProxySelector;)V
    .locals 0
    .param p0, "selector"    # Ljava/net/ProxySelector;

    #@0
    .prologue
    .line 108
    sput-object p0, Ljava/net/ProxySelector;->defaultSelector:Ljava/net/ProxySelector;

    #@2
    .line 107
    return-void
.end method


# virtual methods
.method public abstract connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
.end method

.method public abstract select(Ljava/net/URI;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation
.end method
