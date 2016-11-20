.class Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/pps/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferredRoamingPartner"
.end annotation


# instance fields
.field private final mCountry:Ljava/lang/String;

.field private final mDomain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncludeSubDomains:Ljava/lang/Boolean;

.field private final mPriority:I


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 4
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 154
    const-string/jumbo v1, "FQDN_Match"

    #@6
    invoke-static {p1, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    const-string/jumbo v2, ","

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 155
    .local v0, "segments":[Ljava/lang/String;
    array-length v1, v0

    #@12
    const/4 v2, 0x2

    #@13
    if-eq v1, v2, :cond_0

    #@15
    .line 156
    new-instance v1, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@17
    const-string/jumbo v2, "Bad FQDN match string: FQDN_Match"

    #@1a
    invoke-direct {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 158
    :cond_0
    const/4 v1, 0x0

    #@1f
    aget-object v1, v0, v1

    #@21
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->splitDomain(Ljava/lang/String;)Ljava/util/List;

    #@24
    move-result-object v1

    #@25
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mDomain:Ljava/util/List;

    #@27
    .line 160
    const-string/jumbo v1, "FQDN_Match"

    #@2a
    const/4 v2, 0x1

    #@2b
    aget-object v2, v0, v2

    #@2d
    invoke-static {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Ljava/lang/Boolean;

    #@33
    .line 159
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mIncludeSubDomains:Ljava/lang/Boolean;

    #@35
    .line 161
    const-string/jumbo v1, "Priority"

    #@38
    const/4 v2, 0x0

    #@39
    invoke-static {p1, v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    #@3c
    move-result-wide v2

    #@3d
    long-to-int v1, v2

    #@3e
    iput v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mPriority:I

    #@40
    .line 162
    const-string/jumbo v1, "Country"

    #@43
    invoke-static {p1, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    iput-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mCountry:Ljava/lang/String;

    #@49
    .line 151
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;)V
    .locals 0
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "PreferredRoamingPartner{domain="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 168
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mDomain:Ljava/util/List;

    #@e
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 169
    const-string/jumbo v1, ", includeSubDomains="

    #@15
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 169
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mIncludeSubDomains:Ljava/lang/Boolean;

    #@1b
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 170
    const-string/jumbo v1, ", priority="

    #@22
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 170
    iget v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mPriority:I

    #@28
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 171
    const-string/jumbo v1, ", country=\'"

    #@2f
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 171
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;->mCountry:Ljava/lang/String;

    #@35
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 171
    const/16 v1, 0x27

    #@3b
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 172
    const/16 v1, 0x7d

    #@41
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    return-object v0
.end method
