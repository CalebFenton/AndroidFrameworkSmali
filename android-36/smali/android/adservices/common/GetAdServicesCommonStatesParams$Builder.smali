.class public final Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;
.super Ljava/lang/Object;
.source "GetAdServicesCommonStatesParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/GetAdServicesCommonStatesParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mSdkPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "sdkPackageName"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;->mAppPackageName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/common/GetAdServicesCommonStatesParams;
    .registers 5

    .line 108
    iget-object v0, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;->mAppPackageName:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 112
    new-instance v0, Landroid/adservices/common/GetAdServicesCommonStatesParams;

    iget-object v1, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;->mSdkPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;->mAppPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/common/GetAdServicesCommonStatesParams;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/adservices/common/GetAdServicesCommonStatesParams-IA;)V

    return-object v0

    .line 109
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App PackageName must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAppPackageName(Ljava/lang/String;)Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;
    .registers 2
    .param p1, "appPackageName"    # Ljava/lang/String;

    .line 102
    iput-object p1, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;->mAppPackageName:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public blacklist setSdkPackageName(Ljava/lang/String;)Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;
    .registers 2
    .param p1, "sdkPackageName"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Landroid/adservices/common/GetAdServicesCommonStatesParams$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 97
    return-object p0
.end method
