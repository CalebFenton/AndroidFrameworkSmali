.class public Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;
.super Ljava/lang/Object;
.source "SubscriptionParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;
    }
.end annotation


# instance fields
.field private final mCDate:J

.field private final mLimits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Ljava/lang/String;

.field private final mXDate:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 7
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 27
    const-string/jumbo v3, "CreationDate"

    #@7
    invoke-virtual {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@a
    move-result-object v3

    #@b
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    #@e
    move-result-wide v4

    #@f
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mCDate:J

    #@11
    .line 28
    const-string/jumbo v3, "ExpirationDate"

    #@14
    invoke-virtual {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@17
    move-result-object v3

    #@18
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getTime(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)J

    #@1b
    move-result-wide v4

    #@1c
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mXDate:J

    #@1e
    .line 29
    const-string/jumbo v3, "TypeOfSubscription"

    #@21
    invoke-virtual {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@24
    move-result-object v3

    #@25
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mType:Ljava/lang/String;

    #@2b
    .line 31
    const-string/jumbo v3, "UsageLimits"

    #@2e
    invoke-virtual {p1, v3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@31
    move-result-object v2

    #@32
    .line 32
    .local v2, "ulNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v2, :cond_1

    #@34
    .line 33
    iput-object v6, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mLimits:Ljava/util/List;

    #@36
    .line 26
    :cond_0
    return-void

    #@37
    .line 36
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    #@39
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@3c
    move-result-object v4

    #@3d
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    #@40
    move-result v4

    #@41
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@44
    iput-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mLimits:Ljava/util/List;

    #@46
    .line 37
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@49
    move-result-object v3

    #@4a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v1

    #@4e
    .local v1, "instance$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v3

    #@52
    if-eqz v3, :cond_0

    #@54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@5a
    .line 38
    .local v0, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@5d
    move-result v3

    #@5e
    if-eqz v3, :cond_2

    #@60
    .line 39
    new-instance v3, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@62
    const-string/jumbo v4, "Not expecting leaf node in UsageLimits"

    #@65
    invoke-direct {v3, v4}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@68
    throw v3

    #@69
    .line 42
    :cond_2
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mLimits:Ljava/util/List;

    #@6b
    new-instance v4, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;

    #@6d
    invoke-direct {v4, v0, v6}, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters$Limit;)V

    #@70
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@73
    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SubscriptionParameters{cDate="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 80
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mCDate:J

    #@e
    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toUTCString(J)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 81
    const-string/jumbo v1, ", xDate="

    #@19
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 81
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mXDate:J

    #@1f
    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/Utils;->toUTCString(J)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 82
    const-string/jumbo v1, ", type=\'"

    #@2a
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 82
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mType:Ljava/lang/String;

    #@30
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 82
    const/16 v1, 0x27

    #@36
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 83
    const-string/jumbo v1, ", limits="

    #@3d
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 83
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/SubscriptionParameters;->mLimits:Ljava/util/List;

    #@43
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 84
    const/16 v1, 0x7d

    #@49
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method
