.class public Lorg/apache/http/entity/EntityTemplate;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "EntityTemplate.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final contentproducer:Lorg/apache/http/entity/ContentProducer;


# direct methods
.method public constructor <init>(Lorg/apache/http/entity/ContentProducer;)V
    .locals 2
    .param p1, "contentproducer"    # Lorg/apache/http/entity/ContentProducer;

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    #@3
    .line 59
    if-nez p1, :cond_0

    #@5
    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Content producer may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 62
    :cond_0
    iput-object p1, p0, Lorg/apache/http/entity/EntityTemplate;->contentproducer:Lorg/apache/http/entity/ContentProducer;

    #@10
    .line 57
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    #@0
    .prologue
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "Entity template does not implement getContent()"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public getContentLength()J
    .locals 2

    #@0
    .prologue
    .line 66
    const-wide/16 v0, -0x1

    #@2
    return-wide v0
.end method

.method public isRepeatable()Z
    .locals 1

    #@0
    .prologue
    .line 74
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isStreaming()Z
    .locals 1

    #@0
    .prologue
    .line 85
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    if-nez p1, :cond_0

    #@2
    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Output stream may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 81
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/EntityTemplate;->contentproducer:Lorg/apache/http/entity/ContentProducer;

    #@d
    invoke-interface {v0, p1}, Lorg/apache/http/entity/ContentProducer;->writeTo(Ljava/io/OutputStream;)V

    #@10
    .line 77
    return-void
.end method
