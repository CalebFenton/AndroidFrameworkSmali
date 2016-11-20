.class public Lcom/android/server/wifi/hotspot2/pps/Policy;
.super Ljava/lang/Object;
.source "Policy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;,
        Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;
    }
.end annotation


# instance fields
.field private final mMaxBSSLoad:I

.field private final mMinBackhaulThresholds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicyUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

.field private final mPreferredRoamingPartners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequiredProtos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSPExclusionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V
    .locals 14
    .param p1, "node"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    const-string/jumbo v11, "PreferredRoamingPartnerList"

    #@6
    invoke-virtual {p1, v11}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@9
    move-result-object v8

    #@a
    .line 40
    .local v8, "rpNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v8, :cond_4

    #@c
    .line 41
    const/4 v11, 0x0

    #@d
    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartners:Ljava/util/List;

    #@f
    .line 54
    :cond_0
    const-string/jumbo v11, "MinBackhaulThreshold"

    #@12
    invoke-virtual {p1, v11}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@15
    move-result-object v0

    #@16
    .line 55
    .local v0, "bhtNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_6

    #@18
    .line 56
    const/4 v11, 0x0

    #@19
    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMinBackhaulThresholds:Ljava/util/List;

    #@1b
    .line 69
    :cond_1
    new-instance v11, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    #@1d
    const-string/jumbo v12, "PolicyUpdate"

    #@20
    invoke-virtual {p1, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@23
    move-result-object v12

    #@24
    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;)V

    #@27
    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    #@29
    .line 71
    const-string/jumbo v11, "SPExclusionList"

    #@2c
    invoke-virtual {p1, v11}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@2f
    move-result-object v10

    #@30
    .line 72
    .local v10, "sxNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v10, :cond_8

    #@32
    .line 73
    const/4 v11, 0x0

    #@33
    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mSPExclusionList:Ljava/util/List;

    #@35
    .line 86
    :cond_2
    const-string/jumbo v11, "RequiredProtoPortTuple"

    #@38
    invoke-virtual {p1, v11}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@3b
    move-result-object v9

    #@3c
    .line 87
    .local v9, "rptNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v9, :cond_a

    #@3e
    .line 88
    const/4 v11, 0x0

    #@3f
    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mRequiredProtos:Ljava/util/Map;

    #@41
    .line 117
    :cond_3
    const-string/jumbo v11, "MaximumBSSLoadValue"

    #@44
    const-wide v12, 0x7fffffffffffffffL

    #@49
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4c
    move-result-object v12

    #@4d
    .line 116
    invoke-static {p1, v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    #@50
    move-result-wide v12

    #@51
    long-to-int v11, v12

    #@52
    iput v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMaxBSSLoad:I

    #@54
    .line 37
    return-void

    #@55
    .line 44
    .end local v0    # "bhtNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v9    # "rptNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v10    # "sxNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_4
    new-instance v11, Ljava/util/ArrayList;

    #@57
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@5a
    move-result-object v12

    #@5b
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    #@5e
    move-result v12

    #@5f
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    #@62
    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartners:Ljava/util/List;

    #@64
    .line 45
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@67
    move-result-object v11

    #@68
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v2

    #@6c
    .local v2, "instance$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v11

    #@70
    if-eqz v11, :cond_0

    #@72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v1

    #@76
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@78
    .line 46
    .local v1, "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@7b
    move-result v11

    #@7c
    if-eqz v11, :cond_5

    #@7e
    .line 47
    new-instance v11, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@80
    const-string/jumbo v12, "Not expecting leaf node in PreferredRoamingPartnerList"

    #@83
    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@86
    throw v11

    #@87
    .line 50
    :cond_5
    iget-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartners:Ljava/util/List;

    #@89
    new-instance v12, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;

    #@8b
    const/4 v13, 0x0

    #@8c
    invoke-direct {v12, v1, v13}, Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;)V

    #@8f
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@92
    goto :goto_0

    #@93
    .line 59
    .end local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v2    # "instance$iterator":Ljava/util/Iterator;
    .restart local v0    # "bhtNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    #@95
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@98
    move-result-object v12

    #@99
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    #@9c
    move-result v12

    #@9d
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    #@a0
    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMinBackhaulThresholds:Ljava/util/List;

    #@a2
    .line 60
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@a5
    move-result-object v11

    #@a6
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a9
    move-result-object v2

    #@aa
    .restart local v2    # "instance$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@ad
    move-result v11

    #@ae
    if-eqz v11, :cond_1

    #@b0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b3
    move-result-object v1

    #@b4
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@b6
    .line 61
    .restart local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@b9
    move-result v11

    #@ba
    if-eqz v11, :cond_7

    #@bc
    .line 62
    new-instance v11, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@be
    const-string/jumbo v12, "Not expecting leaf node in MinBackhaulThreshold"

    #@c1
    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@c4
    throw v11

    #@c5
    .line 65
    :cond_7
    iget-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMinBackhaulThresholds:Ljava/util/List;

    #@c7
    new-instance v12, Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;

    #@c9
    const/4 v13, 0x0

    #@ca
    invoke-direct {v12, v1, v13}, Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;)V

    #@cd
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d0
    goto :goto_1

    #@d1
    .line 76
    .end local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v2    # "instance$iterator":Ljava/util/Iterator;
    .restart local v10    # "sxNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_8
    new-instance v11, Ljava/util/ArrayList;

    #@d3
    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@d6
    move-result-object v12

    #@d7
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    #@da
    move-result v12

    #@db
    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    #@de
    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mSPExclusionList:Ljava/util/List;

    #@e0
    .line 77
    invoke-virtual {v10}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@e3
    move-result-object v11

    #@e4
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e7
    move-result-object v2

    #@e8
    .restart local v2    # "instance$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@eb
    move-result v11

    #@ec
    if-eqz v11, :cond_2

    #@ee
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f1
    move-result-object v1

    #@f2
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@f4
    .line 78
    .restart local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@f7
    move-result v11

    #@f8
    if-eqz v11, :cond_9

    #@fa
    .line 79
    new-instance v11, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@fc
    const-string/jumbo v12, "Not expecting leaf node in SPExclusionList"

    #@ff
    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@102
    throw v11

    #@103
    .line 81
    :cond_9
    iget-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mSPExclusionList:Ljava/util/List;

    #@105
    .line 82
    const-string/jumbo v12, "SSID"

    #@108
    invoke-static {v1, v12}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    #@10b
    move-result-object v12

    #@10c
    .line 81
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10f
    goto :goto_2

    #@110
    .line 91
    .end local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .end local v2    # "instance$iterator":Ljava/util/Iterator;
    .restart local v9    # "rptNode":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :cond_a
    new-instance v11, Ljava/util/HashMap;

    #@112
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@115
    move-result-object v12

    #@116
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    #@119
    move-result v12

    #@11a
    invoke-direct {v11, v12}, Ljava/util/HashMap;-><init>(I)V

    #@11d
    iput-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mRequiredProtos:Ljava/util/Map;

    #@11f
    .line 92
    invoke-virtual {v9}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getChildren()Ljava/util/Collection;

    #@122
    move-result-object v11

    #@123
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@126
    move-result-object v2

    #@127
    .restart local v2    # "instance$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12a
    move-result v11

    #@12b
    if-eqz v11, :cond_3

    #@12d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@130
    move-result-object v1

    #@131
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    #@133
    .line 93
    .restart local v1    # "instance":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    #@136
    move-result v11

    #@137
    if-eqz v11, :cond_b

    #@139
    .line 94
    new-instance v11, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@13b
    const-string/jumbo v12, "Not expecting leaf node in RequiredProtoPortTuple"

    #@13e
    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@141
    throw v11

    #@142
    .line 99
    :cond_b
    const-string/jumbo v11, "IPProtocol"

    #@145
    const/4 v12, 0x0

    #@146
    .line 98
    invoke-static {v1, v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLong(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/Long;)J

    #@149
    move-result-wide v12

    #@14a
    long-to-int v7, v12

    #@14b
    .line 102
    .local v7, "protocol":I
    const-string/jumbo v11, "PortNumber"

    #@14e
    .line 101
    invoke-static {v1, v11}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getString(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;)Ljava/lang/String;

    #@151
    move-result-object v11

    #@152
    .line 102
    const-string/jumbo v12, ","

    #@155
    .line 101
    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@158
    move-result-object v5

    #@159
    .line 103
    .local v5, "portSegments":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    #@15b
    array-length v11, v5

    #@15c
    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    #@15f
    .line 104
    .local v6, "ports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    #@160
    array-length v12, v5

    #@161
    :goto_4
    if-ge v11, v12, :cond_c

    #@163
    aget-object v4, v5, v11

    #@165
    .line 106
    .local v4, "portSegment":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@168
    move-result v13

    #@169
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16c
    move-result-object v13

    #@16d
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@170
    .line 104
    add-int/lit8 v11, v11, 0x1

    #@172
    goto :goto_4

    #@173
    .line 108
    :catch_0
    move-exception v3

    #@174
    .line 109
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    new-instance v11, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@176
    new-instance v12, Ljava/lang/StringBuilder;

    #@178
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@17b
    const-string/jumbo v13, "Port is not a number: "

    #@17e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v12

    #@182
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v12

    #@186
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v12

    #@18a
    invoke-direct {v11, v12}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@18d
    throw v11

    #@18e
    .line 112
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    .end local v4    # "portSegment":Ljava/lang/String;
    :cond_c
    iget-object v11, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mRequiredProtos:Ljava/util/Map;

    #@190
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@193
    move-result-object v12

    #@194
    invoke-interface {v11, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@197
    goto :goto_3
.end method


# virtual methods
.method public getMaxBSSLoad()I
    .locals 1

    #@0
    .prologue
    .line 141
    iget v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMaxBSSLoad:I

    #@2
    return v0
.end method

.method public getMinBackhaulThresholds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/Policy$MinBackhaul;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMinBackhaulThresholds:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getPolicyUpdate()Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    #@2
    return-object v0
.end method

.method public getPreferredRoamingPartners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/Policy$PreferredRoamingPartner;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartners:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getRequiredProtos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mRequiredProtos:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method public getSPExclusionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mSPExclusionList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Policy{preferredRoamingPartners="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 200
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartners:Ljava/util/List;

    #@e
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 201
    const-string/jumbo v1, ", minBackhaulThresholds="

    #@15
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 201
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMinBackhaulThresholds:Ljava/util/List;

    #@1b
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 202
    const-string/jumbo v1, ", policyUpdate="

    #@22
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 202
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;

    #@28
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 203
    const-string/jumbo v1, ", SPExclusionList="

    #@2f
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 203
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mSPExclusionList:Ljava/util/List;

    #@35
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 204
    const-string/jumbo v1, ", requiredProtos="

    #@3c
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 204
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mRequiredProtos:Ljava/util/Map;

    #@42
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 205
    const-string/jumbo v1, ", maxBSSLoad="

    #@49
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 205
    iget v1, p0, Lcom/android/server/wifi/hotspot2/pps/Policy;->mMaxBSSLoad:I

    #@4f
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 206
    const/16 v1, 0x7d

    #@55
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    move-result-object v0

    #@59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    return-object v0
.end method
