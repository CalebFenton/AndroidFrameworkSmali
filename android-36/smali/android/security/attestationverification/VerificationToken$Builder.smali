.class public final Landroid/security/attestationverification/VerificationToken$Builder;
.super Ljava/lang/Object;
.source "VerificationToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/attestationverification/VerificationToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mHmac:[B

.field private blacklist mLocalBindingType:I

.field private blacklist mRequirements:Landroid/os/Bundle;

.field private blacklist mVerificationResult:I

.field private blacklist mVerificationTime:Ljava/time/Instant;


# direct methods
.method public constructor blacklist <init>(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;ILjava/time/Instant;[B)V
    .registers 10
    .param p1, "attestationProfile"    # Landroid/security/attestationverification/AttestationProfile;
    .param p2, "localBindingType"    # I
    .param p3, "requirements"    # Landroid/os/Bundle;
    .param p4, "verificationResult"    # I
    .param p5, "verificationTime"    # Ljava/time/Instant;
    .param p6, "hmac"    # [B

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 322
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    .line 323
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 325
    iput p2, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    .line 326
    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$LocalBindingType;

    iget v1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 328
    iput-object p3, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    .line 329
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 331
    iput p4, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    .line 332
    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager$VerificationResultFlags;

    iget v1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 334
    iput-object p5, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    .line 335
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 337
    iput-object p6, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    .line 338
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 438
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 442
    return-void

    .line 439
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/security/attestationverification/VerificationToken;
    .registers 10

    .line 424
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 425
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 427
    new-instance v2, Landroid/security/attestationverification/VerificationToken;

    iget-object v3, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    iget v4, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    iget-object v5, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    iget v6, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    iget-object v7, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    iget-object v8, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    invoke-direct/range {v2 .. v8}, Landroid/security/attestationverification/VerificationToken;-><init>(Landroid/security/attestationverification/AttestationProfile;ILandroid/os/Bundle;ILjava/time/Instant;[B)V

    .line 434
    .local v2, "o":Landroid/security/attestationverification/VerificationToken;
    return-object v2
.end method

.method public blacklist setAttestationProfile(Landroid/security/attestationverification/AttestationProfile;)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6
    .param p1, "value"    # Landroid/security/attestationverification/AttestationProfile;

    .line 348
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 349
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 350
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mAttestationProfile:Landroid/security/attestationverification/AttestationProfile;

    .line 351
    return-object p0
.end method

.method public varargs blacklist setHmac([B)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 416
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 417
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 418
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mHmac:[B

    .line 419
    return-object p0
.end method

.method public blacklist setLocalBindingType(I)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 360
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 361
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 362
    iput p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mLocalBindingType:I

    .line 363
    return-object p0
.end method

.method public blacklist setRequirements(Landroid/os/Bundle;)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6
    .param p1, "value"    # Landroid/os/Bundle;

    .line 372
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 373
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 374
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mRequirements:Landroid/os/Bundle;

    .line 375
    return-object p0
.end method

.method public blacklist setVerificationResult(I)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 391
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 392
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 393
    iput p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationResult:I

    .line 394
    return-object p0
.end method

.method public blacklist setVerificationTime(Ljava/time/Instant;)Landroid/security/attestationverification/VerificationToken$Builder;
    .registers 6
    .param p1, "value"    # Ljava/time/Instant;

    .line 401
    invoke-direct {p0}, Landroid/security/attestationverification/VerificationToken$Builder;->checkNotUsed()V

    .line 402
    iget-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mBuilderFieldsSet:J

    .line 403
    iput-object p1, p0, Landroid/security/attestationverification/VerificationToken$Builder;->mVerificationTime:Ljava/time/Instant;

    .line 404
    return-object p0
.end method
