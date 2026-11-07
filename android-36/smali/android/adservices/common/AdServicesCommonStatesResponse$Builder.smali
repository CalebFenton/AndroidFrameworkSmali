.class public final Landroid/adservices/common/AdServicesCommonStatesResponse$Builder;
.super Ljava/lang/Object;
.source "AdServicesCommonStatesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/AdServicesCommonStatesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdServicesCommonStates:Landroid/adservices/common/AdServicesCommonStates;


# direct methods
.method public constructor blacklist <init>(Landroid/adservices/common/AdServicesCommonStates;)V
    .registers 2
    .param p1, "adservicesCommonStates"    # Landroid/adservices/common/AdServicesCommonStates;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/adservices/common/AdServicesCommonStatesResponse$Builder;->mAdServicesCommonStates:Landroid/adservices/common/AdServicesCommonStates;

    .line 99
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/common/AdServicesCommonStatesResponse;
    .registers 4

    .line 117
    new-instance v0, Landroid/adservices/common/AdServicesCommonStatesResponse;

    iget-object v1, p0, Landroid/adservices/common/AdServicesCommonStatesResponse$Builder;->mAdServicesCommonStates:Landroid/adservices/common/AdServicesCommonStates;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/adservices/common/AdServicesCommonStatesResponse;-><init>(Landroid/adservices/common/AdServicesCommonStates;Landroid/adservices/common/AdServicesCommonStatesResponse-IA;)V

    return-object v0
.end method

.method public blacklist setAdservicesCommonStates(Landroid/adservices/common/AdServicesCommonStates;)Landroid/adservices/common/AdServicesCommonStatesResponse$Builder;
    .registers 2
    .param p1, "adservicesCommonStates"    # Landroid/adservices/common/AdServicesCommonStates;

    .line 105
    iput-object p1, p0, Landroid/adservices/common/AdServicesCommonStatesResponse$Builder;->mAdServicesCommonStates:Landroid/adservices/common/AdServicesCommonStates;

    .line 106
    return-object p0
.end method
