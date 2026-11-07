.class final Ljava/time/chrono/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final blacklist CHRONO_LOCAL_DATE_TIME_TYPE:B = 0x2t

.field static final blacklist CHRONO_PERIOD_TYPE:B = 0x9t

.field static final blacklist CHRONO_TYPE:B = 0x1t

.field static final blacklist CHRONO_ZONE_DATE_TIME_TYPE:B = 0x3t

.field static final blacklist HIJRAH_DATE_TYPE:B = 0x6t

.field static final blacklist JAPANESE_DATE_TYPE:B = 0x4t

.field static final blacklist JAPANESE_ERA_TYPE:B = 0x5t

.field static final blacklist MINGUO_DATE_TYPE:B = 0x7t

.field static final blacklist THAIBUDDHIST_DATE_TYPE:B = 0x8t

.field private static final whitelist serialVersionUID:J = -0x54b386e71d87ec81L


# instance fields
.field private blacklist object:Ljava/io/Serializable;

.field private blacklist type:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method constructor blacklist <init>(BLjava/io/Serializable;)V
    .registers 3
    .param p1, "type"    # B
    .param p2, "object"    # Ljava/io/Serializable;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-byte p1, p0, Ljava/time/chrono/Ser;->type:B

    .line 130
    iput-object p2, p0, Ljava/time/chrono/Ser;->object:Ljava/io/Serializable;

    .line 131
    return-void
.end method

.method static blacklist read(Ljava/io/ObjectInput;)Ljava/io/Serializable;
    .registers 3
    .param p0, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 242
    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    .line 243
    .local v0, "type":B
    invoke-static {v0, p0}, Ljava/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/io/Serializable;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist readInternal(BLjava/io/ObjectInput;)Ljava/io/Serializable;
    .registers 4
    .param p0, "type"    # B
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 248
    packed-switch p0, :pswitch_data_3e

    .line 258
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_b
    invoke-static {p1}, Ljava/time/chrono/ChronoPeriodImpl;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    return-object v0

    .line 256
    :pswitch_10
    invoke-static {p1}, Ljava/time/chrono/ThaiBuddhistDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0

    .line 255
    :pswitch_15
    invoke-static {p1}, Ljava/time/chrono/MinguoDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0

    .line 254
    :pswitch_1a
    invoke-static {p1}, Ljava/time/chrono/HijrahDate;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0

    .line 253
    :pswitch_1f
    invoke-static {p1}, Ljava/time/chrono/JapaneseEra;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0

    .line 252
    :pswitch_24
    invoke-static {p1}, Ljava/time/chrono/JapaneseDate;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0

    .line 251
    :pswitch_29
    invoke-static {p1}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0

    .line 250
    :pswitch_30
    invoke-static {p1}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0

    .line 249
    :pswitch_37
    invoke-static {p1}, Ljava/time/chrono/AbstractChronology;->readExternal(Ljava/io/DataInput;)Ljava/time/chrono/Chronology;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
        :pswitch_b
    .end packed-switch
.end method

.method private whitelist readResolve()Ljava/lang/Object;
    .registers 2

    .line 269
    iget-object v0, p0, Ljava/time/chrono/Ser;->object:Ljava/io/Serializable;

    return-object v0
.end method

.method private static blacklist writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .registers 5
    .param p0, "type"    # B
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-interface {p2, p0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 164
    packed-switch p0, :pswitch_data_4e

    .line 193
    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_e
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoPeriodImpl;

    invoke-virtual {v0, p2}, Ljava/time/chrono/ChronoPeriodImpl;->writeExternal(Ljava/io/DataOutput;)V

    .line 191
    goto :goto_4d

    .line 187
    :pswitch_15
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ThaiBuddhistDate;

    invoke-virtual {v0, p2}, Ljava/time/chrono/ThaiBuddhistDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 188
    goto :goto_4d

    .line 184
    :pswitch_1c
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/MinguoDate;

    invoke-virtual {v0, p2}, Ljava/time/chrono/MinguoDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 185
    goto :goto_4d

    .line 181
    :pswitch_23
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/HijrahDate;

    invoke-virtual {v0, p2}, Ljava/time/chrono/HijrahDate;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 182
    goto :goto_4d

    .line 178
    :pswitch_2a
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v0, p2}, Ljava/time/chrono/JapaneseEra;->writeExternal(Ljava/io/DataOutput;)V

    .line 179
    goto :goto_4d

    .line 175
    :pswitch_31
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/JapaneseDate;

    invoke-virtual {v0, p2}, Ljava/time/chrono/JapaneseDate;->writeExternal(Ljava/io/DataOutput;)V

    .line 176
    goto :goto_4d

    .line 172
    :pswitch_38
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoZonedDateTimeImpl;

    invoke-virtual {v0, p2}, Ljava/time/chrono/ChronoZonedDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 173
    goto :goto_4d

    .line 169
    :pswitch_3f
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0, p2}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 170
    goto :goto_4d

    .line 166
    :pswitch_46
    move-object v0, p1

    check-cast v0, Ljava/time/chrono/AbstractChronology;

    invoke-virtual {v0, p2}, Ljava/time/chrono/AbstractChronology;->writeExternal(Ljava/io/DataOutput;)V

    .line 167
    nop

    .line 195
    :goto_4d
    return-void

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_46
        :pswitch_3f
        :pswitch_38
        :pswitch_31
        :pswitch_2a
        :pswitch_23
        :pswitch_1c
        :pswitch_15
        :pswitch_e
    .end packed-switch
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

    .line 237
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljava/time/chrono/Ser;->type:B

    .line 238
    iget-byte v0, p0, Ljava/time/chrono/Ser;->type:B

    invoke-static {v0, p1}, Ljava/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Ljava/time/chrono/Ser;->object:Ljava/io/Serializable;

    .line 239
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

    .line 159
    iget-byte v0, p0, Ljava/time/chrono/Ser;->type:B

    iget-object v1, p0, Ljava/time/chrono/Ser;->object:Ljava/io/Serializable;

    invoke-static {v0, v1, p1}, Ljava/time/chrono/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    .line 160
    return-void
.end method
