.class public final Landroid/adservices/common/AdServicesResponse$Builder;
.super Ljava/lang/Object;
.source "AdServicesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/AdServicesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mStatusCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmErrorMessage(Landroid/adservices/common/AdServicesResponse$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/common/AdServicesResponse$Builder;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusCode(Landroid/adservices/common/AdServicesResponse$Builder;)I
    .registers 1

    iget p0, p0, Landroid/adservices/common/AdServicesResponse$Builder;->mStatusCode:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Landroid/adservices/common/AdServicesResponse$Builder;->mStatusCode:I

    .line 113
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/common/AdServicesResponse;
    .registers 2

    .line 132
    new-instance v0, Landroid/adservices/common/AdServicesResponse;

    invoke-direct {v0, p0}, Landroid/adservices/common/AdServicesResponse;-><init>(Landroid/adservices/common/AdServicesResponse$Builder;)V

    return-object v0
.end method

.method public blacklist setErrorMessage(Ljava/lang/String;)Landroid/adservices/common/AdServicesResponse$Builder;
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Landroid/adservices/common/AdServicesResponse$Builder;->mErrorMessage:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public blacklist setStatusCode(I)Landroid/adservices/common/AdServicesResponse$Builder;
    .registers 2
    .param p1, "statusCode"    # I

    .line 118
    iput p1, p0, Landroid/adservices/common/AdServicesResponse$Builder;->mStatusCode:I

    .line 119
    return-object p0
.end method
