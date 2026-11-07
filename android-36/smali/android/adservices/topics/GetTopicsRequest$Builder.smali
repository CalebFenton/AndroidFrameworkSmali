.class public final Landroid/adservices/topics/GetTopicsRequest$Builder;
.super Ljava/lang/Object;
.source "GetTopicsRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/topics/GetTopicsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdsSdkName:Ljava/lang/String;

.field private blacklist mRecordObservation:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdsSdkName(Landroid/adservices/topics/GetTopicsRequest$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/adservices/topics/GetTopicsRequest$Builder;->mAdsSdkName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRecordObservation(Landroid/adservices/topics/GetTopicsRequest$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/adservices/topics/GetTopicsRequest$Builder;->mRecordObservation:Z

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsRequest$Builder;->mAdsSdkName:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/adservices/topics/GetTopicsRequest$Builder;->mRecordObservation:Z

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/topics/GetTopicsRequest;
    .registers 3

    .line 94
    new-instance v0, Landroid/adservices/topics/GetTopicsRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/adservices/topics/GetTopicsRequest;-><init>(Landroid/adservices/topics/GetTopicsRequest$Builder;Landroid/adservices/topics/GetTopicsRequest-IA;)V

    return-object v0
.end method

.method public whitelist setAdsSdkName(Ljava/lang/String;)Landroid/adservices/topics/GetTopicsRequest$Builder;
    .registers 4
    .param p1, "adsSdkName"    # Ljava/lang/String;

    .line 68
    if-eqz p1, :cond_5

    .line 74
    iput-object p1, p0, Landroid/adservices/topics/GetTopicsRequest$Builder;->mAdsSdkName:Ljava/lang/String;

    .line 75
    return-object p0

    .line 69
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When calling Topics API outside of the Sandbox, caller should set Ads Sdk Name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setShouldRecordObservation(Z)Landroid/adservices/topics/GetTopicsRequest$Builder;
    .registers 2
    .param p1, "recordObservation"    # Z

    .line 87
    iput-boolean p1, p0, Landroid/adservices/topics/GetTopicsRequest$Builder;->mRecordObservation:Z

    .line 88
    return-object p0
.end method
