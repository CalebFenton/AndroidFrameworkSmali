.class interface abstract annotation Lcom/android/internal/os/anr/AnrLatencyTracker$EarlyDumpStatus;
.super Ljava/lang/Object;
.source "AnrLatencyTracker.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/anr/AnrLatencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "EarlyDumpStatus"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist FAILED_TO_CREATE_FILE:I = 0x3

.field public static final blacklist SUCCEEDED:I = 0x2

.field public static final blacklist TIMED_OUT:I = 0x4

.field public static final blacklist UNKNOWN:I = 0x1
