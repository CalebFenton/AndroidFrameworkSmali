.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/task/TaskTraits;
.super Ljava/lang/Object;
.source "TaskTraits.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist BEST_EFFORT:I = 0x0

.field public static final blacklist BEST_EFFORT_MAY_BLOCK:I = 0x1

.field public static final blacklist THREAD_POOL_TRAITS_END:I = 0x5

.field public static final blacklist THREAD_POOL_TRAITS_START:I = 0x0

.field public static final blacklist UI_BEST_EFFORT:I = 0x6

.field public static final blacklist UI_DEFAULT:I = 0x7

.field public static final blacklist UI_TRAITS_END:I = 0x8

.field public static final blacklist UI_TRAITS_START:I = 0x6

.field public static final blacklist UI_USER_BLOCKING:I = 0x8

.field public static final blacklist UI_USER_VISIBLE:I = 0x7

.field public static final blacklist USER_BLOCKING:I = 0x4

.field public static final blacklist USER_BLOCKING_MAY_BLOCK:I = 0x5

.field public static final blacklist USER_VISIBLE:I = 0x2

.field public static final blacklist USER_VISIBLE_MAY_BLOCK:I = 0x3
