.class public final Landroid/telephony/gsm/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist RESULT_ERROR_GENERIC_FAILURE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RESULT_ERROR_NO_SERVICE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RESULT_ERROR_NULL_PDU:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RESULT_ERROR_RADIO_OFF:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_ON_SIM_FREE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_ON_SIM_READ:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_ON_SIM_SENT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_ON_SIM_UNREAD:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATUS_ON_SIM_UNSENT:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static greylist-max-o sInstance:Landroid/telephony/gsm/SmsManager;


# instance fields
.field private greylist-max-o mSmsMgrProxy:Landroid/telephony/SmsManager;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    return-void
.end method

.method public static final whitelist getDefault()Landroid/telephony/gsm/SmsManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    sget-object v0, Landroid/telephony/gsm/SmsManager;->sInstance:Landroid/telephony/gsm/SmsManager;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Landroid/telephony/gsm/SmsManager;

    invoke-direct {v0}, Landroid/telephony/gsm/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/gsm/SmsManager;->sInstance:Landroid/telephony/gsm/SmsManager;

    .line 43
    :cond_b
    sget-object v0, Landroid/telephony/gsm/SmsManager;->sInstance:Landroid/telephony/gsm/SmsManager;

    return-object v0
.end method


# virtual methods
.method public final greylist-max-o copyMessageToSim([B[BI)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 181
    iget-object p0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result p0

    return p0
.end method

.method public final greylist-max-o deleteMessageFromSim(I)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    iget-object p0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z

    move-result p0

    return p0
.end method

.method public final whitelist divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iget-object p0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {p0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final greylist-max-o getAllMessagesFromSim()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-object p0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual/range {p0 .. p6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    iget-object p0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual/range {p0 .. p5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final whitelist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iget-object p0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual/range {p0 .. p5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final greylist-max-o updateMessageOnSim(II[B)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    iget-object p0, p0, Landroid/telephony/gsm/SmsManager;->mSmsMgrProxy:Landroid/telephony/SmsManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->updateMessageOnIcc(II[B)Z

    move-result p0

    return p0
.end method
