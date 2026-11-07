.class public final Ljava/util/concurrent/Flow;
.super Ljava/lang/Object;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Flow$Processor;,
        Ljava/util/concurrent/Flow$Subscription;,
        Ljava/util/concurrent/Flow$Subscriber;,
        Ljava/util/concurrent/Flow$Publisher;
    }
.end annotation


# static fields
.field static final blacklist DEFAULT_BUFFER_SIZE:I = 0x100


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api defaultBufferSize()I
    .registers 1

    .line 316
    const/16 v0, 0x100

    return v0
.end method
