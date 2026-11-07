.class public final Landroid/hardware/gnss/V2_0/IGnssCallback$Capabilities;
.super Ljava/lang/Object;
.source "IGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_0/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Capabilities"
.end annotation


# static fields
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

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 186
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 187
    const-string v2, "SCHEDULING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    or-int/lit8 v1, v1, 0x1

    .line 190
    :cond_12
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1e

    .line 191
    const-string v2, "MSB"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    or-int/lit8 v1, v1, 0x2

    .line 194
    :cond_1e
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2a

    .line 195
    const-string v2, "MSA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    or-int/lit8 v1, v1, 0x4

    .line 198
    :cond_2a
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_37

    .line 199
    const-string v2, "SINGLE_SHOT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    or-int/lit8 v1, v1, 0x8

    .line 202
    :cond_37
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_44

    .line 203
    const-string v2, "ON_DEMAND_TIME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    or-int/lit8 v1, v1, 0x10

    .line 206
    :cond_44
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_51

    .line 207
    const-string v2, "GEOFENCING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    or-int/lit8 v1, v1, 0x20

    .line 210
    :cond_51
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5e

    .line 211
    const-string v2, "MEASUREMENTS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    or-int/lit8 v1, v1, 0x40

    .line 214
    :cond_5e
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_6b

    .line 215
    const-string v2, "NAV_MESSAGES"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    or-int/lit16 v1, v1, 0x80

    .line 218
    :cond_6b
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_78

    .line 219
    const-string v2, "LOW_POWER_MODE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    or-int/lit16 v1, v1, 0x100

    .line 222
    :cond_78
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_85

    .line 223
    const-string v2, "SATELLITE_BLACKLIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    or-int/lit16 v1, v1, 0x200

    .line 226
    :cond_85
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_92

    .line 227
    const-string v2, "MEASUREMENT_CORRECTIONS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    or-int/lit16 v1, v1, 0x400

    .line 230
    :cond_92
    if-eq p0, v1, :cond_b0

    .line 231
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

    .line 233
    :cond_b0
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 147
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 148
    const-string v0, "SCHEDULING"

    return-object v0

    .line 150
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 151
    const-string v0, "MSB"

    return-object v0

    .line 153
    :cond_c
    const/4 v0, 0x4

    if-ne p0, v0, :cond_12

    .line 154
    const-string v0, "MSA"

    return-object v0

    .line 156
    :cond_12
    const/16 v0, 0x8

    if-ne p0, v0, :cond_19

    .line 157
    const-string v0, "SINGLE_SHOT"

    return-object v0

    .line 159
    :cond_19
    const/16 v0, 0x10

    if-ne p0, v0, :cond_20

    .line 160
    const-string v0, "ON_DEMAND_TIME"

    return-object v0

    .line 162
    :cond_20
    const/16 v0, 0x20

    if-ne p0, v0, :cond_27

    .line 163
    const-string v0, "GEOFENCING"

    return-object v0

    .line 165
    :cond_27
    const/16 v0, 0x40

    if-ne p0, v0, :cond_2e

    .line 166
    const-string v0, "MEASUREMENTS"

    return-object v0

    .line 168
    :cond_2e
    const/16 v0, 0x80

    if-ne p0, v0, :cond_35

    .line 169
    const-string v0, "NAV_MESSAGES"

    return-object v0

    .line 171
    :cond_35
    const/16 v0, 0x100

    if-ne p0, v0, :cond_3c

    .line 172
    const-string v0, "LOW_POWER_MODE"

    return-object v0

    .line 174
    :cond_3c
    const/16 v0, 0x200

    if-ne p0, v0, :cond_43

    .line 175
    const-string v0, "SATELLITE_BLACKLIST"

    return-object v0

    .line 177
    :cond_43
    const/16 v0, 0x400

    if-ne p0, v0, :cond_4a

    .line 178
    const-string v0, "MEASUREMENT_CORRECTIONS"

    return-object v0

    .line 180
    :cond_4a
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
