.class public Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;
.super Lorg/apache/http/impl/client/RequestWrapper;
.source "EntityEnclosingRequestWrapper.java"

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V

    #@3
    .line 67
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    #@9
    .line 65
    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .locals 3

    #@0
    .prologue
    .line 79
    const-string/jumbo v1, "Expect"

    #@3
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@6
    move-result-object v0

    #@7
    .line 80
    .local v0, "expect":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v1, "100-continue"

    #@c
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    :goto_0
    return v1

    #@15
    :cond_0
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    #@2
    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    #@6
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x1

    #@c
    goto :goto_0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    #@0
    .prologue
    .line 75
    iput-object p1, p0, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;->entity:Lorg/apache/http/HttpEntity;

    #@2
    .line 74
    return-void
.end method
