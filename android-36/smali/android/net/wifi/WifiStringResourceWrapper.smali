.class public Landroid/net/wifi/WifiStringResourceWrapper;
.super Ljava/lang/Object;
.source "WifiStringResourceWrapper.java"


# static fields
.field static final blacklist CARRIER_ID_RESOURCE_NAME_SUFFIX:Ljava/lang/String; = "_carrier_overrides"

.field static final blacklist CARRIER_ID_RESOURCE_SEPARATOR:Ljava/lang/String; = ":::"

.field private static final blacklist TAG:Ljava/lang/String; = "WifiStringResourceWrapper"


# instance fields
.field private final blacklist mCarrierId:I

.field private final blacklist mCarrierIdPrefix:Ljava/lang/String;

.field private final blacklist mContext:Landroid/net/wifi/WifiContext;

.field private blacklist mResources:Landroid/content/res/Resources;

.field private final blacklist mSubId:I


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/WifiContext;II)V
    .registers 7
    .param p1, "context"    # Landroid/net/wifi/WifiContext;
    .param p2, "subId"    # I
    .param p3, "carrierId"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mContext:Landroid/net/wifi/WifiContext;

    .line 69
    iput p2, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mSubId:I

    .line 70
    iput p3, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mCarrierId:I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mCarrierId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mCarrierIdPrefix:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private varargs blacklist getCarrierOverrideString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_carrier_overrides"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mContext:Landroid/net/wifi/WifiContext;

    .line 154
    invoke-virtual {v2}, Landroid/net/wifi/WifiContext;->getWifiOverlayApkPkgName()Ljava/lang/String;

    move-result-object v2

    .line 153
    const-string v3, "array"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 155
    .local v0, "arrayResourceId":I
    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    .line 156
    iget-object v2, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "carrierIdOverlays":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_2c
    if-ge v4, v3, :cond_6e

    aget-object v5, v2, v4

    .line 159
    .local v5, "carrierIdOverlay":Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mCarrierIdPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3b

    .line 158
    .end local v5    # "carrierIdOverlay":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 161
    .restart local v5    # "carrierIdOverlay":Ljava/lang/String;
    :cond_3b
    :try_start_3b
    iget-object v3, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mCarrierIdPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_49
    .catch Ljava/util/IllegalFormatException; {:try_start_3b .. :try_end_49} :catch_4a

    return-object v1

    .line 163
    :catch_4a
    move-exception v3

    .line 164
    .local v3, "e":Ljava/util/IllegalFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource formatting error - \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "WifiStringResourceWrapper"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-object v1

    .line 169
    .end local v2    # "carrierIdOverlays":[Ljava/lang/String;
    .end local v3    # "e":Ljava/util/IllegalFormatException;
    .end local v5    # "carrierIdOverlay":Ljava/lang/String;
    :cond_6e
    return-object v1
.end method

.method private blacklist getResourcesForSubId()Landroid/content/res/Resources;
    .registers 3

    .line 177
    iget-object v0, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_7

    .line 178
    iget-object v0, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    return-object v0

    .line 180
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mContext:Landroid/net/wifi/WifiContext;

    invoke-virtual {v0}, Landroid/net/wifi/WifiContext;->getResourcesApkContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_11

    .line 182
    const/4 v1, 0x0

    return-object v1

    .line 184
    :cond_11
    iget v1, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mSubId:I

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    .line 185
    iget-object v1, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    return-object v1
.end method


# virtual methods
.method public blacklist getBoolean(Ljava/lang/String;Z)Z
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 129
    invoke-direct {p0}, Landroid/net/wifi/WifiStringResourceWrapper;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_7

    return p2

    .line 130
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mContext:Landroid/net/wifi/WifiContext;

    .line 131
    invoke-virtual {v1}, Landroid/net/wifi/WifiContext;->getWifiOverlayApkPkgName()Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v2, "bool"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "resourceId":I
    if-nez v0, :cond_18

    return p2

    .line 135
    :cond_18
    iget v1, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mCarrierId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_44

    .line 136
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Landroid/net/wifi/WifiStringResourceWrapper;->getCarrierOverrideString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "carrierOverrideString":Ljava/lang/String;
    if-eqz v1, :cond_44

    .line 139
    :try_start_26
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2a} :catch_2b

    return v2

    .line 140
    :catch_2b
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse String into boolean. String="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiStringResourceWrapper"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1    # "carrierOverrideString":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_44
    iget-object v1, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method public blacklist getInt(Ljava/lang/String;I)I
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 105
    invoke-direct {p0}, Landroid/net/wifi/WifiStringResourceWrapper;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_7

    return p2

    .line 106
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mContext:Landroid/net/wifi/WifiContext;

    .line 107
    invoke-virtual {v1}, Landroid/net/wifi/WifiContext;->getWifiOverlayApkPkgName()Ljava/lang/String;

    move-result-object v1

    .line 106
    const-string v2, "integer"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "resourceId":I
    if-nez v0, :cond_18

    return p2

    .line 111
    :cond_18
    iget v1, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mCarrierId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_44

    .line 112
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Landroid/net/wifi/WifiStringResourceWrapper;->getCarrierOverrideString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "carrierOverrideString":Ljava/lang/String;
    if-eqz v1, :cond_44

    .line 115
    :try_start_26
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2a} :catch_2b

    return v2

    .line 116
    :catch_2b
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse String into int. String="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiStringResourceWrapper"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v1    # "carrierOverrideString":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_44
    iget-object v1, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    return v1
.end method

.method public varargs blacklist getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 79
    invoke-direct {p0}, Landroid/net/wifi/WifiStringResourceWrapper;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 80
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mContext:Landroid/net/wifi/WifiContext;

    .line 81
    invoke-virtual {v2}, Landroid/net/wifi/WifiContext;->getWifiOverlayApkPkgName()Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v3, "string"

    invoke-virtual {v0, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 82
    .local v0, "resourceId":I
    if-nez v0, :cond_19

    return-object v1

    .line 85
    :cond_19
    iget v2, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mCarrierId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStringResourceWrapper;->getCarrierOverrideString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "carrierOverrideString":Ljava/lang/String;
    if-eqz v2, :cond_25

    .line 88
    return-object v2

    .line 93
    .end local v2    # "carrierOverrideString":Ljava/lang/String;
    :cond_25
    :try_start_25
    iget-object v2, p0, Landroid/net/wifi/WifiStringResourceWrapper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v0, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catch Ljava/util/IllegalFormatException; {:try_start_25 .. :try_end_2b} :catch_2c

    return-object v1

    .line 94
    :catch_2c
    move-exception v2

    .line 95
    .local v2, "e":Ljava/util/IllegalFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource formatting error - \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiStringResourceWrapper"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v1
.end method
