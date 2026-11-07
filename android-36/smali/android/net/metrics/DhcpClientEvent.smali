.class public final Landroid/net/metrics/DhcpClientEvent;
.super Ljava/lang/Object;
.source "DhcpClientEvent.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DhcpClientEvent$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/DhcpClientEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o durationMs:I

.field public final greylist-max-o msg:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Landroid/net/metrics/DhcpClientEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/DhcpClientEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/DhcpClientEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/metrics/DhcpClientEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/metrics/DhcpClientEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-r <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "durationMs"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    .line 49
    iput p2, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    .line 50
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/net/metrics/DhcpClientEvent-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/metrics/DhcpClientEvent;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 112
    const/4 v0, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/net/metrics/DhcpClientEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_25

    .line 113
    :cond_10
    move-object v1, p1

    check-cast v1, Landroid/net/metrics/DhcpClientEvent;

    .line 114
    .local v1, "other":Landroid/net/metrics/DhcpClientEvent;
    iget-object v2, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    iget v3, v1, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    if-ne v2, v3, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0

    .line 112
    .end local v1    # "other":Landroid/net/metrics/DhcpClientEvent;
    :cond_25
    :goto_25
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 107
    iget-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    iget v1, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DhcpClientEvent(%s, %dms)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget-object v0, p0, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void
.end method
