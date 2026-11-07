.class public interface abstract annotation Lcom/android/internal/os/TimeoutRecord$TimeoutKind;
.super Ljava/lang/Object;
.source "TimeoutRecord.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/TimeoutRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "TimeoutKind"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist APP_REGISTERED:I = 0x7

.field public static final blacklist APP_START:I = 0xa

.field public static final blacklist BROADCAST_RECEIVER:I = 0x3

.field public static final blacklist CONTENT_PROVIDER:I = 0x6

.field public static final blacklist INPUT_DISPATCH_NO_FOCUSED_WINDOW:I = 0x1

.field public static final blacklist INPUT_DISPATCH_WINDOW_UNRESPONSIVE:I = 0x2

.field public static final blacklist JOB_SERVICE:I = 0x9

.field public static final blacklist SERVICE_EXEC:I = 0x5

.field public static final blacklist SERVICE_START:I = 0x4

.field public static final blacklist SHORT_FGS_TIMEOUT:I = 0x8
