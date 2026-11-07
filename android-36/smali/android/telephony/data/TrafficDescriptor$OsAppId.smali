.class public final Landroid/telephony/data/TrafficDescriptor$OsAppId;
.super Ljava/lang/Object;
.source "TrafficDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/TrafficDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OsAppId"
.end annotation


# static fields
.field private static final blacklist ALLOWED_APP_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ANDROID_OS_ID:Ljava/util/UUID;


# instance fields
.field private final blacklist mAppId:Ljava/lang/String;

.field private final blacklist mDifferentiator:I

.field private final blacklist mOsId:Ljava/util/UUID;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetALLOWED_APP_IDS()Ljava/util/Set;
    .registers 1

    sget-object v0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ALLOWED_APP_IDS:Ljava/util/Set;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 49
    nop

    .line 50
    const-string v0, "97a498e3-fc92-5c94-8986-0333d06e4e47"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    .line 58
    const-string v0, "PRIORITIZE_BANDWIDTH"

    const-string v1, "CBS"

    const-string v2, "ENTERPRISE"

    const-string v3, "PRIORITIZE_LATENCY"

    invoke-static {v2, v3, v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ALLOWED_APP_IDS:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/lang/String;)V
    .registers 4
    .param p1, "osId"    # Ljava/util/UUID;
    .param p2, "appId"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>(Ljava/util/UUID;Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/UUID;Ljava/lang/String;I)V
    .registers 7
    .param p1, "osId"    # Ljava/util/UUID;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "differentiator"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    if-lt p3, v0, :cond_13

    .line 104
    iput-object p1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    .line 105
    iput-object p2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    .line 106
    iput p3, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    .line 107
    return-void

    .line 101
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid differentiator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([B)V
    .registers 11
    .param p1, "rawOsAppId"    # [B

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x1

    :try_start_4
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 118
    .local v1, "bb":Ljava/nio/ByteBuffer;
    new-instance v2, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    .line 120
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 122
    .local v2, "appIdLen":I
    new-array v3, v2, [B

    .line 123
    .local v3, "appIdAndDifferentiator":[B
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 125
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 126
    .local v4, "appIdAndDifferentiatorStr":Ljava/lang/String;
    const-string v5, "[^0-9]+([0-9]+)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 127
    .local v5, "pattern":Ljava/util/regex/Pattern;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 128
    .local v6, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 129
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    .line 130
    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    goto :goto_56

    .line 132
    :cond_52
    iput v0, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    .line 133
    iput-object v4, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_56} :catch_58

    .line 138
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "appIdLen":I
    .end local v3    # "appIdAndDifferentiator":[B
    .end local v4    # "appIdAndDifferentiatorStr":Ljava/lang/String;
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    :goto_56
    nop

    .line 139
    return-void

    .line 135
    :catch_58
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_74

    .line 137
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v0, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 187
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 188
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_32

    .line 189
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    .line 190
    .local v2, "osAppId":Landroid/telephony/data/TrafficDescriptor$OsAppId;
    iget v3, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    iget v4, v2, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    if-ne v3, v4, :cond_30

    iget-object v3, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    iget-object v4, v2, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 190
    :goto_31
    return v0

    .line 188
    .end local v2    # "osAppId":Landroid/telephony/data/TrafficDescriptor$OsAppId;
    :cond_32
    :goto_32
    return v1
.end method

.method public blacklist getAppId()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getBytes()[B
    .registers 5

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_17

    iget v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_19

    :cond_17
    const-string v1, ""

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 170
    .local v0, "osAppId":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x11

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 171
    .local v1, "bb":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 172
    iget-object v2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 173
    array-length v2, v0

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 174
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 175
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public blacklist getDifferentiator()I
    .registers 2

    .line 161
    iget v0, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    return v0
.end method

.method public blacklist getOsId()Ljava/util/UUID;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 196
    iget-object v0, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    iget v2, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OsAppId: OS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mOsId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", App="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", differentiator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;->mDifferentiator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    .line 182
    invoke-virtual {p0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    return-object v0
.end method
