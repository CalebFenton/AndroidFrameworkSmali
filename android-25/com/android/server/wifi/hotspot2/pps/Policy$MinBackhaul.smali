.class Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/pps/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MinBackhaul"
.end annotation


# instance fields
.field private final mDL:J

.field private final mHome:Ljava/lang/Boolean;

.field private final mUL:J


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
    const-wide v2, 0x7fffffffffffffffL

    #@5
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 182
    const-string/jumbo v0, "NetworkType"

    #@b
    invoke-static {p1, v0}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getSelection(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/Boolean;

    #@11
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;->mHome:Ljava/lang/Boolean;

    #@13
    .line 183
    const-string/jumbo v0, "DLBandwidth"

    #@16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v1

    #@1a
    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    #@1d
    move-result-wide v0

    #@1e
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;->mDL:J

    #@20
    .line 184
    const-string/jumbo v0, "ULBandwidth"

    #@23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26
    move-result-object v1

    #@27
    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    #@2a
    move-result-wide v0

    #@2b
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;->mUL:J

    #@2d
    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;)V
    .locals 0
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "MinBackhaul{home="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 190
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;->mHome:Ljava/lang/Boolean;

    #@e
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 191
    const-string/jumbo v1, ", DL="

    #@15
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 191
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;->mDL:J

    #@1b
    .line 189
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 192
    const-string/jumbo v1, ", UL="

    #@22
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 192
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;->mUL:J

    #@28
    .line 189
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 193
    const/16 v1, 0x7d

    #@2e
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    return-object v0
.end method
