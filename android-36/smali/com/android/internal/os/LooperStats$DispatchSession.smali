.class Lcom/android/internal/os/LooperStats$DispatchSession;
.super Ljava/lang/Object;
.source "LooperStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/LooperStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DispatchSession"
.end annotation


# static fields
.field static final blacklist NOT_SAMPLED:Lcom/android/internal/os/LooperStats$DispatchSession;


# instance fields
.field public blacklist cpuStartMicro:J

.field public blacklist startTimeMicro:J

.field public blacklist systemUptimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 298
    new-instance v0, Lcom/android/internal/os/LooperStats$DispatchSession;

    invoke-direct {v0}, Lcom/android/internal/os/LooperStats$DispatchSession;-><init>()V

    sput-object v0, Lcom/android/internal/os/LooperStats$DispatchSession;->NOT_SAMPLED:Lcom/android/internal/os/LooperStats$DispatchSession;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/LooperStats-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/LooperStats$DispatchSession;-><init>()V

    return-void
.end method
