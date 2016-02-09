.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;
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
    name = "EAPMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public EAPType:Ljava/lang/String;

.field public InnerEAPType:Ljava/lang/String;

.field public InnerMethod:Ljava/lang/String;

.field public InnerVendorId:Ljava/lang/String;

.field public InnerVendorType:Ljava/lang/String;

.field public VendorId:Ljava/lang/String;

.field public VendorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 847
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 803
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 816
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 815
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 820
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 834
    if-nez p1, :cond_0

    #@2
    .line 833
    :goto_0
    return-void

    #@3
    .line 837
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->EAPType:Ljava/lang/String;

    #@9
    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->VendorId:Ljava/lang/String;

    #@f
    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->VendorType:Ljava/lang/String;

    #@15
    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerEAPType:Ljava/lang/String;

    #@1b
    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerVendorId:Ljava/lang/String;

    #@21
    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerVendorType:Ljava/lang/String;

    #@27
    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerMethod:Ljava/lang/String;

    #@2d
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 824
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->EAPType:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 825
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->VendorId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 826
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->VendorType:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 827
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerEAPType:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 828
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerVendorId:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 829
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerVendorType:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 830
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;->InnerMethod:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 823
    return-void
.end method
