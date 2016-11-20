.class public Lcom/android/commands/wm/Wm;
.super Lcom/android/internal/os/BaseCommand;
.source "Wm.java"


# instance fields
.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/BaseCommand;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 46
    new-instance v0, Lcom/android/commands/wm/Wm;

    #@2
    invoke-direct {v0}, Lcom/android/commands/wm/Wm;-><init>()V

    #@5
    invoke-virtual {v0, p0}, Lcom/android/commands/wm/Wm;->run([Ljava/lang/String;)V

    #@8
    .line 45
    return-void
.end method

.method private parseDimension(Ljava/lang/String;)I
    .locals 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 253
    const-string/jumbo v2, "px"

    #@4
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    add-int/lit8 v2, v2, -0x2

    #@10
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@17
    move-result v2

    #@18
    return v2

    #@19
    .line 256
    :cond_0
    const-string/jumbo v2, "dp"

    #@1c
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    .line 259
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@24
    const/4 v3, 0x0

    #@25
    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result v0

    #@29
    .line 263
    .local v0, "density":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2c
    move-result v2

    #@2d
    add-int/lit8 v2, v2, -0x2

    #@2f
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@36
    move-result v2

    #@37
    mul-int/2addr v2, v0

    #@38
    div-int/lit16 v2, v2, 0xa0

    #@3a
    return v2

    #@3b
    .line 260
    .end local v0    # "density":I
    :catch_0
    move-exception v1

    #@3c
    .line 261
    .local v1, "e":Landroid/os/RemoteException;
    const/16 v0, 0xa0

    #@3e
    .restart local v0    # "density":I
    goto :goto_0

    #@3f
    .line 266
    .end local v0    # "density":I
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@42
    move-result v2

    #@43
    return v2
.end method

.method private runDismissKeyguard()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@2
    invoke-interface {v0}, Landroid/view/IWindowManager;->dismissKeyguard()V

    #@5
    .line 248
    return-void
.end method

.method private runDisplayDensity()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/commands/wm/Wm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    .line 175
    .local v2, "densityStr":Ljava/lang/String;
    if-nez v2, :cond_1

    #@6
    .line 177
    :try_start_0
    iget-object v6, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@8
    const/4 v7, 0x0

    #@9
    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    #@c
    move-result v5

    #@d
    .line 178
    .local v5, "initialDensity":I
    iget-object v6, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@f
    const/4 v7, 0x0

    #@10
    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->getBaseDisplayDensity(I)I

    #@13
    move-result v0

    #@14
    .line 179
    .local v0, "baseDensity":I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@16
    new-instance v7, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v8, "Physical density: "

    #@1e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2d
    .line 180
    if-eq v5, v0, :cond_0

    #@2f
    .line 181
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@31
    new-instance v7, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v8, "Override density: "

    #@39
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@48
    .line 185
    .end local v0    # "baseDensity":I
    .end local v5    # "initialDensity":I
    :cond_0
    :goto_0
    return-void

    #@49
    .line 186
    :cond_1
    const-string/jumbo v6, "reset"

    #@4c
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v6

    #@50
    if-eqz v6, :cond_3

    #@52
    .line 187
    const/4 v1, -0x1

    #@53
    .line 202
    .local v1, "density":I
    :cond_2
    if-lez v1, :cond_4

    #@55
    .line 204
    :try_start_1
    iget-object v6, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@57
    const/4 v7, 0x0

    #@58
    invoke-interface {v6, v7, v1}, Landroid/view/IWindowManager;->setForcedDisplayDensity(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@5b
    .line 172
    :goto_1
    return-void

    #@5c
    .line 190
    .end local v1    # "density":I
    :cond_3
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    #@5f
    move-result v1

    #@60
    .line 195
    .restart local v1    # "density":I
    const/16 v6, 0x48

    #@62
    if-ge v1, v6, :cond_2

    #@64
    .line 196
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@66
    const-string/jumbo v7, "Error: density must be >= 72"

    #@69
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6c
    .line 197
    return-void

    #@6d
    .line 191
    .end local v1    # "density":I
    :catch_0
    move-exception v4

    #@6e
    .line 192
    .local v4, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@70
    new-instance v7, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v8, "Error: bad number "

    #@78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v7

    #@84
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    .line 193
    return-void

    #@88
    .line 206
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "density":I
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@8a
    const/4 v7, 0x0

    #@8b
    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->clearForcedDisplayDensity(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@8e
    goto :goto_1

    #@8f
    .line 208
    :catch_1
    move-exception v3

    #@90
    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_1

    #@91
    .line 183
    .end local v1    # "density":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v3

    #@92
    .restart local v3    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private runDisplayOverscan()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 213
    invoke-virtual {p0}, Lcom/android/commands/wm/Wm;->nextArgRequired()Ljava/lang/String;

    #@4
    move-result-object v9

    #@5
    .line 214
    .local v9, "overscanStr":Ljava/lang/String;
    new-instance v10, Landroid/graphics/Rect;

    #@7
    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    #@a
    .line 215
    .local v10, "rect":Landroid/graphics/Rect;
    const-string/jumbo v0, "reset"

    #@d
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 216
    invoke-virtual {v10, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    #@16
    .line 232
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@18
    iget v2, v10, Landroid/graphics/Rect;->left:I

    #@1a
    iget v3, v10, Landroid/graphics/Rect;->top:I

    #@1c
    iget v4, v10, Landroid/graphics/Rect;->right:I

    #@1e
    iget v5, v10, Landroid/graphics/Rect;->bottom:I

    #@20
    const/4 v1, 0x0

    #@21
    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowManager;->setOverscan(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 212
    :goto_1
    return-void

    #@25
    .line 219
    :cond_0
    const-string/jumbo v0, "(-?\\d+),(-?\\d+),(-?\\d+),(-?\\d+)"

    #@28
    .line 218
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@2b
    move-result-object v6

    #@2c
    .line 220
    .local v6, "FLATTENED_PATTERN":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@2f
    move-result-object v8

    #@30
    .line 221
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_1

    #@36
    .line 222
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@38
    new-instance v1, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v2, "Error: bad rectangle arg: "

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4f
    .line 223
    return-void

    #@50
    .line 225
    :cond_1
    const/4 v0, 0x1

    #@51
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@58
    move-result v0

    #@59
    iput v0, v10, Landroid/graphics/Rect;->left:I

    #@5b
    .line 226
    const/4 v0, 0x2

    #@5c
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@63
    move-result v0

    #@64
    iput v0, v10, Landroid/graphics/Rect;->top:I

    #@66
    .line 227
    const/4 v0, 0x3

    #@67
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@6a
    move-result-object v0

    #@6b
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@6e
    move-result v0

    #@6f
    iput v0, v10, Landroid/graphics/Rect;->right:I

    #@71
    .line 228
    const/4 v0, 0x4

    #@72
    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@79
    move-result v0

    #@7a
    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    #@7c
    goto :goto_0

    #@7d
    .line 233
    .end local v6    # "FLATTENED_PATTERN":Ljava/util/regex/Pattern;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v7

    #@7e
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private runDisplayScaling()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 238
    invoke-virtual {p0}, Lcom/android/commands/wm/Wm;->nextArgRequired()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 239
    .local v0, "scalingStr":Ljava/lang/String;
    const-string/jumbo v1, "auto"

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 240
    iget-object v1, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@10
    invoke-interface {v1, v3, v3}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    #@13
    .line 237
    :goto_0
    return-void

    #@14
    .line 241
    :cond_0
    const-string/jumbo v1, "off"

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 242
    iget-object v1, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@1f
    const/4 v2, 0x1

    #@20
    invoke-interface {v1, v3, v2}, Landroid/view/IWindowManager;->setForcedDisplayScalingMode(II)V

    #@23
    goto :goto_0

    #@24
    .line 244
    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@26
    const-string/jumbo v2, "Error: scaling must be \'auto\' or \'off\'"

    #@29
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2c
    goto :goto_0
.end method

.method private runDisplaySize()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 127
    invoke-virtual {p0}, Lcom/android/commands/wm/Wm;->nextArg()Ljava/lang/String;

    #@4
    move-result-object v7

    #@5
    .line 129
    .local v7, "size":Ljava/lang/String;
    if-nez v7, :cond_1

    #@7
    .line 130
    new-instance v6, Landroid/graphics/Point;

    #@9
    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    #@c
    .line 131
    .local v6, "initialSize":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    #@e
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    #@11
    .line 133
    .local v0, "baseSize":Landroid/graphics/Point;
    :try_start_0
    iget-object v10, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@13
    const/4 v11, 0x0

    #@14
    invoke-interface {v10, v11, v6}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    #@17
    .line 134
    iget-object v10, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@19
    const/4 v11, 0x0

    #@1a
    invoke-interface {v10, v11, v0}, Landroid/view/IWindowManager;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    #@1d
    .line 135
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1f
    new-instance v11, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v12, "Physical size: "

    #@27
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v11

    #@2b
    iget v12, v6, Landroid/graphics/Point;->x:I

    #@2d
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v11

    #@31
    const-string/jumbo v12, "x"

    #@34
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v11

    #@38
    iget v12, v6, Landroid/graphics/Point;->y:I

    #@3a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v11

    #@3e
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v11

    #@42
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@45
    .line 136
    invoke-virtual {v6, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v10

    #@49
    if-nez v10, :cond_0

    #@4b
    .line 137
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@4d
    new-instance v11, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v12, "Override size: "

    #@55
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v11

    #@59
    iget v12, v0, Landroid/graphics/Point;->x:I

    #@5b
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v11

    #@5f
    const-string/jumbo v12, "x"

    #@62
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v11

    #@66
    iget v12, v0, Landroid/graphics/Point;->y:I

    #@68
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v11

    #@6c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v11

    #@70
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@73
    .line 141
    :cond_0
    :goto_0
    return-void

    #@74
    .line 142
    .end local v0    # "baseSize":Landroid/graphics/Point;
    .end local v6    # "initialSize":Landroid/graphics/Point;
    :cond_1
    const-string/jumbo v10, "reset"

    #@77
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v10

    #@7b
    if-eqz v10, :cond_2

    #@7d
    .line 143
    const/4 v4, -0x1

    #@7e
    .local v4, "h":I
    const/4 v8, -0x1

    #@7f
    .line 162
    .local v8, "w":I
    :goto_1
    if-ltz v8, :cond_5

    #@81
    if-ltz v4, :cond_5

    #@83
    .line 164
    :try_start_1
    iget-object v10, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@85
    const/4 v11, 0x0

    #@86
    invoke-interface {v10, v11, v8, v4}, Landroid/view/IWindowManager;->setForcedDisplaySize(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@89
    .line 126
    :goto_2
    return-void

    #@8a
    .line 145
    .end local v4    # "h":I
    .end local v8    # "w":I
    :cond_2
    const/16 v10, 0x78

    #@8c
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    #@8f
    move-result v1

    #@90
    .line 146
    .local v1, "div":I
    if-lez v1, :cond_3

    #@92
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@95
    move-result v10

    #@96
    add-int/lit8 v10, v10, -0x1

    #@98
    if-lt v1, v10, :cond_4

    #@9a
    .line 147
    :cond_3
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9c
    new-instance v11, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v12, "Error: bad size "

    #@a4
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v11

    #@a8
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v11

    #@ac
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v11

    #@b0
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b3
    .line 148
    return-void

    #@b4
    .line 150
    :cond_4
    invoke-virtual {v7, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b7
    move-result-object v9

    #@b8
    .line 151
    .local v9, "wstr":Ljava/lang/String;
    add-int/lit8 v10, v1, 0x1

    #@ba
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@bd
    move-result-object v5

    #@be
    .line 153
    .local v5, "hstr":Ljava/lang/String;
    :try_start_2
    invoke-direct {p0, v9}, Lcom/android/commands/wm/Wm;->parseDimension(Ljava/lang/String;)I

    #@c1
    move-result v8

    #@c2
    .line 154
    .restart local v8    # "w":I
    invoke-direct {p0, v5}, Lcom/android/commands/wm/Wm;->parseDimension(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    #@c5
    move-result v4

    #@c6
    .restart local v4    # "h":I
    goto :goto_1

    #@c7
    .line 155
    .end local v4    # "h":I
    .end local v8    # "w":I
    :catch_0
    move-exception v3

    #@c8
    .line 156
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ca
    new-instance v11, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    const-string/jumbo v12, "Error: bad number "

    #@d2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v11

    #@d6
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v11

    #@da
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v11

    #@de
    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@e1
    .line 157
    return-void

    #@e2
    .line 166
    .end local v1    # "div":I
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "hstr":Ljava/lang/String;
    .end local v9    # "wstr":Ljava/lang/String;
    .restart local v4    # "h":I
    .restart local v8    # "w":I
    :cond_5
    :try_start_3
    iget-object v10, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@e4
    const/4 v11, 0x0

    #@e5
    invoke-interface {v10, v11}, Landroid/view/IWindowManager;->clearForcedDisplaySize(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@e8
    goto :goto_2

    #@e9
    .line 168
    :catch_1
    move-exception v2

    #@ea
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@eb
    .line 139
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "h":I
    .end local v8    # "w":I
    .restart local v0    # "baseSize":Landroid/graphics/Point;
    .restart local v6    # "initialSize":Landroid/graphics/Point;
    :catch_2
    move-exception v2

    #@ec
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private runSetScreenCapture()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/commands/wm/Wm;->nextArg()Ljava/lang/String;

    #@3
    move-result-object v5

    #@4
    .line 106
    .local v5, "userIdStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/commands/wm/Wm;->nextArg()Ljava/lang/String;

    #@7
    move-result-object v3

    #@8
    .line 111
    .local v3, "enableStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v4

    #@c
    .line 117
    .local v4, "userId":I
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@f
    move-result v6

    #@10
    if-eqz v6, :cond_0

    #@12
    const/4 v0, 0x0

    #@13
    .line 120
    .local v0, "disable":Z
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@15
    invoke-interface {v6, v4, v0}, Landroid/view/IWindowManager;->setScreenCaptureDisabled(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@18
    .line 104
    :goto_1
    return-void

    #@19
    .line 112
    .end local v0    # "disable":Z
    .end local v4    # "userId":I
    :catch_0
    move-exception v2

    #@1a
    .line 113
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c
    new-instance v7, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v8, "Error: bad number "

    #@24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v7

    #@2c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@33
    .line 114
    return-void

    #@34
    .line 117
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "userId":I
    :cond_0
    const/4 v0, 0x1

    #@35
    .restart local v0    # "disable":Z
    goto :goto_0

    #@36
    .line 121
    :catch_1
    move-exception v1

    #@37
    .line 122
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@39
    new-instance v7, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v8, "Error: Can\'t set screen capture "

    #@41
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@50
    goto :goto_1
.end method


# virtual methods
.method public onRun()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 78
    const-string/jumbo v1, "window"

    #@3
    .line 77
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@d
    .line 79
    iget-object v1, p0, Lcom/android/commands/wm/Wm;->mWm:Landroid/view/IWindowManager;

    #@f
    if-nez v1, :cond_0

    #@11
    .line 80
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@13
    const-string/jumbo v2, "Error type 2"

    #@16
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    .line 81
    new-instance v1, Landroid/util/AndroidException;

    #@1b
    const-string/jumbo v2, "Can\'t connect to window manager; is the system running?"

    #@1e
    invoke-direct {v1, v2}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/wm/Wm;->nextArgRequired()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 86
    .local v0, "op":Ljava/lang/String;
    const-string/jumbo v1, "size"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 87
    invoke-direct {p0}, Lcom/android/commands/wm/Wm;->runDisplaySize()V

    #@32
    .line 76
    :goto_0
    return-void

    #@33
    .line 88
    :cond_1
    const-string/jumbo v1, "density"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 89
    invoke-direct {p0}, Lcom/android/commands/wm/Wm;->runDisplayDensity()V

    #@3f
    goto :goto_0

    #@40
    .line 90
    :cond_2
    const-string/jumbo v1, "overscan"

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_3

    #@49
    .line 91
    invoke-direct {p0}, Lcom/android/commands/wm/Wm;->runDisplayOverscan()V

    #@4c
    goto :goto_0

    #@4d
    .line 92
    :cond_3
    const-string/jumbo v1, "scaling"

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_4

    #@56
    .line 93
    invoke-direct {p0}, Lcom/android/commands/wm/Wm;->runDisplayScaling()V

    #@59
    goto :goto_0

    #@5a
    .line 94
    :cond_4
    const-string/jumbo v1, "screen-capture"

    #@5d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@60
    move-result v1

    #@61
    if-eqz v1, :cond_5

    #@63
    .line 95
    invoke-direct {p0}, Lcom/android/commands/wm/Wm;->runSetScreenCapture()V

    #@66
    goto :goto_0

    #@67
    .line 96
    :cond_5
    const-string/jumbo v1, "dismiss-keyguard"

    #@6a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v1

    #@6e
    if-eqz v1, :cond_6

    #@70
    .line 97
    invoke-direct {p0}, Lcom/android/commands/wm/Wm;->runDismissKeyguard()V

    #@73
    goto :goto_0

    #@74
    .line 99
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v2, "Error: unknown command \'"

    #@7c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    const-string/jumbo v2, "\'"

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {p0, v1}, Lcom/android/commands/wm/Wm;->showError(Ljava/lang/String;)V

    #@92
    .line 100
    return-void
.end method

.method public onShowUsage(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 52
    const-string/jumbo v0, "usage: wm [subcommand] [options]\n       wm size [reset|WxH|WdpxHdp]\n       wm density [reset|DENSITY]\n       wm overscan [reset|LEFT,TOP,RIGHT,BOTTOM]\n       wm scaling [off|auto]\n       wm screen-capture [userId] [true|false]\n\nwm size: return or override display size.\n         width and height in pixels unless suffixed with \'dp\'.\n\nwm density: override display density.\n\nwm overscan: set overscan area for display.\n\nwm scaling: set display scaling mode.\n\nwm screen-capture: enable/disable screen capture.\n\nwm dismiss-keyguard: dismiss the keyguard, prompting the user for auth if necessary.\n"

    #@3
    .line 51
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 50
    return-void
.end method
