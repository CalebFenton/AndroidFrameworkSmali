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
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/URLClassLoader;

.field final synthetic val$fp:Ljava/security/Permission;

.field final synthetic val$sm:Ljava/lang/SecurityManager;


# direct methods
.method constructor <init>(Ljava/net/URLClassLoader;Ljava/lang/SecurityManager;Ljava/security/Permission;)V
    .locals 0
    .param p1, "this$0"    # Ljava/net/URLClassLoader;
    .param p2, "val$sm"    # Ljava/lang/SecurityManager;
    .param p3, "val$fp"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 686
    iput-object p1, p0, Ljava/net/URLClassLoader$4;->this$0:Ljava/net/URLClassLoader;

    #@2
    iput-object p2, p0, Ljava/net/URLClassLoader$4;->val$sm:Ljava/lang/SecurityManager;

    #@4
    iput-object p3, p0, Ljava/net/URLClassLoader$4;->val$fp:Ljava/security/Permission;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 687
    invoke-virtual {p0}, Ljava/net/URLClassLoader$4;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    #@0
    .prologue
    .line 688
    iget-object v0, p0, Ljava/net/URLClassLoader$4;->val$sm:Ljava/lang/SecurityManager;

    #@2
    iget-object v1, p0, Ljava/net/URLClassLoader$4;->val$fp:Ljava/security/Permission;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@7
    .line 689
    const/4 v0, 0x0

    #@8
    return-object v0
.end method
