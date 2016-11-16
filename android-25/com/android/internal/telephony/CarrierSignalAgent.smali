.class public Lcom/android/internal/telephony/CarrierSignalAgent;
.super Ljava/lang/Object;
.source "CarrierSignalAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierSignalAgent$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CarrierSignalAgent"


# instance fields
.field private final mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentToCarrierConfigKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 49
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;

    #@a
    .line 56
    new-instance v0, Lcom/android/internal/telephony/CarrierSignalAgent$1;

    #@c
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierSignalAgent$1;-><init>(Lcom/android/internal/telephony/CarrierSignalAgent;)V

    #@f
    .line 55
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mIntentToCarrierConfigKeyMap:Ljava/util/Map;

    #@11
    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    #@13
    .line 66
    return-void
.end method

.method private getCarrierSignalReceiverName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "intentAction"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 75
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mIntentToCarrierConfigKeyMap:Ljava/util/Map;

    #@3
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Ljava/lang/String;

    #@9
    .line 76
    .local v4, "receiverType":Ljava/lang/String;
    if-nez v4, :cond_0

    #@b
    .line 77
    return-object v6

    #@c
    .line 79
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;

    #@e
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, [Ljava/lang/String;

    #@14
    .line 81
    .local v3, "receiverNames":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;

    #@16
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@19
    move-result v5

    #@1a
    if-nez v5, :cond_3

    #@1c
    .line 82
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    #@1e
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@21
    move-result-object v5

    #@22
    .line 83
    const-string/jumbo v6, "carrier_config"

    #@25
    .line 82
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    #@2b
    .line 84
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    const/4 v0, 0x0

    #@2c
    .line 85
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_1

    #@2e
    .line 86
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    #@31
    move-result-object v0

    #@32
    .line 88
    .end local v0    # "b":Landroid/os/PersistableBundle;
    :cond_1
    if-eqz v0, :cond_2

    #@34
    .line 89
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 90
    if-eqz v3, :cond_2

    #@3a
    .line 91
    const/4 v5, 0x0

    #@3b
    array-length v6, v3

    #@3c
    :goto_0
    if-ge v5, v6, :cond_2

    #@3e
    aget-object v2, v3, v5

    #@40
    .line 92
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v7, "loadCarrierSignalReceiverNames: "

    #@43
    invoke-static {v7, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 91
    add-int/lit8 v5, v5, 0x1

    #@48
    goto :goto_0

    #@49
    .line 96
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;

    #@4b
    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    .line 98
    .end local v1    # "configManager":Landroid/telephony/CarrierConfigManager;
    :cond_3
    return-object v3
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 160
    const-string/jumbo v0, "CarrierSignalAgent"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "["

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "]"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 159
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    const-string/jumbo v0, "CarrierSignalAgent"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v2, "["

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    #@11
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "]"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 163
    return-void
.end method


# virtual methods
.method public hasRegisteredCarrierSignalReceivers()Z
    .locals 3

    #@0
    .prologue
    .line 105
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mIntentToCarrierConfigKeyMap:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "intent$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/lang/String;

    #@16
    .line 106
    .local v0, "intent":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->getCarrierSignalReceiverName(Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_0

    #@20
    .line 107
    const/4 v2, 0x1

    #@21
    return v2

    #@22
    .line 110
    .end local v0    # "intent":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@23
    return v2
.end method

.method public notifyCarrierSignalReceivers(Landroid/content/Intent;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@4
    move-result-object v6

    #@5
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CarrierSignalAgent;->getCarrierSignalReceiverName(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    .line 117
    .local v4, "receiverName":[Ljava/lang/String;
    if-nez v4, :cond_0

    #@b
    .line 118
    const-string/jumbo v6, "Carrier receiver name is null"

    #@e
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    #@11
    .line 119
    return v7

    #@12
    .line 121
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    #@14
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v3

    #@1c
    .line 122
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    #@1d
    .line 124
    .local v5, "ret":Z
    array-length v8, v4

    #@1e
    move v6, v7

    #@1f
    :goto_0
    if-ge v6, v8, :cond_2

    #@21
    aget-object v2, v4, v6

    #@23
    .line 125
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@26
    move-result-object v0

    #@27
    .line 126
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    #@29
    .line 127
    const-string/jumbo v6, "Carrier receiver name could not be parsed"

    #@2c
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    #@2f
    .line 128
    return v7

    #@30
    .line 130
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@33
    .line 133
    const/high16 v9, 0x10000

    #@35
    .line 132
    invoke-virtual {v3, p1, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    #@38
    move-result-object v9

    #@39
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    #@3c
    move-result v9

    #@3d
    if-eqz v9, :cond_3

    #@3f
    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v7, "Carrier signal receiver is configured, but not available: "

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v6

    #@4f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v6

    #@53
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    #@56
    .line 151
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return v5

    #@57
    .line 138
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_3
    const-string/jumbo v9, "subscription"

    #@5a
    iget-object v10, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    #@5c
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@5f
    move-result v10

    #@60
    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@63
    .line 139
    const/high16 v9, 0x10000000

    #@65
    invoke-virtual {p1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@68
    .line 142
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    #@6a
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v9, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    #@71
    .line 143
    new-instance v9, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v10, "send Intent to carrier signal receiver with action: "

    #@79
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@80
    move-result-object v10

    #@81
    .line 143
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v9

    #@85
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/CarrierSignalAgent;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8c
    .line 145
    const/4 v5, 0x1

    #@8d
    .line 124
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@8f
    goto :goto_0

    #@90
    .line 146
    :catch_0
    move-exception v1

    #@91
    .line 147
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    #@93
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@96
    const-string/jumbo v10, "sendBroadcast failed: "

    #@99
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v9

    #@9d
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v9

    #@a1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v9

    #@a5
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/CarrierSignalAgent;->loge(Ljava/lang/String;)V

    #@a8
    goto :goto_1
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierSignalAgent;->mCachedCarrierSignalReceiverNames:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 155
    return-void
.end method
