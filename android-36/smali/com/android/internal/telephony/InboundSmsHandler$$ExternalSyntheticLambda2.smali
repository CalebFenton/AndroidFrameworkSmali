.class public final synthetic Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/InboundSmsHandler;

    return-void
.end method


# virtual methods
.method public final blacklist filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .registers 8

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static/range {p0 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->$r8$lambda$ZTWD4uG56xKQcXySC6EYc6xheAU(Lcom/android/internal/telephony/InboundSmsHandler;[[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result p0

    return p0
.end method
