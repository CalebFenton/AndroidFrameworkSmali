.class final Ljava/time/zone/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final blacklist ZOT:B = 0x2t

.field static final blacklist ZOTRULE:B = 0x3t

.field static final blacklist ZRULES:B = 0x1t

.field private static final whitelist serialVersionUID:J = -0x7b4f011483e5ac42L


# instance fields
.field private blacklist object:Ljava/io/Serializable;

.field private blacklist type:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method constructor blacklist <init>(BLjava/io/Serializable;)V
    .registers 3
    .param p1, "type"    # B
    .param p2, "object"    # Ljava/io/Serializable;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-byte p1, p0, Ljava/time/zone/Ser;->type:B

    .line 117
    iput-object p2, p0, Ljava/time/zone/Ser;->object:Ljava/io/Serializable;

    .line 118
    return-void
.end method

.method static blacklist read(Ljava/io/DataInput;)Ljava/io/Serializable;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 188
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 189
    .local v0, "type":B
    invoke-static {v0, p0}, Ljava/time/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/io/Serializable;

    move-result-object v1

    return-object v1
.end method

.method static blacklist readEpochSec(Ljava/io/DataInput;)J
    .registers 10
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 273
    .local v0, "hiByte":I
    if-ne v0, v1, :cond_e

    .line 274
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    return-wide v1

    .line 276
    :cond_e
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    and-int/2addr v2, v1

    .line 277
    .local v2, "midByte":I
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/2addr v1, v3

    .line 278
    .local v1, "loByte":I
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v2, 0x8

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-long v3, v3

    .line 279
    .local v3, "tot":J
    const-wide/16 v5, 0x384

    mul-long/2addr v5, v3

    const-wide v7, 0x110bc5000L

    sub-long/2addr v5, v7

    return-wide v5
.end method

.method private static blacklist readInternal(BLjava/io/DataInput;)Ljava/io/Serializable;
    .registers 4
    .param p0, "type"    # B
    .param p1, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 194
    packed-switch p0, :pswitch_data_1a

    .line 202
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :pswitch_b
    invoke-static {p1}, Ljava/time/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v0

    return-object v0

    .line 198
    :pswitch_10
    invoke-static {p1}, Ljava/time/zone/ZoneOffsetTransition;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v0

    return-object v0

    .line 196
    :pswitch_15
    invoke-static {p1}, Ljava/time/zone/ZoneRules;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneRules;

    move-result-object v0

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method static blacklist readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;
    .registers 3
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 241
    .local v0, "offsetByte":I
    const/16 v1, 0x7f

    if-ne v0, v1, :cond_d

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    goto :goto_f

    :cond_d
    mul-int/lit16 v1, v0, 0x384

    :goto_f
    invoke-static {v1}, Ljava/time/ZoneOffset;->ofTotalSeconds(I)Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 212
    iget-object v0, p0, Ljava/time/zone/Ser;->object:Ljava/io/Serializable;

    return-object v0
.end method

.method static blacklist write(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .registers 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Ljava/time/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 143
    return-void
.end method

.method static blacklist writeEpochSec(JLjava/io/DataOutput;)V
    .registers 11
    .param p0, "epochSec"    # J
    .param p2, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const-wide v0, -0x110bc5000L

    cmp-long v0, p0, v0

    const/16 v1, 0xff

    if-ltz v0, :cond_38

    const-wide v2, 0x26cb5db00L

    cmp-long v0, p0, v2

    if-gez v0, :cond_38

    const-wide/16 v2, 0x384

    rem-long v4, p0, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_38

    .line 254
    const-wide v4, 0x110bc5000L

    add-long/2addr v4, p0

    div-long/2addr v4, v2

    long-to-int v0, v4

    .line 255
    .local v0, "store":I
    ushr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v1

    invoke-interface {p2, v2}, Ljava/io/DataOutput;->writeByte(I)V

    .line 256
    ushr-int/lit8 v2, v0, 0x8

    and-int/2addr v1, v2

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 257
    and-int/lit16 v1, v0, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 258
    .end local v0    # "store":I
    goto :goto_3e

    .line 259
    :cond_38
    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 260
    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    .line 262
    :goto_3e
    return-void
.end method

.method private static blacklist writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .registers 5
    .param p0, "type"    # B
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 147
    packed-switch p0, :pswitch_data_24

    .line 158
    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_e
    move-object v0, p1

    check-cast v0, Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    .line 156
    goto :goto_23

    .line 152
    :pswitch_15
    move-object v0, p1

    check-cast v0, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneOffsetTransition;->writeExternal(Ljava/io/DataOutput;)V

    .line 153
    goto :goto_23

    .line 149
    :pswitch_1c
    move-object v0, p1

    check-cast v0, Ljava/time/zone/ZoneRules;

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->writeExternal(Ljava/io/DataOutput;)V

    .line 150
    nop

    .line 160
    :goto_23
    return-void

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_15
        :pswitch_e
    .end packed-switch
.end method

.method static blacklist writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V
    .registers 5
    .param p0, "offset"    # Ljava/time/ZoneOffset;
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    .line 225
    .local v0, "offsetSecs":I
    rem-int/lit16 v1, v0, 0x384

    const/16 v2, 0x7f

    if-nez v1, :cond_d

    div-int/lit16 v1, v0, 0x384

    goto :goto_e

    :cond_d
    move v1, v2

    .line 226
    .local v1, "offsetByte":I
    :goto_e
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 227
    if-ne v1, v2, :cond_16

    .line 228
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 230
    :cond_16
    return-void
.end method


# virtual methods
.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 183
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/time/zone/Ser;->type:B

    .line 184
    iget-byte v0, p0, Ljava/time/zone/Ser;->type:B

    invoke-static {v0, p1}, Ljava/time/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Ljava/time/zone/Ser;->object:Ljava/io/Serializable;

    .line 185
    return-void
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-byte v0, p0, Ljava/time/zone/Ser;->type:B

    iget-object v1, p0, Ljava/time/zone/Ser;->object:Ljava/io/Serializable;

    invoke-static {v0, v1, p1}, Ljava/time/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    .line 139
    return-void
.end method
