.class public Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;
.super Ljava/lang/Object;
.source "FingerprintEnrollOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintEnrollOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mEnrollReason:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->mBuilderFieldsSet:J

    .line 214
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 241
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 245
    return-void

    .line 242
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/fingerprint/FingerprintEnrollOptions;
    .registers 5

    .line 229
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->checkNotUsed()V

    .line 230
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->mBuilderFieldsSet:J

    .line 232
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 233
    invoke-static {}, Landroid/hardware/fingerprint/FingerprintEnrollOptions;->-$$Nest$smdefaultEnrollReason()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->mEnrollReason:I

    .line 235
    :cond_1b
    new-instance v0, Landroid/hardware/fingerprint/FingerprintEnrollOptions;

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->mEnrollReason:I

    invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintEnrollOptions;-><init>(I)V

    .line 237
    .local v0, "o":Landroid/hardware/fingerprint/FingerprintEnrollOptions;
    return-object v0
.end method

.method public blacklist setEnrollReason(I)Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 221
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->checkNotUsed()V

    .line 222
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->mBuilderFieldsSet:J

    .line 223
    iput p1, p0, Landroid/hardware/fingerprint/FingerprintEnrollOptions$Builder;->mEnrollReason:I

    .line 224
    return-object p0
.end method
