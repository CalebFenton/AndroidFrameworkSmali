.class interface abstract annotation Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma$Notification;
.super Ljava/lang/Object;
.source "MemoryPressureUma.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/memory/MemoryPressureUma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "Notification"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist NUM_ENTRIES:I = 0x9

.field public static final blacklist ON_LOW_MEMORY:I = 0x8

.field public static final blacklist TRIM_MEMORY_BACKGROUND:I = 0x3

.field public static final blacklist TRIM_MEMORY_COMPLETE:I = 0x1

.field public static final blacklist TRIM_MEMORY_MODERATE:I = 0x2

.field public static final blacklist TRIM_MEMORY_RUNNING_CRITICAL:I = 0x5

.field public static final blacklist TRIM_MEMORY_RUNNING_LOW:I = 0x6

.field public static final blacklist TRIM_MEMORY_RUNNING_MODERATE:I = 0x7

.field public static final blacklist TRIM_MEMORY_UI_HIDDEN:I = 0x4

.field public static final blacklist UNKNOWN_TRIM_LEVEL:I
