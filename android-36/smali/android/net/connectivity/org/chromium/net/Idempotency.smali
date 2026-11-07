.class public interface abstract annotation Landroid/net/connectivity/org/chromium/net/Idempotency;
.super Ljava/lang/Object;
.source "Idempotency.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist DEFAULT_IDEMPOTENCY:I = 0x0

.field public static final blacklist IDEMPOTENT:I = 0x1

.field public static final blacklist NOT_IDEMPOTENT:I = 0x2
