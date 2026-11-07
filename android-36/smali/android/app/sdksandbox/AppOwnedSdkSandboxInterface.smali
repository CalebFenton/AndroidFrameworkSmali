.class public final Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;
.super Ljava/lang/Object;
.source "AppOwnedSdkSandboxInterface.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mInterface:Landroid/os/IBinder;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mVersion:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface$1;

    invoke-direct {v0}, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface$1;-><init>()V

    sput-object v0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mVersion:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mInterface:Landroid/os/IBinder;

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLandroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # J
    .param p4, "binder"    # Landroid/os/IBinder;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mName:Ljava/lang/String;

    .line 63
    iput-wide p2, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mVersion:J

    .line 64
    iput-object p4, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mInterface:Landroid/os/IBinder;

    .line 65
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInterface()Landroid/os/IBinder;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mInterface:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVersion()J
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mVersion:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    iget-object v0, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-wide v0, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object v0, p0, Landroid/app/sdksandbox/AppOwnedSdkSandboxInterface;->mInterface:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 119
    return-void
.end method
