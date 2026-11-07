.class public final Landroid/adservices/topics/GetTopicsParam$Builder;
.super Ljava/lang/Object;
.source "GetTopicsParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/topics/GetTopicsParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mRecordObservation:Z

.field private blacklist mSdkName:Ljava/lang/String;

.field private blacklist mSdkPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mRecordObservation:Z

    .line 112
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/topics/GetTopicsParam;
    .registers 8

    .line 150
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mSdkName:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_8

    .line 153
    iput-object v1, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mSdkName:Ljava/lang/String;

    .line 156
    :cond_8
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mSdkPackageName:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 160
    iput-object v1, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 163
    :cond_e
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mAppPackageName:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 167
    new-instance v1, Landroid/adservices/topics/GetTopicsParam;

    iget-object v2, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mSdkName:Ljava/lang/String;

    iget-object v3, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mSdkPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mAppPackageName:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mRecordObservation:Z

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/adservices/topics/GetTopicsParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/adservices/topics/GetTopicsParam-IA;)V

    return-object v1

    .line 164
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App PackageName must not be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAppPackageName(Ljava/lang/String;)Landroid/adservices/topics/GetTopicsParam$Builder;
    .registers 2
    .param p1, "appPackageName"    # Ljava/lang/String;

    .line 134
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mAppPackageName:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public blacklist setSdkName(Ljava/lang/String;)Landroid/adservices/topics/GetTopicsParam$Builder;
    .registers 2
    .param p1, "sdkName"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mSdkName:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public blacklist setSdkPackageName(Ljava/lang/String;)Landroid/adservices/topics/GetTopicsParam$Builder;
    .registers 2
    .param p1, "sdkPackageName"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mSdkPackageName:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public blacklist setShouldRecordObservation(Z)Landroid/adservices/topics/GetTopicsParam$Builder;
    .registers 2
    .param p1, "recordObservation"    # Z

    .line 144
    iput-boolean p1, p0, Landroid/adservices/topics/GetTopicsParam$Builder;->mRecordObservation:Z

    .line 145
    return-object p0
.end method
