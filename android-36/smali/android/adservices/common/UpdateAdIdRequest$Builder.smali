.class public final Landroid/adservices/common/UpdateAdIdRequest$Builder;
.super Ljava/lang/Object;
.source "UpdateAdIdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/common/UpdateAdIdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAdId:Ljava/lang/String;

.field private blacklist mLimitAdTrackingEnabled:Z


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "adId"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/adservices/common/UpdateAdIdRequest$Builder;->mAdId:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/adservices/common/UpdateAdIdRequest;
    .registers 5

    .line 145
    new-instance v0, Landroid/adservices/common/UpdateAdIdRequest;

    iget-object v1, p0, Landroid/adservices/common/UpdateAdIdRequest$Builder;->mAdId:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/adservices/common/UpdateAdIdRequest$Builder;->mLimitAdTrackingEnabled:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/adservices/common/UpdateAdIdRequest;-><init>(Ljava/lang/String;ZLandroid/adservices/common/UpdateAdIdRequest-IA;)V

    return-object v0
.end method

.method public whitelist setLimitAdTrackingEnabled(Z)Landroid/adservices/common/UpdateAdIdRequest$Builder;
    .registers 2
    .param p1, "isLimitAdTrackingEnabled"    # Z

    .line 138
    iput-boolean p1, p0, Landroid/adservices/common/UpdateAdIdRequest$Builder;->mLimitAdTrackingEnabled:Z

    .line 139
    return-object p0
.end method
