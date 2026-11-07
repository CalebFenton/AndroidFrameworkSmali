.class public final Landroid/os/CpuHeadroomParams$Builder;
.super Ljava/lang/Object;
.source "CpuHeadroomParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuHeadroomParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCalculationType:I

.field private blacklist mCalculationWindowMillis:I

.field private blacklist mTids:[I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    .line 64
    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    .line 68
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/CpuHeadroomParams;)V
    .registers 4
    .param p1, "params"    # Landroid/os/CpuHeadroomParams;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    .line 64
    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    .line 74
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    if-ltz v0, :cond_17

    .line 75
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    .line 77
    :cond_17
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    if-ltz v0, :cond_23

    .line 78
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    .line 80
    :cond_23
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    if-eqz v0, :cond_38

    .line 81
    iget-object v0, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v0, v0, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    iget-object v1, p1, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v1, v1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    .line 83
    :cond_38
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/os/CpuHeadroomParams;
    .registers 4

    .line 154
    new-instance v0, Landroid/os/CpuHeadroomParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/CpuHeadroomParams;-><init>(Landroid/os/CpuHeadroomParams-IA;)V

    .line 155
    .local v0, "params":Landroid/os/CpuHeadroomParams;
    iget v1, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    if-ltz v1, :cond_11

    .line 156
    iget-object v1, v0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v2, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    int-to-byte v2, v2

    iput-byte v2, v1, Landroid/os/CpuHeadroomParamsInternal;->calculationType:B

    .line 158
    :cond_11
    iget v1, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    if-ltz v1, :cond_1b

    .line 159
    iget-object v1, v0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget v2, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    iput v2, v1, Landroid/os/CpuHeadroomParamsInternal;->calculationWindowMillis:I

    .line 161
    :cond_1b
    iget-object v1, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    if-eqz v1, :cond_25

    .line 162
    iget-object v1, v0, Landroid/os/CpuHeadroomParams;->mInternal:Landroid/os/CpuHeadroomParamsInternal;

    iget-object v2, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    iput-object v2, v1, Landroid/os/CpuHeadroomParamsInternal;->tids:[I

    .line 164
    :cond_25
    return-object v0
.end method

.method public whitelist setCalculationType(I)Landroid/os/CpuHeadroomParams$Builder;
    .registers 5
    .param p1, "calculationType"    # I

    .line 94
    packed-switch p1, :pswitch_data_20

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid calculation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :pswitch_1c
    iput p1, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationType:I

    .line 98
    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setCalculationWindowMillis(I)Landroid/os/CpuHeadroomParams$Builder;
    .registers 5
    .param p1, "windowMillis"    # I

    .line 118
    if-lez p1, :cond_5

    .line 121
    iput p1, p0, Landroid/os/CpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    .line 122
    return-object p0

    .line 119
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid calculation window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs whitelist setTids([I)Landroid/os/CpuHeadroomParams$Builder;
    .registers 6
    .param p1, "tids"    # [I

    .line 140
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_24

    aget v2, p1, v1

    .line 141
    .local v2, "tid":I
    if-lez v2, :cond_b

    .line 140
    .end local v2    # "tid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 142
    .restart local v2    # "tid":I
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid TID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    .end local v2    # "tid":I
    :cond_24
    iput-object p1, p0, Landroid/os/CpuHeadroomParams$Builder;->mTids:[I

    .line 146
    return-object p0
.end method
