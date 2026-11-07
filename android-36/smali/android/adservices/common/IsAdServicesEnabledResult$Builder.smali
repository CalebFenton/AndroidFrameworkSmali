.class public final Landroid/adservices/common/IsAdServicesEnabledResult$Builder;
.super Ljava/lang/Object;
.source "IsAdServicesEnabledResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/IsAdServicesEnabledResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdServicesEnabled:Z

.field private blacklist mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/common/IsAdServicesEnabledResult;
    .registers 5

    .line 144
    new-instance v0, Landroid/adservices/common/IsAdServicesEnabledResult;

    iget-object v1, p0, Landroid/adservices/common/IsAdServicesEnabledResult$Builder;->mErrorMessage:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/adservices/common/IsAdServicesEnabledResult$Builder;->mAdServicesEnabled:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/common/IsAdServicesEnabledResult;-><init>(Ljava/lang/String;ZLandroid/adservices/common/IsAdServicesEnabledResult-IA;)V

    return-object v0
.end method

.method public blacklist setAdServicesEnabled(Z)Landroid/adservices/common/IsAdServicesEnabledResult$Builder;
    .registers 2
    .param p1, "adServicesEnabled"    # Z

    .line 133
    iput-boolean p1, p0, Landroid/adservices/common/IsAdServicesEnabledResult$Builder;->mAdServicesEnabled:Z

    .line 134
    return-object p0
.end method

.method public blacklist setErrorMessage(Ljava/lang/String;)Landroid/adservices/common/IsAdServicesEnabledResult$Builder;
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Landroid/adservices/common/IsAdServicesEnabledResult$Builder;->mErrorMessage:Ljava/lang/String;

    .line 128
    return-object p0
.end method
