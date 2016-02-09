.class final Lorg/apache/commons/logging/LogFactory$4;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/logging/LogFactory;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$loader:Ljava/lang/ClassLoader;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0
    .param p1, "val$loader"    # Ljava/lang/ClassLoader;
    .param p2, "val$name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1328
    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$4;->val$loader:Ljava/lang/ClassLoader;

    #@2
    iput-object p2, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1331
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/logging/LogFactory$4;->val$loader:Ljava/lang/ClassLoader;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 1332
    iget-object v2, p0, Lorg/apache/commons/logging/LogFactory$4;->val$loader:Ljava/lang/ClassLoader;

    #@7
    iget-object v3, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    #@c
    move-result-object v2

    #@d
    return-object v2

    #@e
    .line 1334
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    #@10
    invoke-static {v2}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    return-object v2

    #@15
    .line 1343
    :catch_0
    move-exception v1

    #@16
    .line 1347
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    return-object v4

    #@17
    .line 1336
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    #@18
    .line 1337
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->isDiagnosticsEnabled()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 1339
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Exception while trying to find configuration file "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 1340
    iget-object v3, p0, Lorg/apache/commons/logging/LogFactory$4;->val$name:Ljava/lang/String;

    #@2c
    .line 1339
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    .line 1340
    const-string/jumbo v3, ":"

    #@33
    .line 1339
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 1340
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    .line 1339
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    .line 1338
    invoke-static {v2}, Lorg/apache/commons/logging/LogFactory;->-wrap0(Ljava/lang/String;)V

    #@46
    .line 1342
    :cond_1
    return-object v4
.end method
