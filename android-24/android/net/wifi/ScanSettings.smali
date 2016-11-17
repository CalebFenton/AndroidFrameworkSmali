.class public Landroid/net/wifi/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ScanSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/ScanSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public channelSet:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 69
    new-instance v0, Landroid/net/wifi/ScanSettings$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/ScanSettings$1;-><init>()V

    #@5
    .line 68
    sput-object v0, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanSettings;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/ScanSettings;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iget-object v0, p1, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    #@9
    iget-object v1, p1, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@e
    iput-object v0, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@10
    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isValid()Z
    .locals 3

    #@0
    .prologue
    .line 48
    iget-object v2, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "channel$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Landroid/net/wifi/WifiChannel;

    #@12
    .line 49
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    invoke-virtual {v0}, Landroid/net/wifi/WifiChannel;->isValid()Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    const/4 v2, 0x0

    #@19
    return v2

    #@1a
    .line 50
    .end local v0    # "channel":Landroid/net/wifi/WifiChannel;
    :cond_1
    const/4 v2, 0x1

    #@1b
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 62
    iget-object v2, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@2
    if-nez v2, :cond_0

    #@4
    const/4 v2, 0x0

    #@5
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 63
    iget-object v2, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 64
    iget-object v2, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@e
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "channel$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Landroid/net/wifi/WifiChannel;

    #@1e
    .local v0, "channel":Landroid/net/wifi/WifiChannel;
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiChannel;->writeToParcel(Landroid/os/Parcel;I)V

    #@21
    goto :goto_1

    #@22
    .line 62
    .end local v0    # "channel":Landroid/net/wifi/WifiChannel;
    .end local v1    # "channel$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/ScanSettings;->channelSet:Ljava/util/Collection;

    #@24
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    #@27
    move-result v2

    #@28
    goto :goto_0

    #@29
    .line 61
    :cond_1
    return-void
.end method
