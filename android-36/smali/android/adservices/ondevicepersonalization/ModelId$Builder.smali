.class public final Landroid/adservices/ondevicepersonalization/ModelId$Builder;
.super Ljava/lang/Object;
.source "ModelId.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/ModelId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mKey:Ljava/lang/String;

.field private blacklist mTableId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mBuilderFieldsSet:J

    .line 187
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 215
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 219
    return-void

    .line 216
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/ondevicepersonalization/ModelId;
    .registers 5

    .line 207
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->checkNotUsed()V

    .line 208
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mBuilderFieldsSet:J

    .line 210
    new-instance v0, Landroid/adservices/ondevicepersonalization/ModelId;

    iget v1, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mTableId:I

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/adservices/ondevicepersonalization/ModelId;-><init>(ILjava/lang/String;)V

    .line 211
    .local v0, "o":Landroid/adservices/ondevicepersonalization/ModelId;
    return-object v0
.end method

.method public blacklist setKey(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/ModelId$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->checkNotUsed()V

    .line 200
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mBuilderFieldsSet:J

    .line 201
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mKey:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public blacklist setTableId(I)Landroid/adservices/ondevicepersonalization/ModelId$Builder;
    .registers 6
    .param p1, "value"    # I

    .line 191
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->checkNotUsed()V

    .line 192
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mBuilderFieldsSet:J

    .line 193
    iput p1, p0, Landroid/adservices/ondevicepersonalization/ModelId$Builder;->mTableId:I

    .line 194
    return-object p0
.end method
