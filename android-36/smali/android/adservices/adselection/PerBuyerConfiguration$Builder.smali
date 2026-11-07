.class public final Landroid/adservices/adselection/PerBuyerConfiguration$Builder;
.super Ljava/lang/Object;
.source "PerBuyerConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adselection/PerBuyerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuyer:Landroid/adservices/common/AdTechIdentifier;

.field private blacklist mTargetInputSizeBytes:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/adselection/PerBuyerConfiguration$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/adselection/PerBuyerConfiguration;
    .registers 5

    .line 148
    iget-object v0, p0, Landroid/adservices/adselection/PerBuyerConfiguration$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget v0, p0, Landroid/adservices/adselection/PerBuyerConfiguration$Builder;->mTargetInputSizeBytes:I

    if-ltz v0, :cond_14

    .line 153
    new-instance v0, Landroid/adservices/adselection/PerBuyerConfiguration;

    iget-object v1, p0, Landroid/adservices/adselection/PerBuyerConfiguration$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    iget v2, p0, Landroid/adservices/adselection/PerBuyerConfiguration$Builder;->mTargetInputSizeBytes:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/adselection/PerBuyerConfiguration;-><init>(Landroid/adservices/common/AdTechIdentifier;ILandroid/adservices/adselection/PerBuyerConfiguration-IA;)V

    return-object v0

    .line 150
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target input size must be non-negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBuyer(Landroid/adservices/common/AdTechIdentifier;)Landroid/adservices/adselection/PerBuyerConfiguration$Builder;
    .registers 2
    .param p1, "buyer"    # Landroid/adservices/common/AdTechIdentifier;

    .line 126
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iput-object p1, p0, Landroid/adservices/adselection/PerBuyerConfiguration$Builder;->mBuyer:Landroid/adservices/common/AdTechIdentifier;

    .line 128
    return-object p0
.end method

.method public whitelist setTargetInputSizeBytes(I)Landroid/adservices/adselection/PerBuyerConfiguration$Builder;
    .registers 2
    .param p1, "targetInputSizeB"    # I

    .line 141
    iput p1, p0, Landroid/adservices/adselection/PerBuyerConfiguration$Builder;->mTargetInputSizeBytes:I

    .line 142
    return-object p0
.end method
