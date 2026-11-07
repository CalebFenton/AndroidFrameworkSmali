.class public interface abstract Landroid/net/wifi/twt/TwtSession;
.super Ljava/lang/Object;
.source "TwtSession.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/twt/TwtSession$TwtStats;
    }
.end annotation


# static fields
.field public static final whitelist TWT_STATS_KEY_INT_AVERAGE_EOSP_DURATION_MICROS:Ljava/lang/String; = "key_avg_eosp_dur"

.field public static final whitelist TWT_STATS_KEY_INT_AVERAGE_RX_PACKET_COUNT:Ljava/lang/String; = "key_avg_rx_pkt_count"

.field public static final whitelist TWT_STATS_KEY_INT_AVERAGE_RX_PACKET_SIZE:Ljava/lang/String; = "key_avg_rx_pkt_size"

.field public static final whitelist TWT_STATS_KEY_INT_AVERAGE_TX_PACKET_COUNT:Ljava/lang/String; = "key_avg_tx_pkt_count"

.field public static final whitelist TWT_STATS_KEY_INT_AVERAGE_TX_PACKET_SIZE:Ljava/lang/String; = "key_avg_tx_pkt_size"

.field public static final whitelist TWT_STATS_KEY_INT_EOSP_COUNT:Ljava/lang/String; = "key_eosp_count"


# virtual methods
.method public abstract whitelist getMloLinkId()I
.end method

.method public abstract whitelist getStats(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist getWakeDurationMicros()I
.end method

.method public abstract whitelist getWakeIntervalMicros()J
.end method

.method public abstract whitelist teardown()V
.end method
