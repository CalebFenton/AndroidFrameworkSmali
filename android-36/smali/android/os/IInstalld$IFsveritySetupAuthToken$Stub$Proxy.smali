.class Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;
.super Ljava/lang/Object;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld$IFsveritySetupAuthToken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;
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

    .line 2412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2413
    iput-object p1, p0, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2414
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 2417
    iget-object v0, p0, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 2421
    const-string v0, "android.os.IInstalld.IFsveritySetupAuthToken"

    return-object v0
.end method
