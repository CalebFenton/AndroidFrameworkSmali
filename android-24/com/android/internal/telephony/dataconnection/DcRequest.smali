.class public Lcom/android/internal/telephony/dataconnection/DcRequest;
.super Ljava/lang/Object;
.source "DcRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DcRequest"

.field private static final sApnPriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apnId:I

.field public final networkRequest:Landroid/net/NetworkRequest;

.field public final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 143
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 142
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V
    .locals 1
    .param p1, "nr"    # Landroid/net/NetworkRequest;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcRequest;->initApnPriorities(Landroid/content/Context;)V

    #@6
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@8
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    #@10
    .line 48
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    #@12
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcRequest;->priorityForApnId(I)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    #@18
    .line 44
    return-void
.end method

.method private apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 6
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 71
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    #@4
    .line 73
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    #@7
    move-result-object v3

    #@8
    array-length v3, v3

    #@9
    if-lez v3, :cond_0

    #@b
    .line 74
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_0

    #@11
    .line 75
    return v4

    #@12
    .line 80
    :cond_0
    const/4 v0, -0x1

    #@13
    .line 82
    .local v0, "apnId":I
    const/4 v1, 0x0

    #@14
    .line 83
    .local v1, "error":Z
    const/16 v3, 0xc

    #@16
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 85
    const/4 v0, 0x0

    #@1d
    .line 87
    :cond_1
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 88
    if-eq v0, v4, :cond_2

    #@25
    const/4 v1, 0x1

    #@26
    .line 89
    :cond_2
    const/4 v0, 0x1

    #@27
    .line 91
    :cond_3
    const/4 v3, 0x1

    #@28
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_5

    #@2e
    .line 92
    if-eq v0, v4, :cond_4

    #@30
    const/4 v1, 0x1

    #@31
    .line 93
    :cond_4
    const/4 v0, 0x2

    #@32
    .line 95
    :cond_5
    const/4 v3, 0x2

    #@33
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_7

    #@39
    .line 96
    if-eq v0, v4, :cond_6

    #@3b
    const/4 v1, 0x1

    #@3c
    .line 97
    :cond_6
    const/4 v0, 0x3

    #@3d
    .line 99
    :cond_7
    const/4 v3, 0x3

    #@3e
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@41
    move-result v3

    #@42
    if-eqz v3, :cond_9

    #@44
    .line 100
    if-eq v0, v4, :cond_8

    #@46
    const/4 v1, 0x1

    #@47
    .line 101
    :cond_8
    const/4 v0, 0x6

    #@48
    .line 103
    :cond_9
    const/4 v3, 0x4

    #@49
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@4c
    move-result v3

    #@4d
    if-eqz v3, :cond_b

    #@4f
    .line 104
    if-eq v0, v4, :cond_a

    #@51
    const/4 v1, 0x1

    #@52
    .line 105
    :cond_a
    const/4 v0, 0x5

    #@53
    .line 107
    :cond_b
    const/4 v3, 0x5

    #@54
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_d

    #@5a
    .line 108
    if-eq v0, v4, :cond_c

    #@5c
    const/4 v1, 0x1

    #@5d
    .line 109
    :cond_c
    const/4 v0, 0x7

    #@5e
    .line 111
    :cond_d
    const/4 v3, 0x7

    #@5f
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@62
    move-result v3

    #@63
    if-eqz v3, :cond_f

    #@65
    .line 112
    if-eq v0, v4, :cond_e

    #@67
    const/4 v1, 0x1

    #@68
    .line 113
    :cond_e
    const/16 v0, 0x8

    #@6a
    .line 115
    :cond_f
    const/16 v3, 0x8

    #@6c
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@6f
    move-result v3

    #@70
    if-eqz v3, :cond_11

    #@72
    .line 116
    if-eq v0, v4, :cond_10

    #@74
    const/4 v1, 0x1

    #@75
    .line 117
    :cond_10
    const/4 v0, -0x1

    #@76
    .line 118
    const-string/jumbo v3, "RCS APN type not yet supported"

    #@79
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    #@7c
    .line 120
    :cond_11
    const/16 v3, 0x9

    #@7e
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@81
    move-result v3

    #@82
    if-eqz v3, :cond_13

    #@84
    .line 121
    if-eq v0, v4, :cond_12

    #@86
    const/4 v1, 0x1

    #@87
    .line 122
    :cond_12
    const/4 v0, -0x1

    #@88
    .line 123
    const-string/jumbo v3, "XCAP APN type not yet supported"

    #@8b
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    #@8e
    .line 125
    :cond_13
    const/16 v3, 0xa

    #@90
    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    #@93
    move-result v3

    #@94
    if-eqz v3, :cond_15

    #@96
    .line 126
    if-eq v0, v4, :cond_14

    #@98
    const/4 v1, 0x1

    #@99
    .line 127
    :cond_14
    const/16 v0, 0x9

    #@9b
    .line 129
    :cond_15
    if-eqz v1, :cond_16

    #@9d
    .line 134
    const-string/jumbo v3, "Multiple apn types specified in request - result is unspecified!"

    #@a0
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    #@a3
    .line 136
    :cond_16
    if-ne v0, v4, :cond_17

    #@a5
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v4, "Unsupported NetworkRequest in Telephony: nr="

    #@ad
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    #@bc
    .line 139
    :cond_17
    return v0
.end method

.method private initApnPriorities(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 146
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    #@2
    monitor-enter v5

    #@3
    .line 147
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v4

    #@f
    .line 149
    const v6, 0x107000f

    #@12
    .line 148
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@15
    move-result-object v3

    #@16
    .line 150
    .local v3, "networkConfigStrings":[Ljava/lang/String;
    const/4 v4, 0x0

    #@17
    array-length v6, v3

    #@18
    :goto_0
    if-ge v4, v6, :cond_0

    #@1a
    aget-object v2, v3, v4

    #@1c
    .line 151
    .local v2, "networkConfigString":Ljava/lang/String;
    new-instance v1, Landroid/net/NetworkConfig;

    #@1e
    invoke-direct {v1, v2}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    #@21
    .line 152
    .local v1, "networkConfig":Landroid/net/NetworkConfig;
    iget v7, v1, Landroid/net/NetworkConfig;->type:I

    #@23
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForType(I)I

    #@26
    move-result v0

    #@27
    .line 153
    .local v0, "apnId":I
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    #@29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v8

    #@2d
    iget v9, v1, Landroid/net/NetworkConfig;->priority:I

    #@2f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@32
    move-result-object v9

    #@33
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    .line 150
    add-int/lit8 v4, v4, 0x1

    #@38
    goto :goto_0

    #@39
    .end local v0    # "apnId":I
    .end local v1    # "networkConfig":Landroid/net/NetworkConfig;
    .end local v2    # "networkConfigString":Ljava/lang/String;
    .end local v3    # "networkConfigStrings":[Ljava/lang/String;
    :cond_0
    monitor-exit v5

    #@3a
    .line 145
    return-void

    #@3b
    .line 146
    :catchall_0
    move-exception v4

    #@3c
    monitor-exit v5

    #@3d
    throw v4
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 165
    const-string/jumbo v0, "DcRequest"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 164
    return-void
.end method

.method private priorityForApnId(I)I
    .locals 3
    .param p1, "apnId"    # I

    #@0
    .prologue
    .line 160
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Integer;

    #@c
    .line 161
    .local v0, "priority":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@11
    move-result v1

    #@12
    :goto_0
    return v1

    #@13
    :cond_0
    const/4 v1, 0x0

    #@14
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/dataconnection/DcRequest;)I
    .locals 2
    .param p1, "o"    # Lcom/android/internal/telephony/dataconnection/DcRequest;

    #@0
    .prologue
    .line 67
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    #@2
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 66
    check-cast p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    #@2
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcRequest;->compareTo(Lcom/android/internal/telephony/dataconnection/DcRequest;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 60
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@6
    check-cast p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    #@8
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@a
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 63
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@2
    invoke-virtual {v0}, Landroid/net/NetworkRequest;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    #@7
    invoke-virtual {v1}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ", priority="

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string/jumbo v1, ", apnId="

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method
