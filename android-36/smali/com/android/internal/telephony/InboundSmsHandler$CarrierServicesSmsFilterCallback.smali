.class final Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarrierServicesSmsFilterCallback"
.end annotation


# instance fields
.field private final blacklist mBlock:Z

.field private final blacklist mDestPort:I

.field private final blacklist mIsClass0:Z

.field private final blacklist mMessageId:J

.field private final blacklist mPdus:[[B

.field private final blacklist mRemainingFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

.field private final blacklist mSmsFormat:Ljava/lang/String;

.field private final blacklist mSubId:I

.field private final blacklist mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

.field private final blacklist mUserUnlocked:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZIJZLjava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[BI",
            "Lcom/android/internal/telephony/InboundSmsTracker;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;",
            "ZZIJZ",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;)V"
        }
    .end annotation

    .line 1930
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1931
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    .line 1932
    iput p3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    .line 1933
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1934
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsFormat:Ljava/lang/String;

    .line 1935
    iput-object p6, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .line 1936
    iput-boolean p7, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    .line 1937
    iput-boolean p8, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mIsClass0:Z

    .line 1938
    iput p9, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSubId:I

    .line 1939
    iput-wide p10, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mMessageId:J

    .line 1940
    iput-boolean p12, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mBlock:Z

    .line 1941
    iput-object p13, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mRemainingFilters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist onFilterComplete(I)V
    .registers 13

    .line 1946
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFilterComplete: result is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2c

    .line 1953
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    iget-boolean p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mBlock:Z

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mdropFilteredSms(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    return-void

    .line 1957
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    iget-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    iget-boolean v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mBlock:Z

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mRemainingFilters:Ljava/util/List;

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$smfilterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_41

    return-void

    .line 1965
    :cond_41
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mBlock:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_69

    .line 1969
    iget-boolean p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    if-eqz p1, :cond_63

    .line 1970
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    .line 1971
    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    .line 1970
    const-string v2, "onFilterComplete: dropping message as the sender is blocked"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    .line 1972
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mTracker:Lcom/android/internal/telephony/InboundSmsTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    iget-boolean p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mBlock:Z

    invoke-static {p1, v0, v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mdropFilteredSms(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    return-void

    .line 1975
    :cond_63
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void

    .line 1981
    :cond_69
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mUserUnlocked:Z

    if-eqz v0, :cond_81

    .line 1982
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mPdus:[[B

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsFormat:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mDestPort:I

    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSmsBroadcastReceiver:Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    iget-boolean v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mIsClass0:Z

    iget v8, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mSubId:I

    iget-wide v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->mMessageId:J

    invoke-static/range {v2 .. v10}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mdispatchSmsDeliveryIntent(Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZIJ)V

    return-void

    .line 1989
    :cond_81
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$misSkipNotifyFlagSet(Lcom/android/internal/telephony/InboundSmsHandler;I)Z

    move-result p1

    if-nez p1, :cond_8e

    .line 1990
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->-$$Nest$mshowNewMessageNotification(Lcom/android/internal/telephony/InboundSmsHandler;)V

    .line 1992
    :cond_8e
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method
