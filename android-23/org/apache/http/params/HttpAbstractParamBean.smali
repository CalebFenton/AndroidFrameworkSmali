.class public abstract Lorg/apache/http/params/HttpAbstractParamBean;
.super Ljava/lang/Object;
.source "HttpAbstractParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final params:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    if-nez p1, :cond_0

    #@5
    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 47
    :cond_0
    iput-object p1, p0, Lorg/apache/http/params/HttpAbstractParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@10
    .line 44
    return-void
.end method
