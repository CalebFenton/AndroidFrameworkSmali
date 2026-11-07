.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/task/TaskPriority;
.super Ljava/lang/Object;
.source "TaskPriority.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist BEST_EFFORT:I = 0x0

.field public static final blacklist HIGHEST:I = 0x2

.field public static final blacklist LOWEST:I = 0x0

.field public static final blacklist USER_BLOCKING:I = 0x2

.field public static final blacklist USER_VISIBLE:I = 0x1
