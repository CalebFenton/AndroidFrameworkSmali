.class public final Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;
.super Ljava/lang/Object;
.source "FederatedComputeInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/ondevicepersonalization/FederatedComputeInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mPopulationName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->mBuilderFieldsSet:J

    .line 99
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 5

    .line 123
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 127
    return-void

    .line 124
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/ondevicepersonalization/FederatedComputeInput;
    .registers 5

    .line 112
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->checkNotUsed()V

    .line 113
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->mBuilderFieldsSet:J

    .line 115
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 116
    const-string v0, ""

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->mPopulationName:Ljava/lang/String;

    .line 118
    :cond_19
    new-instance v0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->mPopulationName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/adservices/ondevicepersonalization/FederatedComputeInput;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "o":Landroid/adservices/ondevicepersonalization/FederatedComputeInput;
    return-object v0
.end method

.method public whitelist setPopulationName(Ljava/lang/String;)Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->checkNotUsed()V

    .line 105
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->mBuilderFieldsSet:J

    .line 106
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/FederatedComputeInput$Builder;->mPopulationName:Ljava/lang/String;

    .line 107
    return-object p0
.end method
