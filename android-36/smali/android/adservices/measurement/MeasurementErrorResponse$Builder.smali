.class public final Landroid/adservices/measurement/MeasurementErrorResponse$Builder;
.super Ljava/lang/Object;
.source "MeasurementErrorResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/measurement/MeasurementErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mStatusCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmErrorMessage(Landroid/adservices/measurement/MeasurementErrorResponse$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/measurement/MeasurementErrorResponse$Builder;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusCode(Landroid/adservices/measurement/MeasurementErrorResponse$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/measurement/MeasurementErrorResponse$Builder;->mStatusCode:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Landroid/adservices/measurement/MeasurementErrorResponse$Builder;->mStatusCode:I

    .line 82
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/measurement/MeasurementErrorResponse;
    .registers 2

    .line 102
    new-instance v0, Landroid/adservices/measurement/MeasurementErrorResponse;

    invoke-direct {v0, p0}, Landroid/adservices/measurement/MeasurementErrorResponse;-><init>(Landroid/adservices/measurement/MeasurementErrorResponse$Builder;)V

    return-object v0
.end method

.method public blacklist setErrorMessage(Ljava/lang/String;)Landroid/adservices/measurement/MeasurementErrorResponse$Builder;
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Landroid/adservices/measurement/MeasurementErrorResponse$Builder;->mErrorMessage:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public blacklist setStatusCode(I)Landroid/adservices/measurement/MeasurementErrorResponse$Builder;
    .registers 2
    .param p1, "statusCode"    # I

    .line 88
    iput p1, p0, Landroid/adservices/measurement/MeasurementErrorResponse$Builder;->mStatusCode:I

    .line 89
    return-object p0
.end method
