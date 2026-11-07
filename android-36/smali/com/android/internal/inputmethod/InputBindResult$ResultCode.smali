.class public interface abstract annotation Lcom/android/internal/inputmethod/InputBindResult$ResultCode;
.super Ljava/lang/Object;
.source "InputBindResult.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputBindResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ResultCode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist ERROR_DISPLAY_ID_MISMATCH:I = 0xe

.field public static final blacklist ERROR_IME_NOT_CONNECTED:I = 0x9

.field public static final blacklist ERROR_INVALID_DISPLAY_ID:I = 0xf

.field public static final blacklist ERROR_INVALID_PACKAGE_NAME:I = 0x7

.field public static final blacklist ERROR_INVALID_USER:I = 0xa

.field public static final blacklist ERROR_NOT_IME_TARGET_WINDOW:I = 0xc

.field public static final blacklist ERROR_NO_EDITOR:I = 0xd

.field public static final blacklist ERROR_NO_IME:I = 0x6

.field public static final blacklist ERROR_NULL:I = 0x5

.field public static final blacklist ERROR_NULL_EDITOR_INFO:I = 0xb

.field public static final blacklist ERROR_SYSTEM_NOT_READY:I = 0x8

.field public static final blacklist SUCCESS_REPORT_WINDOW_FOCUS_ONLY:I = 0x4

.field public static final blacklist SUCCESS_WAITING_IME_BINDING:I = 0x2

.field public static final blacklist SUCCESS_WAITING_IME_SESSION:I = 0x1

.field public static final blacklist SUCCESS_WAITING_USER_SWITCHING:I = 0x3

.field public static final blacklist SUCCESS_WITH_ACCESSIBILITY_SESSION:I = 0x10

.field public static final blacklist SUCCESS_WITH_IME_SESSION:I
