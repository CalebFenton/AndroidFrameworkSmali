.class public interface abstract Lcom/android/internal/pm/pkg/component/ParsedProvider;
.super Ljava/lang/Object;
.source "ParsedProvider.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedMainComponent;


# virtual methods
.method public abstract blacklist getAuthority()Ljava/lang/String;
.end method

.method public abstract blacklist getInitOrder()I
.end method

.method public abstract blacklist getPathPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getReadPermission()Ljava/lang/String;
.end method

.method public abstract blacklist getUriPermissionPatterns()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getWritePermission()Ljava/lang/String;
.end method

.method public abstract blacklist isForceUriPermissions()Z
.end method

.method public abstract blacklist isGrantUriPermissions()Z
.end method

.method public abstract blacklist isMultiProcess()Z
.end method

.method public abstract blacklist isSyncable()Z
.end method
