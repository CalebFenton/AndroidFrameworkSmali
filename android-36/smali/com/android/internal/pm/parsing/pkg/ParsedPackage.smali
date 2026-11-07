.class public interface abstract Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.super Ljava/lang/Object;
.source "ParsedPackage.java"

# interfaces
.implements Lcom/android/server/pm/pkg/AndroidPackage;


# virtual methods
.method public abstract blacklist addUsesLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist capPermissionPriorities()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist clearAdoptPermissions()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist clearOriginalPackages()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist clearProtectedBroadcasts()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist hideAsFinal()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;
.end method

.method public abstract blacklist markNotActivitiesAsNotExportedIfSingleUser()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist removePermission(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist removeUsesLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setAllComponentsDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setApex(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setBaseApkPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setCoreApp(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setDefaultToDeviceProtectedStorage(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setDirectBootAware(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setEmergencyInstaller(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setFactoryTest(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setNativeLibraryRootDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setNativeLibraryRootRequiresIsa(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setOdm(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setOem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setPackageName(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setPath(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setPersistent(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setPrivileged(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setProduct(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setRestrictUpdateHash([B)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setSecondaryNativeLibraryDir(Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setSignedWithPlatformKey(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setSplitCodePaths([Ljava/lang/String;)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setStub(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setSystemExt(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setUid(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setUpdatableSystem(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setVendor(Z)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setVersionCode(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method

.method public abstract blacklist setVersionCodeMajor(I)Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
.end method
