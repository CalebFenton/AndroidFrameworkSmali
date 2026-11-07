.class public abstract Landroid/filterfw/core/FilterPort;
.super Ljava/lang/Object;
.source "FilterPort.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "FilterPort"


# instance fields
.field protected greylist-max-o mChecksType:Z

.field protected greylist-max-o mFilter:Landroid/filterfw/core/Filter;

.field protected greylist-max-o mIsBlocking:Z

.field protected greylist-max-o mIsOpen:Z

.field private greylist-max-o mLogVerbose:Z

.field protected greylist-max-o mName:Ljava/lang/String;

.field protected greylist-max-o mPortFormat:Landroid/filterfw/core/FrameFormat;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .registers 5
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    .line 34
    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    .line 39
    iput-object p2, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    .line 41
    const-string v0, "FilterPort"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    .line 42
    return-void
.end method


# virtual methods
.method protected greylist-max-o assertPortIsOpen()V
    .registers 4

    .line 113
    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 116
    return-void

    .line 114
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal operation on closed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o checkFrameManager(Landroid/filterfw/core/Frame;Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 128
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 129
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    if-ne v0, v1, :cond_11

    goto :goto_30

    .line 130
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is managed by foreign FrameManager! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_30
    :goto_30
    return-void
.end method

.method protected greylist-max-o checkFrameType(Landroid/filterfw/core/Frame;Z)V
    .registers 6
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "forceCheck"    # Z

    .line 119
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    if-nez v0, :cond_6

    if-eqz p2, :cond_4a

    :cond_6
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_4a

    .line 121
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameFormat;->isCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_4a

    .line 122
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is of incorrect type! Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_4a
    :goto_4a
    return-void
.end method

.method public abstract greylist-max-o clear()V
.end method

.method public greylist-max-o close()V
    .registers 3

    .line 80
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    if-eqz v0, :cond_20

    .line 81
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Closing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterPort"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    .line 84
    return-void
.end method

.method public abstract greylist-max-o filterMustClose()Z
.end method

.method public greylist-max-o getFilter()Landroid/filterfw/core/Filter;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    return-object v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPortFormat()Landroid/filterfw/core/FrameFormat;
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    return-object v0
.end method

.method public abstract greylist-max-o hasFrame()Z
.end method

.method public greylist-max-o isAttached()Z
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o isBlocking()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    return v0
.end method

.method public greylist-max-o isOpen()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    return v0
.end method

.method public abstract greylist-max-o isReady()Z
.end method

.method public greylist-max-o open()V
    .registers 3

    .line 73
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    if-nez v0, :cond_20

    .line 74
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterPort"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    .line 77
    return-void
.end method

.method public abstract greylist-max-o pullFrame()Landroid/filterfw/core/Frame;
.end method

.method public abstract greylist-max-o pushFrame(Landroid/filterfw/core/Frame;)V
.end method

.method public greylist-max-o setBlocking(Z)V
    .registers 2
    .param p1, "blocking"    # Z

    .line 65
    iput-boolean p1, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    .line 66
    return-void
.end method

.method public greylist-max-o setChecksType(Z)V
    .registers 2
    .param p1, "checksType"    # Z

    .line 69
    iput-boolean p1, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    .line 70
    return-void
.end method

.method public abstract greylist-max-o setFrame(Landroid/filterfw/core/Frame;)V
.end method

.method public greylist-max-o setPortFormat(Landroid/filterfw/core/FrameFormat;)V
    .registers 2
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 53
    iput-object p1, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    .line 54
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "port \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
