.class Ljdk/net/ExtendedSocketOptions$ExtSocketOption;
.super Ljava/lang/Object;
.source "ExtendedSocketOptions.java"

# interfaces
.implements Ljava/net/SocketOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdk/net/ExtendedSocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtSocketOption"
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
.field private final blacklist name:Ljava/lang/String;

.field private final blacklist type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Class;)V
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

    .line 53
    .local p0, "this":Ljdk/net/ExtendedSocketOptions$ExtSocketOption;, "Ljdk/net/ExtendedSocketOptions$ExtSocketOption<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;->name:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;->type:Ljava/lang/Class;

    .line 56
    return-void
.end method


# virtual methods
.method public whitelist test-api name()Ljava/lang/String;
    .registers 2

    .line 57
    .local p0, "this":Ljdk/net/ExtendedSocketOptions$ExtSocketOption;, "Ljdk/net/ExtendedSocketOptions$ExtSocketOption<TT;>;"
    iget-object v0, p0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 59
    .local p0, "this":Ljdk/net/ExtendedSocketOptions$ExtSocketOption;, "Ljdk/net/ExtendedSocketOptions$ExtSocketOption<TT;>;"
    iget-object v0, p0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;->name:Ljava/lang/String;

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

    .line 58
    .local p0, "this":Ljdk/net/ExtendedSocketOptions$ExtSocketOption;, "Ljdk/net/ExtendedSocketOptions$ExtSocketOption<TT;>;"
    iget-object v0, p0, Ljdk/net/ExtendedSocketOptions$ExtSocketOption;->type:Ljava/lang/Class;

    return-object v0
.end method
