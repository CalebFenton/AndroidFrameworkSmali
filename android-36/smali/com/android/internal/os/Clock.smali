.class public abstract Lcom/android/internal/os/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# static fields
.field public static final blacklist SYSTEM_CLOCK:Lcom/android/internal/os/Clock;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/android/internal/os/Clock$1;

    invoke-direct {v0}, Lcom/android/internal/os/Clock$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist currentTimeMillis()J
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist elapsedRealtime()J
    .registers 2

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist uptimeMillis()J
    .registers 2

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
