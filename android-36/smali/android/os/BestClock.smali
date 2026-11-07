.class public Landroid/os/BestClock;
.super Landroid/os/SimpleClock;
.source "BestClock.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "BestClock"


# instance fields
.field private final greylist-max-o clocks:[Ljava/time/Clock;


# direct methods
.method public varargs constructor blacklist <init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V
    .registers 3
    .param p1, "zone"    # Ljava/time/ZoneId;
    .param p2, "clocks"    # [Ljava/time/Clock;

    .line 41
    invoke-direct {p0, p1}, Landroid/os/SimpleClock;-><init>(Ljava/time/ZoneId;)V

    .line 42
    iput-object p2, p0, Landroid/os/BestClock;->clocks:[Ljava/time/Clock;

    .line 43
    return-void
.end method


# virtual methods
.method public whitelist test-api millis()J
    .registers 8

    .line 47
    iget-object v0, p0, Landroid/os/BestClock;->clocks:[Ljava/time/Clock;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 49
    .local v3, "clock":Ljava/time/Clock;
    :try_start_8
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v0
    :try_end_c
    .catch Ljava/time/DateTimeException; {:try_start_8 .. :try_end_c} :catch_d

    return-wide v0

    .line 50
    :catch_d
    move-exception v4

    .line 52
    .local v4, "e":Ljava/time/DateTimeException;
    const-string v5, "BestClock"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v3    # "clock":Ljava/time/Clock;
    .end local v4    # "e":Ljava/time/DateTimeException;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 55
    :cond_1a
    new-instance v0, Ljava/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No clocks in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/BestClock;->clocks:[Ljava/time/Clock;

    .line 56
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " were able to provide time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
