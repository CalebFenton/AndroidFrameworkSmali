.class public interface abstract Lcom/android/internal/pm/parsing/pkg/AndroidPackageHidden;
.super Ljava/lang/Object;
.source "AndroidPackageHidden.java"


# virtual methods
.method public abstract blacklist getPrimaryCpuAbi()Ljava/lang/String;
.end method

.method public abstract blacklist getSecondaryCpuAbi()Ljava/lang/String;
.end method

.method public abstract blacklist getVersionCode()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract blacklist getVersionCodeMajor()I
.end method

.method public abstract blacklist isOdm()Z
.end method

.method public abstract blacklist isOem()Z
.end method

.method public abstract blacklist isPrivileged()Z
.end method

.method public abstract blacklist isProduct()Z
.end method

.method public abstract blacklist isSystem()Z
.end method

.method public abstract blacklist isSystemExt()Z
.end method

.method public abstract blacklist isVendor()Z
.end method

.method public abstract blacklist toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
.end method
