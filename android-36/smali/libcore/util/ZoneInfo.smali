.class public final Llibcore/util/ZoneInfo;
.super Ljava/util/TimeZone;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/ZoneInfo$FieldSetter;
    }
.end annotation


# static fields
.field private static final greylist-max-o LEAP:[I

.field private static final greylist-max-o MILLISECONDS_PER_400_YEARS:J = 0xb7af85d9c00L

.field private static final greylist-max-o MILLISECONDS_PER_DAY:J = 0x5265c00L

.field private static final greylist-max-o NORMAL:[I

.field private static final greylist-max-o UNIX_OFFSET:J = 0x388a6f046000L

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field static final whitelist serialVersionUID:J = -0x3fd1fff6d5149890L


# instance fields
.field private transient blacklist mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

.field private final greylist-max-o mDstSavings:I

.field private final greylist mTransitions:[J

.field private final greylist-max-o mUseDst:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$3zUrJBTc8d6SErubrJuKlLUxoZE(Llibcore/util/ZoneInfo;[JLjava/lang/reflect/Field;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Llibcore/util/ZoneInfo;->lambda$readObject$2([JLjava/lang/reflect/Field;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$H0HSUinN6g1RiNw2MCANplwgDbY(Llibcore/util/ZoneInfo;ILjava/lang/reflect/Field;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Llibcore/util/ZoneInfo;->lambda$readObject$0(ILjava/lang/reflect/Field;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PNAtxCwTTPW1Cto496nUHaBUjDo(Llibcore/util/ZoneInfo;ZLjava/lang/reflect/Field;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Llibcore/util/ZoneInfo;->lambda$readObject$1(ZLjava/lang/reflect/Field;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 58
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_3e

    sput-object v1, Llibcore/util/ZoneInfo;->NORMAL:[I

    .line 62
    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    sput-object v0, Llibcore/util/ZoneInfo;->LEAP:[I

    .line 78
    sget-object v0, Lcom/android/i18n/timezone/ZoneInfoData;->ZONEINFO_SERIALIZED_FIELDS:[Ljava/io/ObjectStreamField;

    array-length v0, v0

    .line 79
    .local v0, "srcLen":I
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/io/ObjectStreamField;

    sput-object v1, Llibcore/util/ZoneInfo;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 82
    sget-object v1, Llibcore/util/ZoneInfo;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "mDstSavings"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 83
    sget-object v1, Llibcore/util/ZoneInfo;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v4, "mUseDst"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v4, v5}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 84
    sget-object v1, Lcom/android/i18n/timezone/ZoneInfoData;->ZONEINFO_SERIALIZED_FIELDS:[Ljava/io/ObjectStreamField;

    sget-object v2, Llibcore/util/ZoneInfo;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    const/4 v4, 0x2

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    .end local v0    # "srcLen":I
    return-void

    :array_3e
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    :array_5a
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method private constructor blacklist <init>(Lcom/android/i18n/timezone/ZoneInfoData;IZ)V
    .registers 5
    .param p1, "delegate"    # Lcom/android/i18n/timezone/ZoneInfoData;
    .param p2, "dstSavings"    # I
    .param p3, "useDst"    # Z

    .line 145
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 146
    iput-object p1, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    .line 147
    iput p2, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    .line 148
    iput-boolean p3, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    .line 149
    invoke-virtual {p1}, Lcom/android/i18n/timezone/ZoneInfoData;->getTransitions()[J

    move-result-object v0

    iput-object v0, p0, Llibcore/util/ZoneInfo;->mTransitions:[J

    .line 150
    invoke-virtual {p1}, Lcom/android/i18n/timezone/ZoneInfoData;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Llibcore/util/ZoneInfo;->setID(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public static blacklist createZoneInfo(Lcom/android/i18n/timezone/ZoneInfoData;)Llibcore/util/ZoneInfo;
    .registers 3
    .param p0, "delegate"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Llibcore/util/ZoneInfo;->createZoneInfo(Lcom/android/i18n/timezone/ZoneInfoData;J)Llibcore/util/ZoneInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createZoneInfo(Lcom/android/i18n/timezone/ZoneInfoData;J)Llibcore/util/ZoneInfo;
    .registers 7
    .param p0, "delegate"    # Lcom/android/i18n/timezone/ZoneInfoData;
    .param p1, "timeInMillis"    # J

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/timezone/ZoneInfoData;->getLatestDstSavingsMillis(J)Ljava/lang/Integer;

    move-result-object v0

    .line 140
    .local v0, "latestDstSavings":Ljava/lang/Integer;
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    move v2, v1

    .line 141
    .local v2, "useDst":Z
    :goto_a
    if-nez v0, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 142
    .local v1, "dstSavings":I
    :goto_11
    new-instance v3, Llibcore/util/ZoneInfo;

    invoke-direct {v3, p0, v1, v2}, Llibcore/util/ZoneInfo;-><init>(Lcom/android/i18n/timezone/ZoneInfoData;IZ)V

    return-object v3
.end method

.method private synthetic blacklist lambda$readObject$0(ILjava/lang/reflect/Field;)V
    .registers 3
    .param p1, "finalDstSavings"    # I
    .param p2, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 170
    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    return-void
.end method

.method private synthetic blacklist lambda$readObject$1(ZLjava/lang/reflect/Field;)V
    .registers 3
    .param p1, "useDst"    # Z
    .param p2, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 171
    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$readObject$2([JLjava/lang/reflect/Field;)V
    .registers 3
    .param p1, "transitions"    # [J
    .param p2, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 172
    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 154
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 157
    .local v0, "getField":Ljava/io/ObjectInputStream$GetField;
    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/i18n/timezone/ZoneInfoData;->createFromSerializationFields(Ljava/lang/String;Ljava/io/ObjectInputStream$GetField;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v1

    iput-object v1, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    .line 160
    const-string v1, "mUseDst"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v3

    .line 161
    .local v3, "useDst":Z
    const-string v4, "mDstSavings"

    invoke-virtual {v0, v4, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 162
    .local v2, "dstSavings":I
    iget-object v5, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v5}, Lcom/android/i18n/timezone/ZoneInfoData;->getTransitions()[J

    move-result-object v5

    .line 166
    .local v5, "transitions":[J
    if-nez v3, :cond_26

    if-eqz v2, :cond_26

    .line 167
    const/4 v2, 0x0

    .line 169
    :cond_26
    move v6, v2

    .line 170
    .local v6, "finalDstSavings":I
    new-instance v7, Llibcore/util/ZoneInfo$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v6}, Llibcore/util/ZoneInfo$$ExternalSyntheticLambda0;-><init>(Llibcore/util/ZoneInfo;I)V

    invoke-static {v4, v7}, Llibcore/util/ZoneInfo;->setFinalField(Ljava/lang/String;Llibcore/util/ZoneInfo$FieldSetter;)V

    .line 171
    new-instance v4, Llibcore/util/ZoneInfo$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3}, Llibcore/util/ZoneInfo$$ExternalSyntheticLambda1;-><init>(Llibcore/util/ZoneInfo;Z)V

    invoke-static {v1, v4}, Llibcore/util/ZoneInfo;->setFinalField(Ljava/lang/String;Llibcore/util/ZoneInfo$FieldSetter;)V

    .line 172
    new-instance v1, Llibcore/util/ZoneInfo$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v5}, Llibcore/util/ZoneInfo$$ExternalSyntheticLambda2;-><init>(Llibcore/util/ZoneInfo;[J)V

    const-string v4, "mTransitions"

    invoke-static {v4, v1}, Llibcore/util/ZoneInfo;->setFinalField(Ljava/lang/String;Llibcore/util/ZoneInfo$FieldSetter;)V

    .line 173
    return-void
.end method

.method private static blacklist setFinalField(Ljava/lang/String;Llibcore/util/ZoneInfo$FieldSetter;)V
    .registers 4
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "setter"    # Llibcore/util/ZoneInfo$FieldSetter;

    .line 186
    :try_start_0
    const-class v0, Llibcore/util/ZoneInfo;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 187
    .local v0, "mTransitionsField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 188
    invoke-interface {p1, v0}, Llibcore/util/ZoneInfo$FieldSetter;->set(Ljava/lang/reflect/Field;)V
    :try_end_d
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_d} :catch_e

    .line 191
    .end local v0    # "mTransitionsField":Ljava/lang/reflect/Field;
    goto :goto_f

    .line 189
    :catch_e
    move-exception v0

    .line 192
    :goto_f
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 177
    .local v0, "putField":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "mUseDst"

    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 178
    const-string v1, "mDstSavings"

    iget v2, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 180
    iget-object v1, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v1, v0}, Lcom/android/i18n/timezone/ZoneInfoData;->writeToSerializationFields(Ljava/io/ObjectOutputStream$PutField;)V

    .line 181
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 182
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 303
    new-instance v0, Llibcore/util/ZoneInfo;

    iget-object v1, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    iget v2, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    iget-boolean v3, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    invoke-direct {v0, v1, v2, v3}, Llibcore/util/ZoneInfo;-><init>(Lcom/android/i18n/timezone/ZoneInfoData;IZ)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 275
    instance-of v0, p1, Llibcore/util/ZoneInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 276
    return v1

    .line 278
    :cond_6
    move-object v0, p1

    check-cast v0, Llibcore/util/ZoneInfo;

    .line 279
    .local v0, "other":Llibcore/util/ZoneInfo;
    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0, v0}, Llibcore/util/ZoneInfo;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public whitelist test-api getDSTSavings()I
    .registers 2

    .line 249
    iget v0, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    return v0
.end method

.method public whitelist test-api getOffset(IIIIII)I
    .registers 15
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    .line 204
    div-int/lit16 v0, p2, 0x190

    int-to-long v0, v0

    const-wide v2, 0xb7af85d9c00L

    mul-long/2addr v0, v2

    .line 205
    .local v0, "calc":J
    rem-int/lit16 p2, p2, 0x190

    .line 207
    int-to-long v2, p2

    const-wide v4, 0x757b12c00L

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 208
    add-int/lit8 v2, p2, 0x3

    div-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 210
    if-lez p2, :cond_26

    .line 211
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 214
    :cond_26
    if-eqz p2, :cond_33

    rem-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_31

    rem-int/lit8 v2, p2, 0x64

    if-eqz v2, :cond_31

    goto :goto_33

    :cond_31
    const/4 v2, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v2, 0x1

    .line 215
    .local v2, "isLeap":Z
    :goto_34
    if-eqz v2, :cond_39

    sget-object v3, Llibcore/util/ZoneInfo;->LEAP:[I

    goto :goto_3b

    :cond_39
    sget-object v3, Llibcore/util/ZoneInfo;->NORMAL:[I

    .line 217
    .local v3, "mlen":[I
    :goto_3b
    aget v6, v3, p3

    int-to-long v6, v6

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 218
    add-int/lit8 v6, p4, -0x1

    int-to-long v6, v6

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 219
    int-to-long v4, p6

    add-long/2addr v0, v4

    .line 221
    iget-object v4, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v4}, Lcom/android/i18n/timezone/ZoneInfoData;->getRawOffset()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    .line 222
    const-wide v4, 0x388a6f046000L

    sub-long/2addr v0, v4

    .line 224
    iget-object v4, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v4, v0, v1}, Lcom/android/i18n/timezone/ZoneInfoData;->getOffset(J)I

    move-result v4

    return v4
.end method

.method public whitelist test-api getOffset(J)I
    .registers 4
    .param p1, "when"    # J

    .line 229
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/ZoneInfoData;->getOffset(J)I

    move-result v0

    return v0
.end method

.method public blacklist getOffsetsByUtcTime(J[I)I
    .registers 5
    .param p1, "utcTimeInMillis"    # J
    .param p3, "offsets"    # [I

    .line 307
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/i18n/timezone/ZoneInfoData;->getOffsetsByUtcTime(J[I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getRawOffset()I
    .registers 2

    .line 239
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoData;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hasSameRules(Ljava/util/TimeZone;)Z
    .registers 6
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 259
    instance-of v0, p1, Llibcore/util/ZoneInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 260
    return v1

    .line 262
    :cond_6
    move-object v0, p1

    check-cast v0, Llibcore/util/ZoneInfo;

    .line 264
    .local v0, "other":Llibcore/util/ZoneInfo;
    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    iget-boolean v3, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-eq v2, v3, :cond_10

    .line 265
    return v1

    .line 267
    :cond_10
    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-nez v2, :cond_22

    .line 268
    iget-object v2, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v2}, Lcom/android/i18n/timezone/ZoneInfoData;->getRawOffset()I

    move-result v2

    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getRawOffset()I

    move-result v3

    if-ne v2, v3, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1

    .line 270
    :cond_22
    iget-object v1, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    iget-object v2, v0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v1, v2}, Lcom/android/i18n/timezone/ZoneInfoData;->hasSameRules(Lcom/android/i18n/timezone/ZoneInfoData;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 288
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api inDaylightTime(Ljava/util/Date;)Z
    .registers 5
    .param p1, "time"    # Ljava/util/Date;

    .line 234
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/timezone/ZoneInfoData;->isInDaylightTime(J)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setRawOffset(I)V
    .registers 3
    .param p1, "off"    # I

    .line 244
    iget-object v0, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    invoke-virtual {v0, p1}, Lcom/android/i18n/timezone/ZoneInfoData;->createCopyWithRawOffset(I)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0

    iput-object v0, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    .line 245
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[mDstSavings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Llibcore/util/ZoneInfo;->mDstSavings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mUseDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mDelegate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/util/ZoneInfo;->mDelegate:Lcom/android/i18n/timezone/ZoneInfoData;

    .line 296
    invoke-virtual {v1}, Lcom/android/i18n/timezone/ZoneInfoData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    return-object v0
.end method

.method public whitelist test-api useDaylightTime()Z
    .registers 2

    .line 254
    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    return v0
.end method
