.class public Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportedCallStat"
.end annotation


# instance fields
.field blacklist binderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist callCount:J

.field public blacklist callingUid:I

.field public blacklist className:Ljava/lang/String;

.field public blacklist cpuTimeMicros:J

.field public blacklist exceptionCount:J

.field public blacklist latencyMicros:J

.field public blacklist maxCpuTimeMicros:J

.field public blacklist maxLatencyMicros:J

.field public blacklist maxReplySizeBytes:J

.field public blacklist maxRequestSizeBytes:J

.field public blacklist methodName:Ljava/lang/String;

.field public blacklist recordedCallCount:J

.field public blacklist screenInteractive:Z

.field blacklist transactionCode:I

.field public blacklist workSourceUid:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
