.class Lsun/security/jca/ProviderConfig$2;
.super Ljava/lang/Object;
.source "ProviderConfig.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/jca/ProviderConfig;->doLoadProvider()Ljava/security/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/security/Provider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/security/jca/ProviderConfig;


# direct methods
.method constructor <init>(Lsun/security/jca/ProviderConfig;)V
    .locals 0
    .param p1, "this$0"    # Lsun/security/jca/ProviderConfig;

    #@0
    .prologue
    .line 206
    iput-object p1, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 207
    invoke-virtual {p0}, Lsun/security/jca/ProviderConfig$2;->run()Ljava/security/Provider;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/security/Provider;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 208
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-get1()Lsun/security/util/Debug;

    #@4
    move-result-object v3

    #@5
    if-eqz v3, :cond_0

    #@7
    .line 209
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-get1()Lsun/security/util/Debug;

    #@a
    move-result-object v3

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "Loading provider: "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    iget-object v5, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@24
    .line 214
    :cond_0
    :try_start_0
    iget-object v3, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    #@26
    iget-object v4, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    #@28
    invoke-static {v4}, Lsun/security/jca/ProviderConfig;->-get0(Lsun/security/jca/ProviderConfig;)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    const-class v5, Ljava/lang/Object;

    #@2e
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@31
    move-result-object v5

    #@32
    invoke-static {v3, v4, v5}, Lsun/security/jca/ProviderConfig;->-wrap0(Lsun/security/jca/ProviderConfig;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    move-result-object v3

    #@36
    return-object v3

    #@37
    .line 215
    :catch_0
    move-exception v1

    #@38
    .line 218
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_1
    iget-object v3, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    #@3a
    iget-object v4, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    #@3c
    invoke-static {v4}, Lsun/security/jca/ProviderConfig;->-get0(Lsun/security/jca/ProviderConfig;)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@43
    move-result-object v5

    #@44
    invoke-static {v3, v4, v5}, Lsun/security/jca/ProviderConfig;->-wrap0(Lsun/security/jca/ProviderConfig;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@47
    move-result-object v3

    #@48
    return-object v3

    #@49
    .line 219
    :catch_1
    move-exception v0

    #@4a
    .line 221
    .local v0, "e":Ljava/lang/Exception;
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    #@4c
    if-eqz v3, :cond_2

    #@4e
    .line 222
    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    #@50
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@53
    move-result-object v2

    #@54
    .line 226
    .local v2, "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-get1()Lsun/security/util/Debug;

    #@57
    move-result-object v3

    #@58
    if-eqz v3, :cond_1

    #@5a
    .line 227
    invoke-static {}, Lsun/security/jca/ProviderConfig;->-get1()Lsun/security/util/Debug;

    #@5d
    move-result-object v3

    #@5e
    new-instance v4, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    const-string/jumbo v5, "Error loading provider "

    #@66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    iget-object v5, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    #@6c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v4

    #@74
    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@77
    .line 228
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    #@7a
    .line 231
    :cond_1
    instance-of v3, v2, Ljava/security/ProviderException;

    #@7c
    if-eqz v3, :cond_3

    #@7e
    .line 232
    check-cast v2, Ljava/security/ProviderException;

    #@80
    .end local v2    # "t":Ljava/lang/Throwable;
    throw v2

    #@81
    .line 224
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v2, v0

    #@82
    .restart local v2    # "t":Ljava/lang/Throwable;
    goto :goto_0

    #@83
    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    instance-of v3, v2, Ljava/lang/UnsupportedOperationException;

    #@85
    if-eqz v3, :cond_4

    #@87
    .line 236
    iget-object v3, p0, Lsun/security/jca/ProviderConfig$2;->this$0:Lsun/security/jca/ProviderConfig;

    #@89
    invoke-static {v3}, Lsun/security/jca/ProviderConfig;->-wrap1(Lsun/security/jca/ProviderConfig;)V

    #@8c
    .line 238
    :cond_4
    return-object v6
.end method
