.class public final Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessageType;
.super Ljava/lang/Object;
.source "IGnssNavigationMessageCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssNavigationMessageType"
.end annotation


# static fields
.field public static final blacklist BDS_D1:S = 0x501s

.field public static final blacklist BDS_D2:S = 0x502s

.field public static final blacklist GAL_F:S = 0x602s

.field public static final blacklist GAL_I:S = 0x601s

.field public static final blacklist GLO_L1CA:S = 0x301s

.field public static final blacklist GPS_CNAV2:S = 0x104s

.field public static final blacklist GPS_L1CA:S = 0x101s

.field public static final blacklist GPS_L2CNAV:S = 0x102s

.field public static final blacklist GPS_L5CNAV:S = 0x103s

.field public static final blacklist UNKNOWN:S


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(S)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # S

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 172
    .local v1, "flipped":S
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    and-int/lit16 v2, p0, 0x101

    const/16 v3, 0x101

    if-ne v2, v3, :cond_19

    .line 174
    const-string v2, "GPS_L1CA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    or-int/lit16 v2, v1, 0x101

    int-to-short v1, v2

    .line 177
    :cond_19
    and-int/lit16 v2, p0, 0x102

    const/16 v3, 0x102

    if-ne v2, v3, :cond_27

    .line 178
    const-string v2, "GPS_L2CNAV"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    or-int/lit16 v2, v1, 0x102

    int-to-short v1, v2

    .line 181
    :cond_27
    and-int/lit16 v2, p0, 0x103

    const/16 v3, 0x103

    if-ne v2, v3, :cond_35

    .line 182
    const-string v2, "GPS_L5CNAV"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    or-int/lit16 v2, v1, 0x103

    int-to-short v1, v2

    .line 185
    :cond_35
    and-int/lit16 v2, p0, 0x104

    const/16 v3, 0x104

    if-ne v2, v3, :cond_43

    .line 186
    const-string v2, "GPS_CNAV2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    or-int/lit16 v2, v1, 0x104

    int-to-short v1, v2

    .line 189
    :cond_43
    and-int/lit16 v2, p0, 0x301

    const/16 v3, 0x301

    if-ne v2, v3, :cond_51

    .line 190
    const-string v2, "GLO_L1CA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    or-int/lit16 v2, v1, 0x301

    int-to-short v1, v2

    .line 193
    :cond_51
    and-int/lit16 v2, p0, 0x501

    const/16 v3, 0x501

    if-ne v2, v3, :cond_5f

    .line 194
    const-string v2, "BDS_D1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    or-int/lit16 v2, v1, 0x501

    int-to-short v1, v2

    .line 197
    :cond_5f
    and-int/lit16 v2, p0, 0x502

    const/16 v3, 0x502

    if-ne v2, v3, :cond_6d

    .line 198
    const-string v2, "BDS_D2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    or-int/lit16 v2, v1, 0x502

    int-to-short v1, v2

    .line 201
    :cond_6d
    and-int/lit16 v2, p0, 0x601

    const/16 v3, 0x601

    if-ne v2, v3, :cond_7b

    .line 202
    const-string v2, "GAL_I"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    or-int/lit16 v2, v1, 0x601

    int-to-short v1, v2

    .line 205
    :cond_7b
    and-int/lit16 v2, p0, 0x602

    const/16 v3, 0x602

    if-ne v2, v3, :cond_89

    .line 206
    const-string v2, "GAL_F"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    or-int/lit16 v2, v1, 0x602

    int-to-short v1, v2

    .line 209
    :cond_89
    if-eq p0, v1, :cond_ac

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-short v3, v3

    invoke-static {v3}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_ac
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(S)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # S

    .line 136
    if-nez p0, :cond_5

    .line 137
    const-string v0, "UNKNOWN"

    return-object v0

    .line 139
    :cond_5
    const/16 v0, 0x101

    if-ne p0, v0, :cond_c

    .line 140
    const-string v0, "GPS_L1CA"

    return-object v0

    .line 142
    :cond_c
    const/16 v0, 0x102

    if-ne p0, v0, :cond_13

    .line 143
    const-string v0, "GPS_L2CNAV"

    return-object v0

    .line 145
    :cond_13
    const/16 v0, 0x103

    if-ne p0, v0, :cond_1a

    .line 146
    const-string v0, "GPS_L5CNAV"

    return-object v0

    .line 148
    :cond_1a
    const/16 v0, 0x104

    if-ne p0, v0, :cond_21

    .line 149
    const-string v0, "GPS_CNAV2"

    return-object v0

    .line 151
    :cond_21
    const/16 v0, 0x301

    if-ne p0, v0, :cond_28

    .line 152
    const-string v0, "GLO_L1CA"

    return-object v0

    .line 154
    :cond_28
    const/16 v0, 0x501

    if-ne p0, v0, :cond_2f

    .line 155
    const-string v0, "BDS_D1"

    return-object v0

    .line 157
    :cond_2f
    const/16 v0, 0x502

    if-ne p0, v0, :cond_36

    .line 158
    const-string v0, "BDS_D2"

    return-object v0

    .line 160
    :cond_36
    const/16 v0, 0x601

    if-ne p0, v0, :cond_3d

    .line 161
    const-string v0, "GAL_I"

    return-object v0

    .line 163
    :cond_3d
    const/16 v0, 0x602

    if-ne p0, v0, :cond_44

    .line 164
    const-string v0, "GAL_F"

    return-object v0

    .line 166
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
