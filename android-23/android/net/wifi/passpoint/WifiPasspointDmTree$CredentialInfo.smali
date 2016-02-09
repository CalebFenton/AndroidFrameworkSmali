.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;
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
    name = "CredentialInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public aAAServerTrustRoot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;",
            ">;"
        }
    .end annotation
.end field

.field public credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

.field public credentialPriority:Ljava/lang/String;

.field public extension:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

.field public homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

.field public nodeName:Ljava/lang/String;

.field public policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

.field public subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

.field public subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 215
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 154
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 156
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@a
    .line 158
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    #@11
    .line 159
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@13
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@18
    .line 160
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@1a
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@1f
    .line 161
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    #@21
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;-><init>()V

    #@24
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    #@26
    .line 162
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@28
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@2d
    .line 163
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    #@2f
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;-><init>()V

    #@32
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->extension:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    #@34
    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 156
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@a
    .line 158
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    #@11
    .line 159
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@13
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@18
    .line 160
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@1a
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@1f
    .line 161
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    #@21
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;-><init>()V

    #@24
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    #@26
    .line 162
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@28
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@2d
    .line 163
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    #@2f
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;-><init>()V

    #@32
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->extension:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    #@34
    .line 179
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@37
    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "nn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 156
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@a
    .line 158
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    #@11
    .line 159
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@13
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@18
    .line 160
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@1a
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@1f
    .line 161
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    #@21
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;-><init>()V

    #@24
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    #@26
    .line 162
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@28
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;-><init>()V

    #@2b
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@2d
    .line 163
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    #@2f
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;-><init>()V

    #@32
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->extension:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Extension;

    #@34
    .line 166
    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->nodeName:Ljava/lang/String;

    #@36
    .line 165
    return-void
.end method


# virtual methods
.method public createAAAServerTrustRoot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fp"    # Ljava/lang/String;

    #@0
    .prologue
    .line 170
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 171
    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 172
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 183
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 199
    if-nez p1, :cond_0

    #@2
    .line 198
    :goto_0
    return-void

    #@3
    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->nodeName:Ljava/lang/String;

    #@9
    .line 203
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@b
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@15
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@17
    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    #@1d
    .line 205
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    #@1f
    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$AAAServerTrustRoot;

    #@21
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    #@28
    .line 206
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@2a
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@34
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@36
    .line 207
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@38
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@42
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@44
    .line 208
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    #@46
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    #@50
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    #@52
    .line 210
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@54
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@5b
    move-result-object v0

    #@5c
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@5e
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@60
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->nodeName:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 188
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->policy:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;

    #@7
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@a
    .line 189
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credentialPriority:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 190
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->aAAServerTrustRoot:Ljava/util/HashMap;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@14
    .line 191
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionUpdate;

    #@16
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@19
    .line 192
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->homeSP:Landroid/net/wifi/passpoint/WifiPasspointDmTree$HomeSP;

    #@1b
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@1e
    .line 193
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->subscriptionParameters:Landroid/net/wifi/passpoint/WifiPasspointDmTree$SubscriptionParameters;

    #@20
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@23
    .line 194
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$CredentialInfo;->credential:Landroid/net/wifi/passpoint/WifiPasspointDmTree$Credential;

    #@25
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@28
    .line 186
    return-void
.end method
