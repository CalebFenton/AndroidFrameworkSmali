.class public Lcom/android/internal/telephony/CommandException;
.super Ljava/lang/RuntimeException;
.source "CommandException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CommandException$Error;
    }
.end annotation


# instance fields
.field private greylist-max-r mError:Lcom/android/internal/telephony/CommandException$Error;


# direct methods
.method public constructor greylist <init>(Lcom/android/internal/telephony/CommandException$Error;)V
    .registers 3

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/CommandException;->mError:Lcom/android/internal/telephony/CommandException$Error;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V
    .registers 3

    .line 154
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/android/internal/telephony/CommandException;->mError:Lcom/android/internal/telephony/CommandException$Error;

    return-void
.end method

.method public static greylist fromRilErrno(I)Lcom/android/internal/telephony/CommandException;
    .registers 3

    packed-switch p0, :pswitch_data_32a

    packed-switch p0, :pswitch_data_368

    packed-switch p0, :pswitch_data_3c2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized RIL errno "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GSM"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 342
    :pswitch_27
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 340
    :pswitch_2f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 338
    :pswitch_37
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 336
    :pswitch_3f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 334
    :pswitch_47
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_21:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 332
    :pswitch_4f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_20:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 330
    :pswitch_57
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_19:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 328
    :pswitch_5f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_18:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 326
    :pswitch_67
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_17:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 324
    :pswitch_6f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_16:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 322
    :pswitch_77
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_15:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 320
    :pswitch_7f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_14:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 318
    :pswitch_87
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_13:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 316
    :pswitch_8f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_12:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 314
    :pswitch_97
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_11:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 312
    :pswitch_9f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_10:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 310
    :pswitch_a7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_9:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 308
    :pswitch_af
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_8:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 306
    :pswitch_b7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_7:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 304
    :pswitch_bf
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 302
    :pswitch_c7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_5:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 300
    :pswitch_cf
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_4:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 298
    :pswitch_d7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 296
    :pswitch_df
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 294
    :pswitch_e7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 354
    :pswitch_ef
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NO_RF_CALIBRATION_INFO:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 352
    :pswitch_f7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RF_HARDWARE_ISSUE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 350
    :pswitch_ff
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->BLOCKED_DUE_TO_CALL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 348
    :pswitch_107
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->ACCESS_BARRED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 346
    :pswitch_10f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 292
    :pswitch_117
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 290
    :pswitch_11f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->ABORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 288
    :pswitch_127
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->DEVICE_IN_USE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 286
    :pswitch_12f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NO_NETWORK_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 284
    :pswitch_137
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NO_SUBSCRIPTION:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 282
    :pswitch_13f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NOT_PROVISIONED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 280
    :pswitch_147
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NETWORK_NOT_READY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 278
    :pswitch_14f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ENTRY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 276
    :pswitch_157
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SMSC_ADDRESS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 274
    :pswitch_15f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->ENCODING_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 272
    :pswitch_167
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SMS_FORMAT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 270
    :pswitch_16f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->EMPTY_RECORD:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 268
    :pswitch_177
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 266
    :pswitch_17f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NETWORK_REJECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 264
    :pswitch_187
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 262
    :pswitch_18f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_BUSY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 260
    :pswitch_197
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_RATE_LIMITED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 258
    :pswitch_19f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NETWORK_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 256
    :pswitch_1a7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NO_SMS_TO_ACK:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 254
    :pswitch_1af
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_CALL_ID:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 252
    :pswitch_1b7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_MODEM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 250
    :pswitch_1bf
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 248
    :pswitch_1c7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_ARGUMENTS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 246
    :pswitch_1cf
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 244
    :pswitch_1d7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NO_RESOURCES:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 242
    :pswitch_1df
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_STATE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 240
    :pswitch_1e7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->MODEM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 238
    :pswitch_1ef
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SYSTEM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 236
    :pswitch_1f7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INTERNAL_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 234
    :pswitch_1ff
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NO_MEMORY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 232
    :pswitch_207
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->LCE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 230
    :pswitch_20f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_CONNECT_OK_CALL_ONGOING:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 228
    :pswitch_217
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_MSG_SIZE_TOO_SMALL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 226
    :pswitch_21f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_MSG_SIZE_TOO_LARGE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 224
    :pswitch_227
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_CONNECT_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 222
    :pswitch_22f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_DATA_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 220
    :pswitch_237
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_ALREADY_POWERED_ON:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 218
    :pswitch_23f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_ALREADY_POWERED_OFF:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 216
    :pswitch_247
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 198
    :pswitch_24f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 214
    :pswitch_257
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 212
    :pswitch_25f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 210
    :pswitch_267
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 208
    :pswitch_26f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 206
    :pswitch_277
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 204
    :pswitch_27f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 202
    :pswitch_287
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 200
    :pswitch_28f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 196
    :pswitch_297
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 194
    :pswitch_29f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 192
    :pswitch_2a7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 190
    :pswitch_2af
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 188
    :pswitch_2b7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 186
    :pswitch_2bf
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 184
    :pswitch_2c7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 182
    :pswitch_2cf
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 180
    :pswitch_2d7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 178
    :pswitch_2df
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 344
    :pswitch_2e7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_CANCELLED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 176
    :pswitch_2ef
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 174
    :pswitch_2f7
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 172
    :pswitch_2ff
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 170
    :pswitch_307
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 168
    :pswitch_30f
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    .line 166
    :pswitch_317
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    :pswitch_31f
    const/4 p0, 0x0

    return-object p0

    .line 164
    :pswitch_321
    new-instance p0, Lcom/android/internal/telephony/CommandException;

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object p0

    nop

    :pswitch_data_32a
    .packed-switch -0x1
        :pswitch_321
        :pswitch_31f
        :pswitch_317
        :pswitch_30f
        :pswitch_307
        :pswitch_2ff
        :pswitch_2f7
        :pswitch_2ef
        :pswitch_2e7
        :pswitch_2df
        :pswitch_2d7
        :pswitch_2cf
        :pswitch_2c7
        :pswitch_2bf
        :pswitch_2b7
        :pswitch_2af
        :pswitch_2a7
        :pswitch_29f
        :pswitch_297
        :pswitch_28f
        :pswitch_287
        :pswitch_27f
        :pswitch_277
        :pswitch_26f
        :pswitch_267
        :pswitch_25f
        :pswitch_257
        :pswitch_24f
        :pswitch_247
    .end packed-switch

    :pswitch_data_368
    .packed-switch 0x1d
        :pswitch_23f
        :pswitch_237
        :pswitch_22f
        :pswitch_227
        :pswitch_21f
        :pswitch_217
        :pswitch_20f
        :pswitch_207
        :pswitch_1ff
        :pswitch_1f7
        :pswitch_1ef
        :pswitch_1e7
        :pswitch_1df
        :pswitch_1d7
        :pswitch_1cf
        :pswitch_1c7
        :pswitch_1bf
        :pswitch_1b7
        :pswitch_1af
        :pswitch_1a7
        :pswitch_19f
        :pswitch_197
        :pswitch_18f
        :pswitch_187
        :pswitch_17f
        :pswitch_177
        :pswitch_16f
        :pswitch_167
        :pswitch_15f
        :pswitch_157
        :pswitch_14f
        :pswitch_147
        :pswitch_13f
        :pswitch_137
        :pswitch_12f
        :pswitch_127
        :pswitch_11f
        :pswitch_117
        :pswitch_10f
        :pswitch_107
        :pswitch_ff
        :pswitch_f7
        :pswitch_ef
    .end packed-switch

    :pswitch_data_3c2
    .packed-switch 0x1f5
        :pswitch_e7
        :pswitch_df
        :pswitch_d7
        :pswitch_cf
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_a7
        :pswitch_9f
        :pswitch_97
        :pswitch_8f
        :pswitch_87
        :pswitch_7f
        :pswitch_77
        :pswitch_6f
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_37
        :pswitch_2f
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public greylist getCommandError()Lcom/android/internal/telephony/CommandException$Error;
    .registers 1

    .line 363
    iget-object p0, p0, Lcom/android/internal/telephony/CommandException;->mError:Lcom/android/internal/telephony/CommandException$Error;

    return-object p0
.end method
