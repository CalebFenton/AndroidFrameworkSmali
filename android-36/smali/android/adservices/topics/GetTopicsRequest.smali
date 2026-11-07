.class public final Landroid/adservices/topics/GetTopicsRequest;
.super Ljava/lang/Object;
.source "GetTopicsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/topics/GetTopicsRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAdsSdkName:Ljava/lang/String;

.field private final blacklist mRecordObservation:Z


# direct methods
.method private constructor blacklist <init>(Landroid/adservices/topics/GetTopicsRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/adservices/topics/GetTopicsRequest$Builder;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/adservices/topics/GetTopicsRequest$Builder;->-$$Nest$fgetmAdsSdkName(Landroid/adservices/topics/GetTopicsRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/adservices/topics/GetTopicsRequest;->mAdsSdkName:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Landroid/adservices/topics/GetTopicsRequest$Builder;->-$$Nest$fgetmRecordObservation(Landroid/adservices/topics/GetTopicsRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/adservices/topics/GetTopicsRequest;->mRecordObservation:Z

    .line 35
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/adservices/topics/GetTopicsRequest$Builder;Landroid/adservices/topics/GetTopicsRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/topics/GetTopicsRequest;-><init>(Landroid/adservices/topics/GetTopicsRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist getAdsSdkName()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Landroid/adservices/topics/GetTopicsRequest;->mAdsSdkName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist shouldRecordObservation()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Landroid/adservices/topics/GetTopicsRequest;->mRecordObservation:Z

    return v0
.end method
