.class public final Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;
.super Ljava/lang/Object;
.source "InferenceOutput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/InferenceOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mData:[B

.field private blacklist mDataOutputs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mBuilderFieldsSet:J

    .line 145
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 211
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 215
    return-void

    .line 212
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addDataOutput(ILjava/lang/Object;)Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;
    .registers 5
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mDataOutputs:Ljava/util/Map;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v0}, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->setDataOutputs(Ljava/util/Map;)Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;

    .line 172
    :cond_c
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mDataOutputs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-object p0
.end method

.method public whitelist build()Landroid/adservices/ondevicepersonalization/InferenceOutput;
    .registers 7

    .line 197
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->checkNotUsed()V

    .line 198
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mBuilderFieldsSet:J

    .line 200
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mDataOutputs:Ljava/util/Map;

    .line 203
    :cond_1b
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    .line 204
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mData:[B

    .line 206
    :cond_29
    new-instance v0, Landroid/adservices/ondevicepersonalization/InferenceOutput;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mDataOutputs:Ljava/util/Map;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mData:[B

    invoke-direct {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/InferenceOutput;-><init>(Ljava/util/Map;[B)V

    .line 207
    .local v0, "o":Landroid/adservices/ondevicepersonalization/InferenceOutput;
    return-object v0
.end method

.method public blacklist setData([B)Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;
    .registers 6
    .param p1, "value"    # [B

    .line 189
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->checkNotUsed()V

    .line 190
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mBuilderFieldsSet:J

    .line 191
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mData:[B

    .line 192
    return-object p0
.end method

.method public whitelist setDataOutputs(Ljava/util/Map;)Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;"
        }
    .end annotation

    .line 157
    .local p1, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->checkNotUsed()V

    .line 158
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mBuilderFieldsSet:J

    .line 159
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/InferenceOutput$Builder;->mDataOutputs:Ljava/util/Map;

    .line 160
    return-object p0
.end method
