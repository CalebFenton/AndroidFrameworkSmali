.class Lorg/apache/http/impl/conn/SingleClientConnManager$1;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/conn/SingleClientConnManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;

.field final synthetic val$route:Lorg/apache/http/conn/routing/HttpRoute;

.field final synthetic val$state:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/http/impl/conn/SingleClientConnManager;
    .param p2, "val$route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p3, "val$state"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 187
    iput-object p1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;

    #@2
    iput-object p2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    #@4
    iput-object p3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->val$state:Ljava/lang/Object;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 0

    #@0
    .prologue
    .line 189
    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->this$0:Lorg/apache/http/impl/conn/SingleClientConnManager;

    #@2
    .line 196
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->val$route:Lorg/apache/http/conn/routing/HttpRoute;

    #@4
    iget-object v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;->val$state:Ljava/lang/Object;

    #@6
    .line 195
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->getConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ManagedClientConnection;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method
