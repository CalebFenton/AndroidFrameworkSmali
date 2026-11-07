.class public interface abstract annotation Landroid/net/connectivity/org/chromium/base/ResettersForTesting$State;
.super Ljava/lang/Object;
.source "ResettersForTesting.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/ResettersForTesting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "State"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist BETWEEN_CLASSES:I = 0x1

.field public static final blacklist BETWEEN_METHODS:I = 0x3

.field public static final blacklist CLASS_SCOPED:I = 0x2

.field public static final blacklist METHOD_SCOPED:I = 0x4

.field public static final blacklist NOT_ENABLED:I
