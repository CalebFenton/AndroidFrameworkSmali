.class public final Landroid/adservices/adid/GetAdIdParam$Builder;
.super Ljava/lang/Object;
.source "GetAdIdParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adid/GetAdIdParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mSdkPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adid/GetAdIdParam;
    .registers 5

    .line 105
    iget-object v0, p0, Landroid/adservices/adid/GetAdIdParam$Builder;->mSdkPackageName:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 109
    const-string v0, ""

    iput-object v0, p0, Landroid/adservices/adid/GetAdIdParam$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 112
    :cond_8
    iget-object v0, p0, Landroid/adservices/adid/GetAdIdParam$Builder;->mAppPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/adservices/adid/GetAdIdParam$Builder;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 116
    new-instance v0, Landroid/adservices/adid/GetAdIdParam;

    iget-object v1, p0, Landroid/adservices/adid/GetAdIdParam$Builder;->mSdkPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/adservices/adid/GetAdIdParam$Builder;->mAppPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/adid/GetAdIdParam;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/adservices/adid/GetAdIdParam-IA;)V

    return-object v0

    .line 113
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App PackageName must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAppPackageName(Ljava/lang/String;)Landroid/adservices/adid/GetAdIdParam$Builder;
    .registers 2
    .param p1, "appPackageName"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Landroid/adservices/adid/GetAdIdParam$Builder;->mAppPackageName:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public blacklist setSdkPackageName(Ljava/lang/String;)Landroid/adservices/adid/GetAdIdParam$Builder;
    .registers 2
    .param p1, "sdkPackageName"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Landroid/adservices/adid/GetAdIdParam$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 94
    return-object p0
.end method
