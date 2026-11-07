.class public Landroid/net/connectivity/com/android/net/module/util/TcUtils;
.super Ljava/lang/Object;
.source "TcUtils.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    const-class v0, Landroid/net/connectivity/com/android/net/module/util/TcUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/JniUtil;->getJniLibraryName(Ljava/lang/Package;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native blacklist isBpfProgramUsable(Ljava/lang/String;)Z
.end method

.method public static native blacklist isEthernet(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native blacklist tcFilterAddDevBpf(IZSSLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native blacklist tcFilterAddDevIngressPolice(ISSILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native blacklist tcFilterDelDev(IZSS)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native blacklist tcQdiscAddDevClsact(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
