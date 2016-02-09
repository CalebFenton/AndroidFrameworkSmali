.class public Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;
.super Lorg/apache/http/message/BasicHttpRequest;
.source "BasicHttpEntityEnclosingRequest.java"

# interfaces
.implements Lorg/apache/http/HttpEntityEnclosingRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private entity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "ver"    # Lorg/apache/http/ProtocolVersion;

    #@0
    .prologue
    .line 66
    new-instance v0, Lorg/apache/http/message/BasicRequestLine;

    #@2
    invoke-direct {v0, p1, p2, p3}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    #@5
    invoke-direct {p0, v0}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Lorg/apache/http/RequestLine;)V

    #@8
    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/RequestLine;)V
    .locals 0
    .param p1, "requestline"    # Lorg/apache/http/RequestLine;

    #@0
    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Lorg/apache/http/RequestLine;)V

    #@3
    .line 69
    return-void
.end method


# virtual methods
.method public expectContinue()Z
    .locals 3

    #@0
    .prologue
    .line 82
    const-string/jumbo v1, "Expect"

    #@3
    invoke-virtual {p0, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    #@6
    move-result-object v0

    #@7
    .line 83
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
    .line 74
    iget-object v0, p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->entity:Lorg/apache/http/HttpEntity;

    #@2
    return-object v0
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    #@0
    .prologue
    .line 78
    iput-object p1, p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->entity:Lorg/apache/http/HttpEntity;

    #@2
    .line 77
    return-void
.end method
