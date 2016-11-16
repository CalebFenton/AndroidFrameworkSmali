.class public Lorg/apache/http/impl/client/RoutedRequest;
.super Ljava/lang/Object;
.source "RoutedRequest.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final request:Lorg/apache/http/impl/client/RequestWrapper;

.field protected final route:Lorg/apache/http/conn/routing/HttpRoute;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/RequestWrapper;Lorg/apache/http/conn/routing/HttpRoute;)V
    .locals 0
    .param p1, "req"    # Lorg/apache/http/impl/client/RequestWrapper;
    .param p2, "route"    # Lorg/apache/http/conn/routing/HttpRoute;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    iput-object p1, p0, Lorg/apache/http/impl/client/RoutedRequest;->request:Lorg/apache/http/impl/client/RequestWrapper;

    #@5
    .line 67
    iput-object p2, p0, Lorg/apache/http/impl/client/RoutedRequest;->route:Lorg/apache/http/conn/routing/HttpRoute;

    #@7
    .line 64
    return-void
.end method


# virtual methods
.method public final getRequest()Lorg/apache/http/impl/client/RequestWrapper;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/impl/client/RoutedRequest;->request:Lorg/apache/http/impl/client/RequestWrapper;

    #@2
    return-object v0
.end method

.method public final getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/http/impl/client/RoutedRequest;->route:Lorg/apache/http/conn/routing/HttpRoute;

    #@2
    return-object v0
.end method
