.class public final Landroid/adservices/extdata/AdServicesExtDataParams$Builder;
.super Ljava/lang/Object;
.source "AdServicesExtDataParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/adservices/extdata/AdServicesExtDataParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsAdultAccount:I

.field private blacklist mIsU18Account:I

.field private blacklist mManualInteractionWithConsentStatus:I

.field private blacklist mMsmtConsent:I

.field private blacklist mMsmtRollbackApexVersion:J

.field private blacklist mNotificationDisplayed:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/adservices/extdata/AdServicesExtDataParams;
    .registers 9

    .line 302
    new-instance v0, Landroid/adservices/extdata/AdServicesExtDataParams;

    iget v1, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mNotificationDisplayed:I

    iget v2, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mMsmtConsent:I

    iget v3, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mIsU18Account:I

    iget v4, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mIsAdultAccount:I

    iget v5, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mManualInteractionWithConsentStatus:I

    iget-wide v6, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mMsmtRollbackApexVersion:J

    invoke-direct/range {v0 .. v7}, Landroid/adservices/extdata/AdServicesExtDataParams;-><init>(IIIIIJ)V

    return-object v0
.end method

.method public blacklist setIsAdultAccount(I)Landroid/adservices/extdata/AdServicesExtDataParams$Builder;
    .registers 2
    .param p1, "isAdultAccount"    # I

    .line 277
    iput p1, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mIsAdultAccount:I

    .line 278
    return-object p0
.end method

.method public blacklist setIsU18Account(I)Landroid/adservices/extdata/AdServicesExtDataParams$Builder;
    .registers 2
    .param p1, "isU18Account"    # I

    .line 269
    iput p1, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mIsU18Account:I

    .line 270
    return-object p0
.end method

.method public blacklist setManualInteractionWithConsentStatus(I)Landroid/adservices/extdata/AdServicesExtDataParams$Builder;
    .registers 2
    .param p1, "manualInteractionWithConsentStatus"    # I

    .line 285
    iput p1, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mManualInteractionWithConsentStatus:I

    .line 286
    return-object p0
.end method

.method public blacklist setMsmtConsent(I)Landroid/adservices/extdata/AdServicesExtDataParams$Builder;
    .registers 2
    .param p1, "msmtConsent"    # I

    .line 262
    iput p1, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mMsmtConsent:I

    .line 263
    return-object p0
.end method

.method public blacklist setMsmtRollbackApexVersion(J)Landroid/adservices/extdata/AdServicesExtDataParams$Builder;
    .registers 3
    .param p1, "msmtRollbackApexVersion"    # J

    .line 293
    iput-wide p1, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mMsmtRollbackApexVersion:J

    .line 294
    return-object p0
.end method

.method public blacklist setNotificationDisplayed(I)Landroid/adservices/extdata/AdServicesExtDataParams$Builder;
    .registers 2
    .param p1, "notificationDisplayed"    # I

    .line 255
    iput p1, p0, Landroid/adservices/extdata/AdServicesExtDataParams$Builder;->mNotificationDisplayed:I

    .line 256
    return-object p0
.end method
