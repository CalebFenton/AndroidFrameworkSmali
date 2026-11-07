.class public final Landroid/adservices/ondevicepersonalization/WebTriggerInput;
.super Ljava/lang/Object;
.source "WebTriggerInput.java"


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mData:[B

.field private blacklist mDestinationUrl:Landroid/net/Uri;


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;

    .line 47
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->getDestinationUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/WebTriggerInputParcel;->getData()[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/adservices/ondevicepersonalization/WebTriggerInput;-><init>(Landroid/net/Uri;Ljava/lang/String;[B)V

    .line 48
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 5
    .param p1, "destinationUrl"    # Landroid/net/Uri;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mDestinationUrl:Landroid/net/Uri;

    .line 68
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mAppPackageName:Ljava/lang/String;

    .line 69
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mData:[B

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 98
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 100
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/WebTriggerInput;

    .line 102
    .local v2, "that":Landroid/adservices/ondevicepersonalization/WebTriggerInput;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mDestinationUrl:Landroid/net/Uri;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mDestinationUrl:Landroid/net/Uri;

    .line 103
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mAppPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mAppPackageName:Ljava/lang/String;

    .line 104
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mData:[B

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mData:[B

    .line 105
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 102
    :goto_35
    return v0

    .line 98
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/WebTriggerInput;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getData()[B
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mData:[B

    return-object v0
.end method

.method public whitelist getDestinationUrl()Landroid/net/Uri;
    .registers 2

    .line 76
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mDestinationUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 110
    const/4 v0, 0x1

    .line 111
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mDestinationUrl:Landroid/net/Uri;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 112
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mAppPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 113
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/WebTriggerInput;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 114
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method
