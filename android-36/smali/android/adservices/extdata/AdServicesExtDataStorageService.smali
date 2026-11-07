.class public abstract Landroid/adservices/extdata/AdServicesExtDataStorageService;
.super Landroid/app/Service;
.source "AdServicesExtDataStorageService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/extdata/AdServicesExtDataStorageService$AdServicesExtDataFieldId;
    }
.end annotation


# static fields
.field public static final whitelist FIELD_IS_ADULT_ACCOUNT:I = 0x3

.field public static final whitelist FIELD_IS_MEASUREMENT_CONSENTED:I = 0x1

.field public static final whitelist FIELD_IS_NOTIFICATION_DISPLAYED:I = 0x0

.field public static final whitelist FIELD_IS_U18_ACCOUNT:I = 0x2

.field public static final whitelist FIELD_MANUAL_INTERACTION_WITH_CONSENT_STATUS:I = 0x4

.field public static final whitelist FIELD_MEASUREMENT_ROLLBACK_APEX_VERSION:I = 0x5

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.adservices.extdata.AdServicesExtDataStorageService"


# instance fields
.field private final blacklist mInterface:Landroid/adservices/extdata/IAdServicesExtDataStorageService;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 110
    new-instance v0, Landroid/adservices/extdata/AdServicesExtDataStorageService$1;

    invoke-direct {v0, p0}, Landroid/adservices/extdata/AdServicesExtDataStorageService$1;-><init>(Landroid/adservices/extdata/AdServicesExtDataStorageService;)V

    iput-object v0, p0, Landroid/adservices/extdata/AdServicesExtDataStorageService;->mInterface:Landroid/adservices/extdata/IAdServicesExtDataStorageService;

    .line 88
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Landroid/adservices/extdata/AdServicesExtDataStorageService;->mInterface:Landroid/adservices/extdata/IAdServicesExtDataStorageService;

    invoke-interface {v0}, Landroid/adservices/extdata/IAdServicesExtDataStorageService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist onGetAdServicesExtData()Landroid/adservices/extdata/AdServicesExtDataParams;
.end method

.method public abstract whitelist onPutAdServicesExtData(Landroid/adservices/extdata/AdServicesExtDataParams;[I)V
.end method
