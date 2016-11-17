.class final Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;
.super Ljava/lang/Object;
.source "SSLSessionContextImpl.java"

# interfaces
.implements Lsun/security/util/Cache$CacheVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLSessionContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionCacheVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/util/Cache$CacheVisitor",
        "<",
        "Lsun/security/ssl/SessionId;",
        "Lsun/security/ssl/SSLSessionImpl;",
        ">;"
    }
.end annotation


# instance fields
.field ids:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsun/security/ssl/SSLSessionContextImpl;


# direct methods
.method constructor <init>(Lsun/security/ssl/SSLSessionContextImpl;)V
    .locals 1
    .param p1, "this$0"    # Lsun/security/ssl/SSLSessionContextImpl;

    #@0
    .prologue
    .line 231
    iput-object p1, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->this$0:Lsun/security/ssl/SSLSessionContextImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 233
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/Vector;

    #@8
    .line 231
    return-void
.end method


# virtual methods
.method public getSessionIds()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/Vector;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/Vector;

    #@6
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@9
    move-result-object v0

    #@a
    :goto_0
    return-object v0

    #@b
    .line 250
    :cond_0
    new-instance v0, Ljava/util/Vector;

    #@d
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@10
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@13
    move-result-object v0

    #@14
    goto :goto_0
.end method

.method public visit(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lsun/security/ssl/SessionId;",
            "Lsun/security/ssl/SSLSessionImpl;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 238
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lsun/security/ssl/SessionId;Lsun/security/ssl/SSLSessionImpl;>;"
    new-instance v3, Ljava/util/Vector;

    #@2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@5
    move-result v4

    #@6
    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    #@9
    iput-object v3, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/Vector;

    #@b
    .line 240
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@e
    move-result-object v3

    #@f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v3

    #@17
    if-eqz v3, :cond_1

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lsun/security/ssl/SessionId;

    #@1f
    .line 241
    .local v0, "key":Lsun/security/ssl/SessionId;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Lsun/security/ssl/SSLSessionImpl;

    #@25
    .line 242
    .local v2, "value":Lsun/security/ssl/SSLSessionImpl;
    iget-object v3, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->this$0:Lsun/security/ssl/SSLSessionContextImpl;

    #@27
    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLSessionContextImpl;->isTimedout(Ljavax/net/ssl/SSLSession;)Z

    #@2a
    move-result v3

    #@2b
    if-nez v3, :cond_0

    #@2d
    .line 243
    iget-object v3, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/Vector;

    #@2f
    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->getId()[B

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@36
    goto :goto_0

    #@37
    .line 237
    .end local v0    # "key":Lsun/security/ssl/SessionId;
    .end local v2    # "value":Lsun/security/ssl/SSLSessionImpl;
    :cond_1
    return-void
.end method
