.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree;
.super Ljava/lang/Object;
.source "WifiPasspointDmTree.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$TrustRoot;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsernamePassword;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$EAPMethod;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$NetworkID;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeOIList;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$OtherHomePartners;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$UsageLimits;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$DigitalCertificate;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$SIM;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;,
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiTree"


# instance fields
.field public PpsMoId:I

.field public spFqdn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1365
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree;->spFqdn:Ljava/util/HashMap;

    #@a
    .line 1342
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree;->spFqdn:Ljava/util/HashMap;

    #@a
    .line 1346
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree;->readFromParcel(Landroid/os/Parcel;)V

    #@d
    .line 1345
    return-void
.end method


# virtual methods
.method public createSpFqdn(Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;

    #@2
    invoke-direct {v0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;-><init>(Ljava/lang/String;)V

    #@5
    .line 48
    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree;->spFqdn:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 49
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1350
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1358
    if-nez p1, :cond_0

    #@2
    .line 1357
    :goto_0
    return-void

    #@3
    .line 1361
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree;->spFqdn:Ljava/util/HashMap;

    #@5
    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    #@e
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1354
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree;->spFqdn:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@5
    .line 1353
    return-void
.end method
