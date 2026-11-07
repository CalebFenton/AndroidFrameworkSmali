.class public interface abstract annotation Lcom/android/internal/inputmethod/StartInputReason;
.super Ljava/lang/Object;
.source "StartInputReason.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist ACTIVATED_BY_IMMS:I = 0x8

.field public static final blacklist APP_CALLED_RESTART_INPUT_API:I = 0x4

.field public static final blacklist BOUND_ACCESSIBILITY_SESSION_TO_IMMS:I = 0xc

.field public static final blacklist BOUND_TO_IMMS:I = 0x6

.field public static final blacklist CHECK_FOCUS:I = 0x5

.field public static final blacklist DEACTIVATED_BY_IMMS:I = 0x9

.field public static final blacklist SCHEDULED_CHECK_FOCUS:I = 0x3

.field public static final blacklist SESSION_CREATED_BY_ACCESSIBILITY:I = 0xb

.field public static final blacklist SESSION_CREATED_BY_IME:I = 0xa

.field public static final blacklist UNBOUND_FROM_IMMS:I = 0x7

.field public static final blacklist UNSPECIFIED:I = 0x0

.field public static final blacklist WINDOW_FOCUS_GAIN:I = 0x1

.field public static final blacklist WINDOW_FOCUS_GAIN_REPORT_ONLY:I = 0x2
