.class interface abstract Landroid/net/connectivity/org/chromium/base/library_loader/Linker$Natives;
.super Ljava/lang/Object;
.source "Linker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/library_loader/Linker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist findMemoryRegionAtRandomAddress(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)V
.end method

.method public abstract blacklist findRegionReservedByWebViewZygote(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method public abstract blacklist getRelroSharingResult()I
.end method

.method public abstract blacklist loadLibrary(Ljava/lang/String;Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;Z)Z
.end method

.method public abstract blacklist reserveMemoryForLibrary(Landroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)V
.end method

.method public abstract blacklist useRelros(JLandroid/net/connectivity/org/chromium/base/library_loader/Linker$LibInfo;)Z
.end method
