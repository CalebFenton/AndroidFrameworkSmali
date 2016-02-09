.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;
.super Ljava/lang/Object;
.source "WifiPasspointDmTree.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointDmTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SPExclusionList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public SSID:Ljava/lang/String;

.field public nodeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 522
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 488
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 501
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 500
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nn"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 493
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;->nodeName:Ljava/lang/String;

    #@5
    .line 494
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;->SSID:Ljava/lang/String;

    #@7
    .line 492
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 505
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 514
    if-nez p1, :cond_0

    #@2
    .line 513
    :goto_0
    return-void

    #@3
    .line 517
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;->nodeName:Ljava/lang/String;

    #@9
    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;->SSID:Ljava/lang/String;

    #@f
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;->nodeName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 510
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;->SSID:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 508
    return-void
.end method
