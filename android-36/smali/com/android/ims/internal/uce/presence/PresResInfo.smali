.class public Lcom/android/ims/internal/uce/presence/PresResInfo;
.super Ljava/lang/Object;
.source "PresResInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresResInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mDisplayName:Ljava/lang/String;

.field private greylist-max-o mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

.field private greylist-max-o mResUri:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresResInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresResInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresResInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    .line 90
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 119
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresResInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getDisplayName()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getInstanceInfo()Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    return-object v0
.end method

.method public greylist-max-o getResUri()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    .line 125
    const-class v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    .line 126
    return-void
.end method

.method public greylist-max-r setDisplayName(Ljava/lang/String;)V
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public greylist-max-r setInstanceInfo(Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;)V
    .registers 2
    .param p1, "instanceInfo"    # Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    .line 45
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    .line 46
    return-void
.end method

.method public greylist-max-r setResUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "resUri"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mResUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInfo;->mInstanceInfo:Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    return-void
.end method
