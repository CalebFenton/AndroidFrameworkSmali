.class Ljava/net/URLClassLoader$4;
.super Ljava/lang/Object;
.source "URLClassLoader.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/URLClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$fp:Ljava/security/Permission;

.field final synthetic blacklist val$sm:Ljava/lang/SecurityManager;


# direct methods
.method constructor blacklist <init>(Ljava/net/URLClassLoader;Ljava/lang/SecurityManager;Ljava/security/Permission;)V
    .registers 4
    .param p1, "this$0"    # Ljava/net/URLClassLoader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 709
    iput-object p2, p0, Ljava/net/URLClassLoader$4;->val$sm:Ljava/lang/SecurityManager;

    iput-object p3, p0, Ljava/net/URLClassLoader$4;->val$fp:Ljava/security/Permission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 709
    invoke-virtual {p0}, Ljava/net/URLClassLoader$4;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Ljava/net/URLClassLoader$4;->val$sm:Ljava/lang/SecurityManager;

    iget-object v1, p0, Ljava/net/URLClassLoader$4;->val$fp:Ljava/security/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 712
    const/4 v0, 0x0

    return-object v0
.end method
