.class Lsun/net/NetworkClient$2;
.super Ljava/lang/Object;
.source "NetworkClient.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/NetworkClient;->doConnect(Ljava/lang/String;I)Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/Socket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/net/NetworkClient;


# direct methods
.method constructor <init>(Lsun/net/NetworkClient;)V
    .locals 0
    .param p1, "this$0"    # Lsun/net/NetworkClient;

    #@0
    .prologue
    .line 157
    iput-object p1, p0, Lsun/net/NetworkClient$2;->this$0:Lsun/net/NetworkClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 158
    invoke-virtual {p0}, Lsun/net/NetworkClient$2;->run()Ljava/net/Socket;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/net/Socket;
    .locals 2

    #@0
    .prologue
    .line 159
    new-instance v0, Ljava/net/Socket;

    #@2
    iget-object v1, p0, Lsun/net/NetworkClient$2;->this$0:Lsun/net/NetworkClient;

    #@4
    iget-object v1, v1, Lsun/net/NetworkClient;->proxy:Ljava/net/Proxy;

    #@6
    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    #@9
    return-object v0
.end method
