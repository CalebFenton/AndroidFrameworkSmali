.class Ljava/io/ExpiringCache$Entry;
.super Ljava/lang/Object;
.source "ExpiringCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ExpiringCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field private blacklist timestamp:J

.field private blacklist val:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(JLjava/lang/String;)V
    .registers 4
    .param p1, "timestamp"    # J
    .param p3, "val"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Ljava/io/ExpiringCache$Entry;->timestamp:J

    .line 50
    iput-object p3, p0, Ljava/io/ExpiringCache$Entry;->val:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method blacklist setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 54
    iput-wide p1, p0, Ljava/io/ExpiringCache$Entry;->timestamp:J

    return-void
.end method

.method blacklist setVal(Ljava/lang/String;)V
    .registers 2
    .param p1, "val"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Ljava/io/ExpiringCache$Entry;->val:Ljava/lang/String;

    return-void
.end method

.method blacklist timestamp()J
    .registers 3

    .line 53
    iget-wide v0, p0, Ljava/io/ExpiringCache$Entry;->timestamp:J

    return-wide v0
.end method

.method blacklist val()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Ljava/io/ExpiringCache$Entry;->val:Ljava/lang/String;

    return-object v0
.end method
