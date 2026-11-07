.class public interface abstract Lcom/android/internal/pm/pkg/component/ParsedPermission;
.super Ljava/lang/Object;
.source "ParsedPermission.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedComponent;


# virtual methods
.method public abstract blacklist getBackgroundPermission()Ljava/lang/String;
.end method

.method public abstract blacklist getGroup()Ljava/lang/String;
.end method

.method public abstract blacklist getKnownCerts()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
.end method

.method public abstract blacklist getProtectionLevel()I
.end method

.method public abstract blacklist getRequestRes()I
.end method

.method public abstract blacklist isTree()Z
.end method
