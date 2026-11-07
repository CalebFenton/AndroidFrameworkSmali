.class public interface abstract annotation Landroid/net/connectivity/org/chromium/net/RequestPriority;
.super Ljava/lang/Object;
.source "RequestPriority.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist DEFAULT_PRIORITY:I = 0x2

.field public static final blacklist HIGHEST:I = 0x5

.field public static final blacklist IDLE:I = 0x1

.field public static final blacklist LOW:I = 0x3

.field public static final blacklist LOWEST:I = 0x2

.field public static final blacklist MAXIMUM_PRIORITY:I = 0x5

.field public static final blacklist MEDIUM:I = 0x4

.field public static final blacklist MINIMUM_PRIORITY:I

.field public static final blacklist THROTTLED:I
