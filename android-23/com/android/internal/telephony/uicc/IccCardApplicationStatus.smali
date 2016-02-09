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
.field public aid:Ljava/lang/String;

.field public app_label:Ljava/lang/String;

.field public app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

.field public app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

.field public perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

.field public pin1_replaced:I

.field public pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 233
    const-string/jumbo v0, "IccCardApplicationStatus"

    #@3
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 232
    return-void
.end method


# virtual methods
.method public AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 135
    packed-switch p1, :pswitch_data_0

    #@3
    .line 143
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@5
    .line 144
    .local v0, "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "AppStateFromRILInt: bad state: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " use APPSTATE_UNKNOWN"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->loge(Ljava/lang/String;)V

    #@23
    .line 146
    :goto_0
    return-object v0

    #@24
    .line 136
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@26
    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    #@27
    .line 137
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@29
    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    #@2a
    .line 138
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@2c
    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    #@2d
    .line 139
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@2f
    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    #@30
    .line 140
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@32
    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    #@33
    .line 141
    .end local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@35
    .restart local v0    # "newState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    goto :goto_0

    #@36
    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 118
    packed-switch p1, :pswitch_data_0

    #@3
    .line 126
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@5
    .line 127
    .local v0, "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "AppTypeFromRILInt: bad RIL_AppType: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " use APPTYPE_UNKNOWN"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->loge(Ljava/lang/String;)V

    #@23
    .line 129
    :goto_0
    return-object v0

    #@24
    .line 119
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@26
    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    #@27
    .line 120
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@29
    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    #@2a
    .line 121
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@2c
    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    #@2d
    .line 122
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@2f
    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    #@30
    .line 123
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@32
    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    #@33
    .line 124
    .end local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@35
    .restart local v0    # "newType":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    goto :goto_0

    #@36
    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 3
    .param p1, "substate"    # I

    #@0
    .prologue
    .line 152
    packed-switch p1, :pswitch_data_0

    #@3
    .line 179
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@5
    .line 180
    .local v0, "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "PersoSubstateFromRILInt: bad substate: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 181
    const-string/jumbo v2, " use PERSOSUBSTATE_UNKNOWN"

    #@18
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->loge(Ljava/lang/String;)V

    #@23
    .line 183
    :goto_0
    return-object v0

    #@24
    .line 153
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@26
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@27
    .line 154
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@29
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@2a
    .line 155
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@2c
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@2d
    .line 156
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@2f
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@30
    .line 157
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@32
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@33
    .line 158
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@35
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@36
    .line 159
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@38
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@39
    .line 160
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@3b
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@3c
    .line 161
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_8
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@3e
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@3f
    .line 162
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@41
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@42
    .line 163
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@44
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@45
    .line 164
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@47
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@48
    .line 165
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@4a
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@4b
    .line 166
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_d
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@4d
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@4e
    .line 167
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_e
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@50
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@51
    .line 168
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_f
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@53
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@54
    .line 169
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_10
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@56
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@57
    .line 170
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_11
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@59
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@5a
    .line 171
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_12
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@5c
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@5d
    .line 172
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_13
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@5f
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@60
    .line 173
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_14
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@62
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@63
    .line 174
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_15
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@65
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@66
    .line 175
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_16
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@68
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@69
    .line 176
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_17
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@6b
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@6c
    .line 177
    .end local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    :pswitch_18
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@6e
    .restart local v0    # "newSubState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    goto :goto_0

    #@6f
    .line 152
    nop

    #@70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    .locals 3
    .param p1, "state"    # I

    #@0
    .prologue
    .line 188
    packed-switch p1, :pswitch_data_0

    #@3
    .line 208
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@5
    .line 209
    .local v0, "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "PinStateFromRILInt: bad pin state: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    const-string/jumbo v2, " use PINSTATE_UNKNOWN"

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->loge(Ljava/lang/String;)V

    #@23
    .line 211
    :goto_0
    return-object v0

    #@24
    .line 190
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@26
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    #@27
    .line 193
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@29
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    #@2a
    .line 196
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@2c
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    #@2d
    .line 199
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@2f
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    #@30
    .line 202
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@32
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    #@33
    .line 205
    .end local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@35
    .restart local v0    # "newPinState":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    goto :goto_0

    #@36
    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 218
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, ","

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@20
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    #@22
    if-ne v1, v2, :cond_0

    #@24
    .line 220
    const-string/jumbo v1, ","

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    .line 222
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@32
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@34
    if-eq v1, v2, :cond_1

    #@36
    .line 223
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@38
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@3a
    if-ne v1, v2, :cond_3

    #@3c
    .line 225
    :cond_1
    :goto_0
    const-string/jumbo v1, ",pin1="

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    .line 226
    const-string/jumbo v1, ",pin2="

    #@4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    .line 228
    :cond_2
    const-string/jumbo v1, "}"

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    return-object v1

    #@5f
    .line 224
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@61
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    #@63
    if-ne v1, v2, :cond_2

    #@65
    goto :goto_0
.end method
