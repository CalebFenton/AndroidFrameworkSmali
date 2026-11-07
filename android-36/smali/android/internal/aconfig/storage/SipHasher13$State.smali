.class Landroid/internal/aconfig/storage/SipHasher13$State;
.super Ljava/lang/Object;
.source "SipHasher13.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/SipHasher13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field private blacklist v0:J

.field private blacklist v1:J

.field private blacklist v2:J

.field private blacklist v3:J


# direct methods
.method public constructor blacklist <init>(JJ)V
    .registers 7
    .param p1, "k0"    # J
    .param p3, "k1"    # J

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide v0, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr v0, p1

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    .line 28
    const-wide v0, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr v0, p3

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    .line 29
    const-wide v0, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr v0, p1

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    .line 30
    const-wide v0, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr v0, p3

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    .line 31
    return-void
.end method

.method private blacklist cRounds()V
    .registers 6

    .line 46
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    iget-wide v2, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    .line 47
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    .line 48
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    iget-wide v2, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    .line 49
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    .line 50
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    iget-wide v3, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    .line 51
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    const/16 v3, 0x10

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    .line 52
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    iget-wide v3, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    xor-long/2addr v0, v3

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    .line 53
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    iget-wide v3, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    .line 54
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    const/16 v3, 0x15

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    .line 55
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    iget-wide v3, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    xor-long/2addr v0, v3

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    .line 56
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    iget-wide v3, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    .line 57
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    const/16 v3, 0x11

    invoke-static {v0, v1, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    .line 58
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    iget-wide v3, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    xor-long/2addr v0, v3

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    .line 59
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    .line 60
    return-void
.end method

.method private blacklist dRounds()V
    .registers 7

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_79

    .line 64
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    iget-wide v3, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    .line 65
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    const/16 v3, 0xd

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    .line 66
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    iget-wide v3, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    .line 67
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    const/16 v3, 0x20

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    .line 68
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    iget-wide v4, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    .line 69
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    const/16 v4, 0x10

    invoke-static {v1, v2, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    .line 70
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    iget-wide v4, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    xor-long/2addr v1, v4

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    .line 71
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    iget-wide v4, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    .line 72
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    const/16 v4, 0x15

    invoke-static {v1, v2, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    .line 73
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    iget-wide v4, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    xor-long/2addr v1, v4

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    .line 74
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    iget-wide v4, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    .line 75
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    const/16 v4, 0x11

    invoke-static {v1, v2, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    .line 76
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    iget-wide v4, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    xor-long/2addr v1, v4

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    .line 77
    iget-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "i":I
    :cond_79
    return-void
.end method


# virtual methods
.method public blacklist compress(J)V
    .registers 5
    .param p1, "m"    # J

    .line 34
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    xor-long/2addr v0, p1

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    .line 35
    invoke-direct {p0}, Landroid/internal/aconfig/storage/SipHasher13$State;->cRounds()V

    .line 36
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    xor-long/2addr v0, p1

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    .line 37
    return-void
.end method

.method public blacklist finish()J
    .registers 5

    .line 40
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    const-wide/16 v2, 0xff

    xor-long/2addr v0, v2

    iput-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    .line 41
    invoke-direct {p0}, Landroid/internal/aconfig/storage/SipHasher13$State;->dRounds()V

    .line 42
    iget-wide v0, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v0:J

    iget-wide v2, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Landroid/internal/aconfig/storage/SipHasher13$State;->v3:J

    xor-long/2addr v0, v2

    return-wide v0
.end method
