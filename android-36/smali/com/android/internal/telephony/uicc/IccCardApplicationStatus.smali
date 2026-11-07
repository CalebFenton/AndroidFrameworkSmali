.class public Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
.super Ljava/lang/Object;
.source "IccCardApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;,
        Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;,
        Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    }
.end annotation


# instance fields
.field public blacklist aid:Ljava/lang/String;

.field public blacklist app_label:Ljava/lang/String;

.field public blacklist app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public greylist-max-r app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

.field public blacklist perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public blacklist pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public blacklist pin1_replaced:Z

.field public blacklist pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 296
    const-string p0, "IccCardApplicationStatus"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .registers 5

    if-eqz p1, :cond_3c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_39

    const/4 v0, 0x2

    if-eq p1, v0, :cond_36

    const/4 v0, 0x3

    if-eq p1, v0, :cond_33

    const/4 v0, 0x4

    if-eq p1, v0, :cond_30

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2d

    .line 195
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppStateFromRILInt: bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " use APPSTATE_UNKNOWN"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->loge(Ljava/lang/String;)V

    return-object v0

    .line 193
    :cond_2d
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object p0

    .line 192
    :cond_30
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object p0

    .line 191
    :cond_33
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object p0

    .line 190
    :cond_36
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object p0

    .line 189
    :cond_39
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object p0

    .line 188
    :cond_3c
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    return-object p0
.end method

.method public greylist-max-r AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .registers 5

    if-eqz p1, :cond_3c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_39

    const/4 v0, 0x2

    if-eq p1, v0, :cond_36

    const/4 v0, 0x3

    if-eq p1, v0, :cond_33

    const/4 v0, 0x4

    if-eq p1, v0, :cond_30

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2d

    .line 178
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppTypeFromRILInt: bad RIL_AppType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " use APPTYPE_UNKNOWN"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->loge(Ljava/lang/String;)V

    return-object v0

    .line 176
    :cond_2d
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    return-object p0

    .line 175
    :cond_30
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    return-object p0

    .line 174
    :cond_33
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    return-object p0

    .line 173
    :cond_36
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    return-object p0

    .line 172
    :cond_39
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    return-object p0

    .line 171
    :cond_3c
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    return-object p0
.end method

.method public blacklist PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .registers 5

    packed-switch p1, :pswitch_data_88

    .line 242
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersoSubstateFromRILInt: bad substate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " use PERSOSUBSTATE_UNKNOWN"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->loge(Ljava/lang/String;)V

    return-object v0

    .line 239
    :pswitch_1f
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NS_SP_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 238
    :pswitch_22
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NS_SP:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 237
    :pswitch_25
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_IMPI_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 236
    :pswitch_28
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_IMPI:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 235
    :pswitch_2b
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_ICCID_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 234
    :pswitch_2e
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_ICCID:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 233
    :pswitch_31
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SP_EHPLMN_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 232
    :pswitch_34
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SP_EHPLMN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 231
    :pswitch_37
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SPN_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 230
    :pswitch_3a
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SPN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 229
    :pswitch_3d
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 228
    :pswitch_40
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 227
    :pswitch_43
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 226
    :pswitch_46
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 225
    :pswitch_49
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 224
    :pswitch_4c
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 223
    :pswitch_4f
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 222
    :pswitch_52
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 221
    :pswitch_55
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 220
    :pswitch_58
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 219
    :pswitch_5b
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 218
    :pswitch_5e
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 217
    :pswitch_61
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 216
    :pswitch_64
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 215
    :pswitch_67
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 214
    :pswitch_6a
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 213
    :pswitch_6d
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 212
    :pswitch_70
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 211
    :pswitch_73
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 210
    :pswitch_76
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 209
    :pswitch_79
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 208
    :pswitch_7c
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 207
    :pswitch_7f
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 206
    :pswitch_82
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    .line 205
    :pswitch_85
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object p0

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_55
        :pswitch_52
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method public blacklist PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .registers 5

    if-eqz p1, :cond_3c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_39

    const/4 v0, 0x2

    if-eq p1, v0, :cond_36

    const/4 v0, 0x3

    if-eq p1, v0, :cond_33

    const/4 v0, 0x4

    if-eq p1, v0, :cond_30

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2d

    .line 271
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PinStateFromRILInt: bad pin state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " use PINSTATE_UNKNOWN"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->loge(Ljava/lang/String;)V

    return-object v0

    .line 268
    :cond_2d
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object p0

    .line 265
    :cond_30
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object p0

    .line 262
    :cond_33
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object p0

    .line 259
    :cond_36
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object p0

    .line 256
    :cond_39
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object p0

    .line 253
    :cond_3c
    sget-object p0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v3, :cond_27

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    :cond_27
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_35

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_35

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_49

    .line 288
    :cond_35
    const-string v1, ",pin1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, ",pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    :cond_49
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
