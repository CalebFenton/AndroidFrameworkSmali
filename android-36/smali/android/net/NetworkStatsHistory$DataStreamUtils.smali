.class public Landroid/net/NetworkStatsHistory$DataStreamUtils;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataStreamUtils"
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist readFullLongArray(Ljava/io/DataInput;)[J
    .registers 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1039
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1040
    .local v0, "size":I
    if-ltz v0, :cond_16

    .line 1041
    new-array v1, v0, [J

    .line 1042
    .local v1, "values":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v1

    if-ge v2, v3, :cond_15

    .line 1043
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1042
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1045
    .end local v2    # "i":I
    :cond_15
    return-object v1

    .line 1040
    .end local v1    # "values":[J
    :cond_16
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist readVarLong(Ljava/io/DataInput;)J
    .registers 7
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, "shift":I
    const-wide/16 v1, 0x0

    .line 1054
    .local v1, "result":J
    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_19

    .line 1055
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .line 1056
    .local v3, "b":B
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    .line 1057
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_15

    .line 1058
    return-wide v1

    .line 1059
    :cond_15
    nop

    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x7

    .line 1060
    goto :goto_3

    .line 1061
    :cond_19
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "malformed long"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist readVarLongArray(Ljava/io/DataInput;)[J
    .registers 6
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1080
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 1081
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    return-object v1

    .line 1082
    :cond_9
    if-ltz v0, :cond_1b

    .line 1083
    new-array v1, v0, [J

    .line 1084
    .local v1, "values":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    .line 1085
    invoke-static {p0}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLong(Ljava/io/DataInput;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1084
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1087
    .end local v2    # "i":I
    :cond_1a
    return-object v1

    .line 1082
    .end local v1    # "values":[J
    :cond_1b
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "negative array size"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist writeVarLong(Ljava/io/DataOutput;J)V
    .registers 7
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1069
    nop

    :goto_1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    .line 1070
    long-to-int v0, p1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1071
    return-void

    .line 1073
    :cond_f
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1074
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_1
.end method

.method public static blacklist writeVarLongArray(Ljava/io/DataOutput;[JI)V
    .registers 6
    .param p0, "out"    # Ljava/io/DataOutput;
    .param p1, "values"    # [J
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1092
    if-nez p1, :cond_7

    .line 1093
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1094
    return-void

    .line 1096
    :cond_7
    array-length v0, p1

    if-gt p2, v0, :cond_19

    .line 1099
    invoke-interface {p0, p2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, p2, :cond_18

    .line 1101
    aget-wide v1, p1, v0

    invoke-static {p0, v1, v2}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLong(Ljava/io/DataOutput;J)V

    .line 1100
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1103
    .end local v0    # "i":I
    :cond_18
    return-void

    .line 1097
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size larger than length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
