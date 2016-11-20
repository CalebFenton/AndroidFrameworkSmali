.class public Lcom/android/commands/requestsync/RequestSync;
.super Ljava/lang/Object;
.source "RequestSync.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mArgs:[Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mNextArg:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 33
    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    #@6
    .line 34
    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    #@8
    .line 35
    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    #@a
    .line 38
    new-instance v0, Landroid/os/Bundle;

    #@c
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@11
    .line 26
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 47
    :try_start_0
    new-instance v2, Lcom/android/commands/requestsync/RequestSync;

    #@2
    invoke-direct {v2}, Lcom/android/commands/requestsync/RequestSync;-><init>()V

    #@5
    invoke-direct {v2, p0}, Lcom/android/commands/requestsync/RequestSync;->run([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 45
    :goto_0
    return-void

    #@9
    .line 52
    :catch_0
    move-exception v0

    #@a
    .line 53
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    #@f
    .line 54
    const/4 v2, 0x1

    #@10
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    #@13
    goto :goto_0

    #@14
    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@15
    .line 49
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    #@18
    .line 50
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Error: "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@31
    .line 51
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    #@34
    goto :goto_0
.end method

.method private nextArg()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 188
    iget-object v1, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 189
    iget-object v0, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    #@7
    .line 190
    .local v0, "arg":Ljava/lang/String;
    iput-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    #@9
    .line 191
    return-object v0

    #@a
    .line 192
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    #@c
    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    #@e
    array-length v2, v2

    #@f
    if-ge v1, v2, :cond_1

    #@11
    .line 193
    iget-object v1, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    #@13
    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    #@15
    add-int/lit8 v3, v2, 0x1

    #@17
    iput v3, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    #@19
    aget-object v1, v1, v2

    #@1b
    return-object v1

    #@1c
    .line 195
    :cond_1
    return-object v3
.end method

.method private nextArgRequired()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 201
    .local v0, "arg":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 202
    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    #@8
    iget v3, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    #@a
    add-int/lit8 v3, v3, -0x1

    #@c
    aget-object v1, v2, v3

    #@e
    .line 203
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Argument expected after \""

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, "\""

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 205
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x0

    #@3
    .line 159
    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 160
    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    #@9
    iget v3, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    #@b
    add-int/lit8 v3, v3, -0x1

    #@d
    aget-object v1, v2, v3

    #@f
    .line 161
    .local v1, "prev":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "No argument expected after \""

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, "\""

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v2

    #@30
    .line 163
    .end local v1    # "prev":Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    #@32
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    #@34
    array-length v3, v3

    #@35
    if-lt v2, v3, :cond_1

    #@37
    .line 164
    return-object v4

    #@38
    .line 166
    :cond_1
    iget-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    #@3a
    iget v3, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    #@3c
    aget-object v0, v2, v3

    #@3e
    .line 167
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v2, "-"

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_2

    #@47
    .line 168
    return-object v4

    #@48
    .line 170
    :cond_2
    iget v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    #@4a
    add-int/lit8 v2, v2, 0x1

    #@4c
    iput v2, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    #@4e
    .line 171
    const-string/jumbo v2, "--"

    #@51
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_3

    #@57
    .line 172
    return-object v4

    #@58
    .line 174
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5b
    move-result v2

    #@5c
    if-le v2, v6, :cond_5

    #@5e
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    #@61
    move-result v2

    #@62
    const/16 v3, 0x2d

    #@64
    if-eq v2, v3, :cond_5

    #@66
    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@69
    move-result v2

    #@6a
    if-le v2, v5, :cond_4

    #@6c
    .line 176
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    iput-object v2, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    #@72
    .line 177
    const/4 v2, 0x0

    #@73
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    return-object v2

    #@78
    .line 179
    :cond_4
    iput-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    #@7a
    .line 180
    return-object v0

    #@7b
    .line 183
    :cond_5
    iput-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mCurArgData:Ljava/lang/String;

    #@7d
    .line 184
    return-object v0
.end method

.method private parseArgs()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, 0x1

    #@3
    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextOption()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_28

    #@9
    .line 90
    const-string/jumbo v3, "-h"

    #@c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_0

    #@12
    const-string/jumbo v3, "--help"

    #@15
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    .line 91
    :cond_0
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    #@1e
    .line 92
    return v7

    #@1f
    .line 93
    :cond_1
    const-string/jumbo v3, "-n"

    #@22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_2

    #@28
    const-string/jumbo v3, "--account-name"

    #@2b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_3

    #@31
    .line 94
    :cond_2
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    iput-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    #@37
    goto :goto_0

    #@38
    .line 95
    :cond_3
    const-string/jumbo v3, "-t"

    #@3b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v3

    #@3f
    if-nez v3, :cond_4

    #@41
    const-string/jumbo v3, "--account-type"

    #@44
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@47
    move-result v3

    #@48
    if-eqz v3, :cond_5

    #@4a
    .line 96
    :cond_4
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    iput-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    #@50
    goto :goto_0

    #@51
    .line 97
    :cond_5
    const-string/jumbo v3, "-a"

    #@54
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v3

    #@58
    if-nez v3, :cond_6

    #@5a
    const-string/jumbo v3, "--authority"

    #@5d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v3

    #@61
    if-eqz v3, :cond_7

    #@63
    .line 98
    :cond_6
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    iput-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    #@69
    goto :goto_0

    #@6a
    .line 99
    :cond_7
    const-string/jumbo v3, "--is"

    #@6d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v3

    #@71
    if-nez v3, :cond_8

    #@73
    const-string/jumbo v3, "--ignore-settings"

    #@76
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result v3

    #@7a
    if-eqz v3, :cond_9

    #@7c
    .line 100
    :cond_8
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@7e
    const-string/jumbo v4, "ignore_settings"

    #@81
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@84
    goto/16 :goto_0

    #@86
    .line 101
    :cond_9
    const-string/jumbo v3, "--ib"

    #@89
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v3

    #@8d
    if-nez v3, :cond_a

    #@8f
    const-string/jumbo v3, "--ignore-backoff"

    #@92
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v3

    #@96
    if-eqz v3, :cond_b

    #@98
    .line 102
    :cond_a
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@9a
    const-string/jumbo v4, "ignore_backoff"

    #@9d
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@a0
    goto/16 :goto_0

    #@a2
    .line 103
    :cond_b
    const-string/jumbo v3, "--dd"

    #@a5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v3

    #@a9
    if-nez v3, :cond_c

    #@ab
    const-string/jumbo v3, "--discard-deletions"

    #@ae
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v3

    #@b2
    if-eqz v3, :cond_d

    #@b4
    .line 104
    :cond_c
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@b6
    const-string/jumbo v4, "discard_deletions"

    #@b9
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@bc
    goto/16 :goto_0

    #@be
    .line 105
    :cond_d
    const-string/jumbo v3, "--nr"

    #@c1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result v3

    #@c5
    if-nez v3, :cond_e

    #@c7
    const-string/jumbo v3, "--no-retry"

    #@ca
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cd
    move-result v3

    #@ce
    if-eqz v3, :cond_f

    #@d0
    .line 106
    :cond_e
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@d2
    const-string/jumbo v4, "do_not_retry"

    #@d5
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@d8
    goto/16 :goto_0

    #@da
    .line 107
    :cond_f
    const-string/jumbo v3, "--ex"

    #@dd
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e0
    move-result v3

    #@e1
    if-nez v3, :cond_10

    #@e3
    const-string/jumbo v3, "--expedited"

    #@e6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e9
    move-result v3

    #@ea
    if-eqz v3, :cond_11

    #@ec
    .line 108
    :cond_10
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@ee
    const-string/jumbo v4, "expedited"

    #@f1
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@f4
    goto/16 :goto_0

    #@f6
    .line 109
    :cond_11
    const-string/jumbo v3, "-i"

    #@f9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fc
    move-result v3

    #@fd
    if-nez v3, :cond_12

    #@ff
    const-string/jumbo v3, "--initialize"

    #@102
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@105
    move-result v3

    #@106
    if-eqz v3, :cond_13

    #@108
    .line 110
    :cond_12
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@10a
    const-string/jumbo v4, "initialize"

    #@10d
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@110
    goto/16 :goto_0

    #@112
    .line 111
    :cond_13
    const-string/jumbo v3, "-m"

    #@115
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@118
    move-result v3

    #@119
    if-nez v3, :cond_14

    #@11b
    const-string/jumbo v3, "--manual"

    #@11e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@121
    move-result v3

    #@122
    if-eqz v3, :cond_15

    #@124
    .line 112
    :cond_14
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@126
    const-string/jumbo v4, "force"

    #@129
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@12c
    goto/16 :goto_0

    #@12e
    .line 113
    :cond_15
    const-string/jumbo v3, "--od"

    #@131
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@134
    move-result v3

    #@135
    if-nez v3, :cond_16

    #@137
    const-string/jumbo v3, "--override-deletions"

    #@13a
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13d
    move-result v3

    #@13e
    if-eqz v3, :cond_17

    #@140
    .line 114
    :cond_16
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@142
    const-string/jumbo v4, "deletions_override"

    #@145
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@148
    goto/16 :goto_0

    #@14a
    .line 115
    :cond_17
    const-string/jumbo v3, "-u"

    #@14d
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@150
    move-result v3

    #@151
    if-nez v3, :cond_18

    #@153
    const-string/jumbo v3, "--upload-only"

    #@156
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@159
    move-result v3

    #@15a
    if-eqz v3, :cond_19

    #@15c
    .line 116
    :cond_18
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@15e
    const-string/jumbo v4, "upload"

    #@161
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@164
    goto/16 :goto_0

    #@166
    .line 117
    :cond_19
    const-string/jumbo v3, "-e"

    #@169
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16c
    move-result v3

    #@16d
    if-nez v3, :cond_1a

    #@16f
    const-string/jumbo v3, "--es"

    #@172
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@175
    move-result v3

    #@176
    if-nez v3, :cond_1a

    #@178
    const-string/jumbo v3, "--extra-string"

    #@17b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17e
    move-result v3

    #@17f
    if-eqz v3, :cond_1b

    #@181
    .line 118
    :cond_1a
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@184
    move-result-object v0

    #@185
    .line 119
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@188
    move-result-object v2

    #@189
    .line 120
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@18b
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@18e
    goto/16 :goto_0

    #@190
    .line 121
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v3, "--esn"

    #@193
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@196
    move-result v3

    #@197
    if-nez v3, :cond_1c

    #@199
    const-string/jumbo v3, "--extra-string-null"

    #@19c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19f
    move-result v3

    #@1a0
    if-eqz v3, :cond_1d

    #@1a2
    .line 122
    :cond_1c
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@1a5
    move-result-object v0

    #@1a6
    .line 123
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@1a8
    invoke-virtual {v3, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@1ab
    goto/16 :goto_0

    #@1ad
    .line 124
    .end local v0    # "key":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v3, "--ei"

    #@1b0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b3
    move-result v3

    #@1b4
    if-nez v3, :cond_1e

    #@1b6
    const-string/jumbo v3, "--extra-int"

    #@1b9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1bc
    move-result v3

    #@1bd
    if-eqz v3, :cond_1f

    #@1bf
    .line 125
    :cond_1e
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@1c2
    move-result-object v0

    #@1c3
    .line 126
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@1c6
    move-result-object v2

    #@1c7
    .line 127
    .restart local v2    # "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@1c9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@1cc
    move-result-object v4

    #@1cd
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@1d0
    move-result v4

    #@1d1
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@1d4
    goto/16 :goto_0

    #@1d6
    .line 128
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v3, "--el"

    #@1d9
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1dc
    move-result v3

    #@1dd
    if-nez v3, :cond_20

    #@1df
    const-string/jumbo v3, "--extra-long"

    #@1e2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e5
    move-result v3

    #@1e6
    if-eqz v3, :cond_21

    #@1e8
    .line 129
    :cond_20
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@1eb
    move-result-object v0

    #@1ec
    .line 130
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@1ef
    move-result-object v2

    #@1f0
    .line 131
    .restart local v2    # "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@1f2
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@1f5
    move-result-object v4

    #@1f6
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@1f9
    move-result-wide v4

    #@1fa
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@1fd
    goto/16 :goto_0

    #@1ff
    .line 132
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_21
    const-string/jumbo v3, "--ef"

    #@202
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@205
    move-result v3

    #@206
    if-nez v3, :cond_22

    #@208
    const-string/jumbo v3, "--extra-float"

    #@20b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20e
    move-result v3

    #@20f
    if-eqz v3, :cond_23

    #@211
    .line 133
    :cond_22
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@214
    move-result-object v0

    #@215
    .line 134
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@218
    move-result-object v2

    #@219
    .line 135
    .restart local v2    # "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@21b
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@21e
    move-result-object v4

    #@21f
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@222
    move-result-wide v4

    #@223
    long-to-float v4, v4

    #@224
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@227
    goto/16 :goto_0

    #@229
    .line 136
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_23
    const-string/jumbo v3, "--ed"

    #@22c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22f
    move-result v3

    #@230
    if-nez v3, :cond_24

    #@232
    const-string/jumbo v3, "--extra-double"

    #@235
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@238
    move-result v3

    #@239
    if-eqz v3, :cond_25

    #@23b
    .line 137
    :cond_24
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@23e
    move-result-object v0

    #@23f
    .line 138
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@242
    move-result-object v2

    #@243
    .line 139
    .restart local v2    # "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@245
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@248
    move-result-object v4

    #@249
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@24c
    move-result-wide v4

    #@24d
    long-to-float v4, v4

    #@24e
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@251
    goto/16 :goto_0

    #@253
    .line 140
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_25
    const-string/jumbo v3, "--ez"

    #@256
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@259
    move-result v3

    #@25a
    if-nez v3, :cond_26

    #@25c
    const-string/jumbo v3, "--extra-bool"

    #@25f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@262
    move-result v3

    #@263
    if-eqz v3, :cond_27

    #@265
    .line 141
    :cond_26
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@268
    move-result-object v0

    #@269
    .line 142
    .restart local v0    # "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->nextArgRequired()Ljava/lang/String;

    #@26c
    move-result-object v2

    #@26d
    .line 143
    .restart local v2    # "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@26f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    #@272
    move-result-object v4

    #@273
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    #@276
    move-result v4

    #@277
    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@27a
    goto/16 :goto_0

    #@27c
    .line 145
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_27
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27e
    new-instance v4, Ljava/lang/StringBuilder;

    #@280
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@283
    const-string/jumbo v5, "Error: Unknown option: "

    #@286
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@289
    move-result-object v4

    #@28a
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v4

    #@28e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@291
    move-result-object v4

    #@292
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@295
    .line 146
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    #@298
    .line 147
    return v7

    #@299
    .line 151
    :cond_28
    iget v3, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    #@29b
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    #@29d
    array-length v4, v4

    #@29e
    if-ge v3, v4, :cond_29

    #@2a0
    .line 152
    invoke-static {}, Lcom/android/commands/requestsync/RequestSync;->showUsage()V

    #@2a3
    .line 153
    return v7

    #@2a4
    .line 155
    :cond_29
    return v6
.end method

.method private run([Ljava/lang/String;)V
    .locals 11
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 59
    iput-object p1, p0, Lcom/android/commands/requestsync/RequestSync;->mArgs:[Ljava/lang/String;

    #@5
    .line 60
    iput v8, p0, Lcom/android/commands/requestsync/RequestSync;->mNextArg:I

    #@7
    .line 62
    invoke-direct {p0}, Lcom/android/commands/requestsync/RequestSync;->parseArgs()Z

    #@a
    move-result v3

    #@b
    .line 63
    .local v3, "ok":Z
    if-eqz v3, :cond_4

    #@d
    .line 64
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    #@f
    if-eqz v4, :cond_0

    #@11
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    #@13
    if-eqz v4, :cond_0

    #@15
    .line 65
    new-instance v0, Landroid/accounts/Account;

    #@17
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountName:Ljava/lang/String;

    #@19
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mAccountType:Ljava/lang/String;

    #@1b
    invoke-direct {v0, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 67
    :goto_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@20
    const-string/jumbo v5, "Requesting sync for: \n"

    #@23
    new-array v6, v8, [Ljava/lang/Object;

    #@25
    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@28
    .line 68
    if-eqz v0, :cond_1

    #@2a
    .line 69
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2c
    const-string/jumbo v5, "  Account: %s (%s)\n"

    #@2f
    new-array v6, v10, [Ljava/lang/Object;

    #@31
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    #@33
    aput-object v7, v6, v8

    #@35
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    #@37
    aput-object v7, v6, v9

    #@39
    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@3c
    .line 74
    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3e
    const-string/jumbo v6, "  Authority: %s\n"

    #@41
    new-array v7, v9, [Ljava/lang/Object;

    #@43
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    #@45
    if-eqz v4, :cond_2

    #@47
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    #@49
    :goto_2
    aput-object v4, v7, v8

    #@4b
    invoke-virtual {v5, v6, v7}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@4e
    .line 76
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@50
    invoke-virtual {v4}, Landroid/os/Bundle;->size()I

    #@53
    move-result v4

    #@54
    if-lez v4, :cond_3

    #@56
    .line 77
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@58
    const-string/jumbo v5, "  Extras:\n"

    #@5b
    new-array v6, v8, [Ljava/lang/Object;

    #@5d
    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@60
    .line 78
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@62
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@65
    move-result-object v4

    #@66
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@69
    move-result-object v2

    #@6a
    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@6d
    move-result v4

    #@6e
    if-eqz v4, :cond_3

    #@70
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@73
    move-result-object v1

    #@74
    check-cast v1, Ljava/lang/String;

    #@76
    .line 79
    .local v1, "key":Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@78
    const-string/jumbo v5, "    %s: %s\n"

    #@7b
    new-array v6, v10, [Ljava/lang/Object;

    #@7d
    aput-object v1, v6, v8

    #@7f
    iget-object v7, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@81
    invoke-virtual {v7, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@84
    move-result-object v7

    #@85
    aput-object v7, v6, v9

    #@87
    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@8a
    goto :goto_3

    #@8b
    .line 65
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    #@8c
    .local v0, "account":Landroid/accounts/Account;
    goto :goto_0

    #@8d
    .line 71
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8f
    const-string/jumbo v5, "  Account: all\n"

    #@92
    new-array v6, v8, [Ljava/lang/Object;

    #@94
    invoke-virtual {v4, v5, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    #@97
    goto :goto_1

    #@98
    .line 74
    :cond_2
    const-string/jumbo v4, "All"

    #@9b
    goto :goto_2

    #@9c
    .line 83
    :cond_3
    iget-object v4, p0, Lcom/android/commands/requestsync/RequestSync;->mAuthority:Ljava/lang/String;

    #@9e
    iget-object v5, p0, Lcom/android/commands/requestsync/RequestSync;->mExtras:Landroid/os/Bundle;

    #@a0
    invoke-static {v0, v4, v5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    #@a3
    .line 58
    :cond_4
    return-void
.end method

.method private static showUsage()V
    .locals 2

    #@0
    .prologue
    .line 209
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    .line 210
    const-string/jumbo v1, "usage: requestsync [options]\nWith no options, a sync will be requested for all account and all sync\nauthorities with no extras. Options can be:\n    -h|--help: Display this message\n    -n|--account-name <ACCOUNT-NAME>\n    -t|--account-type <ACCOUNT-TYPE>\n    -a|--authority <AUTHORITY>\n  Add ContentResolver extras:\n    --is|--ignore-settings: Add SYNC_EXTRAS_IGNORE_SETTINGS\n    --ib|--ignore-backoff: Add SYNC_EXTRAS_IGNORE_BACKOFF\n    --dd|--discard-deletions: Add SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS\n    --nr|--no-retry: Add SYNC_EXTRAS_DO_NOT_RETRY\n    --ex|--expedited: Add SYNC_EXTRAS_EXPEDITED\n    --i|--initialize: Add SYNC_EXTRAS_INITIALIZE\n    --m|--manual: Add SYNC_EXTRAS_MANUAL\n    --od|--override-deletions: Add SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS\n    --u|--upload-only: Add SYNC_EXTRAS_UPLOAD\n  Add custom extras:\n    -e|--es|--extra-string <KEY> <VALUE>\n    --esn|--extra-string-null <KEY>\n    --ei|--extra-int <KEY> <VALUE>\n    --el|--extra-long <KEY> <VALUE>\n    --ef|--extra-float <KEY> <VALUE>\n    --ed|--extra-double <KEY> <VALUE>\n    --ez|--extra-bool <KEY> <VALUE>\n"

    #@5
    .line 209
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 208
    return-void
.end method
