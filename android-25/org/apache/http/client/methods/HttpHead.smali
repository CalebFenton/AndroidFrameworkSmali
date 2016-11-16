.class public Lorg/apache/http/client/methods/HttpHead;
.super Lorg/apache/http/client/methods/HttpRequestBase;
.source "HttpHead.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "HEAD"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    #@3
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 79
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    #@3
    .line 80
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpHead;->setURI(Ljava/net/URI;)V

    #@a
    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpRequestBase;-><init>()V

    #@3
    .line 72
    invoke-virtual {p0, p1}, Lorg/apache/http/client/methods/HttpHead;->setURI(Ljava/net/URI;)V

    #@6
    .line 70
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    const-string/jumbo v0, "HEAD"

    #@3
    return-object v0
.end method
