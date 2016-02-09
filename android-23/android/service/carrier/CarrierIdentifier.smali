.class public Landroid/service/carrier/CarrierIdentifier;
.super Ljava/lang/Object;
.source "CarrierIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierIdentifier$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/carrier/CarrierIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGid1:Ljava/lang/String;

.field private mGid2:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mSpn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 29
    new-instance v0, Landroid/service/carrier/CarrierIdentifier$1;

    #@2
    invoke-direct {v0}, Landroid/service/carrier/CarrierIdentifier$1;-><init>()V

    #@5
    sput-object v0, Landroid/service/carrier/CarrierIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    invoke-virtual {p0, p1}, Landroid/service/carrier/CarrierIdentifier;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    #@5
    .line 51
    iput-object p2, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    #@7
    .line 52
    iput-object p3, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    #@9
    .line 53
    iput-object p4, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    #@b
    .line 54
    iput-object p5, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    #@d
    .line 55
    iput-object p6, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    #@f
    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 95
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 85
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getGid2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 90
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSpn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    #@6
    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    #@c
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    #@12
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    #@18
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    #@1e
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    #@24
    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMcc:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 101
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mMnc:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 102
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mSpn:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 103
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mImsi:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 104
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid1:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 105
    iget-object v0, p0, Landroid/service/carrier/CarrierIdentifier;->mGid2:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 99
    return-void
.end method
