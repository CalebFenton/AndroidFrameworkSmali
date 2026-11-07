.class Ljava/security/Policy$UnsupportedEmptyCollection;
.super Ljava/security/PermissionCollection;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnsupportedEmptyCollection"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/security/PermissionCollection;-><init>()V

    .line 103
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/security/Permission;)V
    .registers 2
    .param p1, "permission"    # Ljava/security/Permission;

    .line 106
    return-void
.end method

.method public whitelist test-api elements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api implies(Ljava/security/Permission;)Z
    .registers 3
    .param p1, "permission"    # Ljava/security/Permission;

    .line 109
    const/4 v0, 0x1

    return v0
.end method
