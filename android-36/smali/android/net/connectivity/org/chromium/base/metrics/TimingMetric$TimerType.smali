.class interface abstract annotation Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric$TimerType;
.super Ljava/lang/Object;
.source "TimingMetric.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/metrics/TimingMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "TimerType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist MEDIUM_UPTIME:I = 0x1

.field public static final blacklist SHORT_THREAD_TIME:I = 0x2

.field public static final blacklist SHORT_UPTIME:I
