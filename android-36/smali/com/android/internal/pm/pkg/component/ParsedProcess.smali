.class public interface abstract Lcom/android/internal/pm/pkg/component/ParsedProcess;
.super Ljava/lang/Object;
.source "ParsedProcess.java"


# virtual methods
.method public abstract blacklist getAppClassNamesByPackage()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getDeniedPermissions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getGwpAsanMode()I
.end method

.method public abstract blacklist getMemtagMode()I
.end method

.method public abstract blacklist getName()Ljava/lang/String;
.end method

.method public abstract blacklist getNativeHeapZeroInitialized()I
.end method

.method public abstract blacklist isUseEmbeddedDex()Z
.end method
