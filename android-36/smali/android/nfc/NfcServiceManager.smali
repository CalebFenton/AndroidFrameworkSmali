.class public Landroid/nfc/NfcServiceManager;
.super Ljava/lang/Object;
.source "NfcServiceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NfcServiceManager$ServiceRegisterer;,
        Landroid/nfc/NfcServiceManager$ServiceNotFoundException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist getNfcManagerServiceRegisterer()Landroid/nfc/NfcServiceManager$ServiceRegisterer;
    .registers 3

    .line 124
    new-instance v0, Landroid/nfc/NfcServiceManager$ServiceRegisterer;

    const-string/jumbo v1, "nfc"

    invoke-direct {v0, v1}, Landroid/nfc/NfcServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
