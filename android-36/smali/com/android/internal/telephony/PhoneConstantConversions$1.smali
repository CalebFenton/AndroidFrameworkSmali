.class synthetic Lcom/android/internal/telephony/PhoneConstantConversions$1;
.super Ljava/lang/Object;
.source "PhoneConstantConversions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConstantConversions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

.field static final synthetic blacklist $SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 59
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$DataState;->values()[Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    :try_start_23
    sget-object v2, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v2

    :goto_30
    :try_start_30
    sget-object v2, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v2

    .line 29
    :goto_3d
    invoke-static {}, Lcom/android/internal/telephony/PhoneConstants$State;->values()[Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    :try_start_46
    sget-object v2, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move-exception v0

    :goto_52
    :try_start_52
    sget-object v0, Lcom/android/internal/telephony/PhoneConstantConversions$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v0

    :goto_5e
    return-void
.end method
