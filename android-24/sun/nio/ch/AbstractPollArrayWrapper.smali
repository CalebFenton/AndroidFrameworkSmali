.class abstract Lsun/nio/ch/AbstractPollArrayWrapper;
.super Ljava/lang/Object;
.source "AbstractPollArrayWrapper.java"


# static fields
.field static final EVENT_OFFSET:S = 0x4s

.field static final FD_OFFSET:S = 0x0s

.field static final POLLERR:S = 0x8s

.field static final POLLHUP:S = 0x10s

.field static final POLLIN:S = 0x1s

.field static final POLLNVAL:S = 0x20s

.field static final POLLOUT:S = 0x4s

.field static final POLLREMOVE:S = 0x800s

.field static final REVENT_OFFSET:S = 0x6s

.field static final SIZE_POLLFD:S = 0x8s


# instance fields
.field protected pollArray:Lsun/nio/ch/AllocatedNativeObject;

.field protected pollArrayAddress:J

.field protected totalChannels:I


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->totalChannels:I

    #@6
    .line 38
    return-void
.end method


# virtual methods
.method getDescriptor(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 75
    mul-int/lit8 v1, p1, 0x8

    #@2
    add-int/lit8 v0, v1, 0x0

    #@4
    .line 76
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@6
    invoke-virtual {v1, v0}, Lsun/nio/ch/AllocatedNativeObject;->getInt(I)I

    #@9
    move-result v1

    #@a
    return v1
.end method

.method getEventOps(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 65
    mul-int/lit8 v1, p1, 0x8

    #@2
    add-int/lit8 v0, v1, 0x4

    #@4
    .line 66
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@6
    invoke-virtual {v1, v0}, Lsun/nio/ch/AllocatedNativeObject;->getShort(I)S

    #@9
    move-result v1

    #@a
    return v1
.end method

.method getReventOps(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 70
    mul-int/lit8 v1, p1, 0x8

    #@2
    add-int/lit8 v0, v1, 0x6

    #@4
    .line 71
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@6
    invoke-virtual {v1, v0}, Lsun/nio/ch/AllocatedNativeObject;->getShort(I)S

    #@9
    move-result v1

    #@a
    return v1
.end method

.method putDescriptor(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "fd"    # I

    #@0
    .prologue
    .line 90
    mul-int/lit8 v1, p1, 0x8

    #@2
    add-int/lit8 v0, v1, 0x0

    #@4
    .line 91
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@6
    invoke-virtual {v1, v0, p2}, Lsun/nio/ch/AllocatedNativeObject;->putInt(II)V

    #@9
    .line 89
    return-void
.end method

.method putEventOps(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "event"    # I

    #@0
    .prologue
    .line 80
    mul-int/lit8 v1, p1, 0x8

    #@2
    add-int/lit8 v0, v1, 0x4

    #@4
    .line 81
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@6
    int-to-short v2, p2

    #@7
    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/AllocatedNativeObject;->putShort(IS)V

    #@a
    .line 79
    return-void
.end method

.method putReventOps(II)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "revent"    # I

    #@0
    .prologue
    .line 85
    mul-int/lit8 v1, p1, 0x8

    #@2
    add-int/lit8 v0, v1, 0x6

    #@4
    .line 86
    .local v0, "offset":I
    iget-object v1, p0, Lsun/nio/ch/AbstractPollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@6
    int-to-short v2, p2

    #@7
    invoke-virtual {v1, v0, v2}, Lsun/nio/ch/AllocatedNativeObject;->putShort(IS)V

    #@a
    .line 84
    return-void
.end method
