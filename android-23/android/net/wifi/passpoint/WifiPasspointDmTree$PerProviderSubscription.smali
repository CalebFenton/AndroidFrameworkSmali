.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;
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
    name = "PerProviderSubscription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public UpdateIdentifier:Ljava/lang/String;

.field public credentialInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 138
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 100
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->credentialInfo:Ljava/util/HashMap;

    #@a
    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 105
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->credentialInfo:Ljava/util/HashMap;

    #@a
    .line 117
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->readFromParcel(Landroid/os/Parcel;)V

    #@d
    .line 116
    return-void
.end method


# virtual methods
.method public createCredentialInfo(Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;

    #@2
    invoke-direct {v0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;-><init>(Ljava/lang/String;)V

    #@5
    .line 109
    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->credentialInfo:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 110
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 121
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 130
    if-nez p1, :cond_0

    #@2
    .line 129
    :goto_0
    return-void

    #@3
    .line 133
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->UpdateIdentifier:Ljava/lang/String;

    #@9
    .line 134
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->credentialInfo:Ljava/util/HashMap;

    #@b
    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;

    #@d
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    #@14
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->UpdateIdentifier:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 126
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PerProviderSubscription;->credentialInfo:Ljava/util/HashMap;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@a
    .line 124
    return-void
.end method
