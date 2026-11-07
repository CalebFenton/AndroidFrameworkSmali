.class Ljava/net/URLClassLoader$1;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/net/URLClassLoader;

.field final synthetic blacklist val$name:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/net/URLClassLoader;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Ljava/net/URLClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 362
    iput-object p1, p0, Ljava/net/URLClassLoader$1;->this$0:Ljava/net/URLClassLoader;

    iput-object p2, p0, Ljava/net/URLClassLoader$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Ljava/net/URLClassLoader$1;->val$name:Ljava/lang/String;

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Ljava/net/URLClassLoader$1;->this$0:Ljava/net/URLClassLoader;

    invoke-static {v1}, Ljava/net/URLClassLoader;->-$$Nest$fgetucp(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lsun/misc/URLClassPath;->getResource(Ljava/lang/String;Z)Lsun/misc/Resource;

    move-result-object v1

    .line 366
    .local v1, "res":Lsun/misc/Resource;
    if-eqz v1, :cond_2f

    .line 368
    :try_start_1d
    iget-object v2, p0, Ljava/net/URLClassLoader$1;->this$0:Ljava/net/URLClassLoader;

    iget-object v3, p0, Ljava/net/URLClassLoader$1;->val$name:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Ljava/net/URLClassLoader;->-$$Nest$mdefineClass(Ljava/net/URLClassLoader;Ljava/lang/String;Lsun/misc/Resource;)Ljava/lang/Class;

    move-result-object v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_25} :catch_26

    return-object v2

    .line 369
    :catch_26
    move-exception v2

    .line 370
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/ClassNotFoundException;

    iget-object v4, p0, Ljava/net/URLClassLoader$1;->val$name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 373
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2f
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Ljava/net/URLClassLoader$1;->run()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
