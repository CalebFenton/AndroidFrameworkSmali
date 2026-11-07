.class public final Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;
.super Ljava/lang/Object;
.source "MeasurementWebTriggerEventParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mCertDigest:Ljava/lang/String;

.field private blacklist mDestinationUrl:Landroid/net/Uri;

.field private blacklist mEventData:[B

.field private blacklist mIsolatedService:Landroid/content/ComponentName;


# direct methods
.method public constructor whitelist <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 7
    .param p1, "destinationUrl"    # Landroid/net/Uri;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .param p3, "isolatedService"    # Landroid/content/ComponentName;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    .line 226
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mDestinationUrl:Landroid/net/Uri;

    .line 227
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mDestinationUrl:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 229
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mAppPackageName:Ljava/lang/String;

    .line 230
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mAppPackageName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 232
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mIsolatedService:Landroid/content/ComponentName;

    .line 233
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mIsolatedService:Landroid/content/ComponentName;

    invoke-static {v0, v2, v1}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 318
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 322
    return-void

    .line 319
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;
    .registers 9

    .line 299
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->checkNotUsed()V

    .line 300
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    .line 302
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 303
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mCertDigest:Ljava/lang/String;

    .line 305
    :cond_18
    iget-wide v4, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_23

    .line 306
    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mEventData:[B

    .line 308
    :cond_23
    new-instance v2, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mDestinationUrl:Landroid/net/Uri;

    iget-object v4, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mAppPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mIsolatedService:Landroid/content/ComponentName;

    iget-object v6, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mCertDigest:Ljava/lang/String;

    iget-object v7, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mEventData:[B

    invoke-direct/range {v2 .. v7}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;[B)V

    .line 314
    .local v2, "o":Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;
    return-object v2
.end method

.method public whitelist setAppPackageName(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->checkNotUsed()V

    .line 254
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    .line 255
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mAppPackageName:Ljava/lang/String;

    .line 256
    return-object p0
.end method

.method public whitelist setCertDigest(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 279
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->checkNotUsed()V

    .line 280
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    .line 281
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mCertDigest:Ljava/lang/String;

    .line 282
    return-object p0
.end method

.method public whitelist setDestinationUrl(Landroid/net/Uri;)Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;
    .registers 6
    .param p1, "value"    # Landroid/net/Uri;

    .line 242
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->checkNotUsed()V

    .line 243
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    .line 244
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mDestinationUrl:Landroid/net/Uri;

    .line 245
    return-object p0
.end method

.method public varargs whitelist setEventData([B)Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 291
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->checkNotUsed()V

    .line 292
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    .line 293
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mEventData:[B

    .line 294
    return-object p0
.end method

.method public whitelist setIsolatedService(Landroid/content/ComponentName;)Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;
    .registers 6
    .param p1, "value"    # Landroid/content/ComponentName;

    .line 265
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->checkNotUsed()V

    .line 266
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mBuilderFieldsSet:J

    .line 267
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams$Builder;->mIsolatedService:Landroid/content/ComponentName;

    .line 268
    return-object p0
.end method
