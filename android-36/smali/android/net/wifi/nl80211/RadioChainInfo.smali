.class public final Landroid/net/wifi/nl80211/RadioChainInfo;
.super Ljava/lang/Object;
.source "RadioChainInfo.java"

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
            "Landroid/net/wifi/nl80211/RadioChainInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "RadioChainInfo"


# instance fields
.field public blacklist chainId:I

.field public blacklist level:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 110
    new-instance v0, Landroid/net/wifi/nl80211/RadioChainInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/nl80211/RadioChainInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nl80211/RadioChainInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "chainId"    # I
    .param p2, "level"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    .line 69
    iput p2, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 75
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 76
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/nl80211/RadioChainInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 77
    return v2

    .line 79
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/nl80211/RadioChainInfo;

    .line 80
    .local v1, "chainInfo":Landroid/net/wifi/nl80211/RadioChainInfo;
    if-nez v1, :cond_10

    .line 81
    return v2

    .line 83
    :cond_10
    iget v3, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    iget v4, v1, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    if-ne v3, v4, :cond_1d

    iget v3, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    iget v4, v1, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    if-ne v3, v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public whitelist getChainId()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    return v0
.end method

.method public whitelist getLevelDbm()I
    .registers 2

    .line 61
    iget v0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 89
    iget v0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 105
    iget v0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->chainId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/net/wifi/nl80211/RadioChainInfo;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    return-void
.end method
