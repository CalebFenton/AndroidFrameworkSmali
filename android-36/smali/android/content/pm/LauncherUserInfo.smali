.class public final Landroid/content/pm/LauncherUserInfo;
.super Ljava/lang/Object;
.source "LauncherUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherUserInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/LauncherUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PRIVATE_SPACE_ENTRYPOINT_HIDDEN:Ljava/lang/String; = "private_space_entrypoint_hidden"


# instance fields
.field private final blacklist mUserConfig:Landroid/os/Bundle;

.field private final blacklist mUserSerialNumber:I

.field private final blacklist mUserType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Landroid/content/pm/LauncherUserInfo$1;

    invoke-direct {v0}, Landroid/content/pm/LauncherUserInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/LauncherUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherUserInfo;->mUserType:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LauncherUserInfo;->mUserSerialNumber:I

    .line 92
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LauncherUserInfo;->mUserConfig:Landroid/os/Bundle;

    .line 93
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/LauncherUserInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/LauncherUserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "userSerialNumber"    # I
    .param p3, "config"    # Landroid/os/Bundle;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Landroid/content/pm/LauncherUserInfo;->mUserType:Ljava/lang/String;

    .line 159
    iput p2, p0, Landroid/content/pm/LauncherUserInfo;->mUserSerialNumber:I

    .line 160
    iput-object p3, p0, Landroid/content/pm/LauncherUserInfo;->mUserConfig:Landroid/os/Bundle;

    .line 161
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/pm/LauncherUserInfo-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/content/pm/LauncherUserInfo;-><init>(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUserConfig()Landroid/os/Bundle;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/content/pm/LauncherUserInfo;->mUserConfig:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getUserSerialNumber()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/content/pm/LauncherUserInfo;->mUserSerialNumber:I

    return v0
.end method

.method public whitelist getUserType()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/content/pm/LauncherUserInfo;->mUserType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-object v0, p0, Landroid/content/pm/LauncherUserInfo;->mUserType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 99
    iget v0, p0, Landroid/content/pm/LauncherUserInfo;->mUserSerialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Landroid/content/pm/LauncherUserInfo;->mUserConfig:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method
