.class public final Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;
.super Ljava/lang/Object;
.source "DependencyInstallerCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBinder:Landroid/os/IBinder;

.field private final blacklist mCallback:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback$1;

    invoke-direct {v0}, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback$1;-><init>()V

    sput-object v0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mBinder:Landroid/os/IBinder;

    .line 44
    invoke-static {p1}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mCallback:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    .line 45
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mBinder:Landroid/os/IBinder;

    .line 49
    iget-object v0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mBinder:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mCallback:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onAllDependenciesResolved([I)V
    .registers 4
    .param p1, "sessionIds"    # [I

    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mCallback:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    invoke-interface {v0, p1}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;->onAllDependenciesResolved([I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 70
    nop

    .line 71
    return-void

    .line 68
    :catch_7
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist onFailureToResolveAllDependencies()V
    .registers 3

    .line 79
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mCallback:Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;

    invoke-interface {v0}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerCallback;->onFailureToResolveAllDependencies()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 82
    nop

    .line 83
    return-void

    .line 80
    :catch_7
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 92
    iget-object v0, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 93
    return-void
.end method
