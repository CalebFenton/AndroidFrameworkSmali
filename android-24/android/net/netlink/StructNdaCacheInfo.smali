.class public Landroid/net/netlink/StructNdaCacheInfo;
.super Ljava/lang/Object;
.source "StructNdaCacheInfo.java"


# static fields
.field private static final CLOCK_TICKS_PER_SECOND:J

.field public static final STRUCT_SIZE:I = 0x10


# instance fields
.field public ndm_confirmed:I

.field public ndm_refcnt:I

.field public ndm_updated:I

.field public ndm_used:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 56
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    #@2
    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    #@5
    move-result-wide v0

    #@6
    sput-wide v0, Landroid/net/netlink/StructNdaCacheInfo;->CLOCK_TICKS_PER_SECOND:J

    #@8
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 37
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@6
    move-result v1

    #@7
    const/16 v2, 0x10

    #@9
    if-lt v1, v2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdaCacheInfo;
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 41
    invoke-static {p0}, Landroid/net/netlink/StructNdaCacheInfo;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 46
    :cond_0
    new-instance v0, Landroid/net/netlink/StructNdaCacheInfo;

    #@a
    invoke-direct {v0}, Landroid/net/netlink/StructNdaCacheInfo;-><init>()V

    #@d
    .line 47
    .local v0, "struct":Landroid/net/netlink/StructNdaCacheInfo;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@10
    move-result v1

    #@11
    iput v1, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_used:I

    #@13
    .line 48
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@16
    move-result v1

    #@17
    iput v1, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_confirmed:I

    #@19
    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@1c
    move-result v1

    #@1d
    iput v1, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_updated:I

    #@1f
    .line 50
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    #@22
    move-result v1

    #@23
    iput v1, v0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_refcnt:I

    #@25
    .line 51
    return-object v0
.end method

.method private static ticksToMilliSeconds(I)J
    .locals 6
    .param p0, "intClockTicks"    # I

    #@0
    .prologue
    .line 59
    int-to-long v2, p0

    #@1
    const-wide/16 v4, -0x1

    #@3
    and-long v0, v2, v4

    #@5
    .line 60
    .local v0, "longClockTicks":J
    const-wide/16 v2, 0x3e8

    #@7
    mul-long/2addr v2, v0

    #@8
    sget-wide v4, Landroid/net/netlink/StructNdaCacheInfo;->CLOCK_TICKS_PER_SECOND:J

    #@a
    div-long/2addr v2, v4

    #@b
    return-wide v2
.end method


# virtual methods
.method public lastConfirmed()J
    .locals 2

    #@0
    .prologue
    .line 101
    iget v0, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_confirmed:I

    #@2
    invoke-static {v0}, Landroid/net/netlink/StructNdaCacheInfo;->ticksToMilliSeconds(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public lastUpdated()J
    .locals 2

    #@0
    .prologue
    .line 105
    iget v0, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_updated:I

    #@2
    invoke-static {v0}, Landroid/net/netlink/StructNdaCacheInfo;->ticksToMilliSeconds(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public lastUsed()J
    .locals 2

    #@0
    .prologue
    .line 97
    iget v0, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_used:I

    #@2
    invoke-static {v0}, Landroid/net/netlink/StructNdaCacheInfo;->ticksToMilliSeconds(I)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NdaCacheInfo{ ndm_used{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 111
    invoke-virtual {p0}, Landroid/net/netlink/StructNdaCacheInfo;->lastUsed()J

    #@f
    move-result-wide v2

    #@10
    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 111
    const-string/jumbo v1, "}, "

    #@17
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 112
    const-string/jumbo v1, "ndm_confirmed{"

    #@1e
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 112
    invoke-virtual {p0}, Landroid/net/netlink/StructNdaCacheInfo;->lastConfirmed()J

    #@25
    move-result-wide v2

    #@26
    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 112
    const-string/jumbo v1, "}, "

    #@2d
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    .line 113
    const-string/jumbo v1, "ndm_updated{"

    #@34
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 113
    invoke-virtual {p0}, Landroid/net/netlink/StructNdaCacheInfo;->lastUpdated()J

    #@3b
    move-result-wide v2

    #@3c
    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 113
    const-string/jumbo v1, "}, "

    #@43
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 114
    const-string/jumbo v1, "ndm_refcnt{"

    #@4a
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 114
    iget v1, p0, Landroid/net/netlink/StructNdaCacheInfo;->ndm_refcnt:I

    #@50
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 114
    const-string/jumbo v1, "} "

    #@57
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 115
    const-string/jumbo v1, "}"

    #@5e
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    return-object v0
.end method
