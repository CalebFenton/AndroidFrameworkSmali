.class public final Lcom/android/server/biometrics/fingerprint/PerformanceStatsProto;
.super Ljava/lang/Object;
.source "PerformanceStatsProto.java"


# static fields
.field public static final blacklist ACCEPT:J = 0x10500000001L

.field public static final blacklist ACQUIRE:J = 0x10500000003L

.field public static final blacklist LOCKOUT:J = 0x10500000004L

.field public static final blacklist PERMANENT_LOCKOUT:J = 0x10500000005L

.field public static final blacklist REJECT:J = 0x10500000002L


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
