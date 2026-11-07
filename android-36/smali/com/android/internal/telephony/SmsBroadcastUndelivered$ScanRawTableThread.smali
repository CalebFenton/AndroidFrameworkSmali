.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;
.super Ljava/lang/Thread;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanRawTableThread"
.end annotation


# instance fields
.field private final blacklist context:Landroid/content/Context;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 129
    iput-object p2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;Lcom/android/internal/telephony/SmsBroadcastUndelivered-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;-><init>(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->this$0:Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->-$$Nest$mgetUndeliveredSmsExpirationTime(Lcom/android/internal/telephony/SmsBroadcastUndelivered;Landroid/content/Context;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 134
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;->scanRawTable(Landroid/content/Context;J)V

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$ScanRawTableThread;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->cancelNewMessageNotification(Landroid/content/Context;)V

    return-void
.end method
