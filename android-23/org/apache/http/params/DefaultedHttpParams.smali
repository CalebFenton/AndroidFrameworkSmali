.class public final Lorg/apache/http/params/DefaultedHttpParams;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "DefaultedHttpParams.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final defaults:Lorg/apache/http/params/HttpParams;

.field private final local:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "local"    # Lorg/apache/http/params/HttpParams;
    .param p2, "defaults"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 57
    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    #@3
    .line 58
    if-nez p1, :cond_0

    #@5
    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 61
    :cond_0
    iput-object p1, p0, Lorg/apache/http/params/DefaultedHttpParams;->local:Lorg/apache/http/params/HttpParams;

    #@10
    .line 62
    iput-object p2, p0, Lorg/apache/http/params/DefaultedHttpParams;->defaults:Lorg/apache/http/params/HttpParams;

    #@12
    .line 56
    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/http/params/HttpParams;
    .locals 3

    #@0
    .prologue
    .line 69
    iget-object v1, p0, Lorg/apache/http/params/DefaultedHttpParams;->local:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-interface {v1}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    #@5
    move-result-object v0

    #@6
    .line 70
    .local v0, "clone":Lorg/apache/http/params/HttpParams;
    new-instance v1, Lorg/apache/http/params/DefaultedHttpParams;

    #@8
    iget-object v2, p0, Lorg/apache/http/params/DefaultedHttpParams;->defaults:Lorg/apache/http/params/HttpParams;

    #@a
    invoke-direct {v1, v0, v2}, Lorg/apache/http/params/DefaultedHttpParams;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    #@d
    return-object v1
.end method

.method public getDefaults()Lorg/apache/http/params/HttpParams;
    .locals 1

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/http/params/DefaultedHttpParams;->defaults:Lorg/apache/http/params/HttpParams;

    #@2
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    iget-object v1, p0, Lorg/apache/http/params/DefaultedHttpParams;->local:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 80
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@8
    iget-object v1, p0, Lorg/apache/http/params/DefaultedHttpParams;->defaults:Lorg/apache/http/params/HttpParams;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 81
    iget-object v1, p0, Lorg/apache/http/params/DefaultedHttpParams;->defaults:Lorg/apache/http/params/HttpParams;

    #@e
    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 83
    :cond_0
    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/http/params/DefaultedHttpParams;->local:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-interface {v0, p1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/http/params/DefaultedHttpParams;->local:Lorg/apache/http/params/HttpParams;

    #@2
    invoke-interface {v0, p1, p2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
