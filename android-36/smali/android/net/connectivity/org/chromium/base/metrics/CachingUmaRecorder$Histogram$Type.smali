.class interface abstract annotation Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram$Type;
.super Ljava/lang/Object;
.source "CachingUmaRecorder.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/metrics/CachingUmaRecorder$Histogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2608
    name = "Type"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist BOOLEAN:I = 0x1

.field public static final blacklist EXPONENTIAL:I = 0x2

.field public static final blacklist LINEAR:I = 0x3

.field public static final blacklist SPARSE:I = 0x4
