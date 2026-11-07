.class public final Landroid/adservices/adid/GetAdIdResult$Builder;
.super Ljava/lang/Object;
.source "GetAdIdResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/adid/GetAdIdResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdId:Ljava/lang/String;

.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mLimitAdTrackingEnabled:Z

.field private blacklist mStatusCode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/adid/GetAdIdResult;
    .registers 8

    .line 183
    iget-object v0, p0, Landroid/adservices/adid/GetAdIdResult$Builder;->mAdId:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 187
    new-instance v1, Landroid/adservices/adid/GetAdIdResult;

    iget v2, p0, Landroid/adservices/adid/GetAdIdResult$Builder;->mStatusCode:I

    iget-object v3, p0, Landroid/adservices/adid/GetAdIdResult$Builder;->mErrorMessage:Ljava/lang/String;

    iget-object v4, p0, Landroid/adservices/adid/GetAdIdResult$Builder;->mAdId:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/adservices/adid/GetAdIdResult$Builder;->mLimitAdTrackingEnabled:Z

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/adservices/adid/GetAdIdResult;-><init>(ILjava/lang/String;Ljava/lang/String;ZLandroid/adservices/adid/GetAdIdResult-IA;)V

    return-object v1

    .line 184
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAdId(Ljava/lang/String;)Landroid/adservices/adid/GetAdIdResult$Builder;
    .registers 2
    .param p1, "adId"    # Ljava/lang/String;

    .line 171
    iput-object p1, p0, Landroid/adservices/adid/GetAdIdResult$Builder;->mAdId:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public blacklist setErrorMessage(Ljava/lang/String;)Landroid/adservices/adid/GetAdIdResult$Builder;
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 165
    iput-object p1, p0, Landroid/adservices/adid/GetAdIdResult$Builder;->mErrorMessage:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public blacklist setLatEnabled(Z)Landroid/adservices/adid/GetAdIdResult$Builder;
    .registers 2
    .param p1, "isLimitAdTrackingEnabled"    # Z

    .line 177
    iput-boolean p1, p0, Landroid/adservices/adid/GetAdIdResult$Builder;->mLimitAdTrackingEnabled:Z

    .line 178
    return-object p0
.end method

.method public blacklist setStatusCode(I)Landroid/adservices/adid/GetAdIdResult$Builder;
    .registers 2
    .param p1, "statusCode"    # I

    .line 159
    iput p1, p0, Landroid/adservices/adid/GetAdIdResult$Builder;->mStatusCode:I

    .line 160
    return-object p0
.end method
