.class public Landroid/os/VintfRuntimeInfo;
.super Ljava/lang/Object;
.source "VintfRuntimeInfo.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-string/jumbo v0, "vintf_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native greylist-max-o getBootAvbVersion()Ljava/lang/String;
.end method

.method public static native greylist-max-o getBootVbmetaAvbVersion()Ljava/lang/String;
.end method

.method public static native blacklist getCpuInfo()Ljava/lang/String;
.end method

.method public static native blacklist getHardwareId()Ljava/lang/String;
.end method

.method public static native greylist-max-o getKernelSepolicyVersion()J
.end method

.method public static native blacklist getKernelVersion()Ljava/lang/String;
.end method

.method public static native blacklist getNodeName()Ljava/lang/String;
.end method

.method public static native blacklist getOsName()Ljava/lang/String;
.end method

.method public static native blacklist getOsRelease()Ljava/lang/String;
.end method

.method public static native blacklist getOsVersion()Ljava/lang/String;
.end method
