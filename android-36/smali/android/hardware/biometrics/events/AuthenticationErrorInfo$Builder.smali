.class public final Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;
.super Ljava/lang/Object;
.source "AuthenticationErrorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/events/AuthenticationErrorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mErrCode:I

.field private blacklist mErrString:Ljava/lang/String;

.field private blacklist mRequestReason:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V
    .registers 8
    .param p1, "biometricSourceType"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "requestReason"    # I
    .param p3, "errString"    # Ljava/lang/String;
    .param p4, "errCode"    # I

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    .line 257
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 258
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 260
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mRequestReason:I

    .line 261
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mRequestReason:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 263
    iput-object p3, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mErrString:Ljava/lang/String;

    .line 264
    iput p4, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mErrCode:I

    .line 265
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 328
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 332
    return-void

    .line 329
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/biometrics/events/AuthenticationErrorInfo;
    .registers 6

    .line 316
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->checkNotUsed()V

    .line 317
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    .line 319
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mRequestReason:I

    iget-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mErrString:Ljava/lang/String;

    iget v4, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mErrCode:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 324
    .local v0, "o":Landroid/hardware/biometrics/events/AuthenticationErrorInfo;
    return-object v0
.end method

.method public blacklist setBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;
    .registers 6
    .param p1, "value"    # Landroid/hardware/biometrics/BiometricSourceType;

    .line 272
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->checkNotUsed()V

    .line 273
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    .line 274
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 275
    return-object p0
.end method

.method public blacklist setErrCode(I)Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 308
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->checkNotUsed()V

    .line 309
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    .line 310
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mErrCode:I

    .line 311
    return-object p0
.end method

.method public blacklist setErrString(Ljava/lang/String;)Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 295
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->checkNotUsed()V

    .line 296
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    .line 297
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mErrString:Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public blacklist setRequestReason(I)Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 284
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->checkNotUsed()V

    .line 285
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mBuilderFieldsSet:J

    .line 286
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationErrorInfo$Builder;->mRequestReason:I

    .line 287
    return-object p0
.end method
