.class public Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;
.super Ljava/lang/Object;
.source "NativeLibraryLoadedStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;,
        Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeNotLoadedException;
    }
.end annotation


# static fields
.field private static blacklist sProvider:Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkLoaded()V
    .registers 2

    .line 27
    sget-object v0, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->sProvider:Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;

    if-nez v0, :cond_5

    return-void

    .line 29
    :cond_5
    sget-object v0, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->sProvider:Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;

    invoke-interface {v0}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;->areNativeMethodsReady()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 33
    return-void

    .line 30
    :cond_e
    new-instance v0, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeNotLoadedException;

    const-string v1, "Native method called before the native library was ready."

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeNotLoadedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getProviderForTesting()Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;
    .registers 1

    .line 40
    sget-object v0, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->sProvider:Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;

    return-object v0
.end method

.method public static blacklist setProvider(Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;)V
    .registers 1
    .param p0, "statusProvider"    # Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;

    .line 36
    sput-object p0, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->sProvider:Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus$NativeLibraryLoadedStatusProvider;

    .line 37
    return-void
.end method
