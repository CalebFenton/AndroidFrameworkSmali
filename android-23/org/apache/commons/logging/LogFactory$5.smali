.class final Lorg/apache/commons/logging/LogFactory$5;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/logging/LogFactory;->getProperties(Ljava/net/URL;)Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "val$url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 1365
    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1368
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    #@3
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    #@6
    move-result-object v2

    #@7
    .line 1369
    .local v2, "stream":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    #@9
    .line 1370
    new-instance v1, Ljava/util/Properties;

    #@b
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    #@e
    .line 1371
    .local v1, "props":Ljava/util/Properties;
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@11
    .line 1372
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1373
    return-object v1

    #@15
    .line 1375
    .end local v1    # "props":Ljava/util/Properties;
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    #@16
    .line 1376
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 1377
    new-instance v3, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v4, "Unable to read URL "

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    iget-object v4, p0, Lorg/apache/commons/logging/LogFactory$5;->val$url:Ljava/net/URL;

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v3}, Lorg/apache/commons/logging/LogFactory;->-wrap0(Ljava/lang/String;)V

    #@35
    .line 1381
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    return-object v5
.end method
