.class Ljava/net/URLClassLoader$2;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/URL;",
        ">;"
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

    .line 569
    iput-object p1, p0, Ljava/net/URLClassLoader$2;->this$0:Ljava/net/URLClassLoader;

    iput-object p2, p0, Ljava/net/URLClassLoader$2;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 569
    invoke-virtual {p0}, Ljava/net/URLClassLoader$2;->run()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/net/URL;
    .registers 4

    .line 571
    iget-object v0, p0, Ljava/net/URLClassLoader$2;->this$0:Ljava/net/URLClassLoader;

    invoke-static {v0}, Ljava/net/URLClassLoader;->-$$Nest$fgetucp(Ljava/net/URLClassLoader;)Lsun/misc/URLClassPath;

    move-result-object v0

    iget-object v1, p0, Ljava/net/URLClassLoader$2;->val$name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsun/misc/URLClassPath;->findResource(Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
