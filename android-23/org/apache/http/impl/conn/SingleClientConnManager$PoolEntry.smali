.class public Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
.super Lorg/apache/http/impl/conn/AbstractPoolEntry;
.source "SingleClientConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/conn/SingleClientConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PoolEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;


# direct methods
.method protected constructor <init>(Lorg/apache/http/impl/conn/SingleClientConnManager;)V
    .locals 2
    .param p1, "this$0"    # Lorg/apache/http/impl/conn/SingleClientConnManager;

    #@0
    .prologue
    .line 421
    iput-object p1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;

    #@2
    .line 422
    iget-object v0, p1, Lorg/apache/http/impl/conn/SingleClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/conn/routing/HttpRoute;)V

    #@8
    .line 421
    return-void
.end method


# virtual methods
.method protected close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 431
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdownEntry()V

    #@3
    .line 432
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    #@5
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 433
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    #@d
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->close()V

    #@10
    .line 429
    :cond_0
    return-void
.end method

.method protected shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 443
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdownEntry()V

    #@3
    .line 444
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    #@5
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 445
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    #@d
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->shutdown()V

    #@10
    .line 441
    :cond_0
    return-void
.end method
