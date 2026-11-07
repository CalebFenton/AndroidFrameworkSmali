.class Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICertificateTransparencyManager.java"

# interfaces
.implements Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/net/connectivity/android/net/ct/ICertificateTransparencyManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 96
    const-string v0, "android.net.connectivity.android.net.ct.ICertificateTransparencyManager"

    return-object v0
.end method
