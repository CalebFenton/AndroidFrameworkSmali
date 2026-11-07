.class interface abstract annotation Landroid/net/connectivity/org/chromium/base/Promise$PromiseState;
.super Ljava/lang/Object;
.source "Promise.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x260a
    name = "PromiseState"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final blacklist FULFILLED:I = 0x1

.field public static final blacklist REJECTED:I = 0x2

.field public static final blacklist UNFULFILLED:I
