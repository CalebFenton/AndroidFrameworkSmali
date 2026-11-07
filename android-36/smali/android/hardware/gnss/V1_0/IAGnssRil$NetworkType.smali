.class public final Landroid/hardware/gnss/V1_0/IAGnssRil$NetworkType;
.super Ljava/lang/Object;
.source "IAGnssRil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkType"
.end annotation


# static fields
.field public static final blacklist DUN:B = 0x4t

.field public static final blacklist HIPRI:B = 0x5t

.field public static final blacklist MMS:B = 0x2t

.field public static final blacklist MOBILE:B = 0x0t

.field public static final blacklist SUPL:B = 0x3t

.field public static final blacklist WIFI:B = 0x1t

.field public static final blacklist WIMAX:B = 0x6t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # B

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 166
    .local v1, "flipped":B
    const-string v2, "MOBILE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 168
    const-string v2, "WIFI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 171
    :cond_18
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    .line 172
    const-string v2, "MMS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 175
    :cond_25
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_32

    .line 176
    const-string v2, "SUPL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    or-int/lit8 v2, v1, 0x3

    int-to-byte v1, v2

    .line 179
    :cond_32
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3f

    .line 180
    const-string v2, "DUN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    or-int/lit8 v2, v1, 0x4

    int-to-byte v1, v2

    .line 183
    :cond_3f
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4c

    .line 184
    const-string v2, "HIPRI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    or-int/lit8 v2, v1, 0x5

    int-to-byte v1, v2

    .line 187
    :cond_4c
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_59

    .line 188
    const-string v2, "WIMAX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    or-int/lit8 v2, v1, 0x6

    int-to-byte v1, v2

    .line 191
    :cond_59
    if-eq p0, v1, :cond_7c

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_7c
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # B

    .line 139
    if-nez p0, :cond_5

    .line 140
    const-string v0, "MOBILE"

    return-object v0

    .line 142
    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    .line 143
    const-string v0, "WIFI"

    return-object v0

    .line 145
    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 146
    const-string v0, "MMS"

    return-object v0

    .line 148
    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    .line 149
    const-string v0, "SUPL"

    return-object v0

    .line 151
    :cond_17
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1d

    .line 152
    const-string v0, "DUN"

    return-object v0

    .line 154
    :cond_1d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_23

    .line 155
    const-string v0, "HIPRI"

    return-object v0

    .line 157
    :cond_23
    const/4 v0, 0x6

    if-ne p0, v0, :cond_29

    .line 158
    const-string v0, "WIMAX"

    return-object v0

    .line 160
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
