.class public interface abstract Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;
.super Ljava/lang/Object;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SmsFilter"
.end annotation


# virtual methods
.method public abstract blacklist filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[BI",
            "Lcom/android/internal/telephony/InboundSmsTracker;",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;)Z"
        }
    .end annotation
.end method
