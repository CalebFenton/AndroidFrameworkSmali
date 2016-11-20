.class public final Lcom/android/commands/ime/Ime;
.super Ljava/lang/Object;
.source "Ime.java"


# static fields
.field private static final IMM_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Input Method Manager.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field private mCurArgData:Ljava/lang/String;

.field mImm:Lcom/android/internal/view/IInputMethodManager;

.field private mNextArg:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 40
    new-instance v0, Lcom/android/commands/ime/Ime;

    #@2
    invoke-direct {v0}, Lcom/android/commands/ime/Ime;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/commands/ime/Ime;->run([Ljava/lang/String;)V

    #@8
    .line 39
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 224
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@2
    iget-object v2, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    #@4
    array-length v2, v2

    #@5
    if-lt v1, v2, :cond_0

    #@7
    .line 225
    const/4 v1, 0x0

    #@8
    return-object v1

    #@9
    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    #@b
    iget v2, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@d
    aget-object v0, v1, v2

    #@f
    .line 228
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    iput v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@15
    .line 229
    return-object v0
.end method

.method private nextOption()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x0

    #@3
    .line 187
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@5
    iget-object v2, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    #@7
    array-length v2, v2

    #@8
    if-lt v1, v2, :cond_0

    #@a
    .line 188
    return-object v3

    #@b
    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    #@d
    iget v2, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@f
    aget-object v0, v1, v2

    #@11
    .line 191
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v1, "-"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 192
    return-object v3

    #@1b
    .line 194
    :cond_1
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    iput v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@21
    .line 195
    const-string/jumbo v1, "--"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 196
    return-object v3

    #@2b
    .line 198
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@2e
    move-result v1

    #@2f
    if-le v1, v5, :cond_4

    #@31
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v1

    #@35
    const/16 v2, 0x2d

    #@37
    if-eq v1, v2, :cond_4

    #@39
    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@3c
    move-result v1

    #@3d
    if-le v1, v4, :cond_3

    #@3f
    .line 200
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    iput-object v1, p0, Lcom/android/commands/ime/Ime;->mCurArgData:Ljava/lang/String;

    #@45
    .line 201
    const/4 v1, 0x0

    #@46
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 203
    :cond_3
    iput-object v3, p0, Lcom/android/commands/ime/Ime;->mCurArgData:Ljava/lang/String;

    #@4d
    .line 204
    return-object v0

    #@4e
    .line 207
    :cond_4
    iput-object v3, p0, Lcom/android/commands/ime/Ime;->mCurArgData:Ljava/lang/String;

    #@50
    .line 208
    return-object v0
.end method

.method private nextOptionData()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 212
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mCurArgData:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 213
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mCurArgData:Ljava/lang/String;

    #@7
    return-object v1

    #@8
    .line 215
    :cond_0
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@a
    iget-object v2, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    #@c
    array-length v2, v2

    #@d
    if-lt v1, v2, :cond_1

    #@f
    .line 216
    return-object v3

    #@10
    .line 218
    :cond_1
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    #@12
    iget v2, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@14
    aget-object v0, v1, v2

    #@16
    .line 219
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@1c
    .line 220
    return-object v0
.end method

.method private runList()V
    .locals 11

    #@0
    .prologue
    .line 90
    const/4 v0, 0x0

    #@1
    .line 91
    .local v0, "all":Z
    const/4 v1, 0x0

    #@2
    .line 92
    .local v1, "brief":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/commands/ime/Ime;->nextOption()Ljava/lang/String;

    #@5
    move-result-object v6

    #@6
    .local v6, "opt":Ljava/lang/String;
    if-eqz v6, :cond_2

    #@8
    .line 93
    const-string/jumbo v8, "-a"

    #@b
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v8

    #@f
    if-eqz v8, :cond_0

    #@11
    .line 94
    const/4 v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 95
    :cond_0
    const-string/jumbo v8, "-s"

    #@16
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v8

    #@1a
    if-eqz v8, :cond_1

    #@1c
    .line 96
    const/4 v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 98
    :cond_1
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@20
    new-instance v9, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v10, "Error: Unknown option: "

    #@28
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v9

    #@2c
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v9

    #@30
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v9

    #@34
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@37
    .line 99
    invoke-static {}, Lcom/android/commands/ime/Ime;->showUsage()V

    #@3a
    .line 100
    return-void

    #@3b
    .line 106
    :cond_2
    if-nez v0, :cond_3

    #@3d
    .line 108
    :try_start_0
    iget-object v8, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    #@3f
    invoke-interface {v8}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    move-result-object v5

    #@43
    .line 124
    .local v5, "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_1
    if-eqz v5, :cond_5

    #@45
    .line 125
    new-instance v7, Landroid/util/PrintStreamPrinter;

    #@47
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@49
    invoke-direct {v7, v8}, Landroid/util/PrintStreamPrinter;-><init>(Ljava/io/PrintStream;)V

    #@4c
    .line 126
    .local v7, "pr":Landroid/util/Printer;
    const/4 v3, 0x0

    #@4d
    .local v3, "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@50
    move-result v8

    #@51
    if-ge v3, v8, :cond_5

    #@53
    .line 127
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v4

    #@57
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    #@59
    .line 128
    .local v4, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_4

    #@5b
    .line 129
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5d
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@60
    move-result-object v9

    #@61
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@64
    .line 126
    :goto_3
    add-int/lit8 v3, v3, 0x1

    #@66
    goto :goto_2

    #@67
    .line 109
    .end local v3    # "i":I
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7    # "pr":Landroid/util/Printer;
    :catch_0
    move-exception v2

    #@68
    .line 110
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6a
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@71
    .line 111
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@73
    const-string/jumbo v9, "Error: Could not access the Input Method Manager.  Is the system running?"

    #@76
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@79
    .line 112
    return-void

    #@7a
    .line 116
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    #@7c
    invoke-interface {v8}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@7f
    move-result-object v5

    #@80
    .restart local v5    # "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    goto :goto_1

    #@81
    .line 117
    .end local v5    # "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catch_1
    move-exception v2

    #@82
    .line 118
    .restart local v2    # "e":Landroid/os/RemoteException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@84
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8b
    .line 119
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8d
    const-string/jumbo v9, "Error: Could not access the Input Method Manager.  Is the system running?"

    #@90
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@93
    .line 120
    return-void

    #@94
    .line 131
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v3    # "i":I
    .restart local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v5    # "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .restart local v7    # "pr":Landroid/util/Printer;
    :cond_4
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@96
    new-instance v9, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    #@9e
    move-result-object v10

    #@9f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v9

    #@a3
    const-string/jumbo v10, ":"

    #@a6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v9

    #@aa
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ad
    move-result-object v9

    #@ae
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b1
    .line 132
    const-string/jumbo v8, "  "

    #@b4
    invoke-virtual {v4, v7, v8}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@b7
    goto :goto_3

    #@b8
    .line 88
    .end local v3    # "i":I
    .end local v4    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v7    # "pr":Landroid/util/Printer;
    :cond_5
    return-void
.end method

.method private runSet()V
    .locals 6

    #@0
    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/commands/ime/Ime;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 167
    .local v2, "id":Ljava/lang/String;
    if-nez v2, :cond_0

    #@6
    .line 168
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    const-string/jumbo v4, "Error: no input method ID specified"

    #@b
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 169
    invoke-static {}, Lcom/android/commands/ime/Ime;->showUsage()V

    #@11
    .line 170
    return-void

    #@12
    .line 174
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    #@14
    const/4 v4, 0x0

    #@15
    invoke-interface {v3, v4, v2}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    #@18
    .line 175
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Input method "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    const-string/jumbo v5, " selected"

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@38
    .line 165
    return-void

    #@39
    .line 179
    :catch_0
    move-exception v0

    #@3a
    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3c
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 181
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@45
    const-string/jumbo v4, "Error: Could not access the Input Method Manager.  Is the system running?"

    #@48
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4b
    .line 182
    return-void

    #@4c
    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    #@4d
    .line 177
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4f
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v5, "Error: "

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@5e
    move-result-object v5

    #@5f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v4

    #@67
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6a
    .line 178
    return-void
.end method

.method private runSetEnabled(Z)V
    .locals 7
    .param p1, "state"    # Z

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/commands/ime/Ime;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 140
    .local v2, "id":Ljava/lang/String;
    if-nez v2, :cond_0

    #@6
    .line 141
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@8
    const-string/jumbo v5, "Error: no input method ID specified"

    #@b
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e
    .line 142
    invoke-static {}, Lcom/android/commands/ime/Ime;->showUsage()V

    #@11
    .line 143
    return-void

    #@12
    .line 147
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    #@14
    invoke-interface {v4, v2, p1}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodEnabled(Ljava/lang/String;Z)Z

    #@17
    move-result v3

    #@18
    .line 148
    .local v3, "res":Z
    if-eqz p1, :cond_2

    #@1a
    .line 149
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v6, "Input method "

    #@24
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v6, ": "

    #@2f
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    .line 150
    if-eqz v3, :cond_1

    #@35
    const-string/jumbo v4, "already enabled"

    #@38
    .line 149
    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 138
    :goto_1
    return-void

    #@44
    .line 150
    :cond_1
    const-string/jumbo v4, "now enabled"

    #@47
    goto :goto_0

    #@48
    .line 152
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4a
    new-instance v4, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v6, "Input method "

    #@52
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v4

    #@5a
    const-string/jumbo v6, ": "

    #@5d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    .line 153
    if-eqz v3, :cond_3

    #@63
    const-string/jumbo v4, "now disabled"

    #@66
    .line 152
    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@71
    goto :goto_1

    #@72
    .line 155
    .end local v3    # "res":Z
    :catch_0
    move-exception v1

    #@73
    .line 156
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@75
    new-instance v5, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v6, "Error: "

    #@7d
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v5

    #@81
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@84
    move-result-object v6

    #@85
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@90
    .line 157
    return-void

    #@91
    .line 153
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "res":Z
    :cond_3
    :try_start_1
    const-string/jumbo v4, "already disabled"
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@94
    goto :goto_2

    #@95
    .line 158
    .end local v3    # "res":Z
    :catch_1
    move-exception v0

    #@96
    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@98
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@9b
    move-result-object v5

    #@9c
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9f
    .line 160
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a1
    const-string/jumbo v5, "Error: Could not access the Input Method Manager.  Is the system running?"

    #@a4
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a7
    .line 161
    return-void
.end method

.method private static showUsage()V
    .locals 2

    #@0
    .prologue
    .line 233
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    const-string/jumbo v1, "usage: ime list [-a] [-s]"

    #@5
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8
    .line 234
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a
    const-string/jumbo v1, "       ime enable ID"

    #@d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10
    .line 235
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@12
    const-string/jumbo v1, "       ime disable ID"

    #@15
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18
    .line 236
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1a
    const-string/jumbo v1, "       ime set ID"

    #@1d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@20
    .line 237
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@22
    const-string/jumbo v1, ""

    #@25
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@28
    .line 238
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2a
    const-string/jumbo v1, "The list command prints all enabled input methods.  Use"

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@30
    .line 239
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@32
    const-string/jumbo v1, "the -a option to see all input methods.  Use"

    #@35
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@38
    .line 240
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3a
    const-string/jumbo v1, "the -s option to see only a single summary line of each."

    #@3d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@40
    .line 241
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@42
    const-string/jumbo v1, ""

    #@45
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@48
    .line 242
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4a
    const-string/jumbo v1, "The enable command allows the given input method ID to be used."

    #@4d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    .line 243
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@52
    const-string/jumbo v1, ""

    #@55
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@58
    .line 244
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5a
    const-string/jumbo v1, "The disable command disallows the given input method ID from use."

    #@5d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@60
    .line 245
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@62
    const-string/jumbo v1, ""

    #@65
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@68
    .line 246
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6a
    const-string/jumbo v1, "The set command switches to the given input method ID."

    #@6d
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@70
    .line 232
    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 44
    array-length v1, p1

    #@3
    if-ge v1, v2, :cond_0

    #@5
    .line 45
    invoke-static {}, Lcom/android/commands/ime/Ime;->showUsage()V

    #@8
    .line 46
    return-void

    #@9
    .line 49
    :cond_0
    const-string/jumbo v1, "input_method"

    #@c
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@f
    move-result-object v1

    #@10
    invoke-static {v1}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    #@16
    .line 50
    iget-object v1, p0, Lcom/android/commands/ime/Ime;->mImm:Lcom/android/internal/view/IInputMethodManager;

    #@18
    if-nez v1, :cond_1

    #@1a
    .line 51
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c
    const-string/jumbo v2, "Error: Could not access the Input Method Manager.  Is the system running?"

    #@1f
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 52
    return-void

    #@23
    .line 55
    :cond_1
    iput-object p1, p0, Lcom/android/commands/ime/Ime;->mArgs:[Ljava/lang/String;

    #@25
    .line 56
    aget-object v0, p1, v3

    #@27
    .line 57
    .local v0, "op":Ljava/lang/String;
    iput v2, p0, Lcom/android/commands/ime/Ime;->mNextArg:I

    #@29
    .line 59
    const-string/jumbo v1, "list"

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_2

    #@32
    .line 60
    invoke-direct {p0}, Lcom/android/commands/ime/Ime;->runList()V

    #@35
    .line 61
    return-void

    #@36
    .line 64
    :cond_2
    const-string/jumbo v1, "enable"

    #@39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 65
    invoke-direct {p0, v2}, Lcom/android/commands/ime/Ime;->runSetEnabled(Z)V

    #@42
    .line 66
    return-void

    #@43
    .line 69
    :cond_3
    const-string/jumbo v1, "disable"

    #@46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v1

    #@4a
    if-eqz v1, :cond_4

    #@4c
    .line 70
    invoke-direct {p0, v3}, Lcom/android/commands/ime/Ime;->runSetEnabled(Z)V

    #@4f
    .line 71
    return-void

    #@50
    .line 74
    :cond_4
    const-string/jumbo v1, "set"

    #@53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v1

    #@57
    if-eqz v1, :cond_5

    #@59
    .line 75
    invoke-direct {p0}, Lcom/android/commands/ime/Ime;->runSet()V

    #@5c
    .line 76
    return-void

    #@5d
    .line 79
    :cond_5
    if-eqz v0, :cond_6

    #@5f
    .line 80
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@61
    new-instance v2, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    const-string/jumbo v3, "Error: unknown command \'"

    #@69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v2

    #@71
    const-string/jumbo v3, "\'"

    #@74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7f
    .line 82
    :cond_6
    invoke-static {}, Lcom/android/commands/ime/Ime;->showUsage()V

    #@82
    .line 43
    return-void
.end method
