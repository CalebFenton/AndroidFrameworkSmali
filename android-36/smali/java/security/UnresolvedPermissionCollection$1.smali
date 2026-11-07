.class Ljava/security/UnresolvedPermissionCollection$1;
.super Ljava/lang/Object;
.source "UnresolvedPermissionCollection.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/UnresolvedPermissionCollection;->add(Ljava/security/Permission;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiFunction<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/security/UnresolvedPermission;",
        ">;",
        "Ljava/util/List<",
        "Ljava/security/UnresolvedPermission;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$up:Ljava/security/UnresolvedPermission;


# direct methods
.method constructor blacklist <init>(Ljava/security/UnresolvedPermissionCollection;Ljava/security/UnresolvedPermission;)V
    .registers 3
    .param p1, "this$0"    # Ljava/security/UnresolvedPermissionCollection;
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

    .line 86
    iput-object p2, p0, Ljava/security/UnresolvedPermissionCollection$1;->val$up:Ljava/security/UnresolvedPermission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 86
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Ljava/security/UnresolvedPermissionCollection$1;->apply(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist apply(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/UnresolvedPermission;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/UnresolvedPermission;",
            ">;"
        }
    .end annotation

    .line 90
    .local p2, "oldValue":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    if-nez p2, :cond_d

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 93
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    iget-object v1, p0, Ljava/security/UnresolvedPermissionCollection$1;->val$up:Ljava/security/UnresolvedPermission;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-object v0

    .line 96
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Ljava/security/UnresolvedPermission;>;"
    :cond_d
    iget-object v0, p0, Ljava/security/UnresolvedPermissionCollection$1;->val$up:Ljava/security/UnresolvedPermission;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-object p2
.end method
