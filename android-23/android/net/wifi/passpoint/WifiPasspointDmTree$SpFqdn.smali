.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;
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
    name = "SpFqdn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public nodeName:Ljava/lang/String;

.field public perProviderSubscription:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 86
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->perProviderSubscription:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    #@a
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->perProviderSubscription:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    #@a
    .line 64
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->readFromParcel(Landroid/os/Parcel;)V

    #@d
    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->perProviderSubscription:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    #@a
    .line 57
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->nodeName:Ljava/lang/String;

    #@c
    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 77
    if-nez p1, :cond_0

    #@2
    .line 76
    :goto_0
    return-void

    #@3
    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->nodeName:Ljava/lang/String;

    #@9
    .line 81
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    #@b
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    #@15
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->perProviderSubscription:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    #@17
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->nodeName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 73
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SpFqdn;->perProviderSubscription:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 71
    return-void
.end method
