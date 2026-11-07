.class public final synthetic Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/nfc/NfcAdapter$ServiceCall;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/PendingIntent;

.field public final synthetic blacklist f$1:[Landroid/content/IntentFilter;

.field public final synthetic blacklist f$2:Landroid/nfc/TechListParcel;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda18;->f$0:Landroid/app/PendingIntent;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda18;->f$1:[Landroid/content/IntentFilter;

    iput-object p3, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda18;->f$2:Landroid/nfc/TechListParcel;

    return-void
.end method


# virtual methods
.method public final blacklist call()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda18;->f$0:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda18;->f$1:[Landroid/content/IntentFilter;

    iget-object v2, p0, Landroid/nfc/NfcAdapter$$ExternalSyntheticLambda18;->f$2:Landroid/nfc/TechListParcel;

    invoke-static {v0, v1, v2}, Landroid/nfc/NfcAdapter;->lambda$enableForegroundDispatch$12(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    return-void
.end method
