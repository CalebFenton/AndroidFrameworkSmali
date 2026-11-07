.class public final Landroid/hardware/gnss/V2_1/IGnssCallback$Capabilities;
.super Ljava/lang/Object;
.source "IGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Capabilities"
.end annotation


# static fields
.field public static final blacklist ANTENNA_INFO:I = 0x800

.field public static final blacklist GEOFENCING:I = 0x20

.field public static final blacklist LOW_POWER_MODE:I = 0x100

.field public static final blacklist MEASUREMENTS:I = 0x40

.field public static final blacklist MEASUREMENT_CORRECTIONS:I = 0x400

.field public static final blacklist MSA:I = 0x4

.field public static final blacklist MSB:I = 0x2

.field public static final blacklist NAV_MESSAGES:I = 0x80

.field public static final blacklist ON_DEMAND_TIME:I = 0x10

.field public static final blacklist SATELLITE_BLACKLIST:I = 0x200

.field public static final blacklist SCHEDULING:I = 0x1

.field public static final blacklist SINGLE_SHOT:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 193
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 194
    const-string v2, "SCHEDULING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    or-int/lit8 v1, v1, 0x1

    .line 197
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 198
    const-string v2, "MSB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    or-int/lit8 v1, v1, 0x2

    .line 201
    :cond_1e
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2a

    .line 202
    const-string v2, "MSA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    or-int/lit8 v1, v1, 0x4

    .line 205
    :cond_2a
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_37

    .line 206
    const-string v2, "SINGLE_SHOT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    or-int/lit8 v1, v1, 0x8

    .line 209
    :cond_37
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 210
    const-string v2, "ON_DEMAND_TIME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    or-int/lit8 v1, v1, 0x10

    .line 213
    :cond_44
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_51

    .line 214
    const-string v2, "GEOFENCING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    or-int/lit8 v1, v1, 0x20

    .line 217
    :cond_51
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5e

    .line 218
    const-string v2, "MEASUREMENTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    or-int/lit8 v1, v1, 0x40

    .line 221
    :cond_5e
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_6b

    .line 222
    const-string v2, "NAV_MESSAGES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    or-int/lit16 v1, v1, 0x80

    .line 225
    :cond_6b
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_78

    .line 226
    const-string v2, "LOW_POWER_MODE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    or-int/lit16 v1, v1, 0x100

    .line 229
    :cond_78
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_85

    .line 230
    const-string v2, "SATELLITE_BLACKLIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    or-int/lit16 v1, v1, 0x200

    .line 233
    :cond_85
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_92

    .line 234
    const-string v2, "MEASUREMENT_CORRECTIONS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    or-int/lit16 v1, v1, 0x400

    .line 237
    :cond_92
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_9f

    .line 238
    const-string v2, "ANTENNA_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    or-int/lit16 v1, v1, 0x800

    .line 241
    :cond_9f
    if-eq p0, v1, :cond_bd

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_bd
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 151
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 152
    const-string v0, "SCHEDULING"

    return-object v0

    .line 154
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 155
    const-string v0, "MSB"

    return-object v0

    .line 157
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 158
    const-string v0, "MSA"

    return-object v0

    .line 160
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    .line 161
    const-string v0, "SINGLE_SHOT"

    return-object v0

    .line 163
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    .line 164
    const-string v0, "ON_DEMAND_TIME"

    return-object v0

    .line 166
    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    .line 167
    const-string v0, "GEOFENCING"

    return-object v0

    .line 169
    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    .line 170
    const-string v0, "MEASUREMENTS"

    return-object v0

    .line 172
    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    .line 173
    const-string v0, "NAV_MESSAGES"

    return-object v0

    .line 175
    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    .line 176
    const-string v0, "LOW_POWER_MODE"

    return-object v0

    .line 178
    :cond_3c
    const/16 v0, 0x200

    if-ne p0, v0, :cond_43

    .line 179
    const-string v0, "SATELLITE_BLACKLIST"

    return-object v0

    .line 181
    :cond_43
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4a

    .line 182
    const-string v0, "MEASUREMENT_CORRECTIONS"

    return-object v0

    .line 184
    :cond_4a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_51

    .line 185
    const-string v0, "ANTENNA_INFO"

    return-object v0

    .line 187
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
