.class public abstract Ljava/security/PermissionCollection;
.super Ljava/lang/Object;
.source "PermissionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api add(Ljava/security/Permission;)V
.end method

.method public abstract whitelist test-api elements()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist elementsAsStream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/security/Permission;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api implies(Ljava/security/Permission;)Z
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api setReadOnly()V
    .registers 1

    .line 71
    return-void
.end method
