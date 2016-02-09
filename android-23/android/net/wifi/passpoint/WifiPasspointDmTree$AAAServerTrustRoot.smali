.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
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
    name = "AAAServerTrustRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CertSHA256Fingerprint:Ljava/lang/String;

.field public CertURL:Ljava/lang/String;

.field public nodeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 626
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 588
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 603
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 602
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nn"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fp"    # Ljava/lang/String;

    #@0
    .prologue
    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 594
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->nodeName:Ljava/lang/String;

    #@5
    .line 595
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertURL:Ljava/lang/String;

    #@7
    .line 596
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertSHA256Fingerprint:Ljava/lang/String;

    #@9
    .line 593
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 607
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 617
    if-nez p1, :cond_0

    #@2
    .line 616
    :goto_0
    return-void

    #@3
    .line 620
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->nodeName:Ljava/lang/String;

    #@9
    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertURL:Ljava/lang/String;

    #@f
    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertSHA256Fingerprint:Ljava/lang/String;

    #@15
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 611
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->nodeName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 612
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertURL:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 613
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;->CertSHA256Fingerprint:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 610
    return-void
.end method
