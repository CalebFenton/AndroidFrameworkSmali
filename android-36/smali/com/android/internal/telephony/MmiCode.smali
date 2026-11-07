.class public interface abstract Lcom/android/internal/telephony/MmiCode;
.super Ljava/lang/Object;
.source "MmiCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MmiCode$State;
    }
.end annotation


# static fields
.field public static final blacklist MATCH_GROUP_CDMA_MMI_CODE_NUMBER:I = 0x3

.field public static final blacklist MATCH_GROUP_CDMA_MMI_CODE_NUMBER_PREFIX:I = 0x2

.field public static final blacklist MATCH_GROUP_CDMA_MMI_CODE_SERVICE_CODE:I = 0x1

.field public static final blacklist sPatternCdmaMmiCodeWhileRoaming:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    const-string v0, "\\*(\\d{2})(\\+{0,1})(\\d{0,})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/MmiCode;->sPatternCdmaMmiCodeWhileRoaming:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public abstract blacklist cancel()V
.end method

.method public abstract blacklist getDialString()Ljava/lang/String;
.end method

.method public abstract blacklist getMessage()Ljava/lang/CharSequence;
.end method

.method public abstract greylist getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public abstract blacklist getState()Lcom/android/internal/telephony/MmiCode$State;
.end method

.method public abstract blacklist getUssdCallbackReceiver()Landroid/os/ResultReceiver;
.end method

.method public abstract blacklist isCancelable()Z
.end method

.method public abstract blacklist isNetworkInitiatedUssd()Z
.end method

.method public abstract blacklist isPinPukCommand()Z
.end method

.method public abstract blacklist isUssdRequest()Z
.end method

.method public abstract blacklist processCode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method
