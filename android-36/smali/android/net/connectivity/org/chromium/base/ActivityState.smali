.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/ActivityState;
.super Ljava/lang/Object;
.source "ActivityState.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist CREATED:I = 0x1

.field public static final blacklist DESTROYED:I = 0x6

.field public static final blacklist PAUSED:I = 0x4

.field public static final blacklist RESUMED:I = 0x3

.field public static final blacklist STARTED:I = 0x2

.field public static final blacklist STOPPED:I = 0x5
