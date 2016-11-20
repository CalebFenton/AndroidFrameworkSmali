.class Lsun/net/www/protocol/gopher/GopherInputStream;
.super Ljava/io/FilterInputStream;
.source "GopherClient.java"


# instance fields
.field parent:Lsun/net/NetworkClient;


# direct methods
.method constructor <init>(Lsun/net/NetworkClient;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "o"    # Lsun/net/NetworkClient;
    .param p2, "fd"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 346
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 347
    iput-object p1, p0, Lsun/net/www/protocol/gopher/GopherInputStream;->parent:Lsun/net/NetworkClient;

    #@5
    .line 345
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    #@0
    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/gopher/GopherInputStream;->parent:Lsun/net/NetworkClient;

    #@2
    invoke-virtual {v1}, Lsun/net/NetworkClient;->closeServer()V

    #@5
    .line 353
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 350
    :goto_0
    return-void

    #@9
    .line 354
    :catch_0
    move-exception v0

    #@a
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method
