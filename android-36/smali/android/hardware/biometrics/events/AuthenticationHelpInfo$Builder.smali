.class public final Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;
.super Ljava/lang/Object;
.source "AuthenticationHelpInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/events/AuthenticationHelpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mHelpCode:I

.field private blacklist mHelpString:Ljava/lang/String;

.field private blacklist mRequestReason:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V
    .registers 8
    .param p1, "biometricSourceType"    # Landroid/hardware/biometrics/BiometricSourceType;
    .param p2, "requestReason"    # I
    .param p3, "helpString"    # Ljava/lang/String;
    .param p4, "helpCode"    # I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    .line 249
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 250
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 252
    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mRequestReason:I

    .line 253
    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mRequestReason:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 255
    iput-object p3, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mHelpString:Ljava/lang/String;

    .line 256
    iput p4, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mHelpCode:I

    .line 257
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 318
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

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
.method public blacklist build()Landroid/hardware/biometrics/events/AuthenticationHelpInfo;
    .registers 6

    .line 306
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->checkNotUsed()V

    .line 307
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    .line 309
    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mRequestReason:I

    iget-object v3, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mHelpString:Ljava/lang/String;

    iget v4, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mHelpCode:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo;-><init>(Landroid/hardware/biometrics/BiometricSourceType;ILjava/lang/String;I)V

    .line 314
    .local v0, "o":Landroid/hardware/biometrics/events/AuthenticationHelpInfo;
    return-object v0
.end method

.method public blacklist setBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;
    .registers 6
    .param p1, "value"    # Landroid/hardware/biometrics/BiometricSourceType;

    .line 264
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->checkNotUsed()V

    .line 265
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    .line 266
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    .line 267
    return-object p0
.end method

.method public blacklist setHelpCode(I)Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 298
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->checkNotUsed()V

    .line 299
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    .line 300
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mHelpCode:I

    .line 301
    return-object p0
.end method

.method public blacklist setHelpString(Ljava/lang/String;)Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 287
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->checkNotUsed()V

    .line 288
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    .line 289
    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mHelpString:Ljava/lang/String;

    .line 290
    return-object p0
.end method

.method public blacklist setRequestReason(I)Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 276
    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->checkNotUsed()V

    .line 277
    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mBuilderFieldsSet:J

    .line 278
    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationHelpInfo$Builder;->mRequestReason:I

    .line 279
    return-object p0
.end method
