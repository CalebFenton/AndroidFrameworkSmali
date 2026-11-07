.class public final Landroid/view/DisplayAddress$Physical;
.super Landroid/view/DisplayAddress;
.source "DisplayAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Physical"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayAddress$Physical;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MODEL_SHIFT:I = 0x8

.field private static final blacklist UNKNOWN_MODEL:J


# instance fields
.field private final blacklist mPhysicalDisplayId:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 177
    new-instance v0, Landroid/view/DisplayAddress$Physical$1;

    invoke-direct {v0}, Landroid/view/DisplayAddress$Physical$1;-><init>()V

    sput-object v0, Landroid/view/DisplayAddress$Physical;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Long;)V
    .registers 8
    .param p1, "port"    # I
    .param p2, "model"    # Ljava/lang/Long;

    .line 169
    invoke-direct {p0}, Landroid/view/DisplayAddress;-><init>()V

    .line 170
    if-ltz p1, :cond_1d

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1d

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    .line 174
    if-nez p2, :cond_12

    const-wide/16 v2, 0x0

    goto :goto_19

    :cond_12
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    :goto_19
    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    .line 175
    return-void

    .line 171
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The port should be in the interval [0, 255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/Long;Landroid/view/DisplayAddress-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/DisplayAddress$Physical;-><init>(ILjava/lang/Long;)V

    return-void
.end method

.method private constructor blacklist <init>(J)V
    .registers 3
    .param p1, "physicalDisplayId"    # J

    .line 165
    invoke-direct {p0}, Landroid/view/DisplayAddress;-><init>()V

    .line 166
    iput-wide p1, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    .line 167
    return-void
.end method

.method synthetic constructor blacklist <init>(JLandroid/view/DisplayAddress-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/DisplayAddress$Physical;-><init>(J)V

    return-void
.end method

.method public static blacklist isPortMatch(Landroid/view/DisplayAddress;Landroid/view/DisplayAddress;)Z
    .registers 7
    .param p0, "a1"    # Landroid/view/DisplayAddress;
    .param p1, "a2"    # Landroid/view/DisplayAddress;

    .line 151
    instance-of v0, p0, Landroid/view/DisplayAddress$Physical;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    instance-of v0, p1, Landroid/view/DisplayAddress$Physical;

    if-nez v0, :cond_a

    goto :goto_2d

    .line 154
    :cond_a
    move-object v0, p0

    check-cast v0, Landroid/view/DisplayAddress$Physical;

    .line 155
    .local v0, "p1":Landroid/view/DisplayAddress$Physical;
    move-object v2, p1

    check-cast v2, Landroid/view/DisplayAddress$Physical;

    .line 159
    .local v2, "p2":Landroid/view/DisplayAddress$Physical;
    invoke-virtual {v0}, Landroid/view/DisplayAddress$Physical;->getModel()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v2}, Landroid/view/DisplayAddress$Physical;->getModel()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 160
    invoke-virtual {v0, v2}, Landroid/view/DisplayAddress$Physical;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 162
    :cond_21
    invoke-virtual {v0}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v4

    if-ne v3, v4, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1

    .line 152
    .end local v0    # "p1":Landroid/view/DisplayAddress$Physical;
    .end local v2    # "p2":Landroid/view/DisplayAddress$Physical;
    :cond_2d
    :goto_2d
    return v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 114
    instance-of v0, p1, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_11

    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    move-object v2, p1

    check-cast v2, Landroid/view/DisplayAddress$Physical;

    iget-wide v2, v2, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public blacklist getModel()Ljava/lang/Long;
    .registers 5

    .line 108
    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    .line 109
    .local v0, "model":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    const/4 v2, 0x0

    goto :goto_11

    :cond_d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_11
    return-object v2
.end method

.method public blacklist getPhysicalDisplayId()J
    .registers 3

    .line 89
    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    return-wide v0
.end method

.method public blacklist getPort()I
    .registers 5

    .line 98
    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 133
    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    const-string v1, "port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getModel()Ljava/lang/Long;

    move-result-object v1

    .line 124
    .local v1, "model":Ljava/lang/Long;
    if-eqz v1, :cond_2d

    .line 125
    const-string v2, ", model=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_2d
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    return-void
.end method
