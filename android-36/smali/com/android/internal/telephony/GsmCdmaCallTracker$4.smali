.class synthetic Lcom/android/internal/telephony/GsmCdmaCallTracker$4;
.super Ljava/lang/Object;
.source "GsmCdmaCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$CommandException$Error:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1578
    invoke-static {}, Lcom/android/internal/telephony/CommandException$Error;->values()[Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/GsmCdmaCallTracker$4;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaCallTracker$4;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_MEMORY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaCallTracker$4;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INTERNAL_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/internal/telephony/GsmCdmaCallTracker$4;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_RESOURCES:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
