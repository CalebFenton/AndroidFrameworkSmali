.class Lsun/nio/ch/PollArrayWrapper;
.super Lsun/nio/ch/AbstractPollArrayWrapper;
.source "PollArrayWrapper.java"


# static fields
.field static final POLLCONN:S = 0x4s


# instance fields
.field interruptFD:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "newSize"    # I

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Lsun/nio/ch/AbstractPollArrayWrapper;-><init>()V

    #@3
    .line 52
    add-int/lit8 v0, p1, 0x1

    #@5
    mul-int/lit8 p1, v0, 0x8

    #@7
    .line 53
    new-instance v0, Lsun/nio/ch/AllocatedNativeObject;

    #@9
    const/4 v1, 0x0

    #@a
    invoke-direct {v0, p1, v1}, Lsun/nio/ch/AllocatedNativeObject;-><init>(IZ)V

    #@d
    iput-object v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@f
    .line 54
    iget-object v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@11
    invoke-virtual {v0}, Lsun/nio/ch/AllocatedNativeObject;->address()J

    #@14
    move-result-wide v0

    #@15
    iput-wide v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArrayAddress:J

    #@17
    .line 55
    const/4 v0, 0x1

    #@18
    iput v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    #@1a
    .line 51
    return-void
.end method

.method private static native interrupt(I)V
.end method

.method private native poll0(JIJ)I
.end method

.method static replaceEntry(Lsun/nio/ch/PollArrayWrapper;ILsun/nio/ch/PollArrayWrapper;I)V
    .locals 1
    .param p0, "source"    # Lsun/nio/ch/PollArrayWrapper;
    .param p1, "sindex"    # I
    .param p2, "target"    # Lsun/nio/ch/PollArrayWrapper;
    .param p3, "tindex"    # I

    #@0
    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lsun/nio/ch/PollArrayWrapper;->getDescriptor(I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p2, p3, v0}, Lsun/nio/ch/PollArrayWrapper;->putDescriptor(II)V

    #@7
    .line 92
    invoke-virtual {p0, p1}, Lsun/nio/ch/PollArrayWrapper;->getEventOps(I)I

    #@a
    move-result v0

    #@b
    invoke-virtual {p2, p3, v0}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V

    #@e
    .line 93
    invoke-virtual {p0, p1}, Lsun/nio/ch/PollArrayWrapper;->getReventOps(I)I

    #@11
    move-result v0

    #@12
    invoke-virtual {p2, p3, v0}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    #@15
    .line 90
    return-void
.end method


# virtual methods
.method addEntry(Lsun/nio/ch/SelChImpl;)V
    .locals 3
    .param p1, "sc"    # Lsun/nio/ch/SelChImpl;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 77
    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    #@3
    invoke-interface {p1}, Lsun/nio/ch/SelChImpl;->getFD()Ljava/io/FileDescriptor;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Lsun/nio/ch/IOUtil;->fdVal(Ljava/io/FileDescriptor;)I

    #@a
    move-result v1

    #@b
    invoke-virtual {p0, v0, v1}, Lsun/nio/ch/PollArrayWrapper;->putDescriptor(II)V

    #@e
    .line 78
    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    #@10
    invoke-virtual {p0, v0, v2}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V

    #@13
    .line 79
    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    #@15
    invoke-virtual {p0, v0, v2}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    #@18
    .line 80
    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    iput v0, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    #@1e
    .line 76
    return-void
.end method

.method free()V
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@2
    invoke-virtual {v0}, Lsun/nio/ch/AllocatedNativeObject;->free()V

    #@5
    .line 69
    return-void
.end method

.method grow(I)V
    .locals 4
    .param p1, "newSize"    # I

    #@0
    .prologue
    .line 104
    new-instance v1, Lsun/nio/ch/PollArrayWrapper;

    #@2
    invoke-direct {v1, p1}, Lsun/nio/ch/PollArrayWrapper;-><init>(I)V

    #@5
    .line 107
    .local v1, "temp":Lsun/nio/ch/PollArrayWrapper;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lsun/nio/ch/PollArrayWrapper;->totalChannels:I

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 108
    invoke-static {p0, v0, v1, v0}, Lsun/nio/ch/PollArrayWrapper;->replaceEntry(Lsun/nio/ch/PollArrayWrapper;ILsun/nio/ch/PollArrayWrapper;I)V

    #@d
    .line 107
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 111
    :cond_0
    iget-object v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@12
    invoke-virtual {v2}, Lsun/nio/ch/AllocatedNativeObject;->free()V

    #@15
    .line 112
    iget-object v2, v1, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@17
    iput-object v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@19
    .line 113
    iget-object v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArray:Lsun/nio/ch/AllocatedNativeObject;

    #@1b
    invoke-virtual {v2}, Lsun/nio/ch/AllocatedNativeObject;->address()J

    #@1e
    move-result-wide v2

    #@1f
    iput-wide v2, p0, Lsun/nio/ch/PollArrayWrapper;->pollArrayAddress:J

    #@21
    .line 102
    return-void
.end method

.method initInterrupt(II)V
    .locals 2
    .param p1, "fd0"    # I
    .param p2, "fd1"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 59
    iput p2, p0, Lsun/nio/ch/PollArrayWrapper;->interruptFD:I

    #@3
    .line 60
    invoke-virtual {p0, v1, p1}, Lsun/nio/ch/PollArrayWrapper;->putDescriptor(II)V

    #@6
    .line 61
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v1, v0}, Lsun/nio/ch/PollArrayWrapper;->putEventOps(II)V

    #@a
    .line 62
    invoke-virtual {p0, v1, v1}, Lsun/nio/ch/PollArrayWrapper;->putReventOps(II)V

    #@d
    .line 58
    return-void
.end method

.method public interrupt()V
    .locals 1

    #@0
    .prologue
    .line 122
    iget v0, p0, Lsun/nio/ch/PollArrayWrapper;->interruptFD:I

    #@2
    invoke-static {v0}, Lsun/nio/ch/PollArrayWrapper;->interrupt(I)V

    #@5
    .line 121
    return-void
.end method

.method poll(IIJ)I
    .locals 7
    .param p1, "numfds"    # I
    .param p2, "offset"    # I
    .param p3, "timeout"    # J

    #@0
    .prologue
    .line 117
    iget-wide v0, p0, Lsun/nio/ch/PollArrayWrapper;->pollArrayAddress:J

    #@2
    mul-int/lit8 v2, p2, 0x8

    #@4
    int-to-long v2, v2

    #@5
    add-long v1, v0, v2

    #@7
    move-object v0, p0

    #@8
    move v3, p1

    #@9
    move-wide v4, p3

    #@a
    invoke-direct/range {v0 .. v5}, Lsun/nio/ch/PollArrayWrapper;->poll0(JIJ)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method release(I)V
    .locals 0
    .param p1, "i"    # I

    #@0
    .prologue
    .line 66
    return-void
.end method
