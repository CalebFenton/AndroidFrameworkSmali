.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/TerminationStatus;
.super Ljava/lang/Object;
.source "TerminationStatus.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist ABNORMAL_TERMINATION:I = 0x1

.field public static final blacklist LAUNCH_FAILED:I = 0x7

.field public static final blacklist MAX_ENUM:I = 0xa

.field public static final blacklist NORMAL_TERMINATION:I = 0x0

.field public static final blacklist OOM:I = 0x8

.field public static final blacklist OOM_PROTECTED:I = 0x6

.field public static final blacklist PROCESS_CRASHED:I = 0x3

.field public static final blacklist PROCESS_WAS_KILLED:I = 0x2

.field public static final blacklist STILL_RUNNING:I = 0x4
