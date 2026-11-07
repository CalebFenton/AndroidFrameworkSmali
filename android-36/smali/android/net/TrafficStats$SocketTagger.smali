.class Landroid/net/TrafficStats$SocketTagger;
.super Ldalvik/system/SocketTagger;
.source "TrafficStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TrafficStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketTagger"
.end annotation


# static fields
.field private static final blacklist LOGD:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 420
    invoke-static {}, Landroid/net/TrafficStats;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/net/TrafficStats$SocketTagger;->LOGD:Z

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 422
    invoke-direct {p0}, Ldalvik/system/SocketTagger;-><init>()V

    .line 423
    return-void
.end method


# virtual methods
.method public blacklist test-api tag(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 427
    invoke-static {}, Landroid/net/TrafficStats;->-$$Nest$sfgetsThreadUidTag()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TrafficStats$UidTag;

    .line 428
    .local v0, "tagInfo":Landroid/net/TrafficStats$UidTag;
    sget-boolean v1, Landroid/net/TrafficStats$SocketTagger;->LOGD:Z

    if-eqz v1, :cond_48

    .line 429
    invoke-static {}, Landroid/net/TrafficStats;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tagSocket("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with statsTag=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/TrafficStats$UidTag;->tag:I

    .line 430
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", statsUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/TrafficStats$UidTag;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_48
    iget v1, v0, Landroid/net/TrafficStats$UidTag;->tag:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_50

    .line 433
    invoke-static {}, Landroid/os/StrictMode;->noteUntaggedSocket()V

    .line 436
    :cond_50
    iget v1, v0, Landroid/net/TrafficStats$UidTag;->tag:I

    if-ne v1, v2, :cond_59

    iget v1, v0, Landroid/net/TrafficStats$UidTag;->uid:I

    if-ne v1, v2, :cond_59

    return-void

    .line 437
    :cond_59
    iget v1, v0, Landroid/net/TrafficStats$UidTag;->tag:I

    iget v2, v0, Landroid/net/TrafficStats$UidTag;->uid:I

    invoke-static {p1, v1, v2}, Landroid/net/TrafficStats;->-$$Nest$smnative_tagSocketFd(Ljava/io/FileDescriptor;II)I

    move-result v1

    .line 438
    .local v1, "errno":I
    if-gez v1, :cond_a1

    .line 439
    invoke-static {}, Landroid/net/TrafficStats;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tagSocketFd("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Landroid/net/TrafficStats$UidTag;->tag:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/TrafficStats$UidTag;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") failed with errno"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_a1
    return-void
.end method

.method public blacklist test-api untag(Ljava/io/FileDescriptor;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 447
    sget-boolean v0, Landroid/net/TrafficStats$SocketTagger;->LOGD:Z

    const-string v1, "untagSocket("

    if-eqz v0, :cond_28

    .line 448
    invoke-static {}, Landroid/net/TrafficStats;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_28
    invoke-static {}, Landroid/net/TrafficStats;->-$$Nest$sfgetsThreadUidTag()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/TrafficStats$UidTag;

    .line 452
    .local v0, "tagInfo":Landroid/net/TrafficStats$UidTag;
    iget v2, v0, Landroid/net/TrafficStats$UidTag;->tag:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3c

    iget v2, v0, Landroid/net/TrafficStats$UidTag;->uid:I

    if-ne v2, v3, :cond_3c

    return-void

    .line 454
    :cond_3c
    invoke-static {p1}, Landroid/net/TrafficStats;->-$$Nest$smnative_untagSocketFd(Ljava/io/FileDescriptor;)I

    move-result v2

    .line 455
    .local v2, "errno":I
    if-gez v2, :cond_68

    .line 456
    invoke-static {}, Landroid/net/TrafficStats;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") failed with errno "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_68
    return-void
.end method
