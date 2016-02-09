.class public Landroid/os/Broadcaster;
.super Ljava/lang/Object;
.source "Broadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Broadcaster$Registration;
    }
.end annotation


# instance fields
.field private mReg:Landroid/os/Broadcaster$Registration;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public broadcast(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 173
    monitor-enter p0

    #@1
    .line 174
    :try_start_0
    iget-object v9, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v9, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 175
    return-void

    #@7
    .line 178
    :cond_0
    :try_start_1
    iget v4, p1, Landroid/os/Message;->what:I

    #@9
    .line 179
    .local v4, "senderWhat":I
    iget-object v5, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    #@b
    .line 180
    .local v5, "start":Landroid/os/Broadcaster$Registration;
    move-object v3, v5

    #@c
    .line 182
    .local v3, "r":Landroid/os/Broadcaster$Registration;
    :goto_0
    iget v9, v3, Landroid/os/Broadcaster$Registration;->senderWhat:I

    #@e
    if-lt v9, v4, :cond_2

    #@10
    .line 187
    :cond_1
    iget v9, v3, Landroid/os/Broadcaster$Registration;->senderWhat:I

    #@12
    if-ne v9, v4, :cond_3

    #@14
    .line 188
    iget-object v7, v3, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@16
    .line 189
    .local v7, "targets":[Landroid/os/Handler;
    iget-object v8, v3, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@18
    .line 190
    .local v8, "whats":[I
    array-length v2, v7

    #@19
    .line 191
    .local v2, "n":I
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    #@1c
    .line 192
    aget-object v6, v7, v0

    #@1e
    .line 193
    .local v6, "target":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@21
    move-result-object v1

    #@22
    .line 194
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    #@25
    .line 195
    aget v9, v8, v0

    #@27
    iput v9, v1, Landroid/os/Message;->what:I

    #@29
    .line 196
    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@2c
    .line 191
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_1

    #@2f
    .line 185
    .end local v0    # "i":I
    .end local v1    # "m":Landroid/os/Message;
    .end local v2    # "n":I
    .end local v6    # "target":Landroid/os/Handler;
    .end local v7    # "targets":[Landroid/os/Handler;
    .end local v8    # "whats":[I
    :cond_2
    iget-object v3, v3, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@31
    .line 186
    if-eq v3, v5, :cond_1

    #@33
    goto :goto_0

    #@34
    :cond_3
    monitor-exit p0

    #@35
    .line 171
    return-void

    #@36
    .line 173
    .end local v3    # "r":Landroid/os/Broadcaster$Registration;
    .end local v4    # "senderWhat":I
    .end local v5    # "start":Landroid/os/Broadcaster$Registration;
    :catchall_0
    move-exception v9

    #@37
    monitor-exit p0

    #@38
    throw v9
.end method

.method public cancelRequest(ILandroid/os/Handler;I)V
    .locals 10
    .param p1, "senderWhat"    # I
    .param p2, "target"    # Landroid/os/Handler;
    .param p3, "targetWhat"    # I

    #@0
    .prologue
    .line 101
    monitor-enter p0

    #@1
    .line 102
    :try_start_0
    iget-object v4, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 103
    .local v4, "start":Landroid/os/Broadcaster$Registration;
    move-object v2, v4

    #@4
    .line 105
    .local v2, "r":Landroid/os/Broadcaster$Registration;
    if-nez v2, :cond_1

    #@6
    monitor-exit p0

    #@7
    .line 106
    return-void

    #@8
    .line 113
    :cond_0
    :try_start_1
    iget-object v2, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    #@a
    .line 114
    if-eq v2, v4, :cond_2

    #@c
    .line 110
    :cond_1
    iget v7, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    #@e
    if-lt v7, p1, :cond_0

    #@10
    .line 116
    :cond_2
    iget v7, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    #@12
    if-ne v7, p1, :cond_4

    #@14
    .line 117
    iget-object v5, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@16
    .line 118
    .local v5, "targets":[Landroid/os/Handler;
    iget-object v6, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@18
    .line 119
    .local v6, "whats":[I
    array-length v1, v5

    #@19
    .line 120
    .local v1, "oldLen":I
    const/4 v0, 0x0

    #@1a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    #@1c
    .line 121
    aget-object v7, v5, v0

    #@1e
    if-ne v7, p2, :cond_5

    #@20
    aget v7, v6, v0

    #@22
    if-ne v7, p3, :cond_5

    #@24
    .line 122
    add-int/lit8 v7, v1, -0x1

    #@26
    new-array v7, v7, [Landroid/os/Handler;

    #@28
    iput-object v7, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@2a
    .line 123
    add-int/lit8 v7, v1, -0x1

    #@2c
    new-array v7, v7, [I

    #@2e
    iput-object v7, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@30
    .line 124
    if-lez v0, :cond_3

    #@32
    .line 125
    iget-object v7, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@34
    const/4 v8, 0x0

    #@35
    const/4 v9, 0x0

    #@36
    invoke-static {v5, v8, v7, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@39
    .line 126
    iget-object v7, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@3b
    const/4 v8, 0x0

    #@3c
    const/4 v9, 0x0

    #@3d
    invoke-static {v6, v8, v7, v9, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@40
    .line 129
    :cond_3
    sub-int v7, v1, v0

    #@42
    add-int/lit8 v3, v7, -0x1

    #@44
    .line 130
    .local v3, "remainingLen":I
    if-eqz v3, :cond_4

    #@46
    .line 131
    add-int/lit8 v7, v0, 0x1

    #@48
    iget-object v8, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@4a
    invoke-static {v5, v7, v8, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@4d
    .line 133
    add-int/lit8 v7, v0, 0x1

    #@4f
    iget-object v8, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@51
    invoke-static {v6, v7, v8, v0, v3}, Ljava/lang/System;->arraycopy([II[III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@54
    .end local v0    # "i":I
    .end local v1    # "oldLen":I
    .end local v3    # "remainingLen":I
    .end local v5    # "targets":[Landroid/os/Handler;
    .end local v6    # "whats":[I
    :cond_4
    monitor-exit p0

    #@55
    .line 99
    return-void

    #@56
    .line 120
    .restart local v0    # "i":I
    .restart local v1    # "oldLen":I
    .restart local v5    # "targets":[Landroid/os/Handler;
    .restart local v6    # "whats":[I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@58
    goto :goto_0

    #@59
    .line 101
    .end local v0    # "i":I
    .end local v1    # "oldLen":I
    .end local v2    # "r":Landroid/os/Broadcaster$Registration;
    .end local v4    # "start":Landroid/os/Broadcaster$Registration;
    .end local v5    # "targets":[Landroid/os/Handler;
    .end local v6    # "whats":[I
    :catchall_0
    move-exception v7

    #@5a
    monitor-exit p0

    #@5b
    throw v7
.end method

.method public dumpRegistrations()V
    .locals 7

    #@0
    .prologue
    .line 148
    monitor-enter p0

    #@1
    .line 149
    :try_start_0
    iget-object v3, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    #@3
    .line 150
    .local v3, "start":Landroid/os/Broadcaster$Registration;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5
    new-instance v5, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v6, "Broadcaster "

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v5

    #@11
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    const-string/jumbo v6, " {"

    #@18
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@23
    .line 151
    if-eqz v3, :cond_2

    #@25
    .line 152
    move-object v2, v3

    #@26
    .line 154
    .local v2, "r":Landroid/os/Broadcaster$Registration;
    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@28
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v6, "    senderWhat="

    #@30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v5

    #@34
    iget v6, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    #@36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v5

    #@3a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@41
    .line 155
    iget-object v4, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@43
    array-length v1, v4

    #@44
    .line 156
    .local v1, "n":I
    const/4 v0, 0x0

    #@45
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@47
    .line 157
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@49
    new-instance v5, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v6, "        ["

    #@51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    iget-object v6, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@57
    aget v6, v6, v0

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    .line 158
    const-string/jumbo v6, "] "

    #@60
    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    .line 158
    iget-object v6, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@66
    aget-object v6, v6, v0

    #@68
    .line 157
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@73
    .line 156
    add-int/lit8 v0, v0, 0x1

    #@75
    goto :goto_0

    #@76
    .line 160
    :cond_1
    iget-object v2, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    #@78
    .line 161
    if-ne v2, v3, :cond_0

    #@7a
    .line 163
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "r":Landroid/os/Broadcaster$Registration;
    :cond_2
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@7c
    const-string/jumbo v5, "}"

    #@7f
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@82
    monitor-exit p0

    #@83
    .line 146
    return-void

    #@84
    .line 148
    .end local v3    # "start":Landroid/os/Broadcaster$Registration;
    :catchall_0
    move-exception v4

    #@85
    monitor-exit p0

    #@86
    throw v4
.end method

.method public request(ILandroid/os/Handler;I)V
    .locals 11
    .param p1, "senderWhat"    # I
    .param p2, "target"    # Landroid/os/Handler;
    .param p3, "targetWhat"    # I

    #@0
    .prologue
    .line 34
    monitor-enter p0

    #@1
    .line 35
    const/4 v4, 0x0

    #@2
    .line 36
    .local v4, "r":Landroid/os/Broadcaster$Registration;
    :try_start_0
    iget-object v8, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    #@4
    if-nez v8, :cond_0

    #@6
    .line 37
    new-instance v5, Landroid/os/Broadcaster$Registration;

    #@8
    const/4 v8, 0x0

    #@9
    invoke-direct {v5, p0, v8}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$Registration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 38
    .local v5, "r":Landroid/os/Broadcaster$Registration;
    :try_start_1
    iput p1, v5, Landroid/os/Broadcaster$Registration;->senderWhat:I

    #@e
    .line 39
    .end local v4    # "r":Landroid/os/Broadcaster$Registration;
    const/4 v8, 0x1

    #@f
    new-array v8, v8, [Landroid/os/Handler;

    #@11
    iput-object v8, v5, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@13
    .line 40
    const/4 v8, 0x1

    #@14
    new-array v8, v8, [I

    #@16
    iput-object v8, v5, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@18
    .line 41
    iget-object v8, v5, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@1a
    const/4 v9, 0x0

    #@1b
    aput-object p2, v8, v9

    #@1d
    .line 42
    iget-object v8, v5, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@1f
    const/4 v9, 0x0

    #@20
    aput p3, v8, v9

    #@22
    .line 43
    iput-object v5, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    #@24
    .line 44
    iput-object v5, v5, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    #@26
    .line 45
    iput-object v5, v5, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@28
    move-object v4, v5

    #@29
    .end local v5    # "r":Landroid/os/Broadcaster$Registration;
    .local v4, "r":Landroid/os/Broadcaster$Registration;
    :goto_0
    monitor-exit p0

    #@2a
    .line 32
    return-void

    #@2b
    .line 48
    .local v4, "r":Landroid/os/Broadcaster$Registration;
    :cond_0
    :try_start_2
    iget-object v7, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    #@2d
    .line 49
    .local v7, "start":Landroid/os/Broadcaster$Registration;
    move-object v4, v7

    #@2e
    .line 51
    .local v4, "r":Landroid/os/Broadcaster$Registration;
    :goto_1
    iget v8, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    #@30
    if-lt v8, p1, :cond_3

    #@32
    .line 57
    :cond_1
    iget v8, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    #@34
    if-eq v8, p1, :cond_4

    #@36
    .line 60
    new-instance v6, Landroid/os/Broadcaster$Registration;

    #@38
    const/4 v8, 0x0

    #@39
    invoke-direct {v6, p0, v8}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster$Registration;)V

    #@3c
    .line 61
    .local v6, "reg":Landroid/os/Broadcaster$Registration;
    iput p1, v6, Landroid/os/Broadcaster$Registration;->senderWhat:I

    #@3e
    .line 62
    const/4 v8, 0x1

    #@3f
    new-array v8, v8, [Landroid/os/Handler;

    #@41
    iput-object v8, v6, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@43
    .line 63
    const/4 v8, 0x1

    #@44
    new-array v8, v8, [I

    #@46
    iput-object v8, v6, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@48
    .line 64
    iput-object v4, v6, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    #@4a
    .line 65
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    #@4c
    iput-object v8, v6, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    #@4e
    .line 66
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    #@50
    iput-object v6, v8, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    #@52
    .line 67
    iput-object v6, v4, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    #@54
    .line 69
    iget-object v8, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    #@56
    if-ne v4, v8, :cond_2

    #@58
    iget v8, v4, Landroid/os/Broadcaster$Registration;->senderWhat:I

    #@5a
    iget v9, v6, Landroid/os/Broadcaster$Registration;->senderWhat:I

    #@5c
    if-le v8, v9, :cond_2

    #@5e
    .line 70
    iput-object v6, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    #@60
    .line 73
    :cond_2
    move-object v4, v6

    #@61
    .line 74
    const/4 v1, 0x0

    #@62
    .line 90
    .end local v6    # "reg":Landroid/os/Broadcaster$Registration;
    .local v1, "n":I
    :goto_2
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@64
    aput-object p2, v8, v1

    #@66
    .line 91
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@68
    aput p3, v8, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6a
    goto :goto_0

    #@6b
    .line 34
    .end local v1    # "n":I
    .end local v4    # "r":Landroid/os/Broadcaster$Registration;
    .end local v7    # "start":Landroid/os/Broadcaster$Registration;
    :catchall_0
    move-exception v8

    #@6c
    :goto_3
    monitor-exit p0

    #@6d
    throw v8

    #@6e
    .line 54
    .restart local v4    # "r":Landroid/os/Broadcaster$Registration;
    .restart local v7    # "start":Landroid/os/Broadcaster$Registration;
    :cond_3
    :try_start_3
    iget-object v4, v4, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    #@70
    .line 55
    if-eq v4, v7, :cond_1

    #@72
    goto :goto_1

    #@73
    .line 76
    :cond_4
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@75
    array-length v1, v8

    #@76
    .line 77
    .restart local v1    # "n":I
    iget-object v2, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@78
    .line 78
    .local v2, "oldTargets":[Landroid/os/Handler;
    iget-object v3, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@7a
    .line 80
    .local v3, "oldWhats":[I
    const/4 v0, 0x0

    #@7b
    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_6

    #@7d
    .line 81
    aget-object v8, v2, v0

    #@7f
    if-ne v8, p2, :cond_5

    #@81
    aget v8, v3, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@83
    if-ne v8, p3, :cond_5

    #@85
    monitor-exit p0

    #@86
    .line 82
    return-void

    #@87
    .line 80
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@89
    goto :goto_4

    #@8a
    .line 85
    :cond_6
    add-int/lit8 v8, v1, 0x1

    #@8c
    :try_start_4
    new-array v8, v8, [Landroid/os/Handler;

    #@8e
    iput-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@90
    .line 86
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    #@92
    const/4 v9, 0x0

    #@93
    const/4 v10, 0x0

    #@94
    invoke-static {v2, v9, v8, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@97
    .line 87
    add-int/lit8 v8, v1, 0x1

    #@99
    new-array v8, v8, [I

    #@9b
    iput-object v8, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@9d
    .line 88
    iget-object v8, v4, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    #@9f
    const/4 v9, 0x0

    #@a0
    const/4 v10, 0x0

    #@a1
    invoke-static {v3, v9, v8, v10, v1}, Ljava/lang/System;->arraycopy([II[III)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a4
    goto :goto_2

    #@a5
    .line 34
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "oldTargets":[Landroid/os/Handler;
    .end local v3    # "oldWhats":[I
    .end local v4    # "r":Landroid/os/Broadcaster$Registration;
    .end local v7    # "start":Landroid/os/Broadcaster$Registration;
    .restart local v5    # "r":Landroid/os/Broadcaster$Registration;
    :catchall_1
    move-exception v8

    #@a6
    move-object v4, v5

    #@a7
    .end local v5    # "r":Landroid/os/Broadcaster$Registration;
    .restart local v4    # "r":Landroid/os/Broadcaster$Registration;
    goto :goto_3
.end method
