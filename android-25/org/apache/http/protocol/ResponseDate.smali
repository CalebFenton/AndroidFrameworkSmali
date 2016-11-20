.class public Lorg/apache/http/protocol/ResponseDate;
.super Ljava/lang/Object;
.source "ResponseDate.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 58
    new-instance v0, Lorg/apache/http/protocol/HttpDateGenerator;

    #@2
    invoke-direct {v0}, Lorg/apache/http/protocol/HttpDateGenerator;-><init>()V

    #@5
    sput-object v0, Lorg/apache/http/protocol/ResponseDate;->DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;

    #@7
    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 66
    if-nez p1, :cond_0

    #@2
    .line 67
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 68
    const-string/jumbo v3, "HTTP response may not be null."

    #@7
    .line 67
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 70
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    #@12
    move-result v1

    #@13
    .line 71
    .local v1, "status":I
    const/16 v2, 0xc8

    #@15
    if-lt v1, v2, :cond_1

    #@17
    .line 72
    const-string/jumbo v2, "Date"

    #@1a
    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    .line 65
    :cond_1
    :goto_0
    return-void

    #@21
    .line 73
    :cond_2
    sget-object v2, Lorg/apache/http/protocol/ResponseDate;->DATE_GENERATOR:Lorg/apache/http/protocol/HttpDateGenerator;

    #@23
    invoke-virtual {v2}, Lorg/apache/http/protocol/HttpDateGenerator;->getCurrentDate()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 74
    .local v0, "httpdate":Ljava/lang/String;
    const-string/jumbo v2, "Date"

    #@2a
    invoke-interface {p1, v2, v0}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    #@2d
    goto :goto_0
.end method
