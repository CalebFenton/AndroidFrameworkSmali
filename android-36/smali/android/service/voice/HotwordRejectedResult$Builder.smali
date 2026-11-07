.class public final Landroid/service/voice/HotwordRejectedResult$Builder;
.super Ljava/lang/Object;
.source "HotwordRejectedResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/HotwordRejectedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConfidenceLevel:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    .line 237
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 264
    iget-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 268
    return-void

    .line 265
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/voice/HotwordRejectedResult;
    .registers 5

    .line 252
    invoke-direct {p0}, Landroid/service/voice/HotwordRejectedResult$Builder;->checkNotUsed()V

    .line 253
    iget-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    .line 255
    iget-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 256
    invoke-static {}, Landroid/service/voice/HotwordRejectedResult;->-$$Nest$smdefaultConfidenceLevel()I

    move-result v0

    iput v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mConfidenceLevel:I

    .line 258
    :cond_1b
    new-instance v0, Landroid/service/voice/HotwordRejectedResult;

    iget v1, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mConfidenceLevel:I

    invoke-direct {v0, v1}, Landroid/service/voice/HotwordRejectedResult;-><init>(I)V

    .line 260
    .local v0, "o":Landroid/service/voice/HotwordRejectedResult;
    return-object v0
.end method

.method public whitelist setConfidenceLevel(I)Landroid/service/voice/HotwordRejectedResult$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 244
    invoke-direct {p0}, Landroid/service/voice/HotwordRejectedResult$Builder;->checkNotUsed()V

    .line 245
    iget-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mBuilderFieldsSet:J

    .line 246
    iput p1, p0, Landroid/service/voice/HotwordRejectedResult$Builder;->mConfidenceLevel:I

    .line 247
    return-object p0
.end method
