.class public interface abstract Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
.super Ljava/lang/Object;
.source "AndroidPackageInternal.java"

# interfaces
.implements Lcom/android/server/pm/pkg/AndroidPackage;
.implements Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;


# virtual methods
.method public abstract blacklist getUsesLibrariesSorted()[Ljava/lang/String;
.end method

.method public abstract blacklist getUsesOptionalLibrariesSorted()[Ljava/lang/String;
.end method

.method public abstract blacklist getUsesSdkLibrariesSorted()[Ljava/lang/String;
.end method

.method public abstract blacklist getUsesStaticLibrariesSorted()[Ljava/lang/String;
.end method
