.class public final Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;
.super Ljava/lang/Object;
.source "GetAdServicesExtDataResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/extdata/GetAdServicesExtDataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdServicesExtDataParams:Landroid/adservices/extdata/AdServicesExtDataParams;

.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mStatusCode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/extdata/GetAdServicesExtDataResult;
    .registers 6

    .line 148
    iget-object v0, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;->mAdServicesExtDataParams:Landroid/adservices/extdata/AdServicesExtDataParams;

    if-eqz v0, :cond_11

    .line 152
    new-instance v0, Landroid/adservices/extdata/GetAdServicesExtDataResult;

    iget v1, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;->mStatusCode:I

    iget-object v2, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;->mErrorMessage:Ljava/lang/String;

    iget-object v3, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;->mAdServicesExtDataParams:Landroid/adservices/extdata/AdServicesExtDataParams;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/adservices/extdata/GetAdServicesExtDataResult;-><init>(ILjava/lang/String;Landroid/adservices/extdata/AdServicesExtDataParams;Landroid/adservices/extdata/GetAdServicesExtDataResult-IA;)V

    return-object v0

    .line 149
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AdServicesExtDataParams is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAdServicesExtDataParams(Landroid/adservices/extdata/AdServicesExtDataParams;)Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;
    .registers 2
    .param p1, "adServicesExtDataParams"    # Landroid/adservices/extdata/AdServicesExtDataParams;

    .line 141
    iput-object p1, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;->mAdServicesExtDataParams:Landroid/adservices/extdata/AdServicesExtDataParams;

    .line 142
    return-object p0
.end method

.method public blacklist setErrorMessage(Ljava/lang/String;)Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;->mErrorMessage:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public blacklist setStatusCode(I)Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;
    .registers 2
    .param p1, "statusCode"    # I

    .line 127
    iput p1, p0, Landroid/adservices/extdata/GetAdServicesExtDataResult$Builder;->mStatusCode:I

    .line 128
    return-object p0
.end method
