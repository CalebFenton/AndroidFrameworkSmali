.class public final Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;
.super Ljava/lang/Object;
.source "AuthenticationFailedInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/events/AuthenticationFailedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mRequestReason:I

.field private blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;II)V
    .registers 7
    .param p1, "biometricSourceType"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "requestReason"    # I
    .param p3, "userId"    # I

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBuilderFieldsSet:J

    .line 220
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 221
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 223
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mRequestReason:I

    .line 224
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mRequestReason:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 226
    iput p3, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mUserId:I

    .line 227
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 276
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 280
    return-void

    .line 277
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/biometrics/events/AuthenticationFailedInfo;
    .registers 5

    .line 265
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->checkNotUsed()V

    .line 266
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBuilderFieldsSet:J

    .line 268
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mRequestReason:I

    iget v3, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mUserId:I

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo;-><init>(Landroid/hardware/biometrics/BiometricSourceType;II)V

    .line 272
    .local v0, "o":Landroid/hardware/biometrics/events/AuthenticationFailedInfo;
    return-object v0
.end method

.method public blacklist setBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;
    .registers 6
    .param p1, "value"    # Landroid/hardware/biometrics/BiometricSourceType;

    .line 234
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->checkNotUsed()V

    .line 235
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBuilderFieldsSet:J

    .line 236
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 237
    return-object p0
.end method

.method public blacklist setRequestReason(I)Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 246
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->checkNotUsed()V

    .line 247
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBuilderFieldsSet:J

    .line 248
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mRequestReason:I

    .line 249
    return-object p0
.end method

.method public blacklist setUserId(I)Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 257
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->checkNotUsed()V

    .line 258
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mBuilderFieldsSet:J

    .line 259
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationFailedInfo$Builder;->mUserId:I

    .line 260
    return-object p0
.end method
