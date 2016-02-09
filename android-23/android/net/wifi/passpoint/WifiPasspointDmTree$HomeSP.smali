.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;
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
    name = "HomeSP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public FQDN:Ljava/lang/String;

.field public FriendlyName:Ljava/lang/String;

.field public IconURL:Ljava/lang/String;

.field public RoamingConsortiumOI:Ljava/lang/String;

.field public homeOIList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;",
            ">;"
        }
    .end annotation
.end field

.field public networkID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;",
            ">;"
        }
    .end annotation
.end field

.field public otherHomePartners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 923
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 861
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 862
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->networkID:Ljava/util/HashMap;

    #@a
    .line 866
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    #@11
    .line 867
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    #@18
    .line 888
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 862
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->networkID:Ljava/util/HashMap;

    #@a
    .line 866
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    #@11
    .line 867
    new-instance v0, Ljava/util/HashMap;

    #@13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    #@18
    .line 892
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->readFromParcel(Landroid/os/Parcel;)V

    #@1b
    .line 891
    return-void
.end method


# virtual methods
.method public createHomeOIList(Ljava/lang/String;Ljava/lang/String;Z)Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "homeoi"    # Ljava/lang/String;
    .param p3, "required"    # Z

    #@0
    .prologue
    .line 877
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@5
    .line 878
    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 879
    return-object v0
.end method

.method public createNetworkID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "hessid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 871
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 872
    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->networkID:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 873
    return-object v0
.end method

.method public createOtherHomePartners(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fqdn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 883
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 884
    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 885
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 896
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 910
    if-nez p1, :cond_0

    #@2
    .line 909
    :goto_0
    return-void

    #@3
    .line 913
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->networkID:Ljava/util/HashMap;

    #@5
    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    #@e
    .line 914
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FriendlyName:Ljava/lang/String;

    #@14
    .line 915
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->IconURL:Ljava/lang/String;

    #@1a
    .line 916
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FQDN:Ljava/lang/String;

    #@20
    .line 917
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    #@22
    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;

    #@24
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    #@2b
    .line 918
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    #@2d
    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;

    #@2f
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    #@36
    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->RoamingConsortiumOI:Ljava/lang/String;

    #@3c
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 900
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->networkID:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@5
    .line 901
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FriendlyName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 902
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->IconURL:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 903
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->FQDN:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 904
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->homeOIList:Ljava/util/HashMap;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@19
    .line 905
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->otherHomePartners:Ljava/util/HashMap;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@1e
    .line 906
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;->RoamingConsortiumOI:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 899
    return-void
.end method
