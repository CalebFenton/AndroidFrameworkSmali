.class Ljava/net/StandardSocketOptions$StdSocketOption;
.super Ljava/lang/Object;
.source "StandardSocketOptions.java"

# interfaces
.implements Ljava/net/SocketOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/StandardSocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StdSocketOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/net/SocketOption<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o name:Ljava/lang/String;

.field private final greylist-max-o type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 382
    .local p0, "this":Ljava/net/StandardSocketOptions$StdSocketOption;, "Ljava/net/StandardSocketOptions$StdSocketOption<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Ljava/net/StandardSocketOptions$StdSocketOption;->name:Ljava/lang/String;

    .line 384
    iput-object p2, p0, Ljava/net/StandardSocketOptions$StdSocketOption;->type:Ljava/lang/Class;

    .line 385
    return-void
.end method


# virtual methods
.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 386
    .local p0, "this":Ljava/net/StandardSocketOptions$StdSocketOption;, "Ljava/net/StandardSocketOptions$StdSocketOption<TT;>;"
    iget-object v0, p0, Ljava/net/StandardSocketOptions$StdSocketOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 388
    .local p0, "this":Ljava/net/StandardSocketOptions$StdSocketOption;, "Ljava/net/StandardSocketOptions$StdSocketOption<TT;>;"
    iget-object v0, p0, Ljava/net/StandardSocketOptions$StdSocketOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api type()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 387
    .local p0, "this":Ljava/net/StandardSocketOptions$StdSocketOption;, "Ljava/net/StandardSocketOptions$StdSocketOption<TT;>;"
    iget-object v0, p0, Ljava/net/StandardSocketOptions$StdSocketOption;->type:Ljava/lang/Class;

    return-object v0
.end method
