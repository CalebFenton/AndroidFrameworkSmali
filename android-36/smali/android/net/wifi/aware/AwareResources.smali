.class public final Landroid/net/wifi/aware/AwareResources;
.super Ljava/lang/Object;
.source "AwareResources.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/AwareResources;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mNumOfAvailableNdps:I

.field private blacklist mNumOfAvailablePublishSessions:I

.field private blacklist mNumOfAvailableSubscribeSessions:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 144
    new-instance v0, Landroid/net/wifi/aware/AwareResources$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/AwareResources$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/AwareResources;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 4
    .param p1, "availableDataPathsCount"    # I
    .param p2, "availablePublishSessionsCount"    # I
    .param p3, "availableSubscribeSessionsCount"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableNdps:I

    .line 56
    iput p2, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailablePublishSessions:I

    .line 57
    iput p3, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableSubscribeSessions:I

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAvailableDataPathsCount()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableNdps:I

    return v0
.end method

.method public whitelist getAvailablePublishSessionsCount()I
    .registers 2

    .line 87
    iget v0, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailablePublishSessions:I

    return v0
.end method

.method public whitelist getAvailableSubscribeSessionsCount()I
    .registers 2

    .line 102
    iget v0, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableSubscribeSessions:I

    return v0
.end method

.method public blacklist setNumOfAvailableDataPaths(I)V
    .registers 2
    .param p1, "numOfAvailableNdps"    # I

    .line 111
    iput p1, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableNdps:I

    .line 112
    return-void
.end method

.method public blacklist setNumOfAvailablePublishSessions(I)V
    .registers 2
    .param p1, "numOfAvailablePublishSessions"    # I

    .line 120
    iput p1, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailablePublishSessions:I

    .line 121
    return-void
.end method

.method public blacklist setNumOfAvailableSubscribeSessions(I)V
    .registers 2
    .param p1, "numOfAvailableSubscribeSessions"    # I

    .line 129
    iput p1, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableSubscribeSessions:I

    .line 130
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 139
    iget v0, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableNdps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailablePublishSessions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableSubscribeSessions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return-void
.end method
