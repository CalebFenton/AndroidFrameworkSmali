.class public Lorg/apache/http/impl/client/TunnelRefusedException;
.super Lorg/apache/http/HttpException;
.source "TunnelRefusedException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77ff549cf91bbbabL


# instance fields
.field private final response:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    #@3
    .line 51
    iput-object p2, p0, Lorg/apache/http/impl/client/TunnelRefusedException;->response:Lorg/apache/http/HttpResponse;

    #@5
    .line 49
    return-void
.end method


# virtual methods
.method public getResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/http/impl/client/TunnelRefusedException;->response:Lorg/apache/http/HttpResponse;

    #@2
    return-object v0
.end method
