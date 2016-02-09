.class Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/conn/IdleConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeValues"
.end annotation


# instance fields
.field private final timeAdded:J

.field private final timeExpires:J


# direct methods
.method static synthetic -get0(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeAdded:J

    #@2
    return-wide v0
.end method

.method static synthetic -get1(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J

    #@2
    return-wide v0
.end method

.method constructor <init>(JJLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "now"    # J
    .param p3, "validDuration"    # J
    .param p5, "validUnit"    # Ljava/util/concurrent/TimeUnit;

    #@0
    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 187
    iput-wide p1, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeAdded:J

    #@5
    .line 188
    const-wide/16 v0, 0x0

    #@7
    cmp-long v0, p3, v0

    #@9
    if-lez v0, :cond_0

    #@b
    .line 189
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    #@e
    move-result-wide v0

    #@f
    add-long/2addr v0, p1

    #@10
    iput-wide v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J

    #@12
    .line 186
    :goto_0
    return-void

    #@13
    .line 191
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    #@18
    iput-wide v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J

    #@1a
    goto :goto_0
.end method
