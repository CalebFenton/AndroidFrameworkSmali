.class public abstract Landroid/filterfw/core/FilterPort;
.super Ljava/lang/Object;
.source "FilterPort.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterPort"


# instance fields
.field protected mChecksType:Z

.field protected mFilter:Landroid/filterfw/core/Filter;

.field protected mIsBlocking:Z

.field protected mIsOpen:Z

.field private mLogVerbose:Z

.field protected mName:Ljava/lang/String;

.field protected mPortFormat:Landroid/filterfw/core/FrameFormat;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/Filter;Ljava/lang/String;)V
    .locals 2
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 32
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    #@7
    .line 33
    iput-boolean v1, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    #@9
    .line 34
    iput-boolean v1, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    #@b
    .line 39
    iput-object p2, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    #@d
    .line 40
    iput-object p1, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    #@f
    .line 41
    const-string/jumbo v0, "FilterPort"

    #@12
    const/4 v1, 0x2

    #@13
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@16
    move-result v0

    #@17
    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    #@19
    .line 38
    return-void
.end method


# virtual methods
.method protected assertPortIsOpen()V
    .locals 3

    #@0
    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/filterfw/core/FilterPort;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Illegal operation on closed "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, "!"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 112
    :cond_0
    return-void
.end method

.method protected checkFrameManager(Landroid/filterfw/core/Frame;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 129
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@d
    move-result-object v1

    #@e
    if-eq v0, v1, :cond_0

    #@10
    .line 130
    new-instance v0, Ljava/lang/RuntimeException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Frame "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, " is managed by foreign FrameManager! "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 127
    :cond_0
    return-void
.end method

.method protected checkFrameType(Landroid/filterfw/core/Frame;Z)V
    .locals 3
    .param p1, "frame"    # Landroid/filterfw/core/Frame;
    .param p2, "forceCheck"    # Z

    #@0
    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    #@2
    if-nez v0, :cond_0

    #@4
    if-eqz p2, :cond_1

    #@6
    .line 120
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 121
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    #@10
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FrameFormat;->isCompatibleWith(Landroid/filterfw/core/FrameFormat;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_2

    #@16
    .line 118
    :cond_1
    return-void

    #@17
    .line 122
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "Frame passed to "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string/jumbo v2, " is of incorrect type! "

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 123
    const-string/jumbo v2, "Expected "

    #@33
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 123
    iget-object v2, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    #@39
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    .line 123
    const-string/jumbo v2, " but got "

    #@40
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    .line 123
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@47
    move-result-object v2

    #@48
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@53
    throw v0
.end method

.method public abstract clear()V
.end method

.method public close()V
    .locals 3

    #@0
    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 81
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v0, "FilterPort"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Closing "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 83
    :cond_0
    const/4 v0, 0x0

    #@23
    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    #@25
    .line 79
    return-void
.end method

.method public abstract filterMustClose()Z
.end method

.method public getFilter()Landroid/filterfw/core/Filter;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPortFormat()Landroid/filterfw/core/FrameFormat;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    #@2
    return-object v0
.end method

.method public abstract hasFrame()Z
.end method

.method public isAttached()Z
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isBlocking()Z
    .locals 1

    #@0
    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    #@2
    return v0
.end method

.method public isOpen()Z
    .locals 1

    #@0
    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    #@2
    return v0
.end method

.method public abstract isReady()Z
.end method

.method public open()V
    .locals 3

    #@0
    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 74
    iget-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mLogVerbose:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v0, "FilterPort"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Opening "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 76
    :cond_0
    const/4 v0, 0x1

    #@23
    iput-boolean v0, p0, Landroid/filterfw/core/FilterPort;->mIsOpen:Z

    #@25
    .line 72
    return-void
.end method

.method public abstract pullFrame()Landroid/filterfw/core/Frame;
.end method

.method public abstract pushFrame(Landroid/filterfw/core/Frame;)V
.end method

.method public setBlocking(Z)V
    .locals 0
    .param p1, "blocking"    # Z

    #@0
    .prologue
    .line 65
    iput-boolean p1, p0, Landroid/filterfw/core/FilterPort;->mIsBlocking:Z

    #@2
    .line 64
    return-void
.end method

.method public setChecksType(Z)V
    .locals 0
    .param p1, "checksType"    # Z

    #@0
    .prologue
    .line 69
    iput-boolean p1, p0, Landroid/filterfw/core/FilterPort;->mChecksType:Z

    #@2
    .line 68
    return-void
.end method

.method public abstract setFrame(Landroid/filterfw/core/Frame;)V
.end method

.method public setPortFormat(Landroid/filterfw/core/FrameFormat;)V
    .locals 0
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 53
    iput-object p1, p0, Landroid/filterfw/core/FilterPort;->mPortFormat:Landroid/filterfw/core/FrameFormat;

    #@2
    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "port \'"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mName:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "\' of "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/filterfw/core/FilterPort;->mFilter:Landroid/filterfw/core/Filter;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    return-object v0
.end method
