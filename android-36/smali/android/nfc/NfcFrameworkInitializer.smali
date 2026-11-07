.class public Landroid/nfc/NfcFrameworkInitializer;
.super Ljava/lang/Object;
.source "NfcFrameworkInitializer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static volatile blacklist sNfcServiceManager:Landroid/nfc/NfcServiceManager;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getNfcServiceManager()Landroid/nfc/NfcServiceManager;
    .registers 1

    .line 57
    sget-object v0, Landroid/nfc/NfcFrameworkInitializer;->sNfcServiceManager:Landroid/nfc/NfcServiceManager;

    return-object v0
.end method

.method static synthetic blacklist lambda$registerServiceWrappers$0(Landroid/content/Context;)Landroid/nfc/NfcManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    new-instance v0, Landroid/nfc/NfcManager;

    invoke-direct {v0, p0}, Landroid/nfc/NfcManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static blacklist registerServiceWrappers()V
    .registers 3

    .line 68
    const-class v0, Landroid/nfc/NfcManager;

    new-instance v1, Landroid/nfc/NfcFrameworkInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/nfc/NfcFrameworkInitializer$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "nfc"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    .line 70
    return-void
.end method

.method public static blacklist setNfcServiceManager(Landroid/nfc/NfcServiceManager;)V
    .registers 3
    .param p0, "nfcServiceManager"    # Landroid/nfc/NfcServiceManager;

    .line 44
    sget-object v0, Landroid/nfc/NfcFrameworkInitializer;->sNfcServiceManager:Landroid/nfc/NfcServiceManager;

    if-nez v0, :cond_11

    .line 48
    if-eqz p0, :cond_9

    .line 52
    sput-object p0, Landroid/nfc/NfcFrameworkInitializer;->sNfcServiceManager:Landroid/nfc/NfcServiceManager;

    .line 53
    return-void

    .line 49
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nfcServiceManager must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setNfcServiceManager called twice!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
