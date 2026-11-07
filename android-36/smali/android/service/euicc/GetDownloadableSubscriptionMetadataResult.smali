.class public final Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
.super Ljava/lang/Object;
.source "GetDownloadableSubscriptionMetadataResult.java"

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
            "Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

.field public final greylist-max-r result:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;

    invoke-direct {v0}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;-><init>()V

    sput-object v0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILandroid/telephony/euicc/DownloadableSubscription;)V
    .registers 6
    .param p1, "result"    # I
    .param p2, "subscription"    # Landroid/telephony/euicc/DownloadableSubscription;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    .line 89
    iget v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    if-nez v0, :cond_c

    .line 90
    iput-object p2, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    goto :goto_11

    .line 92
    :cond_c
    if-nez p2, :cond_12

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 98
    :goto_11
    return-void

    .line 93
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error result with non-null subscription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    .line 102
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    iput-object v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDownloadableSubscription()Landroid/telephony/euicc/DownloadableSubscription;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    return-object v0
.end method

.method public whitelist getResult()I
    .registers 2

    .line 64
    iget v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 107
    iget v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 109
    return-void
.end method
