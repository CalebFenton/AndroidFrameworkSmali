.class final Ljava/util/concurrent/ConcurrentHashMap$CounterCell;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CounterCell"
.end annotation


# instance fields
.field volatile greylist-max-o value:J


# direct methods
.method constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "x"    # J

    .line 2573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    return-void
.end method
