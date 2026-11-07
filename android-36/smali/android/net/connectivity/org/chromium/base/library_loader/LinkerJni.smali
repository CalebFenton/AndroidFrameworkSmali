.class Landroid/net/connectivity/org/chromium/base/library_loader/LinkerJni;
.super Ljava/lang/Object;
.source "LinkerJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native blacklist nativeFindMemoryRegionAtRandomAddress(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)V
.end method

.method private static native blacklist nativeFindRegionReservedByWebViewZygote(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native blacklist nativeGetRelroSharingResult()I
.end method

.method private static native blacklist nativeLoadLibrary(Ljava/lang/String;Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;Z)Z
.end method

.method private static native blacklist nativeReserveMemoryForLibrary(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)V
.end method

.method private static native blacklist nativeUseRelros(JLandroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)Z
.end method


# virtual methods
.method public blacklist findMemoryRegionAtRandomAddress(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)V
    .registers 2
    .param p1, "libInfo"    # Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    .line 18
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/library_loader/LinkerJni;->nativeFindMemoryRegionAtRandomAddress(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)V

    .line 19
    return-void
.end method

.method public blacklist findRegionReservedByWebViewZygote(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)Z
    .registers 3
    .param p1, "libInfo"    # Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    .line 28
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/library_loader/LinkerJni;->nativeFindRegionReservedByWebViewZygote(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v0

    return v0
.end method

.method public blacklist getRelroSharingResult()I
    .registers 2

    .line 44
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LinkerJni;->nativeGetRelroSharingResult()I

    move-result v0

    return v0
.end method

.method public blacklist loadLibrary(Ljava/lang/String;Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;Z)Z
    .registers 5
    .param p1, "libFilePath"    # Ljava/lang/String;
    .param p2, "libInfo"    # Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;
    .param p3, "spawnRelroRegion"    # Z

    .line 34
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/library_loader/LinkerJni;->nativeLoadLibrary(Ljava/lang/String;Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist reserveMemoryForLibrary(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)V
    .registers 2
    .param p1, "libInfo"    # Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    .line 23
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/library_loader/LinkerJni;->nativeReserveMemoryForLibrary(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)V

    .line 24
    return-void
.end method

.method public blacklist useRelros(JLandroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)Z
    .registers 5
    .param p1, "localLoadAddress"    # J
    .param p3, "remoteLibInfo"    # Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;

    .line 39
    invoke-static {p1, p2, p3}, Landroid/net/connectivity/org/chromium/base/library_loader/LinkerJni;->nativeUseRelros(JLandroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)Z

    move-result v0

    return v0
.end method
