.class public Landroid/adservices/ondevicepersonalization/DownloadInputParcel;
.super Ljava/lang/Object;
.source "DownloadInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/DownloadInputParcel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/DownloadInputParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mDataAccessServiceBinder:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/DownloadInputParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "dataAccessServiceBinder"    # Landroid/os/IBinder;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->mDataAccessServiceBinder:Landroid/os/IBinder;

    .line 54
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->mDataAccessServiceBinder:Landroid/os/IBinder;

    .line 57
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->mDataAccessServiceBinder:Landroid/os/IBinder;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 118
    .local v1, "flg":B
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 120
    .local v0, "dataAccessServiceBinder":Landroid/os/IBinder;
    :goto_13
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->mDataAccessServiceBinder:Landroid/os/IBinder;

    .line 123
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 74
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 75
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 77
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;

    .line 79
    .local v0, "that":Landroid/adservices/ondevicepersonalization/DownloadInputParcel;
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->mDataAccessServiceBinder:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->mDataAccessServiceBinder:Landroid/os/IBinder;

    .line 80
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 79
    return v1

    .line 75
    .end local v0    # "that":Landroid/adservices/ondevicepersonalization/DownloadInputParcel;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDataAccessServiceBinder()Landroid/os/IBinder;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->mDataAccessServiceBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->mDataAccessServiceBinder:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 91
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->mDataAccessServiceBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 102
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->mDataAccessServiceBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/DownloadInputParcel;->mDataAccessServiceBinder:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 104
    :cond_14
    return-void
.end method
