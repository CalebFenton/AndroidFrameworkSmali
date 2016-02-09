.class public Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;
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
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public maximumBSSLoadValue:Ljava/lang/String;

.field public minBackhaulThreshold:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

.field public preferredRoamingPartnerList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;",
            ">;"
        }
    .end annotation
.end field

.field public requiredProtoPortTuple:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;",
            ">;"
        }
    .end annotation
.end field

.field public sPExclusionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 301
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy$1;-><init>()V

    #@5
    sput-object v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 230
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 231
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    #@a
    .line 232
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    #@11
    .line 233
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@13
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@18
    .line 234
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    #@1f
    .line 235
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    #@26
    .line 266
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 231
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    #@a
    .line 232
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    #@11
    .line 233
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@13
    invoke-direct {v0}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;-><init>()V

    #@16
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@18
    .line 234
    new-instance v0, Ljava/util/HashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    #@1f
    .line 235
    new-instance v0, Ljava/util/HashMap;

    #@21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@24
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    #@26
    .line 270
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->readFromParcel(Landroid/os/Parcel;)V

    #@29
    .line 269
    return-void
.end method


# virtual methods
.method public createMinBackhaulThreshold(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "dl"    # Ljava/lang/String;
    .param p4, "ul"    # Ljava/lang/String;

    #@0
    .prologue
    .line 248
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 249
    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 250
    return-object v0
.end method

.method public createPreferredRoamingPartnerList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p3, "priority"    # Ljava/lang/String;
    .param p4, "country"    # Ljava/lang/String;

    #@0
    .prologue
    .line 240
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 242
    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 243
    return-object v0
.end method

.method public createRequiredProtoPortTuple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;

    #@0
    .prologue
    .line 261
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;

    #@2
    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 262
    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 263
    return-object v0
.end method

.method public createSPExclusionList(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 254
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 255
    .local v0, "obj":Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    .line 256
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 274
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 287
    if-nez p1, :cond_0

    #@2
    .line 286
    :goto_0
    return-void

    #@3
    .line 290
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    #@5
    .line 291
    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PreferredRoamingPartnerList;

    #@7
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@a
    move-result-object v1

    #@b
    .line 290
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    #@e
    .line 292
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    #@10
    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$MinBackhaulThresholdNetwork;

    #@12
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    #@19
    .line 293
    const-class v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@1b
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@25
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@27
    .line 294
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    #@29
    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$SPExclusionList;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    #@32
    .line 295
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    #@34
    const-class v1, Landroid/net/wifi/passpoint/WifiPasspointDmTree$RequiredProtoPortTuple;

    #@36
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    #@3d
    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->maximumBSSLoadValue:Ljava/lang/String;

    #@43
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->preferredRoamingPartnerList:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@5
    .line 279
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->minBackhaulThreshold:Ljava/util/HashMap;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@a
    .line 280
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->policyUpdate:Landroid/net/wifi/passpoint/WifiPasspointDmTree$PolicyUpdate;

    #@c
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@f
    .line 281
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->sPExclusionList:Ljava/util/HashMap;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@14
    .line 282
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->requiredProtoPortTuple:Ljava/util/HashMap;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    #@19
    .line 283
    iget-object v0, p0, Landroid/net/wifi/passpoint/WifiPasspointDmTree$Policy;->maximumBSSLoadValue:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 277
    return-void
.end method
