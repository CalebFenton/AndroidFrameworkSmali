.class final enum Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;
.super Ljava/lang/Enum;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HoldSwapState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum blacklist HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum blacklist HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum blacklist INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum blacklist PENDING_RESUME_FOREGROUND_AFTER_FAILURE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum blacklist PENDING_RESUME_FOREGROUND_AFTER_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum blacklist PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum blacklist PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum blacklist SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;
    .registers 8

    .line 684
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v4, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v5, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_FAILURE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    filled-new-array/range {v0 .. v7}, [Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 686
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 688
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const-string v1, "PENDING_SINGLE_CALL_HOLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 690
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const-string v1, "PENDING_SINGLE_CALL_UNHOLD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 692
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const-string v1, "SWAPPING_ACTIVE_AND_HELD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 694
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const-string v1, "HOLDING_TO_ANSWER_INCOMING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 696
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const-string v1, "PENDING_RESUME_FOREGROUND_AFTER_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_FAILURE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 698
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const-string v1, "HOLDING_TO_DIAL_OUTGOING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 700
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const-string v1, "PENDING_RESUME_FOREGROUND_AFTER_HOLD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 684
    invoke-static {}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->$values()[Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->$VALUES:[Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 684
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 684
    const-class v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    return-object p0
.end method

.method public static blacklist values()[Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;
    .registers 1

    .line 684
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->$VALUES:[Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    return-object v0
.end method
