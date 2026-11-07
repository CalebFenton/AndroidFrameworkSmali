.class public Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;
.super Ljava/lang/Object;
.source "TelephonyAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/analytics/TelephonyAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsMmsAnalytics"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SmsMmsAnalytics"


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;


# direct methods
.method public static synthetic blacklist $r8$lambda$3P5S3wjvpzidkFxzGYF-4dwZLtY(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->lambda$sendDataToProvider$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 884
    iput-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getIncomingError(I)I
    .registers 4

    .line 0
    const/4 v0, -0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v2, 0x4

    if-eq p0, v2, :cond_d

    return v0

    :cond_d
    return v1

    :cond_e
    const/4 p0, 0x2

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getIncomingSmsErrorString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    .line 1026
    const-string p0, "INCOMING_SMS__ERROR__SMS_ERROR_GENERIC"

    return-object p0

    .line 1023
    :cond_f
    const-string p0, "INCOMING_SMS__ERROR__SMS_ERROR_NOT_SUPPORTED"

    return-object p0

    .line 1021
    :cond_12
    const-string p0, "INCOMING_SMS__ERROR__SMS_ERROR_NO_MEMORY"

    return-object p0

    .line 1019
    :cond_15
    const-string p0, "INCOMING_SMS__ERROR__SMS_SUCCESS"

    return-object p0
.end method

.method private blacklist getRat(I)I
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    move v1, v0

    .line 1045
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getRat(Z)I

    move-result p0

    return p0
.end method

.method private blacklist getRat(Z)I
    .registers 3

    if-eqz p1, :cond_10

    .line 1051
    iget-object p1, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget-object p1, p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    const/16 p0, 0x12

    return p0

    .line 1056
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 1058
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getServiceState()Landroid/telephony/ServiceState;
    .registers 4

    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget-object v0, v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1033
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_13

    .line 1034
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1036
    :cond_13
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 1037
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getSmsFailureReasonString(I)Ljava/lang/String;
    .registers 2

    packed-switch p1, :pswitch_data_e2

    packed-switch p1, :pswitch_data_10a

    packed-switch p1, :pswitch_data_12c

    .line 1207
    const-string p0, "NA"

    return-object p0

    .line 1205
    :pswitch_c
    const-string p0, "RESULT_RIL_ABORTED"

    return-object p0

    .line 1203
    :pswitch_f
    const-string p0, "RESULT_RIL_DEVICE_IN_USE"

    return-object p0

    .line 1201
    :pswitch_12
    const-string p0, "RESULT_RIL_NO_NETWORK_FOUND"

    return-object p0

    .line 1199
    :pswitch_15
    const-string p0, "RESULT_RIL_NO_SUBSCRIPTION"

    return-object p0

    .line 1197
    :pswitch_18
    const-string p0, "RESULT_RIL_SIM_FULL"

    return-object p0

    .line 1195
    :pswitch_1b
    const-string p0, "RESULT_RIL_SIM_BUSY"

    return-object p0

    .line 1193
    :pswitch_1e
    const-string p0, "RESULT_RIL_NO_SMS_TO_ACK"

    return-object p0

    .line 1191
    :pswitch_21
    const-string p0, "RESULT_RIL_INVALID_SIM_STATE"

    return-object p0

    .line 1189
    :pswitch_24
    const-string p0, "RESULT_RIL_SIM_ERROR"

    return-object p0

    .line 1187
    :pswitch_27
    const-string p0, "RESULT_RIL_SUBSCRIPTION_NOT_AVAILABLE"

    return-object p0

    .line 1185
    :pswitch_2a
    const-string p0, "RESULT_RIL_SIM_PUK2"

    return-object p0

    .line 1183
    :pswitch_2d
    const-string p0, "RESULT_RIL_SIM_PIN2"

    return-object p0

    .line 1181
    :pswitch_30
    const-string p0, "RESULT_RIL_INVALID_RESPONSE"

    return-object p0

    .line 1179
    :pswitch_33
    const-string p0, "RESULT_RIL_GENERIC_ERROR"

    return-object p0

    .line 1177
    :pswitch_36
    const-string p0, "RESULT_RIL_BLOCKED_DUE_TO_CALL"

    return-object p0

    .line 1175
    :pswitch_39
    const-string p0, "RESULT_RIL_ACCESS_BARRED"

    return-object p0

    .line 1173
    :pswitch_3c
    const-string p0, "RESULT_RIL_SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED"

    return-object p0

    .line 1171
    :pswitch_3f
    const-string p0, "RESULT_RIL_SIM_ABSENT"

    return-object p0

    .line 1169
    :pswitch_42
    const-string p0, "RESULT_RIL_CANCELLED"

    return-object p0

    .line 1167
    :pswitch_45
    const-string p0, "RESULT_RIL_NO_RESOURCES"

    return-object p0

    .line 1165
    :pswitch_48
    const-string p0, "RESULT_RIL_OPERATION_NOT_ALLOWED"

    return-object p0

    .line 1163
    :pswitch_4b
    const-string p0, "RESULT_RIL_NETWORK_NOT_READY"

    return-object p0

    .line 1161
    :pswitch_4e
    const-string p0, "RESULT_RIL_INVALID_MODEM_STATE"

    return-object p0

    .line 1159
    :pswitch_51
    const-string p0, "RESULT_RIL_REQUEST_NOT_SUPPORTED"

    return-object p0

    .line 1157
    :pswitch_54
    const-string p0, "RESULT_RIL_INTERNAL_ERR"

    return-object p0

    .line 1155
    :pswitch_57
    const-string p0, "RESULT_RIL_NETWORK_ERR"

    return-object p0

    .line 1153
    :pswitch_5a
    const-string p0, "RESULT_RIL_MODEM_ERR"

    return-object p0

    .line 1151
    :pswitch_5d
    const-string p0, "RESULT_RIL_INVALID_SMSC_ADDRESS"

    return-object p0

    .line 1149
    :pswitch_60
    const-string p0, "RESULT_RIL_ENCODING_ERR"

    return-object p0

    .line 1147
    :pswitch_63
    const-string p0, "RESULT_RIL_SYSTEM_ERR"

    return-object p0

    .line 1145
    :pswitch_66
    const-string p0, "RESULT_RIL_INVALID_SMS_FORMAT"

    return-object p0

    .line 1143
    :pswitch_69
    const-string p0, "RESULT_RIL_REQUEST_RATE_LIMITED"

    return-object p0

    .line 1141
    :pswitch_6c
    const-string p0, "RESULT_RIL_NO_MEMORY"

    return-object p0

    .line 1139
    :pswitch_6f
    const-string p0, "RESULT_RIL_INVALID_ARGUMENTS"

    return-object p0

    .line 1137
    :pswitch_72
    const-string p0, "RESULT_RIL_INVALID_STATE"

    return-object p0

    .line 1135
    :pswitch_75
    const-string p0, "RESULT_RIL_NETWORK_REJECT"

    return-object p0

    .line 1133
    :pswitch_78
    const-string p0, "RESULT_RIL_SMS_SEND_FAIL_RETRY"

    return-object p0

    .line 1131
    :pswitch_7b
    const-string p0, "RESULT_RIL_RADIO_NOT_AVAILABLE"

    return-object p0

    .line 1129
    :pswitch_7e
    const-string p0, "RESULT_USER_NOT_ALLOWED"

    return-object p0

    .line 1127
    :pswitch_81
    const-string p0, "RESULT_NO_DEFAULT_SMS_APP"

    return-object p0

    .line 1125
    :pswitch_84
    const-string p0, "RESULT_REMOTE_EXCEPTION"

    return-object p0

    .line 1123
    :pswitch_87
    const-string p0, "RESULT_SMS_SEND_RETRY_FAILED"

    return-object p0

    .line 1121
    :pswitch_8a
    const-string p0, "RESULT_SMS_BLOCKED_DURING_EMERGENCY"

    return-object p0

    .line 1119
    :pswitch_8d
    const-string p0, "RESULT_UNEXPECTED_EVENT_STOP_SENDING"

    return-object p0

    .line 1117
    :pswitch_90
    const-string p0, "RESULT_BLUETOOTH_DISCONNECTED"

    return-object p0

    .line 1115
    :pswitch_93
    const-string p0, "RESULT_INVALID_BLUETOOTH_ADDRESS"

    return-object p0

    .line 1113
    :pswitch_96
    const-string p0, "RESULT_NO_BLUETOOTH_SERVICE"

    return-object p0

    .line 1111
    :pswitch_99
    const-string p0, "RESULT_REQUEST_NOT_SUPPORTED"

    return-object p0

    .line 1109
    :pswitch_9c
    const-string p0, "RESULT_CANCELLED"

    return-object p0

    .line 1107
    :pswitch_9f
    const-string p0, "RESULT_NO_RESOURCES"

    return-object p0

    .line 1105
    :pswitch_a2
    const-string p0, "RESULT_INTERNAL_ERROR"

    return-object p0

    .line 1103
    :pswitch_a5
    const-string p0, "RESULT_OPERATION_NOT_ALLOWED"

    return-object p0

    .line 1101
    :pswitch_a8
    const-string p0, "RESULT_INVALID_SMSC_ADDRESS"

    return-object p0

    .line 1099
    :pswitch_ab
    const-string p0, "RESULT_NETWORK_ERROR"

    return-object p0

    .line 1097
    :pswitch_ae
    const-string p0, "RESULT_MODEM_ERROR"

    return-object p0

    .line 1095
    :pswitch_b1
    const-string p0, "RESULT_SYSTEM_ERROR"

    return-object p0

    .line 1093
    :pswitch_b4
    const-string p0, "RESULT_INVALID_SMS_FORMAT"

    return-object p0

    .line 1091
    :pswitch_b7
    const-string p0, "RESULT_NO_MEMORY"

    return-object p0

    .line 1089
    :pswitch_ba
    const-string p0, "RESULT_INVALID_STATE"

    return-object p0

    .line 1087
    :pswitch_bd
    const-string p0, "RESULT_INVALID_ARGUMENTS"

    return-object p0

    .line 1085
    :pswitch_c0
    const-string p0, "RESULT_NETWORK_REJECT"

    return-object p0

    .line 1083
    :pswitch_c3
    const-string p0, "RESULT_RADIO_NOT_AVAILABLE"

    return-object p0

    .line 1081
    :pswitch_c6
    const-string p0, "RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED"

    return-object p0

    .line 1079
    :pswitch_c9
    const-string p0, "RESULT_ERROR_SHORT_CODE_NOT_ALLOWED"

    return-object p0

    .line 1077
    :pswitch_cc
    const-string p0, "RESULT_ERROR_FDN_CHECK_FAILURE"

    return-object p0

    .line 1075
    :pswitch_cf
    const-string p0, "RESULT_ERROR_LIMIT_EXCEEDED"

    return-object p0

    .line 1073
    :pswitch_d2
    const-string p0, "RESULT_ERROR_NO_SERVICE"

    return-object p0

    .line 1071
    :pswitch_d5
    const-string p0, "RESULT_ERROR_NULL_PDU"

    return-object p0

    .line 1069
    :pswitch_d8
    const-string p0, "RESULT_ERROR_RADIO_OFF"

    return-object p0

    .line 1067
    :pswitch_db
    const-string p0, "RESULT_ERROR_GENERIC_FAILURE"

    return-object p0

    .line 1065
    :pswitch_de
    const-string p0, "RESULT_ERROR_NONE"

    return-object p0

    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_cc
        :pswitch_c9
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x13
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x64
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
    .end packed-switch
.end method

.method private synthetic blacklist lambda$sendDataToProvider$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 996
    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->mSmsMmsAnalyticsProvider:Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/analytics/SmsMmsAnalyticsProvider;->insertDataToDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logIncomingSms(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 969
    const-string v0, "SMS Incoming"

    .line 971
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getRat(I)I

    move-result p1

    .line 972
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-direct {p0, p2, v0, v1, p3}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->sendDataToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    sget-object v2, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SlotInfo ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Type = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Status = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " RAT "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ) Failure Reason = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_51} :catch_52

    return-void

    :catch_52
    move-exception p0

    .line 989
    sget-object p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logOutgoingSms(ZI)V
    .registers 9

    .line 940
    :try_start_0
    const-string v0, "SMS Outgoing"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_67

    .line 941
    const-string v1, "Success"

    if-nez p2, :cond_8

    move-object v2, v1

    goto :goto_a

    :cond_8
    :try_start_8
    const-string v2, "Failure"

    .line 942
    :goto_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getRat(Z)I

    move-result p1

    .line 943
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 945
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string p2, "NA"

    goto :goto_1f

    :cond_1b
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getSmsFailureReasonString(I)Ljava/lang/String;

    move-result-object p2

    .line 946
    :goto_1f
    sget-object v1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SlotInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "RAT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Failure Reason = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-direct {p0, v2, v0, v3, p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->sendDataToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_66} :catch_67

    return-void

    :catch_67
    move-exception p0

    .line 963
    sget-object p1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in SmsLogs"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist sendDataToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 995
    iget-object v0, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmExecutorService(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics$$ExternalSyntheticLambda0;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onDroppedIncomingMultipartSms()V
    .registers 5

    const/4 v0, 0x0

    .line 915
    invoke-static {v0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v0

    .line 916
    const-string v1, "INCOMING_SMS__ERROR__SMS_ERROR_GENERIC"

    .line 917
    const-string v2, "Failure"

    const-string v3, "SMS Incoming"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->sendDataToProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onIncomingSmsError(II)V
    .registers 6

    .line 923
    invoke-static {p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getIncomingSmsErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 924
    const-string v1, "Failure"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->logIncomingSms(ILjava/lang/String;Ljava/lang/String;)V

    .line 925
    sget-object p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " smsSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Result = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "IncomingError = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-static {p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->getIncomingError(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 925
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onIncomingSmsSuccess(I)V
    .registers 5

    .line 903
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " smsSource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const-string v0, "Success"

    .line 905
    const-string v1, "NA"

    .line 906
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->logIncomingSms(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onOutgoingSms(ZI)V
    .registers 6

    .line 890
    sget-object v0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is Over Ims = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sendErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "SlotInfo ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->this$0:Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    invoke-static {v2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->-$$Nest$fgetmSlotIndex(Lcom/android/internal/telephony/analytics/TelephonyAnalytics;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->logOutgoingSms(ZI)V

    return-void
.end method
