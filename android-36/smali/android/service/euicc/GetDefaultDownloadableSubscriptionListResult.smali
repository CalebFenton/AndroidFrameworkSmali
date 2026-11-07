.class public final Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;
.super Ljava/lang/Object;
.source "GetDefaultDownloadableSubscriptionListResult.java"

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
            "Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mSubscriptions:[Landroid/telephony/euicc/DownloadableSubscription;

.field public final greylist-max-r result:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult$1;

    invoke-direct {v0}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult$1;-><init>()V

    sput-object v0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I[Landroid/telephony/euicc/DownloadableSubscription;)V
    .registers 6
    .param p1, "result"    # I
    .param p2, "subscriptions"    # [Landroid/telephony/euicc/DownloadableSubscription;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->result:I

    .line 93
    iget v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->result:I

    if-nez v0, :cond_c

    .line 94
    iput-object p2, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->mSubscriptions:[Landroid/telephony/euicc/DownloadableSubscription;

    goto :goto_11

    .line 96
    :cond_c
    if-nez p2, :cond_12

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->mSubscriptions:[Landroid/telephony/euicc/DownloadableSubscription;

    .line 102
    :goto_11
    return-void

    .line 97
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error result with non-null subscriptions: "

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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->result:I

    .line 106
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/euicc/DownloadableSubscription;

    iput-object v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->mSubscriptions:[Landroid/telephony/euicc/DownloadableSubscription;

    .line 107
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDownloadableSubscriptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/euicc/DownloadableSubscription;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->mSubscriptions:[Landroid/telephony/euicc/DownloadableSubscription;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_6
    iget-object v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->mSubscriptions:[Landroid/telephony/euicc/DownloadableSubscription;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getResult()I
    .registers 2

    .line 67
    iget v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->result:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    iget v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->result:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->mSubscriptions:[Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 113
    return-void
.end method
