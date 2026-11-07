.class public Lcom/android/ims/internal/uce/common/UceLong;
.super Ljava/lang/Object;
.source "UceLong.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/common/UceLong;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mClientId:I

.field private greylist-max-o mUceLong:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    new-instance v0, Lcom/android/ims/internal/uce/common/UceLong$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/UceLong$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    .line 38
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/common/UceLong;->readFromParcel(Landroid/os/Parcel;)V

    .line 117
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/common/UceLong-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/UceLong;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o getUceLongInstance()Lcom/android/ims/internal/uce/common/UceLong;
    .registers 1

    .line 81
    new-instance v0, Lcom/android/ims/internal/uce/common/UceLong;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/UceLong;-><init>()V

    return-object v0
.end method

.method private greylist-max-o writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .line 97
    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 98
    iget v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r getClientId()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    return v0
.end method

.method public greylist-max-r getUceLong()J
    .registers 3

    .line 46
    iget-wide v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    return-wide v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    .line 123
    return-void
.end method

.method public greylist-max-r setClientId(I)V
    .registers 2
    .param p1, "nClientId"    # I

    .line 72
    iput p1, p0, Lcom/android/ims/internal/uce/common/UceLong;->mClientId:I

    .line 73
    return-void
.end method

.method public greylist-max-r setUceLong(J)V
    .registers 3
    .param p1, "uceLong"    # J

    .line 55
    iput-wide p1, p0, Lcom/android/ims/internal/uce/common/UceLong;->mUceLong:J

    .line 56
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;)V

    .line 93
    return-void
.end method
