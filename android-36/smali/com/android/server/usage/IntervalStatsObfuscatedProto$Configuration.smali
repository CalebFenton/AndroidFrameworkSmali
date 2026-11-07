.class public final Lcom/android/server/usage/IntervalStatsObfuscatedProto$Configuration;
.super Ljava/lang/Object;
.source "IntervalStatsObfuscatedProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStatsObfuscatedProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Configuration"
.end annotation


# static fields
.field public static final blacklist ACTIVE:J = 0x10800000005L

.field public static final blacklist CONFIG:J = 0x10b00000001L

.field public static final blacklist COUNT:J = 0x10500000004L

.field public static final blacklist LAST_TIME_ACTIVE_MS:J = 0x10300000002L

.field public static final blacklist TOTAL_TIME_ACTIVE_MS:J = 0x10300000003L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/usage/IntervalStatsObfuscatedProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usage/IntervalStatsObfuscatedProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
