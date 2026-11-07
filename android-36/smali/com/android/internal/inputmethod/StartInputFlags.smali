.class public interface abstract annotation Lcom/android/internal/inputmethod/StartInputFlags;
.super Ljava/lang/Object;
.source "StartInputFlags.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist INITIAL_CONNECTION:I = 0x4

.field public static final blacklist IS_TEXT_EDITOR:I = 0x2

.field public static final blacklist VIEW_HAS_FOCUS:I = 0x1

.field public static final blacklist WINDOW_GAINED_FOCUS:I = 0x8
