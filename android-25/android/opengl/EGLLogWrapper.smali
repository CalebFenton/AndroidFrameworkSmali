.class Landroid/opengl/EGLLogWrapper;
.super Ljava/lang/Object;
.source "EGLLogWrapper.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL11;


# instance fields
.field private mArgCount:I

.field mCheckError:Z

.field private mEgl10:Ljavax/microedition/khronos/egl/EGL10;

.field mLog:Ljava/io/Writer;

.field mLogArgumentNames:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL;
    .param p2, "configFlags"    # I
    .param p3, "log"    # Ljava/io/Writer;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 39
    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    #@7
    .end local p1    # "egl":Ljavax/microedition/khronos/egl/EGL;
    iput-object p1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@9
    .line 40
    iput-object p3, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    #@b
    .line 42
    and-int/lit8 v0, p2, 0x4

    #@d
    if-eqz v0, :cond_0

    #@f
    move v0, v1

    #@10
    .line 41
    :goto_0
    iput-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    #@12
    .line 44
    and-int/lit8 v0, p2, 0x1

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 43
    :goto_1
    iput-boolean v1, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    #@18
    .line 38
    return-void

    #@19
    :cond_0
    move v0, v2

    #@1a
    .line 42
    goto :goto_0

    #@1b
    :cond_1
    move v1, v2

    #@1c
    .line 44
    goto :goto_1
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 421
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 420
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 425
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 424
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 398
    iget v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    #@6
    if-lez v0, :cond_0

    #@8
    .line 399
    const-string/jumbo v0, ", "

    #@b
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    #@e
    .line 401
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, "="

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    #@29
    .line 404
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    #@2c
    .line 397
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljavax/microedition/khronos/egl/EGLContext;

    #@0
    .prologue
    .line 439
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    #@2
    if-ne p2, v0, :cond_0

    #@4
    .line 440
    const-string/jumbo v0, "EGL10.EGL_NO_CONTEXT"

    #@7
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 438
    :goto_0
    return-void

    #@b
    .line 442
    :cond_0
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    goto :goto_0
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    #@0
    .prologue
    .line 429
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    #@2
    if-ne p2, v0, :cond_0

    #@4
    .line 430
    const-string/jumbo v0, "EGL10.EGL_DEFAULT_DISPLAY"

    #@7
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 428
    :goto_0
    return-void

    #@b
    .line 431
    :cond_0
    sget-object v0, Landroid/opengl/EGLLogWrapper;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    #@d
    if-ne p2, v0, :cond_1

    #@f
    .line 432
    const-string/jumbo v0, "EGL10.EGL_NO_DISPLAY"

    #@12
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@15
    goto :goto_0

    #@16
    .line 434
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    goto :goto_0
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "object"    # Ljavax/microedition/khronos/egl/EGLSurface;

    #@0
    .prologue
    .line 447
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    #@2
    if-ne p2, v0, :cond_0

    #@4
    .line 448
    const-string/jumbo v0, "EGL10.EGL_NO_SURFACE"

    #@7
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@a
    .line 446
    :goto_0
    return-void

    #@b
    .line 450
    :cond_0
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    goto :goto_0
.end method

.method private arg(Ljava/lang/String;[I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arr"    # [I

    #@0
    .prologue
    .line 480
    if-nez p2, :cond_0

    #@2
    .line 481
    const-string/jumbo v0, "null"

    #@5
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 479
    :goto_0
    return-void

    #@9
    .line 483
    :cond_0
    array-length v0, p2

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[II)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    goto :goto_0
.end method

.method private arg(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arr"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 488
    if-nez p2, :cond_0

    #@2
    .line 489
    const-string/jumbo v0, "null"

    #@5
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 487
    :goto_0
    return-void

    #@9
    .line 491
    :cond_0
    array-length v0, p2

    #@a
    const/4 v1, 0x0

    #@b
    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[Ljava/lang/Object;I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    goto :goto_0
.end method

.method private begin(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0x28

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    #@16
    .line 394
    const/4 v0, 0x0

    #@17
    iput v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    #@19
    .line 392
    return-void
.end method

.method private checkError()V
    .locals 4

    #@0
    .prologue
    .line 371
    iget-object v2, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@2
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@5
    move-result v0

    #@6
    .local v0, "eglError":I
    const/16 v2, 0x3000

    #@8
    if-eq v0, v2, :cond_0

    #@a
    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "eglError: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    .line 373
    .local v1, "errorMessage":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->logLine(Ljava/lang/String;)V

    #@25
    .line 374
    iget-boolean v2, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    #@27
    if-eqz v2, :cond_0

    #@29
    .line 375
    new-instance v2, Landroid/opengl/GLException;

    #@2b
    invoke-direct {v2, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    #@2e
    throw v2

    #@2f
    .line 369
    .end local v1    # "errorMessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private end()V
    .locals 1

    #@0
    .prologue
    .line 408
    const-string/jumbo v0, ");\n"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    #@6
    .line 409
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    #@9
    .line 407
    return-void
.end method

.method private flush()V
    .locals 2

    #@0
    .prologue
    .line 414
    :try_start_0
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    #@2
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 412
    :goto_0
    return-void

    #@6
    .line 415
    :catch_0
    move-exception v0

    #@7
    .line 416
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    #@8
    iput-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    #@a
    goto :goto_0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    #@0
    .prologue
    .line 536
    packed-switch p0, :pswitch_data_0

    #@3
    .line 568
    invoke-static {p0}, Landroid/opengl/EGLLogWrapper;->getHex(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 538
    :pswitch_0
    const-string/jumbo v0, "EGL_SUCCESS"

    #@b
    return-object v0

    #@c
    .line 540
    :pswitch_1
    const-string/jumbo v0, "EGL_NOT_INITIALIZED"

    #@f
    return-object v0

    #@10
    .line 542
    :pswitch_2
    const-string/jumbo v0, "EGL_BAD_ACCESS"

    #@13
    return-object v0

    #@14
    .line 544
    :pswitch_3
    const-string/jumbo v0, "EGL_BAD_ALLOC"

    #@17
    return-object v0

    #@18
    .line 546
    :pswitch_4
    const-string/jumbo v0, "EGL_BAD_ATTRIBUTE"

    #@1b
    return-object v0

    #@1c
    .line 548
    :pswitch_5
    const-string/jumbo v0, "EGL_BAD_CONFIG"

    #@1f
    return-object v0

    #@20
    .line 550
    :pswitch_6
    const-string/jumbo v0, "EGL_BAD_CONTEXT"

    #@23
    return-object v0

    #@24
    .line 552
    :pswitch_7
    const-string/jumbo v0, "EGL_BAD_CURRENT_SURFACE"

    #@27
    return-object v0

    #@28
    .line 554
    :pswitch_8
    const-string/jumbo v0, "EGL_BAD_DISPLAY"

    #@2b
    return-object v0

    #@2c
    .line 556
    :pswitch_9
    const-string/jumbo v0, "EGL_BAD_MATCH"

    #@2f
    return-object v0

    #@30
    .line 558
    :pswitch_a
    const-string/jumbo v0, "EGL_BAD_NATIVE_PIXMAP"

    #@33
    return-object v0

    #@34
    .line 560
    :pswitch_b
    const-string/jumbo v0, "EGL_BAD_NATIVE_WINDOW"

    #@37
    return-object v0

    #@38
    .line 562
    :pswitch_c
    const-string/jumbo v0, "EGL_BAD_PARAMETER"

    #@3b
    return-object v0

    #@3c
    .line 564
    :pswitch_d
    const-string/jumbo v0, "EGL_BAD_SURFACE"

    #@3f
    return-object v0

    #@40
    .line 566
    :pswitch_e
    const-string/jumbo v0, "EGL_CONTEXT_LOST"

    #@43
    return-object v0

    #@44
    .line 536
    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # I

    #@0
    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "0x"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 386
    :try_start_0
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    #@2
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 384
    :goto_0
    return-void

    #@6
    .line 387
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const/16 v1, 0xa

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    #@16
    .line 380
    return-void
.end method

.method private returns(I)V
    .locals 1
    .param p1, "result"    # I

    #@0
    .prologue
    .line 460
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    #@7
    .line 459
    return-void
.end method

.method private returns(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 468
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    #@7
    .line 467
    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    #@0
    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, " returns "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ";\n"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    #@1e
    .line 456
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    #@21
    .line 454
    return-void
.end method

.method private returns(Z)V
    .locals 1
    .param p1, "result"    # Z

    #@0
    .prologue
    .line 464
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    #@7
    .line 463
    return-void
.end method

.method private toString(I[II)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "arr"    # [I
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 497
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 498
    array-length v0, p2

    #@c
    .line 499
    .local v0, "arrLen":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    #@f
    .line 500
    add-int v3, p3, v2

    #@11
    .line 501
    .local v3, "index":I
    const-string/jumbo v4, " ["

    #@14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, "] = "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 502
    if-ltz v3, :cond_0

    #@24
    if-lt v3, v0, :cond_1

    #@26
    .line 503
    :cond_0
    const-string/jumbo v4, "out of bounds"

    #@29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 507
    :goto_1
    const/16 v4, 0xa

    #@2e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 499
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 505
    :cond_1
    aget v4, p2, v3

    #@36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    goto :goto_1

    #@3a
    .line 509
    .end local v3    # "index":I
    :cond_2
    const-string/jumbo v4, "}"

    #@3d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 510
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    return-object v4
.end method

.method private toString(I[Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6
    .param p1, "n"    # I
    .param p2, "arr"    # [Ljava/lang/Object;
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 515
    .local v1, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{\n"

    #@8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 516
    array-length v0, p2

    #@c
    .line 517
    .local v0, "arrLen":I
    const/4 v2, 0x0

    #@d
    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    #@f
    .line 518
    add-int v3, p3, v2

    #@11
    .line 519
    .local v3, "index":I
    const-string/jumbo v4, " ["

    #@14
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, "] = "

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 520
    if-ltz v3, :cond_0

    #@24
    if-lt v3, v0, :cond_1

    #@26
    .line 521
    :cond_0
    const-string/jumbo v4, "out of bounds"

    #@29
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 525
    :goto_1
    const/16 v4, 0xa

    #@2e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@31
    .line 517
    add-int/lit8 v2, v2, 0x1

    #@33
    goto :goto_0

    #@34
    .line 523
    :cond_1
    aget-object v4, p2, v3

    #@36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    goto :goto_1

    #@3a
    .line 527
    .end local v3    # "index":I
    :cond_2
    const-string/jumbo v4, "}"

    #@3d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 528
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    return-object v4
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 472
    if-nez p1, :cond_0

    #@2
    .line 473
    const-string/jumbo v0, "null"

    #@5
    return-object v0

    #@6
    .line 475
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method


# virtual methods
.method public eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 7
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "attrib_list"    # [I
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "config_size"    # I
    .param p5, "num_config"    # [I

    #@0
    .prologue
    .line 49
    const-string/jumbo v0, "eglChooseConfig"

    #@3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 50
    const-string/jumbo v0, "display"

    #@9
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 51
    const-string/jumbo v0, "attrib_list"

    #@f
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    #@12
    .line 52
    const-string/jumbo v0, "config_size"

    #@15
    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 53
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@1b
    .line 55
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@1d
    move-object v1, p1

    #@1e
    move-object v2, p2

    #@1f
    move-object v3, p3

    #@20
    move v4, p4

    #@21
    move-object v5, p5

    #@22
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@25
    move-result v6

    #@26
    .line 57
    .local v6, "result":Z
    const-string/jumbo v0, "configs"

    #@29
    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    #@2c
    .line 58
    const-string/jumbo v0, "num_config"

    #@2f
    invoke-direct {p0, v0, p5}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    #@32
    .line 59
    invoke-direct {p0, v6}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@35
    .line 60
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@38
    .line 61
    return v6
.end method

.method public eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "surface"    # Ljavax/microedition/khronos/egl/EGLSurface;
    .param p3, "native_pixmap"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 66
    const-string/jumbo v1, "eglCopyBuffers"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 67
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 68
    const-string/jumbo v1, "surface"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    #@12
    .line 69
    const-string/jumbo v1, "native_pixmap"

    #@15
    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    .line 70
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@1b
    .line 72
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@1d
    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z

    #@20
    move-result v0

    #@21
    .line 73
    .local v0, "result":Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@24
    .line 74
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@27
    .line 75
    return v0
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "share_context"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p4, "attrib_list"    # [I

    #@0
    .prologue
    .line 80
    const-string/jumbo v1, "eglCreateContext"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 81
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 82
    const-string/jumbo v1, "config"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 83
    const-string/jumbo v1, "share_context"

    #@15
    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    #@18
    .line 84
    const-string/jumbo v1, "attrib_list"

    #@1b
    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    #@1e
    .line 85
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@21
    .line 87
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@23
    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    #@26
    move-result-object v0

    #@27
    .line 89
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    #@2a
    .line 90
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@2d
    .line 91
    return-object v0
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "attrib_list"    # [I

    #@0
    .prologue
    .line 96
    const-string/jumbo v1, "eglCreatePbufferSurface"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 97
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 98
    const-string/jumbo v1, "config"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 99
    const-string/jumbo v1, "attrib_list"

    #@15
    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    #@18
    .line 100
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@1b
    .line 102
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@1d
    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    #@20
    move-result-object v0

    #@21
    .line 104
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    #@24
    .line 105
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@27
    .line 106
    return-object v0
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_pixmap"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    #@0
    .prologue
    .line 111
    const-string/jumbo v1, "eglCreatePixmapSurface"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 112
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 113
    const-string/jumbo v1, "config"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 114
    const-string/jumbo v1, "native_pixmap"

    #@15
    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    .line 115
    const-string/jumbo v1, "attrib_list"

    #@1b
    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    #@1e
    .line 116
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@21
    .line 118
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@23
    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    #@26
    move-result-object v0

    #@27
    .line 120
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    #@2a
    .line 121
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@2d
    .line 122
    return-object v0
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "native_window"    # Ljava/lang/Object;
    .param p4, "attrib_list"    # [I

    #@0
    .prologue
    .line 127
    const-string/jumbo v1, "eglCreateWindowSurface"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 128
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 129
    const-string/jumbo v1, "config"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 130
    const-string/jumbo v1, "native_window"

    #@15
    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    #@18
    .line 131
    const-string/jumbo v1, "attrib_list"

    #@1b
    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    #@1e
    .line 132
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@21
    .line 134
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@23
    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    #@26
    move-result-object v0

    #@27
    .line 136
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    #@2a
    .line 137
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@2d
    .line 138
    return-object v0
.end method

.method public eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    #@0
    .prologue
    .line 142
    const-string/jumbo v1, "eglDestroyContext"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 143
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 144
    const-string/jumbo v1, "context"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    #@12
    .line 145
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@15
    .line 147
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@17
    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@1a
    move-result v0

    #@1b
    .line 148
    .local v0, "result":Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@1e
    .line 149
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@21
    .line 150
    return v0
.end method

.method public eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "surface"    # Ljavax/microedition/khronos/egl/EGLSurface;

    #@0
    .prologue
    .line 154
    const-string/jumbo v1, "eglDestroySurface"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 155
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 156
    const-string/jumbo v1, "surface"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    #@12
    .line 157
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@15
    .line 159
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@17
    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    #@1a
    move-result v0

    #@1b
    .line 160
    .local v0, "result":Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@1e
    .line 161
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@21
    .line 162
    return v0
.end method

.method public eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "attribute"    # I
    .param p4, "value"    # [I

    #@0
    .prologue
    .line 167
    const-string/jumbo v1, "eglGetConfigAttrib"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 168
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 169
    const-string/jumbo v1, "config"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 170
    const-string/jumbo v1, "attribute"

    #@15
    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 171
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@1b
    .line 172
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@1d
    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@20
    move-result v0

    #@21
    .line 174
    .local v0, "result":Z
    const-string/jumbo v1, "value"

    #@24
    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    #@27
    .line 175
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@2a
    .line 176
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@2d
    .line 177
    const/4 v1, 0x0

    #@2e
    return v1
.end method

.method public eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;
    .param p3, "config_size"    # I
    .param p4, "num_config"    # [I

    #@0
    .prologue
    .line 182
    const-string/jumbo v1, "eglGetConfigs"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 183
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 184
    const-string/jumbo v1, "config_size"

    #@f
    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 185
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@15
    .line 187
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@17
    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    #@1a
    move-result v0

    #@1b
    .line 189
    .local v0, "result":Z
    const-string/jumbo v1, "configs"

    #@1e
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    #@21
    .line 190
    const-string/jumbo v1, "num_config"

    #@24
    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    #@27
    .line 191
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@2a
    .line 192
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@2d
    .line 193
    return v0
.end method

.method public eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    #@0
    .prologue
    .line 197
    const-string/jumbo v1, "eglGetCurrentContext"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 198
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@9
    .line 200
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@b
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    #@e
    move-result-object v0

    #@f
    .line 201
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    #@12
    .line 203
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@15
    .line 204
    return-object v0
.end method

.method public eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2

    #@0
    .prologue
    .line 208
    const-string/jumbo v1, "eglGetCurrentDisplay"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 209
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@9
    .line 211
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@b
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    #@e
    move-result-object v0

    #@f
    .line 212
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    #@12
    .line 214
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@15
    .line 215
    return-object v0
.end method

.method public eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2
    .param p1, "readdraw"    # I

    #@0
    .prologue
    .line 219
    const-string/jumbo v1, "eglGetCurrentSurface"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 220
    const-string/jumbo v1, "readdraw"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 221
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@f
    .line 223
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@11
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    #@14
    move-result-object v0

    #@15
    .line 224
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    #@18
    .line 226
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@1b
    .line 227
    return-object v0
.end method

.method public eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 2
    .param p1, "native_display"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 231
    const-string/jumbo v1, "eglGetDisplay"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 232
    const-string/jumbo v1, "native_display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    #@c
    .line 233
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@f
    .line 235
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@11
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    #@14
    move-result-object v0

    #@15
    .line 236
    .local v0, "result":Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    #@18
    .line 238
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@1b
    .line 239
    return-object v0
.end method

.method public eglGetError()I
    .locals 2

    #@0
    .prologue
    .line 243
    const-string/jumbo v1, "eglGetError"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 244
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@9
    .line 246
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@b
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    #@e
    move-result v0

    #@f
    .line 247
    .local v0, "result":I
    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    #@16
    .line 249
    return v0
.end method

.method public eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "major_minor"    # [I

    #@0
    .prologue
    .line 253
    const-string/jumbo v1, "eglInitialize"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 254
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 255
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@f
    .line 256
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@11
    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    #@14
    move-result v0

    #@15
    .line 257
    .local v0, "result":Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@18
    .line 258
    const-string/jumbo v1, "major_minor"

    #@1b
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    #@1e
    .line 259
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@21
    .line 260
    return v0
.end method

.method public eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "draw"    # Ljavax/microedition/khronos/egl/EGLSurface;
    .param p3, "read"    # Ljavax/microedition/khronos/egl/EGLSurface;
    .param p4, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    #@0
    .prologue
    .line 265
    const-string/jumbo v1, "eglMakeCurrent"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 266
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 267
    const-string/jumbo v1, "draw"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    #@12
    .line 268
    const-string/jumbo v1, "read"

    #@15
    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    #@18
    .line 269
    const-string/jumbo v1, "context"

    #@1b
    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    #@1e
    .line 270
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@21
    .line 271
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@23
    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    #@26
    move-result v0

    #@27
    .line 272
    .local v0, "result":Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@2a
    .line 273
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@2d
    .line 274
    return v0
.end method

.method public eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "context"    # Ljavax/microedition/khronos/egl/EGLContext;
    .param p3, "attribute"    # I
    .param p4, "value"    # [I

    #@0
    .prologue
    .line 279
    const-string/jumbo v1, "eglQueryContext"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 280
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 281
    const-string/jumbo v1, "context"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    #@12
    .line 282
    const-string/jumbo v1, "attribute"

    #@15
    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 283
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@1b
    .line 284
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@1d
    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    #@20
    move-result v0

    #@21
    .line 286
    .local v0, "result":Z
    const/4 v1, 0x0

    #@22
    aget v1, p4, v1

    #@24
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    #@27
    .line 287
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@2a
    .line 288
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@2d
    .line 289
    return v0
.end method

.method public eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "name"    # I

    #@0
    .prologue
    .line 293
    const-string/jumbo v1, "eglQueryString"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 294
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 295
    const-string/jumbo v1, "name"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    #@12
    .line 296
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@15
    .line 297
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@17
    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 298
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    #@1e
    .line 299
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@21
    .line 300
    return-object v0
.end method

.method public eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "surface"    # Ljavax/microedition/khronos/egl/EGLSurface;
    .param p3, "attribute"    # I
    .param p4, "value"    # [I

    #@0
    .prologue
    .line 305
    const-string/jumbo v1, "eglQuerySurface"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 306
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 307
    const-string/jumbo v1, "surface"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    #@12
    .line 308
    const-string/jumbo v1, "attribute"

    #@15
    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    #@18
    .line 309
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@1b
    .line 310
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@1d
    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    #@20
    move-result v0

    #@21
    .line 312
    .local v0, "result":Z
    const/4 v1, 0x0

    #@22
    aget v1, p4, v1

    #@24
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    #@27
    .line 313
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@2a
    .line 314
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@2d
    .line 315
    return v0
.end method

.method public eglReleaseThread()Z
    .locals 2

    #@0
    .prologue
    .line 320
    const-string/jumbo v1, "eglReleaseThread"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 321
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@9
    .line 322
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@b
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglReleaseThread()Z

    #@e
    move-result v0

    #@f
    .line 323
    .local v0, "result":Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@12
    .line 324
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@15
    .line 325
    return v0
.end method

.method public eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "surface"    # Ljavax/microedition/khronos/egl/EGLSurface;

    #@0
    .prologue
    .line 329
    const-string/jumbo v1, "eglSwapBuffers"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 330
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 331
    const-string/jumbo v1, "surface"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    #@12
    .line 332
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@15
    .line 333
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@17
    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    #@1a
    move-result v0

    #@1b
    .line 334
    .local v0, "result":Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@1e
    .line 335
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@21
    .line 336
    return v0
.end method

.method public eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    .locals 2
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    #@0
    .prologue
    .line 340
    const-string/jumbo v1, "eglTerminate"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 341
    const-string/jumbo v1, "display"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    #@c
    .line 342
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@f
    .line 343
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@11
    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    #@14
    move-result v0

    #@15
    .line 344
    .local v0, "result":Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@18
    .line 345
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@1b
    .line 346
    return v0
.end method

.method public eglWaitGL()Z
    .locals 2

    #@0
    .prologue
    .line 350
    const-string/jumbo v1, "eglWaitGL"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 351
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@9
    .line 352
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@b
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    #@e
    move-result v0

    #@f
    .line 353
    .local v0, "result":Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@12
    .line 354
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@15
    .line 355
    return v0
.end method

.method public eglWaitNative(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "engine"    # I
    .param p2, "bindTarget"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 359
    const-string/jumbo v1, "eglWaitNative"

    #@3
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    #@6
    .line 360
    const-string/jumbo v1, "engine"

    #@9
    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    #@c
    .line 361
    const-string/jumbo v1, "bindTarget"

    #@f
    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    #@12
    .line 362
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    #@15
    .line 363
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    #@17
    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    #@1a
    move-result v0

    #@1b
    .line 364
    .local v0, "result":Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    #@1e
    .line 365
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    #@21
    .line 366
    return v0
.end method
