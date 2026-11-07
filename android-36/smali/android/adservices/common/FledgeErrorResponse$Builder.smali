.class public final Landroid/adservices/common/FledgeErrorResponse$Builder;
.super Ljava/lang/Object;
.source "FledgeErrorResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/FledgeErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mStatusCode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Landroid/adservices/common/FledgeErrorResponse$Builder;->mStatusCode:I

    .line 92
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/common/FledgeErrorResponse;
    .registers 5

    .line 116
    iget v0, p0, Landroid/adservices/common/FledgeErrorResponse$Builder;->mStatusCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Status code has not been set!"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 120
    new-instance v0, Landroid/adservices/common/FledgeErrorResponse;

    iget v1, p0, Landroid/adservices/common/FledgeErrorResponse$Builder;->mStatusCode:I

    iget-object v2, p0, Landroid/adservices/common/FledgeErrorResponse$Builder;->mErrorMessage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/common/FledgeErrorResponse;-><init>(ILjava/lang/String;Landroid/adservices/common/FledgeErrorResponse-IA;)V

    return-object v0
.end method

.method public blacklist setErrorMessage(Ljava/lang/String;)Landroid/adservices/common/FledgeErrorResponse$Builder;
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Landroid/adservices/common/FledgeErrorResponse$Builder;->mErrorMessage:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public blacklist setStatusCode(I)Landroid/adservices/common/FledgeErrorResponse$Builder;
    .registers 2
    .param p1, "statusCode"    # I

    .line 97
    iput p1, p0, Landroid/adservices/common/FledgeErrorResponse$Builder;->mStatusCode:I

    .line 98
    return-object p0
.end method
