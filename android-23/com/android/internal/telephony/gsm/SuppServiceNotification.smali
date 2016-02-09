.class public Lcom/android/internal/telephony/gsm/SuppServiceNotification;
.super Ljava/lang/Object;
.source "SuppServiceNotification.java"


# static fields
.field public static final MO_CODE_CALL_DEFLECTED:I = 0x8

.field public static final MO_CODE_CALL_FORWARDED:I = 0x2

.field public static final MO_CODE_CALL_IS_WAITING:I = 0x3

.field public static final MO_CODE_CLIR_SUPPRESSION_REJECTED:I = 0x7

.field public static final MO_CODE_CUG_CALL:I = 0x4

.field public static final MO_CODE_INCOMING_CALLS_BARRED:I = 0x6

.field public static final MO_CODE_OUTGOING_CALLS_BARRED:I = 0x5

.field public static final MO_CODE_SOME_CF_ACTIVE:I = 0x1

.field public static final MO_CODE_UNCONDITIONAL_CF_ACTIVE:I = 0x0

.field public static final MT_CODE_ADDITIONAL_CALL_FORWARDED:I = 0xa

.field public static final MT_CODE_CALL_CONNECTED_ECT:I = 0x8

.field public static final MT_CODE_CALL_CONNECTING_ECT:I = 0x7

.field public static final MT_CODE_CALL_ON_HOLD:I = 0x2

.field public static final MT_CODE_CALL_RETRIEVED:I = 0x3

.field public static final MT_CODE_CUG_CALL:I = 0x1

.field public static final MT_CODE_DEFLECTED_CALL:I = 0x9

.field public static final MT_CODE_FORWARDED_CALL:I = 0x0

.field public static final MT_CODE_FORWARD_CHECK_RECEIVED:I = 0x6

.field public static final MT_CODE_MULTI_PARTY_CALL:I = 0x4

.field public static final MT_CODE_ON_HOLD_CALL_RELEASED:I = 0x5


# instance fields
.field public code:I

.field public index:I

.field public notificationType:I

.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, " mobile"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 64
    iget v0, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    #@16
    if-nez v0, :cond_0

    #@18
    const-string/jumbo v0, " originated "

    #@1b
    .line 63
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 65
    const-string/jumbo v1, " code: "

    #@22
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 65
    iget v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    #@28
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 66
    const-string/jumbo v1, " index: "

    #@2f
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 66
    iget v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->index:I

    #@35
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 67
    const-string/jumbo v1, " \""

    #@3c
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 68
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    #@42
    iget v2, p0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->type:I

    #@44
    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 68
    const-string/jumbo v1, "\" "

    #@4f
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v0

    #@57
    return-object v0

    #@58
    .line 64
    :cond_0
    const-string/jumbo v0, " terminated "

    #@5b
    goto :goto_0
.end method
