.class public final Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;
.super Ljava/lang/Object;
.source "CallerMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/CallerMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mStartTimeMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->mBuilderFieldsSet:J

    .line 145
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 172
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 176
    return-void

    .line 173
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/CallerMetadata;
    .registers 5

    .line 160
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->checkNotUsed()V

    .line 161
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->mBuilderFieldsSet:J

    .line 163
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 164
    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->mStartTimeMillis:J

    .line 166
    :cond_17
    new-instance v0, Landroid/adservices/ondevicepersonalization/CallerMetadata;

    iget-wide v1, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->mStartTimeMillis:J

    invoke-direct {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/CallerMetadata;-><init>(J)V

    .line 168
    .local v0, "o":Landroid/adservices/ondevicepersonalization/CallerMetadata;
    return-object v0
.end method

.method public blacklist setStartTimeMillis(J)Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 152
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->checkNotUsed()V

    .line 153
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->mBuilderFieldsSet:J

    .line 154
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/CallerMetadata$Builder;->mStartTimeMillis:J

    .line 155
    return-object p0
.end method
