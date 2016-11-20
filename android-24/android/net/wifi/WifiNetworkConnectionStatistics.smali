.class public Landroid/net/wifi/WifiNetworkConnectionStatistics;
.super Ljava/lang/Object;
.source "WifiNetworkConnectionStatistics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiNetworkConnectionStatistics$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiNetworkConnectionStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiNetworkConnnectionStatistics"


# instance fields
.field public numConnection:I

.field public numUsage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/net/wifi/WifiNetworkConnectionStatistics$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkConnectionStatistics$1;-><init>()V

    #@5
    .line 71
    sput-object v0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "connection"    # I
    .param p2, "usage"    # I

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput p1, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    #@5
    .line 37
    iput p2, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiNetworkConnectionStatistics;)V
    .locals 1
    .param p1, "source"    # Landroid/net/wifi/WifiNetworkConnectionStatistics;

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    iget v0, p1, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    #@5
    iput v0, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    #@7
    .line 55
    iget v0, p1, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    #@9
    iput v0, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    #@b
    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 60
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 46
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "c="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 47
    const-string/jumbo v1, " u="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 66
    iget v0, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numConnection:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 67
    iget v0, p0, Landroid/net/wifi/WifiNetworkConnectionStatistics;->numUsage:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 65
    return-void
.end method
