.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
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
    name = "RequiredProtoPortTuple"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public IPProtocol:Ljava/lang/String;

.field public PortNumber:Ljava/lang/String;

.field public nodeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 574
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 536
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 551
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 550
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "nn"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;

    #@0
    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 545
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->nodeName:Ljava/lang/String;

    #@5
    .line 546
    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->IPProtocol:Ljava/lang/String;

    #@7
    .line 547
    iput-object p3, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->PortNumber:Ljava/lang/String;

    #@9
    .line 544
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 555
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 565
    if-nez p1, :cond_0

    #@2
    .line 564
    :goto_0
    return-void

    #@3
    .line 568
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->nodeName:Ljava/lang/String;

    #@9
    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->IPProtocol:Ljava/lang/String;

    #@f
    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->PortNumber:Ljava/lang/String;

    #@15
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 559
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->nodeName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 560
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->IPProtocol:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 561
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;->PortNumber:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 558
    return-void
.end method
