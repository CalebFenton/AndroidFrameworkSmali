.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/library_loader/LoaderErrors;
.super Ljava/lang/Object;
.source "LoaderErrors.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist FAILED_TO_REGISTER_JNI:I = 0x1

.field public static final blacklist NATIVE_LIBRARY_LOAD_FAILED:I = 0x2

.field public static final blacklist NATIVE_LIBRARY_WRONG_VERSION:I = 0x3

.field public static final blacklist NATIVE_STARTUP_FAILED:I = 0x4

.field public static final blacklist NORMAL_COMPLETION:I
