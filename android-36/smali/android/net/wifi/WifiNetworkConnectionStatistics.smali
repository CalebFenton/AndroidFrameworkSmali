.class public Landroid/net/wifi/WifiNetworkConnectionStatistics;
.super Ljava/lang/Object;
.source "WifiNetworkConnectionStatistics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiNetworkConnectionStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiNetworkConnnectionStatistics"


# instance fields
.field public whitelist numConnection:I

.field public whitelist numUsage:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Landroid/net/wifi/WifiNetworkConnectionStatistics$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkConnectionStatistics$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "connection"    # I
    .param p2, "usage"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    .line 39
    iput p2, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    .line 40
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/WifiNetworkConnectionStatistics;)V
    .registers 3
    .param p1, "source"    # Landroid/net/wifi/WifiNetworkConnectionStatistics;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget v0, p1, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    iput v0, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    .line 57
    iget v0, p1, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    iput v0, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget v0, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return-void
.end method
