.class public abstract Lsun/nio/ch/AbstractPollArrayWrapper;
.super Ljava/lang/Object;
.source "AbstractPollArrayWrapper.java"


# static fields
.field static final blacklist EVENT_OFFSET:S = 0x4s

.field static final blacklist FD_OFFSET:S = 0x0s

.field static final blacklist REVENT_OFFSET:S = 0x6s

.field static final blacklist SIZE_POLLFD:S = 0x8s


# instance fields
.field protected blacklist pollArray:Lsun/nio/ch/AllocatedNativeObject;

.field protected blacklist pollArrayAddress:J

.field protected blacklist totalChannels:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->totalChannels:I

    return-void
.end method


# virtual methods
.method blacklist getDescriptor(I)I
    .registers 4
    .param p1, "i"    # I

    .line 67
    mul-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x0

    .line 68
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0}, Lsun/nio/ch/AllocatedNativeObject;->getInt(I)I

    move-result v1

    return v1
.end method

.method blacklist getEventOps(I)I
    .registers 4
    .param p1, "i"    # I

    .line 57
    mul-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    .line 58
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0}, Lsun/nio/ch/AllocatedNativeObject;->getShort(I)S

    move-result v1

    return v1
.end method

.method blacklist getReventOps(I)I
    .registers 4
    .param p1, "i"    # I

    .line 62
    mul-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x6

    .line 63
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0}, Lsun/nio/ch/AllocatedNativeObject;->getShort(I)S

    move-result v1

    return v1
.end method

.method blacklist putDescriptor(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "fd"    # I

    .line 82
    mul-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x0

    .line 83
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    invoke-virtual {v1, v0, p2}, Lsun/nio/ch/AllocatedNativeObject;->putInt(II)V

    .line 84
    return-void
.end method

.method blacklist putEventOps(II)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "event"    # I

    .line 72
    mul-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    .line 73
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    int-to-short v2, p2

    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/AllocatedNativeObject;->putShort(IS)V

    .line 74
    return-void
.end method

.method blacklist putReventOps(II)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "revent"    # I

    .line 77
    mul-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x6

    .line 78
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    int-to-short v2, p2

    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/AllocatedNativeObject;->putShort(IS)V

    .line 79
    return-void
.end method
