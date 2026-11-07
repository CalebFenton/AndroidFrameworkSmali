.class public final Landroid/content/pm/InstallSourceInfo;
.super Ljava/lang/Object;
.source "InstallSourceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/InstallSourceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mInitiatingPackageName:Ljava/lang/String;

.field private final blacklist mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

.field private final blacklist mInstallingPackageName:Ljava/lang/String;

.field private final blacklist mOriginatingPackageName:Ljava/lang/String;

.field private final blacklist mPackageSource:I

.field private final blacklist mUpdateOwnerPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 168
    new-instance v0, Landroid/content/pm/InstallSourceInfo$1;

    invoke-direct {v0}, Landroid/content/pm/InstallSourceInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/InstallSourceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageName:Ljava/lang/String;

    .line 82
    const-class v0, Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/pm/SigningInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningInfo;

    iput-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mOriginatingPackageName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInstallingPackageName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/InstallSourceInfo;->mPackageSource:I

    .line 87
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/InstallSourceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/InstallSourceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "initiatingPackageName"    # Ljava/lang/String;
    .param p2, "initiatingPackageSigningInfo"    # Landroid/content/pm/SigningInfo;
    .param p3, "originatingPackageName"    # Ljava/lang/String;
    .param p4, "installingPackageName"    # Ljava/lang/String;

    .line 46
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "initiatingPackageName":Ljava/lang/String;
    .end local p2    # "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    .end local p3    # "originatingPackageName":Ljava/lang/String;
    .end local p4    # "installingPackageName":Ljava/lang/String;
    .local v1, "initiatingPackageName":Ljava/lang/String;
    .local v2, "initiatingPackageSigningInfo":Landroid/content/pm/SigningInfo;
    .local v3, "originatingPackageName":Ljava/lang/String;
    .local v4, "installingPackageName":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "initiatingPackageName"    # Ljava/lang/String;
    .param p2, "initiatingPackageSigningInfo"    # Landroid/content/pm/SigningInfo;
    .param p3, "originatingPackageName"    # Ljava/lang/String;
    .param p4, "installingPackageName"    # Ljava/lang/String;
    .param p5, "updateOwnerPackageName"    # Ljava/lang/String;
    .param p6, "packageSource"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

    .line 58
    iput-object p3, p0, Landroid/content/pm/InstallSourceInfo;->mOriginatingPackageName:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Landroid/content/pm/InstallSourceInfo;->mInstallingPackageName:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Landroid/content/pm/InstallSourceInfo;->mUpdateOwnerPackageName:Ljava/lang/String;

    .line 61
    iput p6, p0, Landroid/content/pm/InstallSourceInfo;->mPackageSource:I

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

    if-nez v0, :cond_6

    .line 67
    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->describeContents()I

    move-result v0

    .line 66
    :goto_c
    return v0
.end method

.method public whitelist getInitiatingPackageName()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getInitiatingPackageSigningInfo()Landroid/content/pm/SigningInfo;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

    return-object v0
.end method

.method public whitelist getInstallingPackageName()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInstallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getOriginatingPackageName()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mOriginatingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageSource()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/content/pm/InstallSourceInfo;->mPackageSource:I

    return v0
.end method

.method public whitelist getUpdateOwnerPackageName()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mUpdateOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInitiatingPackageSigningInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mOriginatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mInstallingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Landroid/content/pm/InstallSourceInfo;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Landroid/content/pm/InstallSourceInfo;->mPackageSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method
