.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;
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
    name = "UsernamePassword"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AbleToShare:Ljava/lang/String;

.field public MachineManaged:Z

.field public Password:Ljava/lang/String;

.field public SoftTokenApp:Ljava/lang/String;

.field public Username:Ljava/lang/String;

.field public eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 788
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 746
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 753
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    #@a
    .line 755
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 753
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    #@a
    .line 759
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->readFromParcel(Landroid/os/Parcel;)V

    #@d
    .line 758
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 763
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 776
    if-nez p1, :cond_0

    #@3
    .line 775
    :goto_0
    return-void

    #@4
    .line 779
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    #@a
    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    #@10
    .line 781
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v1

    #@14
    if-ne v1, v0, :cond_1

    #@16
    :goto_1
    iput-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->MachineManaged:Z

    #@18
    .line 782
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->SoftTokenApp:Ljava/lang/String;

    #@1e
    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->AbleToShare:Ljava/lang/String;

    #@24
    .line 784
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    #@26
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    #@30
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    #@32
    goto :goto_0

    #@33
    .line 781
    :cond_1
    const/4 v0, 0x0

    #@34
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 767
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Username:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 768
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->Password:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 769
    iget-boolean v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->MachineManaged:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@12
    .line 770
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->SoftTokenApp:Ljava/lang/String;

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 771
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->AbleToShare:Ljava/lang/String;

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1c
    .line 772
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;->eAPMethod:Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;

    #@1e
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@21
    .line 766
    return-void

    #@22
    .line 769
    :cond_0
    const/4 v0, 0x0

    #@23
    goto :goto_0
.end method
