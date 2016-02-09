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
.field volatile p0:J

.field volatile p1:J

.field volatile p2:J

.field volatile p3:J

.field volatile p4:J

.field volatile p5:J

.field volatile p6:J

.field volatile q0:J

.field volatile q1:J

.field volatile q2:J

.field volatile q3:J

.field volatile q4:J

.field volatile q5:J

.field volatile q6:J

.field volatile value:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "x"    # J

    #@0
    .prologue
    .line 3163
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$CounterCell;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.CounterCell;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-wide p1, p0, Ljava/util/concurrent/ConcurrentHashMap$CounterCell;->value:J

    #@5
    return-void
.end method
