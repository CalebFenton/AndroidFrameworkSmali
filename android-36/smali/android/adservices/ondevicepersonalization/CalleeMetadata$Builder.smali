.class public final Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;
.super Ljava/lang/Object;
.source "CalleeMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/CalleeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mCallbackInvokeTimeMillis:J

.field private blacklist mElapsedTimeMillis:J

.field private blacklist mServiceEntryTimeMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    .line 173
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 224
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 228
    return-void

    .line 225
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/CalleeMetadata;
    .registers 12

    .line 204
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->checkNotUsed()V

    .line 205
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    .line 207
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 208
    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mElapsedTimeMillis:J

    .line 210
    :cond_17
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    .line 211
    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mServiceEntryTimeMillis:J

    .line 213
    :cond_22
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    .line 214
    iput-wide v2, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mCallbackInvokeTimeMillis:J

    .line 216
    :cond_2d
    new-instance v4, Landroid/adservices/ondevicepersonalization/CalleeMetadata;

    iget-wide v5, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mElapsedTimeMillis:J

    iget-wide v7, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mServiceEntryTimeMillis:J

    iget-wide v9, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mCallbackInvokeTimeMillis:J

    invoke-direct/range {v4 .. v10}, Landroid/adservices/ondevicepersonalization/CalleeMetadata;-><init>(JJJ)V

    .line 220
    .local v4, "o":Landroid/adservices/ondevicepersonalization/CalleeMetadata;
    return-object v4
.end method

.method public blacklist setCallbackInvokeTimeMillis(J)Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 196
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->checkNotUsed()V

    .line 197
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    .line 198
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mCallbackInvokeTimeMillis:J

    .line 199
    return-object p0
.end method

.method public blacklist setElapsedTimeMillis(J)Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 180
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->checkNotUsed()V

    .line 181
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    .line 182
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mElapsedTimeMillis:J

    .line 183
    return-object p0
.end method

.method public blacklist setServiceEntryTimeMillis(J)Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;
    .registers 7
    .param p1, "value"    # J

    .line 188
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->checkNotUsed()V

    .line 189
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mBuilderFieldsSet:J

    .line 190
    iput-wide p1, p0, Landroid/adservices/ondevicepersonalization/CalleeMetadata$Builder;->mServiceEntryTimeMillis:J

    .line 191
    return-object p0
.end method
