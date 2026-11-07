.class public final Landroid/adservices/appsetid/GetAppSetIdResult$Builder;
.super Ljava/lang/Object;
.source "GetAppSetIdResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/appsetid/GetAppSetIdResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAppSetId:Ljava/lang/String;

.field private blacklist mAppSetIdScope:I

.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mStatusCode:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/appsetid/GetAppSetIdResult;
    .registers 8

    .line 203
    iget-object v0, p0, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->mAppSetId:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 207
    new-instance v1, Landroid/adservices/appsetid/GetAppSetIdResult;

    iget v2, p0, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->mStatusCode:I

    iget-object v3, p0, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->mErrorMessage:Ljava/lang/String;

    iget-object v4, p0, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->mAppSetId:Ljava/lang/String;

    iget v5, p0, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->mAppSetIdScope:I

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/adservices/appsetid/GetAppSetIdResult;-><init>(ILjava/lang/String;Ljava/lang/String;ILandroid/adservices/appsetid/GetAppSetIdResult-IA;)V

    return-object v1

    .line 204
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appSetId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAppSetId(Ljava/lang/String;)Landroid/adservices/appsetid/GetAppSetIdResult$Builder;
    .registers 2
    .param p1, "appSetId"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->mAppSetId:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public blacklist setAppSetIdScope(I)Landroid/adservices/appsetid/GetAppSetIdResult$Builder;
    .registers 2
    .param p1, "scope"    # I

    .line 197
    iput p1, p0, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->mAppSetIdScope:I

    .line 198
    return-object p0
.end method

.method public blacklist setErrorMessage(Ljava/lang/String;)Landroid/adservices/appsetid/GetAppSetIdResult$Builder;
    .registers 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 185
    iput-object p1, p0, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->mErrorMessage:Ljava/lang/String;

    .line 186
    return-object p0
.end method

.method public blacklist setStatusCode(I)Landroid/adservices/appsetid/GetAppSetIdResult$Builder;
    .registers 2
    .param p1, "statusCode"    # I

    .line 179
    iput p1, p0, Landroid/adservices/appsetid/GetAppSetIdResult$Builder;->mStatusCode:I

    .line 180
    return-object p0
.end method
