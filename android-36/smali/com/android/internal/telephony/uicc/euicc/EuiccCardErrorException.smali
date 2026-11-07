.class public Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;
.super Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;
.source "EuiccCardErrorException.java"


# static fields
.field public static final blacklist OPERATION_AUTHENTICATE_SERVER:I = 0x3

.field public static final blacklist OPERATION_CANCEL_SESSION:I = 0x4

.field public static final blacklist OPERATION_DELETE_PROFILE:I = 0xc

.field public static final blacklist OPERATION_DISABLE_PROFILE:I = 0xb

.field public static final blacklist OPERATION_GET_PROFILE:I = 0x1

.field public static final blacklist OPERATION_LIST_NOTIFICATIONS:I = 0x6

.field public static final blacklist OPERATION_LOAD_BOUND_PROFILE_PACKAGE:I = 0x5

.field public static final blacklist OPERATION_PREPARE_DOWNLOAD:I = 0x2

.field public static final blacklist OPERATION_REMOVE_NOTIFICATION_FROM_LIST:I = 0x9

.field public static final blacklist OPERATION_RESET_MEMORY:I = 0xd

.field public static final blacklist OPERATION_RETRIEVE_NOTIFICATION:I = 0x8

.field public static final blacklist OPERATION_SET_DEFAULT_SMDP_ADDRESS:I = 0xe

.field public static final blacklist OPERATION_SET_NICKNAME:I = 0x7

.field public static final blacklist OPERATION_SWITCH_TO_PROFILE:I = 0xa

.field public static final blacklist OPERATION_UNKNOWN:I


# instance fields
.field private final blacklist mErrorCode:I

.field private final blacklist mErrorDetails:Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

.field private final blacklist mOperationCode:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3

    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>()V

    .line 82
    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mOperationCode:I

    .line 83
    iput p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorCode:I

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorDetails:Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    return-void
.end method

.method public constructor blacklist <init>(IILcom/android/internal/telephony/uicc/asn1/Asn1Node;)V
    .registers 4

    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>()V

    .line 97
    iput p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mOperationCode:I

    .line 98
    iput p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorCode:I

    .line 99
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorDetails:Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    return-void
.end method


# virtual methods
.method public blacklist getErrorCode()I
    .registers 1

    .line 104
    iget p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorCode:I

    return p0
.end method

.method public blacklist getErrorDetails()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorDetails:Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    return-object p0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .registers 3

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EuiccCardError: mOperatorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mOperationCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mErrorDetails:Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    if-nez p0, :cond_25

    const-string p0, "null"

    goto :goto_29

    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    :goto_29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOperationCode()I
    .registers 1

    .line 109
    iget p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;->mOperationCode:I

    return p0
.end method
