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
.field private timestamp:J

.field private val:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 49
    iput-wide p1, p0, Ljava/io/ExpiringCache$Entry;->timestamp:J

    #@5
    .line 50
    iput-object p3, p0, Ljava/io/ExpiringCache$Entry;->val:Ljava/lang/String;

    #@7
    .line 48
    return-void
.end method


# virtual methods
.method setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 54
    iput-wide p1, p0, Ljava/io/ExpiringCache$Entry;->timestamp:J

    #@2
    return-void
.end method

.method setVal(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    iput-object p1, p0, Ljava/io/ExpiringCache$Entry;->val:Ljava/lang/String;

    #@2
    return-void
.end method

.method timestamp()J
    .locals 2

    #@0
    .prologue
    .line 53
    iget-wide v0, p0, Ljava/io/ExpiringCache$Entry;->timestamp:J

    #@2
    return-wide v0
.end method

.method val()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Ljava/io/ExpiringCache$Entry;->val:Ljava/lang/String;

    #@2
    return-object v0
.end method
