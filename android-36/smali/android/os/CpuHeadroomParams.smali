.class public final Landroid/os/CpuHeadroomParams;
.super Ljava/lang/Object;
.source "CpuHeadroomParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CpuHeadroomParams$Builder;,
        Landroid/os/CpuHeadroomParams$CpuHeadroomCalculationType;
    }
.end annotation


# static fields
.field public static final whitelist CPU_HEADROOM_CALCULATION_TYPE_AVERAGE:I = 0x1

.field public static final whitelist CPU_HEADROOM_CALCULATION_TYPE_MIN:I


# instance fields
.field public final blacklist mInternal:Landroid/os/CpuHeadroomParamsInternal;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/CpuHeadroomParamsInternal;

    invoke-direct {v0}, Landroid/os/CpuHeadroomParamsInternal;-><init>()V

    iput-object v0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/CpuHeadroomParams-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/CpuHeadroomParams;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 220
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 221
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 222
    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/os/CpuHeadroomParams;

    .line 223
    .local v0, "that":Landroid/os/CpuHeadroomParams;
    iget-object v1, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v2, v0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    invoke-virtual {v1, v2}, Landroid/os/CpuHeadroomParamsInternal;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 221
    .end local v0    # "that":Landroid/os/CpuHeadroomParams;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCalculationType()I
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    packed-switch v0, :pswitch_data_10

    .line 185
    const/4 v0, 0x0

    goto :goto_d

    .line 184
    :pswitch_9
    iget-object v0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    .line 185
    :goto_d
    nop

    .line 187
    .local v0, "validatedType":I
    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public whitelist getCalculationWindowMillis()J
    .registers 3

    .line 196
    iget-object v0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public whitelist getTids()[I
    .registers 3

    .line 206
    iget-object v0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_15

    :cond_8
    iget-object v0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    iget-object v1, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v1, v1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    invoke-virtual {v0}, Landroid/os/CpuHeadroomParamsInternal;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist toBuilder()Landroid/os/CpuHeadroomParams$Builder;
    .registers 2

    .line 173
    new-instance v0, Landroid/os/CpuHeadroomParams$Builder;

    invoke-direct {v0, p0}, Landroid/os/CpuHeadroomParams$Builder;-><init>(Landroid/os/CpuHeadroomParams;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CpuHeadroomParams{calculationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-byte v1, v1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calculationWindowMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v1, v1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v1, v1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    .line 214
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    return-object v0
.end method
