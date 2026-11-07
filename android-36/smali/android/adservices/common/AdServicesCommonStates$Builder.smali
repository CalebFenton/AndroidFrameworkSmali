.class public final Landroid/adservices/common/AdServicesCommonStates$Builder;
.super Ljava/lang/Object;
.source "AdServicesCommonStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/AdServicesCommonStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMeasurementState:I

.field private blacklist mPaState:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/common/AdServicesCommonStates;
    .registers 5

    .line 150
    new-instance v0, Landroid/adservices/common/AdServicesCommonStates;

    iget v1, p0, Landroid/adservices/common/AdServicesCommonStates$Builder;->mMeasurementState:I

    iget v2, p0, Landroid/adservices/common/AdServicesCommonStates$Builder;->mPaState:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/common/AdServicesCommonStates;-><init>(IILandroid/adservices/common/AdServicesCommonStates-IA;)V

    return-object v0
.end method

.method public blacklist setMeasurementState(I)Landroid/adservices/common/AdServicesCommonStates$Builder;
    .registers 2
    .param p1, "measurementState"    # I

    .line 136
    iput p1, p0, Landroid/adservices/common/AdServicesCommonStates$Builder;->mMeasurementState:I

    .line 137
    return-object p0
.end method

.method public blacklist setPaState(I)Landroid/adservices/common/AdServicesCommonStates$Builder;
    .registers 2
    .param p1, "paState"    # I

    .line 143
    iput p1, p0, Landroid/adservices/common/AdServicesCommonStates$Builder;->mPaState:I

    .line 144
    return-object p0
.end method
