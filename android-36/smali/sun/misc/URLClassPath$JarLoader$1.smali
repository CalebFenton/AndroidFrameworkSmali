.class Lsun/misc/URLClassPath$JarLoader$1;
.super Ljava/lang/Object;
.source "URLClassPath.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/misc/URLClassPath$JarLoader;->ensureOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lsun/misc/URLClassPath$JarLoader;


# direct methods
.method constructor blacklist <init>(Lsun/misc/URLClassPath$JarLoader;)V
    .registers 2
    .param p1, "this$0"    # Lsun/misc/URLClassPath$JarLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 863
    iput-object p1, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 863
    invoke-virtual {p0}, Lsun/misc/URLClassPath$JarLoader$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 865
    invoke-static {}, Lsun/misc/URLClassPath;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 866
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v2}, Lsun/misc/URLClassPath$JarLoader;->-$$Nest$fgetcsu(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 867
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 870
    :cond_27
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    iget-object v2, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v2}, Lsun/misc/URLClassPath$JarLoader;->-$$Nest$fgetcsu(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v2

    invoke-static {v1, v2}, Lsun/misc/URLClassPath$JarLoader;->-$$Nest$mgetJarFile(Lsun/misc/URLClassPath$JarLoader;Ljava/net/URL;)Ljava/util/jar/JarFile;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/misc/URLClassPath$JarLoader;->-$$Nest$fputjar(Lsun/misc/URLClassPath$JarLoader;Ljava/util/jar/JarFile;)V

    .line 871
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    iget-object v1, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v1}, Lsun/misc/URLClassPath$JarLoader;->-$$Nest$fgetjar(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/jar/JarFile;

    move-result-object v1

    invoke-static {v1}, Ljdk/internal/util/jar/JarIndex;->getJarIndex(Ljava/util/jar/JarFile;)Ljdk/internal/util/jar/JarIndex;

    move-result-object v1

    invoke-static {v0, v1}, Lsun/misc/URLClassPath$JarLoader;->-$$Nest$fputindex(Lsun/misc/URLClassPath$JarLoader;Ljdk/internal/util/jar/JarIndex;)V

    .line 872
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->-$$Nest$fgetindex(Lsun/misc/URLClassPath$JarLoader;)Ljdk/internal/util/jar/JarIndex;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8a

    .line 873
    iget-object v0, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v0}, Lsun/misc/URLClassPath$JarLoader;->-$$Nest$fgetindex(Lsun/misc/URLClassPath$JarLoader;)Ljdk/internal/util/jar/JarIndex;

    move-result-object v0

    invoke-virtual {v0}, Ljdk/internal/util/jar/JarIndex;->getJarFiles()[Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "jarfiles":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5b
    array-length v3, v0

    if-ge v2, v3, :cond_8a

    .line 881
    :try_start_5e
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v4}, Lsun/misc/URLClassPath$JarLoader;->-$$Nest$fgetcsu(Lsun/misc/URLClassPath$JarLoader;)Ljava/net/URL;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-direct {v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 883
    .local v3, "jarURL":Ljava/net/URL;
    invoke-static {v3}, Lsun/net/util/URLUtil;->urlNoFragString(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    .line 884
    .local v4, "urlNoFragString":Ljava/lang/String;
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-$$Nest$fgetlmap(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    .line 885
    iget-object v5, p0, Lsun/misc/URLClassPath$JarLoader$1;->this$0:Lsun/misc/URLClassPath$JarLoader;

    invoke-static {v5}, Lsun/misc/URLClassPath$JarLoader;->-$$Nest$fgetlmap(Lsun/misc/URLClassPath$JarLoader;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catch Ljava/net/MalformedURLException; {:try_start_5e .. :try_end_84} :catch_85

    .line 889
    .end local v3    # "jarURL":Ljava/net/URL;
    .end local v4    # "urlNoFragString":Ljava/lang/String;
    :cond_84
    goto :goto_87

    .line 887
    :catch_85
    move-exception v3

    .line 888
    .local v3, "e":Ljava/net/MalformedURLException;
    nop

    .line 879
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 892
    .end local v0    # "jarfiles":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_8a
    return-object v1
.end method
