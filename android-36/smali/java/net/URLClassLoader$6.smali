.class Ljava/net/URLClassLoader$6;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->newInstance([Ljava/net/URL;)Ljava/net/URLClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/URLClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$acc:Ljava/security/AccessControlContext;

.field final synthetic blacklist val$urls:[Ljava/net/URL;


# direct methods
.method constructor blacklist <init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 765
    iput-object p1, p0, Ljava/net/URLClassLoader$6;->val$urls:[Ljava/net/URL;

    iput-object p2, p0, Ljava/net/URLClassLoader$6;->val$acc:Ljava/security/AccessControlContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 765
    invoke-virtual {p0}, Ljava/net/URLClassLoader$6;->run()Ljava/net/URLClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/net/URLClassLoader;
    .registers 4

    .line 767
    new-instance v0, Ljava/net/FactoryURLClassLoader;

    iget-object v1, p0, Ljava/net/URLClassLoader$6;->val$urls:[Ljava/net/URL;

    iget-object v2, p0, Ljava/net/URLClassLoader$6;->val$acc:Ljava/security/AccessControlContext;

    invoke-direct {v0, v1, v2}, Ljava/net/FactoryURLClassLoader;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    return-object v0
.end method
