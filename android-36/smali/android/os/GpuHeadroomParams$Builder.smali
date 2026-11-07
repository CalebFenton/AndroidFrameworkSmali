.class public final Landroid/os/GpuHeadroomParams$Builder;
.super Ljava/lang/Object;
.source "GpuHeadroomParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/GpuHeadroomParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCalculationType:I

.field private blacklist mCalculationWindowMillis:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationType:I

    .line 78
    iput v0, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    .line 81
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/GpuHeadroomParams;)V
    .registers 3
    .param p1, "params"    # Landroid/os/GpuHeadroomParams;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationType:I

    .line 78
    iput v0, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    .line 87
    iget-object v0, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    if-ltz v0, :cond_14

    .line 88
    iget-object v0, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget-byte v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    iput v0, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationType:I

    .line 90
    :cond_14
    iget-object v0, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    if-ltz v0, :cond_20

    .line 91
    iget-object v0, p1, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget v0, v0, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    iput v0, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    .line 93
    :cond_20
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/os/GpuHeadroomParams;
    .registers 4

    .line 140
    new-instance v0, Landroid/os/GpuHeadroomParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/GpuHeadroomParams;-><init>(Landroid/os/GpuHeadroomParams-IA;)V

    .line 141
    .local v0, "params":Landroid/os/GpuHeadroomParams;
    iget v1, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationType:I

    if-ltz v1, :cond_11

    .line 142
    iget-object v1, v0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget v2, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationType:I

    int-to-byte v2, v2

    iput-byte v2, v1, Landroid/os/GpuHeadroomParamsInternal;->calculationType:B

    .line 144
    :cond_11
    iget v1, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    if-ltz v1, :cond_1b

    .line 145
    iget-object v1, v0, Landroid/os/GpuHeadroomParams;->mInternal:Landroid/os/GpuHeadroomParamsInternal;

    iget v2, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    iput v2, v1, Landroid/os/GpuHeadroomParamsInternal;->calculationWindowMillis:I

    .line 147
    :cond_1b
    return-object v0
.end method

.method public whitelist setCalculationType(I)Landroid/os/GpuHeadroomParams$Builder;
    .registers 5
    .param p1, "calculationType"    # I

    .line 104
    packed-switch p1, :pswitch_data_20

    .line 111
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

    .line 107
    :pswitch_1c
    iput p1, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationType:I

    .line 108
    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setCalculationWindowMillis(I)Landroid/os/GpuHeadroomParams$Builder;
    .registers 5
    .param p1, "windowMillis"    # I

    .line 128
    if-lez p1, :cond_5

    .line 131
    iput p1, p0, Landroid/os/GpuHeadroomParams$Builder;->mCalculationWindowMillis:I

    .line 132
    return-object p0

    .line 129
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
