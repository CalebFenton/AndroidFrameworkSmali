.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/ApplicationState;
.super Ljava/lang/Object;
.source "ApplicationState.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist HAS_DESTROYED_ACTIVITIES:I = 0x4

.field public static final blacklist HAS_PAUSED_ACTIVITIES:I = 0x2

.field public static final blacklist HAS_RUNNING_ACTIVITIES:I = 0x1

.field public static final blacklist HAS_STOPPED_ACTIVITIES:I = 0x3

.field public static final blacklist UNKNOWN:I
