.class public Lcom/android/ims/internal/uce/presence/PresTupleInfo;
.super Ljava/lang/Object;
.source "PresTupleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/presence/PresTupleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mContactUri:Ljava/lang/String;

.field private greylist-max-o mFeatureTag:Ljava/lang/String;

.field private greylist-max-o mTimestamp:Ljava/lang/String;

.field private blacklist mVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 120
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresTupleInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 135
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresTupleInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresTupleInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getContactUri()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getFeatureTag()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTimestamp()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVersion()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public greylist-max-r setContactUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "contactUri"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public greylist-max-r setFeatureTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "featureTag"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public greylist-max-r setTimestamp(Ljava/lang/String;)V
    .registers 2
    .param p1, "timestamp"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public blacklist setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 113
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mFeatureTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mContactUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mTimestamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresTupleInfo;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return-void
.end method
