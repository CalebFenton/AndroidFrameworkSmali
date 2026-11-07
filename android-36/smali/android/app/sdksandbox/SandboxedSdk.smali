.class public final Landroid/app/sdksandbox/SandboxedSdk;
.super Ljava/lang/Object;
.source "SandboxedSdk.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/sdksandbox/SandboxedSdk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mInterface:Landroid/os/IBinder;

.field private blacklist mSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Landroid/app/sdksandbox/SandboxedSdk$1;

    invoke-direct {v0}, Landroid/app/sdksandbox/SandboxedSdk$1;-><init>()V

    sput-object v0, Landroid/app/sdksandbox/SandboxedSdk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "sdkInterface"    # Landroid/os/IBinder;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/app/sdksandbox/SandboxedSdk;->mInterface:Landroid/os/IBinder;

    .line 67
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/sdksandbox/SandboxedSdk;->mInterface:Landroid/os/IBinder;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 72
    sget-object v0, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SharedLibraryInfo;

    iput-object v0, p0, Landroid/app/sdksandbox/SandboxedSdk;->mSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 74
    :cond_19
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/sdksandbox/SandboxedSdk-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/SandboxedSdk;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public blacklist attachSharedLibraryInfo(Landroid/content/pm/SharedLibraryInfo;)V
    .registers 4
    .param p1, "sharedLibraryInfo"    # Landroid/content/pm/SharedLibraryInfo;

    .line 89
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdk;->mSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-nez v0, :cond_c

    .line 92
    const-string v0, "SharedLibraryInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Landroid/app/sdksandbox/SandboxedSdk;->mSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    .line 94
    return-void

    .line 90
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SharedLibraryInfo already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInterface()Landroid/os/IBinder;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdk;->mInterface:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;
    .registers 3

    .line 114
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdk;->mSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdk;->mSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    return-object v0

    .line 115
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SharedLibraryInfo has not been set. This is populated by our system service once the SandboxedSdk is sent back from as a response to android.app.sdksandbox.SandboxedSdkProvider$onLoadSdk. Please use android.app.sdksandbox.SdkSandboxManager#getSandboxedSdks or android.app.sdksandbox.SdkSandboxController#getSandboxedSdks to get the correctly populated SandboxedSdks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdk;->mInterface:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 136
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdk;->mSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdk;->mSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/SharedLibraryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 140
    :cond_14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_17
    return-void
.end method
