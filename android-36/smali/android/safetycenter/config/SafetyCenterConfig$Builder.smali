.class public final Landroid/safetycenter/config/SafetyCenterConfig$Builder;
.super Ljava/lang/Object;
.source "SafetyCenterConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/config/SafetyCenterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mSafetySourcesGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/config/SafetySourcesGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/config/SafetyCenterConfig$Builder;->mSafetySourcesGroups:Ljava/util/List;

    .line 119
    return-void
.end method

.method public constructor whitelist <init>(Landroid/safetycenter/config/SafetyCenterConfig;)V
    .registers 4
    .param p1, "safetyCenterConfig"    # Landroid/safetycenter/config/SafetyCenterConfig;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/config/SafetyCenterConfig$Builder;->mSafetySourcesGroups:Ljava/util/List;

    .line 124
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 128
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Landroid/safetycenter/config/SafetyCenterConfig$Builder;->mSafetySourcesGroups:Ljava/util/List;

    invoke-static {p1}, Landroid/safetycenter/config/SafetyCenterConfig;->-$$Nest$fgetmSafetySourcesGroups(Landroid/safetycenter/config/SafetyCenterConfig;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    return-void

    .line 125
    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addSafetySourcesGroup(Landroid/safetycenter/config/SafetySourcesGroup;)Landroid/safetycenter/config/SafetyCenterConfig$Builder;
    .registers 4
    .param p1, "safetySourcesGroup"    # Landroid/safetycenter/config/SafetySourcesGroup;

    .line 139
    iget-object v0, p0, Landroid/safetycenter/config/SafetyCenterConfig$Builder;->mSafetySourcesGroups:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/config/SafetySourcesGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-object p0
.end method

.method public whitelist build()Landroid/safetycenter/config/SafetyCenterConfig;
    .registers 16

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/safetycenter/config/SafetyCenterConfig$Builder;->mSafetySourcesGroups:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 152
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, "safetySourcesGroups":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/config/SafetySourcesGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9c

    .line 156
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 157
    .local v1, "safetySourceIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 158
    .local v2, "safetySourcesGroupsIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 159
    .local v3, "safetySourcesGroupsSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    if-ge v4, v3, :cond_95

    .line 160
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/safetycenter/config/SafetySourcesGroup;

    .line 161
    .local v5, "safetySourcesGroup":Landroid/safetycenter/config/SafetySourcesGroup;
    invoke-virtual {v5}, Landroid/safetycenter/config/SafetySourcesGroup;->getId()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "groupId":Ljava/lang/String;
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "Duplicate id "

    if-nez v7, :cond_78

    .line 166
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v5}, Landroid/safetycenter/config/SafetySourcesGroup;->getSafetySources()Ljava/util/List;

    move-result-object v7

    .line 168
    .local v7, "safetySources":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/config/SafetySource;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 169
    .local v9, "safetySourcesSize":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_40
    if-ge v10, v9, :cond_75

    .line 170
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/safetycenter/config/SafetySource;

    .line 171
    .local v11, "staticSafetySource":Landroid/safetycenter/config/SafetySource;
    invoke-virtual {v11}, Landroid/safetycenter/config/SafetySource;->getId()Ljava/lang/String;

    move-result-object v12

    .line 172
    .local v12, "sourceId":Ljava/lang/String;
    invoke-interface {v1, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_58

    .line 176
    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v11    # "staticSafetySource":Landroid/safetycenter/config/SafetySource;
    .end local v12    # "sourceId":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_40

    .line 173
    .restart local v11    # "staticSafetySource":Landroid/safetycenter/config/SafetySource;
    .restart local v12    # "sourceId":Ljava/lang/String;
    :cond_58
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, " among safety sources"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v13, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 159
    .end local v5    # "safetySourcesGroup":Landroid/safetycenter/config/SafetySourcesGroup;
    .end local v6    # "groupId":Ljava/lang/String;
    .end local v7    # "safetySources":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/config/SafetySource;>;"
    .end local v9    # "safetySourcesSize":I
    .end local v10    # "j":I
    .end local v11    # "staticSafetySource":Landroid/safetycenter/config/SafetySource;
    .end local v12    # "sourceId":Ljava/lang/String;
    :cond_75
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 163
    .restart local v5    # "safetySourcesGroup":Landroid/safetycenter/config/SafetySourcesGroup;
    .restart local v6    # "groupId":Ljava/lang/String;
    :cond_78
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " among safety sources groups"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 179
    .end local v4    # "i":I
    .end local v5    # "safetySourcesGroup":Landroid/safetycenter/config/SafetySourcesGroup;
    .end local v6    # "groupId":Ljava/lang/String;
    :cond_95
    new-instance v4, Landroid/safetycenter/config/SafetyCenterConfig;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/safetycenter/config/SafetyCenterConfig;-><init>(Ljava/util/List;Landroid/safetycenter/config/SafetyCenterConfig-IA;)V

    return-object v4

    .line 154
    .end local v1    # "safetySourceIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "safetySourcesGroupsIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "safetySourcesGroupsSize":I
    :cond_9c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No safety sources groups present"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
