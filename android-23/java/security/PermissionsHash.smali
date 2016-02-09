.class final Ljava/security/PermissionsHash;
.super Ljava/security/PermissionCollection;
.source "PermissionsHash.java"


# static fields
.field private static final serialVersionUID:J = -0x75d99a4b59c2a2c0L


# instance fields
.field private final perms:Ljava/util/Hashtable;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/util/Hashtable;

    #@5
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@8
    iput-object v0, p0, Ljava/security/PermissionsHash;->perms:Ljava/util/Hashtable;

    #@a
    .line 32
    return-void
.end method


# virtual methods
.method public add(Ljava/security/Permission;)V
    .locals 1
    .param p1, "permission"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Ljava/security/PermissionsHash;->perms:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 44
    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Ljava/security/PermissionsHash;->perms:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 2
    .param p1, "permission"    # Ljava/security/Permission;

    #@0
    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/security/PermissionsHash;->elements()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    .local v0, "elements":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 69
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Ljava/security/Permission;

    #@10
    invoke-virtual {v1, p1}, Ljava/security/Permission;->implies(Ljava/security/Permission;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 70
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 73
    :cond_1
    const/4 v1, 0x0

    #@19
    return v1
.end method
