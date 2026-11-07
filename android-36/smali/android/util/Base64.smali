.class public Landroid/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Base64$Decoder;,
        Landroid/util/Base64$Encoder;,
        Landroid/util/Base64$Coder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist CRLF:I = 0x4

.field public static final whitelist DEFAULT:I = 0x0

.field public static final whitelist NO_CLOSE:I = 0x10

.field public static final whitelist NO_PADDING:I = 0x1

.field public static final whitelist NO_WRAP:I = 0x2

.field public static final whitelist URL_SAFE:I = 0x8


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 29
    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist decode(Ljava/lang/String;I)[B
    .registers 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decode([BI)[B
    .registers 4
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 139
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Landroid/util/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist decode([BIII)[B
    .registers 9
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 161
    new-instance v0, Landroid/util/Base64$Decoder;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    .line 163
    .local v0, "decoder":Landroid/util/Base64$Decoder;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Landroid/util/Base64$Decoder;->process([BIIZ)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 168
    iget v1, v0, Landroid/util/Base64$Decoder;->op:I

    iget-object v2, v0, Landroid/util/Base64$Decoder;->output:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1c

    .line 169
    iget-object v1, v0, Landroid/util/Base64$Decoder;->output:[B

    return-object v1

    .line 174
    :cond_1c
    iget v1, v0, Landroid/util/Base64$Decoder;->op:I

    new-array v1, v1, [B

    .line 175
    .local v1, "temp":[B
    iget-object v2, v0, Landroid/util/Base64$Decoder;->output:[B

    iget v3, v0, Landroid/util/Base64$Decoder;->op:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    return-object v1

    .line 164
    .end local v1    # "temp":[B
    :cond_29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad base-64"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist encode([BI)[B
    .registers 4
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 497
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Landroid/util/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist encode([BIII)[B
    .registers 9
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 513
    new-instance v0, Landroid/util/Base64$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    .line 516
    .local v0, "encoder":Landroid/util/Base64$Encoder;
    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 519
    .local v1, "output_len":I
    iget-boolean v2, v0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v2, :cond_15

    .line 520
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_22

    .line 521
    add-int/lit8 v1, v1, 0x4

    goto :goto_22

    .line 524
    :cond_15
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_42

    goto :goto_22

    .line 527
    :pswitch_1b
    add-int/lit8 v1, v1, 0x3

    goto :goto_22

    .line 526
    :pswitch_1e
    add-int/lit8 v1, v1, 0x2

    goto :goto_22

    .line 525
    :pswitch_21
    nop

    .line 532
    :cond_22
    :goto_22
    iget-boolean v2, v0, Landroid/util/Base64$Encoder;->do_newline:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-lez p2, :cond_37

    .line 533
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/2addr v2, v3

    .line 534
    iget-boolean v4, v0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v4, :cond_34

    const/4 v4, 0x2

    goto :goto_35

    :cond_34
    move v4, v3

    :goto_35
    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 537
    :cond_37
    new-array v2, v1, [B

    iput-object v2, v0, Landroid/util/Base64$Encoder;->output:[B

    .line 538
    invoke-virtual {v0, p0, p1, p2, v3}, Landroid/util/Base64$Encoder;->process([BIIZ)Z

    .line 540
    nop

    .line 542
    iget-object v2, v0, Landroid/util/Base64$Encoder;->output:[B

    return-object v2

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public static whitelist encodeToString([BI)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # [B
    .param p1, "flags"    # I

    .line 459
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 460
    :catch_c
    move-exception v0

    .line 462
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static whitelist encodeToString([BIII)Ljava/lang/String;
    .registers 7
    .param p0, "input"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "flags"    # I

    .line 480
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Landroid/util/Base64;->encode([BIII)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 481
    :catch_c
    move-exception v0

    .line 483
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
