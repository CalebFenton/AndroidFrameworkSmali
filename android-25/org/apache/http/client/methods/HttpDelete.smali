.class public Lorg/apache/http/client/methods/HttpDelete;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpDelete.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "DELETE"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    #@3
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    #@3
    .line 73
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpDelete;->setURI(Ljava/net/URI;)V

    #@a
    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    #@3
    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpDelete;->setURI(Ljava/net/URI;)V

    #@6
    .line 63
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 78
    const-string/jumbo v0, "DELETE"

    #@3
    return-object v0
.end method
