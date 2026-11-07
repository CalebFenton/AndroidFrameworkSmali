.class public Ljdk/net/SocketFlow;
.super Ljava/lang/Object;
.source "SocketFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdk/net/SocketFlow$Status;
    }
.end annotation


# static fields
.field private static final blacklist ALREADY_CREATED_VALUE:I = 0x5

.field public static final blacklist HIGH_PRIORITY:I = 0x2

.field private static final blacklist IN_PROGRESS_VALUE:I = 0x6

.field public static final blacklist NORMAL_PRIORITY:I = 0x1

.field private static final blacklist NOT_CONNECTED_VALUE:I = 0x3

.field private static final blacklist NOT_SUPPORTED_VALUE:I = 0x4

.field private static final blacklist NO_PERMISSION_VALUE:I = 0x2

.field private static final blacklist NO_STATUS_VALUE:I = 0x0

.field private static final blacklist OK_VALUE:I = 0x1

.field private static final blacklist OTHER_VALUE:I = 0x7

.field public static final blacklist UNSET:I = -0x1


# instance fields
.field private blacklist bandwidth:J

.field private blacklist priority:I

.field private blacklist status:Ljdk/net/SocketFlow$Status;


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x1

    iput v0, p0, Ljdk/net/SocketFlow;->priority:I

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljdk/net/SocketFlow;->bandwidth:J

    .line 128
    sget-object v0, Ljdk/net/SocketFlow$Status;->NO_STATUS:Ljdk/net/SocketFlow$Status;

    iput-object v0, p0, Ljdk/net/SocketFlow;->status:Ljdk/net/SocketFlow$Status;

    .line 138
    return-void
.end method

.method public static blacklist create()Ljdk/net/SocketFlow;
    .registers 1

    .line 135
    new-instance v0, Ljdk/net/SocketFlow;

    invoke-direct {v0}, Ljdk/net/SocketFlow;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist bandwidth()J
    .registers 3

    .line 180
    iget-wide v0, p0, Ljdk/net/SocketFlow;->bandwidth:J

    return-wide v0
.end method

.method public blacklist bandwidth(J)Ljdk/net/SocketFlow;
    .registers 6
    .param p1, "bandwidth"    # J

    .line 161
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 163
    iput-wide p1, p0, Ljdk/net/SocketFlow;->bandwidth:J

    .line 164
    return-object p0

    .line 162
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid bandwidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist priority()I
    .registers 2

    .line 171
    iget v0, p0, Ljdk/net/SocketFlow;->priority:I

    return v0
.end method

.method public blacklist priority(I)Ljdk/net/SocketFlow;
    .registers 5
    .param p1, "priority"    # I

    .line 148
    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_20

    .line 149
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid priority :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_20
    :goto_20
    iput p1, p0, Ljdk/net/SocketFlow;->priority:I

    .line 151
    return-object p0
.end method

.method public blacklist status()Ljdk/net/SocketFlow$Status;
    .registers 2

    .line 188
    iget-object v0, p0, Ljdk/net/SocketFlow;->status:Ljdk/net/SocketFlow$Status;

    return-object v0
.end method

.method blacklist status(I)V
    .registers 3
    .param p1, "status"    # I

    .line 192
    invoke-static {p1}, Ljdk/net/SocketFlow$Status;->from(I)Ljdk/net/SocketFlow$Status;

    move-result-object v0

    iput-object v0, p0, Ljdk/net/SocketFlow;->status:Ljdk/net/SocketFlow$Status;

    .line 193
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " [ priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljdk/net/SocketFlow;->priority()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    const-string v2, ", bandwidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljdk/net/SocketFlow;->bandwidth()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljdk/net/SocketFlow;->status()Ljdk/net/SocketFlow$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
