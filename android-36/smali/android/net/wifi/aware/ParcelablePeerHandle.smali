.class public final Landroid/net/wifi/aware/ParcelablePeerHandle;
.super Landroid/net/wifi/aware/PeerHandle;
.source "ParcelablePeerHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/ParcelablePeerHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/net/wifi/aware/ParcelablePeerHandle$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/ParcelablePeerHandle$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/ParcelablePeerHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/aware/PeerHandle;)V
    .registers 3
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;

    .line 34
    iget v0, p1, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    invoke-direct {p0, v0}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 44
    iget v0, p0, Landroid/net/wifi/aware/ParcelablePeerHandle;->peerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    return-void
.end method
