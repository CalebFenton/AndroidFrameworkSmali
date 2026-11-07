.class public final Landroid/nfc/T4tNdefNfcee;
.super Ljava/lang/Object;
.source "T4tNdefNfcee.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/T4tNdefNfcee$ClearDataStatus;,
        Landroid/nfc/T4tNdefNfcee$WriteDataStatus;
    }
.end annotation


# static fields
.field public static final whitelist CLEAR_DATA_FAILED_DEVICE_BUSY:I = -0x1

.field public static final whitelist CLEAR_DATA_FAILED_INTERNAL:I = 0x0

.field public static final whitelist CLEAR_DATA_SUCCESS:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "NdefNfcee"

.field public static final whitelist WRITE_DATA_ERROR_CONNECTION_FAILED:I = -0x6

.field public static final whitelist WRITE_DATA_ERROR_DEVICE_BUSY:I = -0x9

.field public static final whitelist WRITE_DATA_ERROR_EMPTY_PAYLOAD:I = -0x7

.field public static final whitelist WRITE_DATA_ERROR_INTERNAL:I = -0x1

.field public static final whitelist WRITE_DATA_ERROR_INVALID_FILE_ID:I = -0x4

.field public static final whitelist WRITE_DATA_ERROR_INVALID_LENGTH:I = -0x5

.field public static final whitelist WRITE_DATA_ERROR_NDEF_VALIDATION_FAILED:I = -0x8

.field public static final whitelist WRITE_DATA_ERROR_NFC_NOT_ON:I = -0x3

.field public static final whitelist WRITE_DATA_ERROR_RF_ACTIVATED:I = -0x2

.field public static final whitelist WRITE_DATA_SUCCESS:I

.field static blacklist sNdefNfcee:Landroid/nfc/T4tNdefNfcee;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static blacklist getInstance()Landroid/nfc/T4tNdefNfcee;
    .registers 1

    .line 55
    sget-object v0, Landroid/nfc/T4tNdefNfcee;->sNdefNfcee:Landroid/nfc/T4tNdefNfcee;

    if-nez v0, :cond_b

    .line 56
    new-instance v0, Landroid/nfc/T4tNdefNfcee;

    invoke-direct {v0}, Landroid/nfc/T4tNdefNfcee;-><init>()V

    sput-object v0, Landroid/nfc/T4tNdefNfcee;->sNdefNfcee:Landroid/nfc/T4tNdefNfcee;

    .line 58
    :cond_b
    sget-object v0, Landroid/nfc/T4tNdefNfcee;->sNdefNfcee:Landroid/nfc/T4tNdefNfcee;

    return-object v0
.end method

.method static synthetic blacklist lambda$clearData$2()Ljava/lang/Integer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    invoke-static {}, Landroid/nfc/NfcAdapter;->getNdefNfceeService()Landroid/nfc/IT4tNdefNfcee;

    move-result-object v0

    invoke-interface {v0}, Landroid/nfc/IT4tNdefNfcee;->clearNdefData()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isOperationOngoing$3()Ljava/lang/Boolean;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    invoke-static {}, Landroid/nfc/NfcAdapter;->getNdefNfceeService()Landroid/nfc/IT4tNdefNfcee;

    move-result-object v0

    invoke-interface {v0}, Landroid/nfc/IT4tNdefNfcee;->isNdefOperationOngoing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isSupported$4()Ljava/lang/Boolean;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-static {}, Landroid/nfc/NfcAdapter;->getNdefNfceeService()Landroid/nfc/IT4tNdefNfcee;

    move-result-object v0

    invoke-interface {v0}, Landroid/nfc/IT4tNdefNfcee;->isNdefNfceeEmulationSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$readCcfile$5()Landroid/nfc/T4tNdefNfceeCcFileInfo;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/nfc/NfcAdapter;->getNdefNfceeService()Landroid/nfc/IT4tNdefNfcee;

    move-result-object v0

    invoke-interface {v0}, Landroid/nfc/IT4tNdefNfcee;->readCcfile()Landroid/nfc/T4tNdefNfceeCcFileInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$readData$1(I)[B
    .registers 2
    .param p0, "fileId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    invoke-static {}, Landroid/nfc/NfcAdapter;->getNdefNfceeService()Landroid/nfc/IT4tNdefNfcee;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/nfc/IT4tNdefNfcee;->readData(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$writeData$0(I[B)Ljava/lang/Integer;
    .registers 3
    .param p0, "fileId"    # I
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/nfc/NfcAdapter;->getNdefNfceeService()Landroid/nfc/IT4tNdefNfcee;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/nfc/IT4tNdefNfcee;->writeData(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist clearData()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 228
    new-instance v0, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda3;-><init>()V

    .line 229
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist isOperationOngoing()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 241
    new-instance v0, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda2;-><init>()V

    .line 242
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist isSupported()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 255
    new-instance v0, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda1;-><init>()V

    .line 256
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist readCcfile()Landroid/nfc/T4tNdefNfceeCcFileInfo;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 273
    new-instance v0, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/T4tNdefNfceeCcFileInfo;

    return-object v0
.end method

.method public whitelist readData(I)[B
    .registers 4
    .param p1, "fileId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 178
    new-instance v0, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda5;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist writeData(I[B)I
    .registers 5
    .param p1, "fileId"    # I
    .param p2, "data"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 154
    new-instance v0, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Landroid/nfc/T4tNdefNfcee$$ExternalSyntheticLambda4;-><init>(I[B)V

    .line 155
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 154
    invoke-static {v0, v1}, Landroid/nfc/NfcAdapter;->callServiceReturn(Landroid/nfc/NfcAdapter$ServiceCallReturn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
