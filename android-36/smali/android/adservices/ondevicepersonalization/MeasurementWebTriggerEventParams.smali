.class public final Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;
.super Ljava/lang/Object;
.source "MeasurementWebTriggerEventParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;
    }
.end annotation


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mCertDigest:Ljava/lang/String;

.field private blacklist mDestinationUrl:Landroid/net/Uri;

.field private blacklist mEventData:[B

.field private blacklist mIsolatedService:Landroid/content/ComponentName;


# direct methods
.method constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;[B)V
    .registers 9
    .param p1, "destinationUrl"    # Landroid/net/Uri;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .param p3, "isolatedService"    # Landroid/content/ComponentName;
    .param p4, "certDigest"    # Ljava/lang/String;
    .param p5, "eventData"    # [B

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mCertDigest:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mEventData:[B

    .line 101
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mDestinationUrl:Landroid/net/Uri;

    .line 102
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mDestinationUrl:Landroid/net/Uri;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 104
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mAppPackageName:Ljava/lang/String;

    .line 105
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mAppPackageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 107
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mIsolatedService:Landroid/content/ComponentName;

    .line 108
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mIsolatedService:Landroid/content/ComponentName;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 110
    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mCertDigest:Ljava/lang/String;

    .line 111
    iput-object p5, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mEventData:[B

    .line 114
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 168
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 169
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4a

    .line 171
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;

    .line 173
    .local v2, "that":Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mDestinationUrl:Landroid/net/Uri;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mDestinationUrl:Landroid/net/Uri;

    .line 174
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mAppPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mAppPackageName:Ljava/lang/String;

    .line 175
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mIsolatedService:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mIsolatedService:Landroid/content/ComponentName;

    .line 176
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mCertDigest:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mCertDigest:Ljava/lang/String;

    .line 177
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mEventData:[B

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mEventData:[B

    .line 178
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_49

    :cond_48
    move v0, v1

    .line 173
    :goto_49
    return v0

    .line 169
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;
    :cond_4a
    :goto_4a
    return v1
.end method

.method public whitelist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCertDigest()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mCertDigest:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDestinationUrl()Landroid/net/Uri;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mDestinationUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getEventData()[B
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mEventData:[B

    return-object v0
.end method

.method public whitelist getIsolatedService()Landroid/content/ComponentName;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mIsolatedService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 187
    const/4 v0, 0x1

    .line 188
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mDestinationUrl:Landroid/net/Uri;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 189
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mAppPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 190
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mIsolatedService:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 191
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mCertDigest:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 192
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->mEventData:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 193
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method
