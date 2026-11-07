.class public final Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;
.super Ljava/lang/Object;
.source "AuthenticationAcquiredInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAcquiredInfo:I

.field private blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mRequestReason:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;II)V
    .registers 7
    .param p1, "biometricSourceType"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "requestReason"    # I
    .param p3, "acquiredInfo"    # I

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBuilderFieldsSet:J

    .line 228
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 229
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 231
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mRequestReason:I

    .line 232
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mRequestReason:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 234
    iput p3, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mAcquiredInfo:I

    .line 235
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 286
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 290
    return-void

    .line 287
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;
    .registers 5

    .line 275
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->checkNotUsed()V

    .line 276
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBuilderFieldsSet:J

    .line 278
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mRequestReason:I

    iget v3, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mAcquiredInfo:I

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;-><init>(Landroid/hardware/biometrics/BiometricSourceType;II)V

    .line 282
    .local v0, "o":Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo;
    return-object v0
.end method

.method public blacklist setAcquiredInfo(I)Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 267
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->checkNotUsed()V

    .line 268
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBuilderFieldsSet:J

    .line 269
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mAcquiredInfo:I

    .line 270
    return-object p0
.end method

.method public blacklist setBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;
    .registers 6
    .param p1, "value"    # Landroid/hardware/biometrics/BiometricSourceType;

    .line 242
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->checkNotUsed()V

    .line 243
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBuilderFieldsSet:J

    .line 244
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 245
    return-object p0
.end method

.method public blacklist setRequestReason(I)Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 254
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->checkNotUsed()V

    .line 255
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mBuilderFieldsSet:J

    .line 256
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationAcquiredInfo$Builder;->mRequestReason:I

    .line 257
    return-object p0
.end method
