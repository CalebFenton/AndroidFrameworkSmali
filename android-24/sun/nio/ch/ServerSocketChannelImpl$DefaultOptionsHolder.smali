.class Lsun/nio/ch/ServerSocketChannelImpl$DefaultOptionsHolder;
.super Ljava/lang/Object;
.source "ServerSocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/ServerSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultOptionsHolder"
.end annotation


# static fields
.field static final defaultOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketOption",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 174
    invoke-static {}, Lsun/nio/ch/ServerSocketChannelImpl$DefaultOptionsHolder;->defaultOptions()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lsun/nio/ch/ServerSocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    #@6
    .line 173
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static defaultOptions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketOption",
            "<*>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 177
    new-instance v0, Ljava/util/HashSet;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    #@6
    .line 178
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/SocketOption<*>;>;"
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_RCVBUF:Ljava/net/SocketOption;

    #@8
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@b
    .line 179
    sget-object v1, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    #@d
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@10
    .line 180
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@13
    move-result-object v1

    #@14
    return-object v1
.end method
