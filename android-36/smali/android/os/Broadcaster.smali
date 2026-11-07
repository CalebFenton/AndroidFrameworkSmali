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
.field private greylist-max-o mReg:Landroid/os/Broadcaster$Registration;


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public greylist-max-r broadcast(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 180
    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-nez v0, :cond_7

    .line 182
    monitor-exit p0

    return-void

    .line 185
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    .line 186
    .local v0, "senderWhat":I
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 187
    .local v1, "start":Landroid/os/Broadcaster$Registration;
    move-object v2, v1

    .line 189
    .local v2, "r":Landroid/os/Broadcaster$Registration;
    :cond_c
    iget v3, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v3, v0, :cond_11

    .line 190
    goto :goto_16

    .line 192
    :cond_11
    iget-object v3, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v2, v3

    .line 193
    if-ne v2, v1, :cond_c

    .line 194
    :goto_16
    iget v3, v2, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v3, v0, :cond_36

    .line 195
    iget-object v3, v2, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 196
    .local v3, "targets":[Landroid/os/Handler;
    iget-object v4, v2, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 197
    .local v4, "whats":[I
    array-length v5, v3

    .line 198
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_20
    if-ge v6, v5, :cond_36

    .line 199
    aget-object v7, v3, v6

    .line 200
    .local v7, "target":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v8

    .line 201
    .local v8, "m":Landroid/os/Message;
    invoke-virtual {v8, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 202
    aget v9, v4, v6

    iput v9, v8, Landroid/os/Message;->what:I

    .line 203
    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    nop

    .end local v7    # "target":Landroid/os/Handler;
    .end local v8    # "m":Landroid/os/Message;
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 206
    .end local v0    # "senderWhat":I
    .end local v1    # "start":Landroid/os/Broadcaster$Registration;
    .end local v2    # "r":Landroid/os/Broadcaster$Registration;
    .end local v3    # "targets":[Landroid/os/Handler;
    .end local v4    # "whats":[I
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_36
    monitor-exit p0

    .line 207
    return-void

    .line 206
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public greylist-max-r cancelRequest(ILandroid/os/Handler;I)V
    .registers 13
    .param p1, "senderWhat"    # I
    .param p2, "target"    # Landroid/os/Handler;
    .param p3, "targetWhat"    # I

    .line 107
    monitor-enter p0

    .line 108
    :try_start_1
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 109
    .local v0, "start":Landroid/os/Broadcaster$Registration;
    move-object v1, v0

    .line 111
    .local v1, "r":Landroid/os/Broadcaster$Registration;
    if-nez v1, :cond_8

    .line 112
    monitor-exit p0

    return-void

    .line 116
    :cond_8
    iget v2, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v2, p1, :cond_d

    .line 117
    goto :goto_12

    .line 119
    :cond_d
    iget-object v2, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v1, v2

    .line 120
    if-ne v1, v0, :cond_8

    .line 122
    :goto_12
    iget v2, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-ne v2, p1, :cond_57

    .line 123
    iget-object v2, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 124
    .local v2, "targets":[Landroid/os/Handler;
    iget-object v3, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 125
    .local v3, "whats":[I
    array-length v4, v2

    .line 126
    .local v4, "oldLen":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    if-ge v5, v4, :cond_57

    .line 127
    aget-object v6, v2, v5

    if-ne v6, p2, :cond_54

    aget v6, v3, v5

    if-ne v6, p3, :cond_54

    .line 128
    add-int/lit8 v6, v4, -0x1

    new-array v6, v6, [Landroid/os/Handler;

    iput-object v6, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 129
    add-int/lit8 v6, v4, -0x1

    new-array v6, v6, [I

    iput-object v6, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 130
    if-lez v5, :cond_3f

    .line 131
    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-static {v2, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v3, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    :cond_3f
    sub-int v6, v4, v5

    add-int/lit8 v6, v6, -0x1

    .line 136
    .local v6, "remainingLen":I
    if-eqz v6, :cond_57

    .line 137
    add-int/lit8 v7, v5, 0x1

    iget-object v8, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v2, v7, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    add-int/lit8 v7, v5, 0x1

    iget-object v8, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v3, v7, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_57

    .line 126
    .end local v6    # "remainingLen":I
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 146
    .end local v0    # "start":Landroid/os/Broadcaster$Registration;
    .end local v1    # "r":Landroid/os/Broadcaster$Registration;
    .end local v2    # "targets":[Landroid/os/Handler;
    .end local v3    # "whats":[I
    .end local v4    # "oldLen":I
    .end local v5    # "i":I
    :cond_57
    :goto_57
    monitor-exit p0

    .line 147
    return-void

    .line 146
    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public greylist-max-o dumpRegistrations()V
    .registers 8

    .line 154
    monitor-enter p0

    .line 155
    :try_start_1
    iget-object v0, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 156
    .local v0, "start":Landroid/os/Broadcaster$Registration;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcaster "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 157
    if-eqz v0, :cond_76

    .line 158
    move-object v1, v0

    .line 160
    .local v1, "r":Landroid/os/Broadcaster$Registration;
    :cond_24
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    senderWhat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    iget-object v2, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v2, v2

    .line 162
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_42
    if-ge v3, v2, :cond_71

    .line 163
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aget v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 166
    .end local v3    # "i":I
    :cond_71
    iget-object v3, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v1, v3

    .line 167
    .end local v2    # "n":I
    if-ne v1, v0, :cond_24

    .line 169
    .end local v1    # "r":Landroid/os/Broadcaster$Registration;
    :cond_76
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    .end local v0    # "start":Landroid/os/Broadcaster$Registration;
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_80
    move-exception v0

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_1 .. :try_end_82} :catchall_80

    throw v0
.end method

.method public greylist-max-r request(ILandroid/os/Handler;I)V
    .registers 12
    .param p1, "senderWhat"    # I
    .param p2, "target"    # Landroid/os/Handler;
    .param p3, "targetWhat"    # I

    .line 39
    monitor-enter p0

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "r":Landroid/os/Broadcaster$Registration;
    :try_start_2
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_28

    .line 42
    new-instance v1, Landroid/os/Broadcaster$Registration;

    invoke-direct {v1, p0, v2}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster-IA;)V

    .line 43
    .end local v0    # "r":Landroid/os/Broadcaster$Registration;
    .local v1, "r":Landroid/os/Broadcaster$Registration;
    iput p1, v1, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 44
    new-array v0, v4, [Landroid/os/Handler;

    iput-object v0, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 45
    new-array v0, v4, [I

    iput-object v0, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 46
    iget-object v0, v1, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, v0, v3

    .line 47
    iget-object v0, v1, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, v0, v3

    .line 48
    iput-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 49
    iput-object v1, v1, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 50
    iput-object v1, v1, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    goto/16 :goto_98

    .line 53
    .end local v1    # "r":Landroid/os/Broadcaster$Registration;
    .restart local v0    # "r":Landroid/os/Broadcaster$Registration;
    :cond_28
    iget-object v1, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 54
    .local v1, "start":Landroid/os/Broadcaster$Registration;
    move-object v0, v1

    .line 56
    :cond_2b
    iget v5, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-lt v5, p1, :cond_30

    .line 57
    goto :goto_35

    .line 59
    :cond_30
    iget-object v5, v0, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    move-object v0, v5

    .line 60
    if-ne v0, v1, :cond_2b

    .line 62
    :goto_35
    iget v5, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-eq v5, p1, :cond_63

    .line 65
    new-instance v3, Landroid/os/Broadcaster$Registration;

    invoke-direct {v3, p0, v2}, Landroid/os/Broadcaster$Registration;-><init>(Landroid/os/Broadcaster;Landroid/os/Broadcaster-IA;)V

    .line 66
    .local v3, "reg":Landroid/os/Broadcaster$Registration;
    iput p1, v3, Landroid/os/Broadcaster$Registration;->senderWhat:I

    .line 67
    new-array v2, v4, [Landroid/os/Handler;

    iput-object v2, v3, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 68
    new-array v2, v4, [I

    iput-object v2, v3, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 69
    iput-object v0, v3, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 70
    iget-object v2, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v2, v3, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 71
    iget-object v2, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    iput-object v3, v2, Landroid/os/Broadcaster$Registration;->next:Landroid/os/Broadcaster$Registration;

    .line 72
    iput-object v3, v0, Landroid/os/Broadcaster$Registration;->prev:Landroid/os/Broadcaster$Registration;

    .line 74
    iget-object v2, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    if-ne v0, v2, :cond_60

    iget v2, v0, Landroid/os/Broadcaster$Registration;->senderWhat:I

    iget v4, v3, Landroid/os/Broadcaster$Registration;->senderWhat:I

    if-le v2, v4, :cond_60

    .line 75
    iput-object v3, p0, Landroid/os/Broadcaster;->mReg:Landroid/os/Broadcaster$Registration;

    .line 78
    :cond_60
    move-object v0, v3

    .line 79
    const/4 v2, 0x0

    .line 80
    .end local v3    # "reg":Landroid/os/Broadcaster$Registration;
    .local v2, "n":I
    goto :goto_90

    .line 81
    .end local v2    # "n":I
    :cond_63
    iget-object v2, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    array-length v2, v2

    .line 82
    .restart local v2    # "n":I
    iget-object v4, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 83
    .local v4, "oldTargets":[Landroid/os/Handler;
    iget-object v5, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 85
    .local v5, "oldWhats":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6b
    if-ge v6, v2, :cond_7a

    .line 86
    aget-object v7, v4, v6

    if-ne v7, p2, :cond_77

    aget v7, v5, v6

    if-ne v7, p3, :cond_77

    .line 87
    monitor-exit p0

    return-void

    .line 85
    :cond_77
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    .line 90
    .end local v6    # "i":I
    :cond_7a
    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [Landroid/os/Handler;

    iput-object v6, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    .line 91
    iget-object v6, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    invoke-static {v4, v3, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    add-int/lit8 v6, v2, 0x1

    new-array v6, v6, [I

    iput-object v6, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    .line 93
    iget-object v6, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    invoke-static {v5, v3, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    .end local v4    # "oldTargets":[Landroid/os/Handler;
    .end local v5    # "oldWhats":[I
    :goto_90
    iget-object v3, v0, Landroid/os/Broadcaster$Registration;->targets:[Landroid/os/Handler;

    aput-object p2, v3, v2

    .line 96
    iget-object v3, v0, Landroid/os/Broadcaster$Registration;->targetWhats:[I

    aput p3, v3, v2

    .line 98
    .end local v0    # "r":Landroid/os/Broadcaster$Registration;
    .end local v1    # "start":Landroid/os/Broadcaster$Registration;
    .end local v2    # "n":I
    :goto_98
    monitor-exit p0

    .line 99
    return-void

    .line 98
    :catchall_9a
    move-exception v0

    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_2 .. :try_end_9c} :catchall_9a

    throw v0
.end method
