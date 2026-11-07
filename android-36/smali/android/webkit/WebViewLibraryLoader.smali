.class public Landroid/webkit/WebViewLibraryLoader;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHROMIUM_WEBVIEW_NATIVE_RELRO_32:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium32.relro"

.field private static final greylist-max-o CHROMIUM_WEBVIEW_NATIVE_RELRO_64:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium64.relro"

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o LOGTAG:Ljava/lang/String;

.field private static greylist-max-o sAddressSpaceReserved:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOGTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAddressSpaceReserved()Z
    .registers 1

    sget-boolean v0, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-class v0, Landroid/webkit/WebViewLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist createRelroFile(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p0, "is64Bit"    # Z
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "libraryFileName"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_c

    :cond_8
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_c
    move-object v5, v0

    .line 116
    .local v5, "abi":Ljava/lang/String;
    new-instance v7, Landroid/webkit/WebViewLibraryLoader$1;

    invoke-direct {v7, v5}, Landroid/webkit/WebViewLibraryLoader$1;-><init>(Ljava/lang/String;)V

    .line 133
    .local v7, "crashHandler":Ljava/lang/Runnable;
    :try_start_12
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManagerInternal;

    const-class v0, Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;

    .line 135
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebViewLoader-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    const/16 v6, 0x40d

    invoke-virtual/range {v1 .. v7}, Landroid/app/ActivityManagerInternal;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z

    move-result v0

    .line 138
    .local v0, "success":Z
    if-eqz v0, :cond_41

    .line 143
    .end local v0    # "success":Z
    goto :goto_65

    .line 138
    .restart local v0    # "success":Z
    :cond_41
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to start the relro file creator process"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v5    # "abi":Ljava/lang/String;
    .end local v7    # "crashHandler":Ljava/lang/Runnable;
    .end local p0    # "is64Bit":Z
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "libraryFileName":Ljava/lang/String;
    throw v1
    :try_end_49
    .catchall {:try_start_12 .. :try_end_49} :catchall_49

    .line 139
    .end local v0    # "success":Z
    .restart local v5    # "abi":Ljava/lang/String;
    .restart local v7    # "crashHandler":Ljava/lang/Runnable;
    .restart local p0    # "is64Bit":Z
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "libraryFileName":Ljava/lang/String;
    :catchall_49
    move-exception v0

    .line 141
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error starting relro file creator for abi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 144
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_65
    return-void
.end method

.method private static blacklist createRelros(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "libraryFileName"    # Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "numRelros":I
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_c

    .line 172
    const/4 v1, 0x0

    invoke-static {v1, p0, p1}, Landroid/webkit/WebViewLibraryLoader;->createRelroFile(ZLjava/lang/String;Ljava/lang/String;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 176
    :cond_c
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_17

    .line 178
    const/4 v1, 0x1

    invoke-static {v1, p0, p1}, Landroid/webkit/WebViewLibraryLoader;->createRelroFile(ZLjava/lang/String;Ljava/lang/String;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 181
    :cond_17
    return v0
.end method

.method public static greylist-max-o loadNativeLibrary(Ljava/lang/ClassLoader;Ljava/lang/String;)I
    .registers 6
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;
    .param p1, "libraryFileName"    # Ljava/lang/String;

    .line 226
    sget-boolean v0, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    if-nez v0, :cond_d

    .line 227
    sget-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string v1, "can\'t load with relro file; address space not reserved"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x2

    return v0

    .line 231
    :cond_d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "/data/misc/shared_relro/libwebviewchromium64.relro"

    goto :goto_1c

    .line 232
    :cond_1a
    const-string v0, "/data/misc/shared_relro/libwebviewchromium32.relro"

    :goto_1c
    nop

    .line 233
    .local v0, "relroPath":Ljava/lang/String;
    invoke-static {p1, v0, p0}, Landroid/webkit/WebViewLibraryLoader;->nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result v1

    .line 234
    .local v1, "result":I
    if-eqz v1, :cond_2a

    .line 235
    sget-object v2, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string v3, "failed to load with relro file, proceeding without"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_2a
    return v1
.end method

.method static native blacklist nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
.end method

.method static native greylist-max-o nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I
.end method

.method static native greylist-max-o nativeReserveAddressSpace(J)Z
.end method

.method static greylist-max-o prepareNativeLibraries(Landroid/content/pm/PackageInfo;)I
    .registers 3
    .param p0, "webViewPackageInfo"    # Landroid/content/pm/PackageInfo;

    .line 154
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "libraryFileName":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 158
    const/4 v1, 0x0

    return v1

    .line 160
    :cond_a
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/webkit/WebViewLibraryLoader;->createRelros(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static greylist-max-o reserveAddressSpaceInZygote()V
    .registers 5

    .line 188
    const-string/jumbo v0, "webviewchromium_loader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 192
    const-wide/32 v0, 0x40000000

    .local v0, "addressSpaceToReserve":J
    goto :goto_2b

    .line 193
    .end local v0    # "addressSpaceToReserve":J
    :cond_14
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v0

    const-string v1, "arm"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 199
    const-wide/32 v0, 0x8200000

    .restart local v0    # "addressSpaceToReserve":J
    goto :goto_2b

    .line 203
    .end local v0    # "addressSpaceToReserve":J
    :cond_28
    const-wide/32 v0, 0xbe00000

    .line 206
    .restart local v0    # "addressSpaceToReserve":J
    :goto_2b
    invoke-static {v0, v1}, Landroid/webkit/WebViewLibraryLoader;->nativeReserveAddressSpace(J)Z

    move-result v2

    sput-boolean v2, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    .line 208
    sget-boolean v2, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    if-eqz v2, :cond_36

    goto :goto_55

    .line 213
    :cond_36
    sget-object v2, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reserving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes of address space failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_55
    return-void
.end method
