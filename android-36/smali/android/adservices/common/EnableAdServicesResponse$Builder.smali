.class public final Landroid/adservices/common/EnableAdServicesResponse$Builder;
.super Ljava/lang/Object;
.source "EnableAdServicesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/EnableAdServicesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mIsApiEnabled:Z

.field private blacklist mIsSuccess:Z

.field private blacklist mStatusCode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Landroid/adservices/common/EnableAdServicesResponse$Builder;->mStatusCode:I

    .line 143
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/common/EnableAdServicesResponse;
    .registers 9

    .line 182
    iget v0, p0, Landroid/adservices/common/EnableAdServicesResponse$Builder;->mStatusCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Status code has not been set!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 186
    new-instance v2, Landroid/adservices/common/EnableAdServicesResponse;

    iget v3, p0, Landroid/adservices/common/EnableAdServicesResponse$Builder;->mStatusCode:I

    iget-object v4, p0, Landroid/adservices/common/EnableAdServicesResponse$Builder;->mErrorMessage:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/adservices/common/EnableAdServicesResponse$Builder;->mIsSuccess:Z

    iget-boolean v6, p0, Landroid/adservices/common/EnableAdServicesResponse$Builder;->mIsApiEnabled:Z

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/adservices/common/EnableAdServicesResponse;-><init>(ILjava/lang/String;ZZLandroid/adservices/common/EnableAdServicesResponse-IA;)V

    return-object v2
.end method

.method public blacklist setApiEnabled(Z)Landroid/adservices/common/EnableAdServicesResponse$Builder;
    .registers 2
    .param p1, "isApiEnabled"    # Z

    .line 170
    iput-boolean p1, p0, Landroid/adservices/common/EnableAdServicesResponse$Builder;->mIsApiEnabled:Z

    .line 171
    return-object p0
.end method

.method public blacklist setErrorMessage(Ljava/lang/String;)Landroid/adservices/common/EnableAdServicesResponse$Builder;
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 156
    iput-object p1, p0, Landroid/adservices/common/EnableAdServicesResponse$Builder;->mErrorMessage:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public blacklist setStatusCode(I)Landroid/adservices/common/EnableAdServicesResponse$Builder;
    .registers 2
    .param p1, "statusCode"    # I

    .line 149
    iput p1, p0, Landroid/adservices/common/EnableAdServicesResponse$Builder;->mStatusCode:I

    .line 150
    return-object p0
.end method

.method public blacklist setSuccess(Z)Landroid/adservices/common/EnableAdServicesResponse$Builder;
    .registers 2
    .param p1, "isSuccess"    # Z

    .line 163
    iput-boolean p1, p0, Landroid/adservices/common/EnableAdServicesResponse$Builder;->mIsSuccess:Z

    .line 164
    return-object p0
.end method
