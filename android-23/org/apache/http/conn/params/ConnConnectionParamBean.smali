.class public Lorg/apache/http/conn/params/ConnConnectionParamBean;
.super Lorg/apache/http/params/HttpAbstractParamBean;
.source "ConnConnectionParamBean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/http/params/HttpAbstractParamBean;-><init>(Lorg/apache/http/params/HttpParams;)V

    #@3
    .line 49
    return-void
.end method


# virtual methods
.method public setMaxStatusLineGarbage(I)V
    .locals 2
    .param p1, "maxStatusLineGarbage"    # I

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/http/conn/params/ConnConnectionParamBean;->params:Lorg/apache/http/params/HttpParams;

    #@2
    const-string/jumbo v1, "http.connection.max-status-line-garbage"

    #@5
    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    #@8
    .line 56
    return-void
.end method
