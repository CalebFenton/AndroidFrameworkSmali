.class public final Ljavax/obex/HeaderSet;
.super Ljava/lang/Object;
.source "HeaderSet.java"


# static fields
.field public static final APPLICATION_PARAMETER:I = 0x4c

.field public static final AUTH_CHALLENGE:I = 0x4d

.field public static final AUTH_RESPONSE:I = 0x4e

.field public static final BODY:I = 0x48

.field public static final CONNECTION_ID:I = 0xcb

.field public static final COUNT:I = 0xc0

.field public static final DESCRIPTION:I = 0x5

.field public static final END_OF_BODY:I = 0x49

.field public static final HTTP:I = 0x47

.field public static final LENGTH:I = 0xc3

.field public static final NAME:I = 0x1

.field public static final OBJECT_CLASS:I = 0x4f

.field public static final SINGLE_RESPONSE_MODE:I = 0x97

.field public static final SINGLE_RESPONSE_MODE_PARAMETER:I = 0x98

.field public static final TARGET:I = 0x46

.field public static final TIME_4_BYTE:I = 0xc4

.field public static final TIME_ISO_8601:I = 0x44

.field public static final TYPE:I = 0x42

.field public static final WHO:I = 0x4a


# instance fields
.field private mAppParam:[B

.field public mAuthChall:[B

.field public mAuthResp:[B

.field private mByteTime:Ljava/util/Calendar;

.field private mByteUserDefined:[Ljava/lang/Byte;

.field public mConnectionID:[B

.field private mCount:Ljava/lang/Long;

.field private mDescription:Ljava/lang/String;

.field private mEmptyName:Z

.field private mHttpHeader:[B

.field private mIntegerUserDefined:[Ljava/lang/Long;

.field private mIsoTime:Ljava/util/Calendar;

.field private mLength:Ljava/lang/Long;

.field private mName:Ljava/lang/String;

.field private mObjectClass:[B

.field private mRandom:Ljava/security/SecureRandom;

.field private mSequenceUserDefined:[[B

.field private mSingleResponseMode:Ljava/lang/Byte;

.field private mSrmParam:Ljava/lang/Byte;

.field private mTarget:[B

.field private mType:Ljava/lang/String;

.field private mUnicodeUserDefined:[Ljava/lang/String;

.field private mWho:[B

.field nonce:[B

.field public responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0x10

    #@2
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 231
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Ljavax/obex/HeaderSet;->mRandom:Ljava/security/SecureRandom;

    #@8
    .line 253
    new-array v0, v1, [Ljava/lang/String;

    #@a
    iput-object v0, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    #@c
    .line 254
    new-array v0, v1, [[B

    #@e
    iput-object v0, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    #@10
    .line 255
    new-array v0, v1, [Ljava/lang/Byte;

    #@12
    iput-object v0, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    #@14
    .line 256
    new-array v0, v1, [Ljava/lang/Long;

    #@16
    iput-object v0, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    #@18
    .line 257
    const/4 v0, -0x1

    #@19
    iput v0, p0, Ljavax/obex/HeaderSet;->responseCode:I

    #@1b
    .line 252
    return-void
.end method


# virtual methods
.method public createAuthenticationChallenge(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "userID"    # Z
    .param p3, "access"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x10

    #@2
    .line 681
    new-array v1, v3, [B

    #@4
    iput-object v1, p0, Ljavax/obex/HeaderSet;->nonce:[B

    #@6
    .line 682
    iget-object v1, p0, Ljavax/obex/HeaderSet;->mRandom:Ljava/security/SecureRandom;

    #@8
    if-nez v1, :cond_0

    #@a
    .line 683
    new-instance v1, Ljava/security/SecureRandom;

    #@c
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@f
    iput-object v1, p0, Ljavax/obex/HeaderSet;->mRandom:Ljava/security/SecureRandom;

    #@11
    .line 685
    :cond_0
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    #@14
    .line 686
    iget-object v1, p0, Ljavax/obex/HeaderSet;->nonce:[B

    #@16
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mRandom:Ljava/security/SecureRandom;

    #@18
    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    #@1b
    move-result v2

    #@1c
    int-to-byte v2, v2

    #@1d
    aput-byte v2, v1, v0

    #@1f
    .line 685
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 689
    :cond_1
    iget-object v1, p0, Ljavax/obex/HeaderSet;->nonce:[B

    #@24
    invoke-static {v1, p1, p3, p2}, Ljavax/obex/ObexHelper;->computeAuthenticationChallenge([BLjava/lang/String;ZZ)[B

    #@27
    move-result-object v1

    #@28
    iput-object v1, p0, Ljavax/obex/HeaderSet;->mAuthChall:[B

    #@2a
    .line 679
    return-void
.end method

.method public getEmptyNameHeader()Z
    .locals 1

    #@0
    .prologue
    .line 276
    iget-boolean v0, p0, Ljavax/obex/HeaderSet;->mEmptyName:Z

    #@2
    return v0
.end method

.method public getHeader(I)Ljava/lang/Object;
    .locals 2
    .param p1, "headerID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 513
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 546
    const/16 v0, 0x30

    #@5
    if-lt p1, v0, :cond_0

    #@7
    const/16 v0, 0x3f

    #@9
    if-gt p1, v0, :cond_0

    #@b
    .line 547
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    #@d
    add-int/lit8 v1, p1, -0x30

    #@f
    aget-object v0, v0, v1

    #@11
    return-object v0

    #@12
    .line 515
    :sswitch_0
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    #@14
    return-object v0

    #@15
    .line 517
    :sswitch_1
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mName:Ljava/lang/String;

    #@17
    return-object v0

    #@18
    .line 519
    :sswitch_2
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mType:Ljava/lang/String;

    #@1a
    return-object v0

    #@1b
    .line 521
    :sswitch_3
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    #@1d
    return-object v0

    #@1e
    .line 523
    :sswitch_4
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    #@20
    return-object v0

    #@21
    .line 525
    :sswitch_5
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mByteTime:Ljava/util/Calendar;

    #@23
    return-object v0

    #@24
    .line 527
    :sswitch_6
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mDescription:Ljava/lang/String;

    #@26
    return-object v0

    #@27
    .line 529
    :sswitch_7
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    #@29
    return-object v0

    #@2a
    .line 531
    :sswitch_8
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    #@2c
    return-object v0

    #@2d
    .line 533
    :sswitch_9
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mWho:[B

    #@2f
    return-object v0

    #@30
    .line 535
    :sswitch_a
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mConnectionID:[B

    #@32
    return-object v0

    #@33
    .line 537
    :sswitch_b
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    #@35
    return-object v0

    #@36
    .line 539
    :sswitch_c
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    #@38
    return-object v0

    #@39
    .line 541
    :sswitch_d
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mSingleResponseMode:Ljava/lang/Byte;

    #@3b
    return-object v0

    #@3c
    .line 543
    :sswitch_e
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mSrmParam:Ljava/lang/Byte;

    #@3e
    return-object v0

    #@3f
    .line 550
    :cond_0
    const/16 v0, 0x70

    #@41
    if-lt p1, v0, :cond_1

    #@43
    const/16 v0, 0x7f

    #@45
    if-gt p1, v0, :cond_1

    #@47
    .line 551
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    #@49
    add-int/lit8 v1, p1, -0x70

    #@4b
    aget-object v0, v0, v1

    #@4d
    return-object v0

    #@4e
    .line 554
    :cond_1
    const/16 v0, 0xb0

    #@50
    if-lt p1, v0, :cond_2

    #@52
    const/16 v0, 0xbf

    #@54
    if-gt p1, v0, :cond_2

    #@56
    .line 555
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    #@58
    add-int/lit16 v1, p1, -0xb0

    #@5a
    aget-object v0, v0, v1

    #@5c
    return-object v0

    #@5d
    .line 558
    :cond_2
    const/16 v0, 0xf0

    #@5f
    if-lt p1, v0, :cond_3

    #@61
    const/16 v0, 0xff

    #@63
    if-gt p1, v0, :cond_3

    #@65
    .line 559
    iget-object v0, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    #@67
    add-int/lit16 v1, p1, -0xf0

    #@69
    aget-object v0, v0, v1

    #@6b
    return-object v0

    #@6c
    .line 561
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6e
    const-string/jumbo v1, "Invalid Header Identifier"

    #@71
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@74
    throw v0

    #@75
    .line 513
    nop

    #@76
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_6
        0x42 -> :sswitch_2
        0x44 -> :sswitch_4
        0x46 -> :sswitch_7
        0x47 -> :sswitch_8
        0x4a -> :sswitch_9
        0x4c -> :sswitch_c
        0x4f -> :sswitch_b
        0x97 -> :sswitch_d
        0x98 -> :sswitch_e
        0xc0 -> :sswitch_0
        0xc3 -> :sswitch_3
        0xc4 -> :sswitch_5
        0xcb -> :sswitch_a
    .end sparse-switch
.end method

.method public getHeaderList()[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0xc0

    #@2
    const/4 v6, 0x0

    #@3
    .line 577
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    .line 579
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    #@a
    if-eqz v4, :cond_0

    #@c
    .line 580
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@f
    .line 582
    :cond_0
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mName:Ljava/lang/String;

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 583
    const/4 v4, 0x1

    #@14
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@17
    .line 585
    :cond_1
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mType:Ljava/lang/String;

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 586
    const/16 v4, 0x42

    #@1d
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@20
    .line 588
    :cond_2
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    #@22
    if-eqz v4, :cond_3

    #@24
    .line 589
    const/16 v4, 0xc3

    #@26
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@29
    .line 591
    :cond_3
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    #@2b
    if-eqz v4, :cond_4

    #@2d
    .line 592
    const/16 v4, 0x44

    #@2f
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@32
    .line 594
    :cond_4
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mByteTime:Ljava/util/Calendar;

    #@34
    if-eqz v4, :cond_5

    #@36
    .line 595
    const/16 v4, 0xc4

    #@38
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@3b
    .line 597
    :cond_5
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mDescription:Ljava/lang/String;

    #@3d
    if-eqz v4, :cond_6

    #@3f
    .line 598
    const/4 v4, 0x5

    #@40
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@43
    .line 600
    :cond_6
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    #@45
    if-eqz v4, :cond_7

    #@47
    .line 601
    const/16 v4, 0x46

    #@49
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@4c
    .line 603
    :cond_7
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    #@4e
    if-eqz v4, :cond_8

    #@50
    .line 604
    const/16 v4, 0x47

    #@52
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@55
    .line 606
    :cond_8
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mWho:[B

    #@57
    if-eqz v4, :cond_9

    #@59
    .line 607
    const/16 v4, 0x4a

    #@5b
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5e
    .line 609
    :cond_9
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    #@60
    if-eqz v4, :cond_a

    #@62
    .line 610
    const/16 v4, 0x4c

    #@64
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@67
    .line 612
    :cond_a
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    #@69
    if-eqz v4, :cond_b

    #@6b
    .line 613
    const/16 v4, 0x4f

    #@6d
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@70
    .line 615
    :cond_b
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mSingleResponseMode:Ljava/lang/Byte;

    #@72
    if-eqz v4, :cond_c

    #@74
    .line 616
    const/16 v4, 0x97

    #@76
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@79
    .line 618
    :cond_c
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mSrmParam:Ljava/lang/Byte;

    #@7b
    if-eqz v4, :cond_d

    #@7d
    .line 619
    const/16 v4, 0x98

    #@7f
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@82
    .line 622
    :cond_d
    const/16 v1, 0x30

    #@84
    .local v1, "i":I
    :goto_0
    const/16 v4, 0x40

    #@86
    if-ge v1, v4, :cond_f

    #@88
    .line 623
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    #@8a
    add-int/lit8 v5, v1, -0x30

    #@8c
    aget-object v4, v4, v5

    #@8e
    if-eqz v4, :cond_e

    #@90
    .line 624
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@93
    .line 622
    :cond_e
    add-int/lit8 v1, v1, 0x1

    #@95
    goto :goto_0

    #@96
    .line 628
    :cond_f
    const/16 v1, 0x70

    #@98
    :goto_1
    const/16 v4, 0x80

    #@9a
    if-ge v1, v4, :cond_11

    #@9c
    .line 629
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    #@9e
    add-int/lit8 v5, v1, -0x70

    #@a0
    aget-object v4, v4, v5

    #@a2
    if-eqz v4, :cond_10

    #@a4
    .line 630
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@a7
    .line 628
    :cond_10
    add-int/lit8 v1, v1, 0x1

    #@a9
    goto :goto_1

    #@aa
    .line 634
    :cond_11
    const/16 v1, 0xb0

    #@ac
    :goto_2
    if-ge v1, v7, :cond_13

    #@ae
    .line 635
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    #@b0
    add-int/lit16 v5, v1, -0xb0

    #@b2
    aget-object v4, v4, v5

    #@b4
    if-eqz v4, :cond_12

    #@b6
    .line 636
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@b9
    .line 634
    :cond_12
    add-int/lit8 v1, v1, 0x1

    #@bb
    goto :goto_2

    #@bc
    .line 640
    :cond_13
    const/16 v1, 0xf0

    #@be
    :goto_3
    const/16 v4, 0x100

    #@c0
    if-ge v1, v4, :cond_15

    #@c2
    .line 641
    iget-object v4, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    #@c4
    add-int/lit16 v5, v1, -0xf0

    #@c6
    aget-object v4, v4, v5

    #@c8
    if-eqz v4, :cond_14

    #@ca
    .line 642
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@cd
    .line 640
    :cond_14
    add-int/lit8 v1, v1, 0x1

    #@cf
    goto :goto_3

    #@d0
    .line 646
    :cond_15
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@d3
    move-result-object v0

    #@d4
    .line 647
    .local v0, "headers":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    #@d7
    .line 649
    if-eqz v0, :cond_16

    #@d9
    array-length v4, v0

    #@da
    if-nez v4, :cond_17

    #@dc
    .line 650
    :cond_16
    return-object v6

    #@dd
    .line 653
    :cond_17
    array-length v4, v0

    #@de
    new-array v3, v4, [I

    #@e0
    .line 654
    .local v3, "result":[I
    const/4 v1, 0x0

    #@e1
    :goto_4
    array-length v4, v0

    #@e2
    if-ge v1, v4, :cond_18

    #@e4
    .line 657
    aget-byte v4, v0, v1

    #@e6
    and-int/lit16 v4, v4, 0xff

    #@e8
    aput v4, v3, v1

    #@ea
    .line 654
    add-int/lit8 v1, v1, 0x1

    #@ec
    goto :goto_4

    #@ed
    .line 660
    :cond_18
    return-object v3
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 704
    iget v0, p0, Ljavax/obex/HeaderSet;->responseCode:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 705
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "May not be called on a server"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 707
    :cond_0
    iget v0, p0, Ljavax/obex/HeaderSet;->responseCode:I

    #@10
    return v0
.end method

.method public setEmptyNameHeader()V
    .locals 1

    #@0
    .prologue
    .line 267
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Ljavax/obex/HeaderSet;->mName:Ljava/lang/String;

    #@3
    .line 268
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljavax/obex/HeaderSet;->mEmptyName:Z

    #@6
    .line 266
    return-void
.end method

.method public setHeader(ILjava/lang/Object;)V
    .locals 10
    .param p1, "headerID"    # I
    .param p2, "headerValue"    # Ljava/lang/Object;

    #@0
    .prologue
    const-wide v8, 0xffffffffL

    #@5
    const-wide/16 v6, 0x0

    #@7
    const/4 v5, 0x0

    #@8
    const/4 v4, 0x0

    #@9
    .line 293
    const-wide/16 v0, -0x1

    #@b
    .line 295
    .local v0, "temp":J
    sparse-switch p1, :sswitch_data_0

    #@e
    .line 442
    const/16 v2, 0x30

    #@10
    if-lt p1, v2, :cond_22

    #@12
    const/16 v2, 0x3f

    #@14
    if-gt p1, v2, :cond_22

    #@16
    .line 443
    if-eqz p2, :cond_0

    #@18
    instance-of v2, p2, Ljava/lang/String;

    #@1a
    if-eqz v2, :cond_21

    #@1c
    .line 447
    :cond_0
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mUnicodeUserDefined:[Ljava/lang/String;

    #@1e
    add-int/lit8 v3, p1, -0x30

    #@20
    check-cast p2, Ljava/lang/String;

    #@22
    .end local p2    # "headerValue":Ljava/lang/Object;
    aput-object p2, v2, v3

    #@24
    .line 292
    :goto_0
    return-void

    #@25
    .line 297
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :sswitch_0
    instance-of v2, p2, Ljava/lang/Long;

    #@27
    if-nez v2, :cond_2

    #@29
    .line 298
    if-nez p2, :cond_1

    #@2b
    .line 299
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    #@2d
    goto :goto_0

    #@2e
    .line 302
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v3, "Count must be a Long"

    #@33
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v2

    #@37
    :cond_2
    move-object v2, p2

    #@38
    .line 304
    check-cast v2, Ljava/lang/Long;

    #@3a
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@3d
    move-result-wide v0

    #@3e
    .line 305
    cmp-long v2, v0, v6

    #@40
    if-ltz v2, :cond_3

    #@42
    cmp-long v2, v0, v8

    #@44
    if-lez v2, :cond_4

    #@46
    .line 306
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@48
    const-string/jumbo v3, "Count must be between 0 and 0xFFFFFFFF"

    #@4b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v2

    #@4f
    .line 308
    :cond_4
    check-cast p2, Ljava/lang/Long;

    #@51
    .end local p2    # "headerValue":Ljava/lang/Object;
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mCount:Ljava/lang/Long;

    #@53
    goto :goto_0

    #@54
    .line 311
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :sswitch_1
    if-eqz p2, :cond_5

    #@56
    instance-of v2, p2, Ljava/lang/String;

    #@58
    if-eqz v2, :cond_6

    #@5a
    .line 314
    :cond_5
    iput-boolean v5, p0, Ljavax/obex/HeaderSet;->mEmptyName:Z

    #@5c
    .line 315
    check-cast p2, Ljava/lang/String;

    #@5e
    .end local p2    # "headerValue":Ljava/lang/Object;
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mName:Ljava/lang/String;

    #@60
    goto :goto_0

    #@61
    .line 312
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@63
    const-string/jumbo v3, "Name must be a String"

    #@66
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@69
    throw v2

    #@6a
    .line 318
    :sswitch_2
    if-eqz p2, :cond_7

    #@6c
    instance-of v2, p2, Ljava/lang/String;

    #@6e
    if-eqz v2, :cond_8

    #@70
    .line 321
    :cond_7
    check-cast p2, Ljava/lang/String;

    #@72
    .end local p2    # "headerValue":Ljava/lang/Object;
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mType:Ljava/lang/String;

    #@74
    goto :goto_0

    #@75
    .line 319
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@77
    const-string/jumbo v3, "Type must be a String"

    #@7a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v2

    #@7e
    .line 324
    :sswitch_3
    instance-of v2, p2, Ljava/lang/Long;

    #@80
    if-nez v2, :cond_a

    #@82
    .line 325
    if-nez p2, :cond_9

    #@84
    .line 326
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    #@86
    goto :goto_0

    #@87
    .line 329
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@89
    const-string/jumbo v3, "Length must be a Long"

    #@8c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v2

    #@90
    :cond_a
    move-object v2, p2

    #@91
    .line 331
    check-cast v2, Ljava/lang/Long;

    #@93
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@96
    move-result-wide v0

    #@97
    .line 332
    cmp-long v2, v0, v6

    #@99
    if-ltz v2, :cond_b

    #@9b
    cmp-long v2, v0, v8

    #@9d
    if-lez v2, :cond_c

    #@9f
    .line 333
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a1
    const-string/jumbo v3, "Length must be between 0 and 0xFFFFFFFF"

    #@a4
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v2

    #@a8
    .line 335
    :cond_c
    check-cast p2, Ljava/lang/Long;

    #@aa
    .end local p2    # "headerValue":Ljava/lang/Object;
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mLength:Ljava/lang/Long;

    #@ac
    goto/16 :goto_0

    #@ae
    .line 338
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :sswitch_4
    if-eqz p2, :cond_d

    #@b0
    instance-of v2, p2, Ljava/util/Calendar;

    #@b2
    if-eqz v2, :cond_e

    #@b4
    .line 341
    :cond_d
    check-cast p2, Ljava/util/Calendar;

    #@b6
    .end local p2    # "headerValue":Ljava/lang/Object;
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mIsoTime:Ljava/util/Calendar;

    #@b8
    goto/16 :goto_0

    #@ba
    .line 339
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@bc
    const-string/jumbo v3, "Time ISO 8601 must be a Calendar"

    #@bf
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c2
    throw v2

    #@c3
    .line 344
    :sswitch_5
    if-eqz p2, :cond_f

    #@c5
    instance-of v2, p2, Ljava/util/Calendar;

    #@c7
    if-eqz v2, :cond_10

    #@c9
    .line 347
    :cond_f
    check-cast p2, Ljava/util/Calendar;

    #@cb
    .end local p2    # "headerValue":Ljava/lang/Object;
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mByteTime:Ljava/util/Calendar;

    #@cd
    goto/16 :goto_0

    #@cf
    .line 345
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@d1
    const-string/jumbo v3, "Time 4 Byte must be a Calendar"

    #@d4
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d7
    throw v2

    #@d8
    .line 350
    :sswitch_6
    if-eqz p2, :cond_11

    #@da
    instance-of v2, p2, Ljava/lang/String;

    #@dc
    if-eqz v2, :cond_12

    #@de
    .line 353
    :cond_11
    check-cast p2, Ljava/lang/String;

    #@e0
    .end local p2    # "headerValue":Ljava/lang/Object;
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mDescription:Ljava/lang/String;

    #@e2
    goto/16 :goto_0

    #@e4
    .line 351
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@e6
    const-string/jumbo v3, "Description must be a String"

    #@e9
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ec
    throw v2

    #@ed
    .line 356
    :sswitch_7
    if-nez p2, :cond_13

    #@ef
    .line 357
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    #@f1
    goto/16 :goto_0

    #@f3
    .line 359
    :cond_13
    instance-of v2, p2, [B

    #@f5
    if-nez v2, :cond_14

    #@f7
    .line 360
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@f9
    const-string/jumbo v3, "Target must be a byte array"

    #@fc
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ff
    throw v2

    #@100
    :cond_14
    move-object v2, p2

    #@101
    .line 362
    check-cast v2, [B

    #@103
    array-length v2, v2

    #@104
    new-array v2, v2, [B

    #@106
    iput-object v2, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    #@108
    .line 363
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    #@10a
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mTarget:[B

    #@10c
    array-length v3, v3

    #@10d
    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@110
    goto/16 :goto_0

    #@112
    .line 368
    :sswitch_8
    if-nez p2, :cond_15

    #@114
    .line 369
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    #@116
    goto/16 :goto_0

    #@118
    .line 371
    :cond_15
    instance-of v2, p2, [B

    #@11a
    if-nez v2, :cond_16

    #@11c
    .line 372
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@11e
    const-string/jumbo v3, "HTTP must be a byte array"

    #@121
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@124
    throw v2

    #@125
    :cond_16
    move-object v2, p2

    #@126
    .line 374
    check-cast v2, [B

    #@128
    array-length v2, v2

    #@129
    new-array v2, v2, [B

    #@12b
    iput-object v2, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    #@12d
    .line 375
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    #@12f
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mHttpHeader:[B

    #@131
    array-length v3, v3

    #@132
    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@135
    goto/16 :goto_0

    #@137
    .line 380
    :sswitch_9
    if-nez p2, :cond_17

    #@139
    .line 381
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mWho:[B

    #@13b
    goto/16 :goto_0

    #@13d
    .line 383
    :cond_17
    instance-of v2, p2, [B

    #@13f
    if-nez v2, :cond_18

    #@141
    .line 384
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@143
    const-string/jumbo v3, "WHO must be a byte array"

    #@146
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@149
    throw v2

    #@14a
    :cond_18
    move-object v2, p2

    #@14b
    .line 386
    check-cast v2, [B

    #@14d
    array-length v2, v2

    #@14e
    new-array v2, v2, [B

    #@150
    iput-object v2, p0, Ljavax/obex/HeaderSet;->mWho:[B

    #@152
    .line 387
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mWho:[B

    #@154
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mWho:[B

    #@156
    array-length v3, v3

    #@157
    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@15a
    goto/16 :goto_0

    #@15c
    .line 392
    :sswitch_a
    if-nez p2, :cond_19

    #@15e
    .line 393
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    #@160
    goto/16 :goto_0

    #@162
    .line 395
    :cond_19
    instance-of v2, p2, [B

    #@164
    if-nez v2, :cond_1a

    #@166
    .line 396
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@168
    const-string/jumbo v3, "Object Class must be a byte array"

    #@16b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16e
    throw v2

    #@16f
    :cond_1a
    move-object v2, p2

    #@170
    .line 398
    check-cast v2, [B

    #@172
    array-length v2, v2

    #@173
    new-array v2, v2, [B

    #@175
    iput-object v2, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    #@177
    .line 399
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    #@179
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mObjectClass:[B

    #@17b
    array-length v3, v3

    #@17c
    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17f
    goto/16 :goto_0

    #@181
    .line 404
    :sswitch_b
    if-nez p2, :cond_1b

    #@183
    .line 405
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    #@185
    goto/16 :goto_0

    #@187
    .line 407
    :cond_1b
    instance-of v2, p2, [B

    #@189
    if-nez v2, :cond_1c

    #@18b
    .line 408
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@18d
    .line 409
    const-string/jumbo v3, "Application Parameter must be a byte array"

    #@190
    .line 408
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@193
    throw v2

    #@194
    :cond_1c
    move-object v2, p2

    #@195
    .line 411
    check-cast v2, [B

    #@197
    array-length v2, v2

    #@198
    new-array v2, v2, [B

    #@19a
    iput-object v2, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    #@19c
    .line 412
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    #@19e
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mAppParam:[B

    #@1a0
    array-length v3, v3

    #@1a1
    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a4
    goto/16 :goto_0

    #@1a6
    .line 417
    :sswitch_c
    if-nez p2, :cond_1d

    #@1a8
    .line 418
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mSingleResponseMode:Ljava/lang/Byte;

    #@1aa
    goto/16 :goto_0

    #@1ac
    .line 420
    :cond_1d
    instance-of v2, p2, Ljava/lang/Byte;

    #@1ae
    if-nez v2, :cond_1e

    #@1b0
    .line 421
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1b2
    .line 422
    const-string/jumbo v3, "Single Response Mode must be a Byte"

    #@1b5
    .line 421
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b8
    throw v2

    #@1b9
    .line 424
    :cond_1e
    check-cast p2, Ljava/lang/Byte;

    #@1bb
    .end local p2    # "headerValue":Ljava/lang/Object;
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mSingleResponseMode:Ljava/lang/Byte;

    #@1bd
    goto/16 :goto_0

    #@1bf
    .line 429
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :sswitch_d
    if-nez p2, :cond_1f

    #@1c1
    .line 430
    iput-object v4, p0, Ljavax/obex/HeaderSet;->mSrmParam:Ljava/lang/Byte;

    #@1c3
    goto/16 :goto_0

    #@1c5
    .line 432
    :cond_1f
    instance-of v2, p2, Ljava/lang/Byte;

    #@1c7
    if-nez v2, :cond_20

    #@1c9
    .line 433
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1cb
    .line 434
    const-string/jumbo v3, "Single Response Mode Parameter must be a Byte"

    #@1ce
    .line 433
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1d1
    throw v2

    #@1d2
    .line 436
    :cond_20
    check-cast p2, Ljava/lang/Byte;

    #@1d4
    .end local p2    # "headerValue":Ljava/lang/Object;
    iput-object p2, p0, Ljavax/obex/HeaderSet;->mSrmParam:Ljava/lang/Byte;

    #@1d6
    goto/16 :goto_0

    #@1d8
    .line 444
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1da
    .line 445
    const-string/jumbo v3, "Unicode String User Defined must be a String"

    #@1dd
    .line 444
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e0
    throw v2

    #@1e1
    .line 452
    :cond_22
    const/16 v2, 0x70

    #@1e3
    if-lt p1, v2, :cond_25

    #@1e5
    const/16 v2, 0x7f

    #@1e7
    if-gt p1, v2, :cond_25

    #@1e9
    .line 454
    if-nez p2, :cond_23

    #@1eb
    .line 455
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    #@1ed
    add-int/lit8 v3, p1, -0x70

    #@1ef
    aput-object v4, v2, v3

    #@1f1
    goto/16 :goto_0

    #@1f3
    .line 457
    :cond_23
    instance-of v2, p2, [B

    #@1f5
    if-nez v2, :cond_24

    #@1f7
    .line 458
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1f9
    .line 459
    const-string/jumbo v3, "Byte Sequence User Defined must be a byte array"

    #@1fc
    .line 458
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1ff
    throw v2

    #@200
    .line 461
    :cond_24
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    #@202
    add-int/lit8 v4, p1, -0x70

    #@204
    move-object v2, p2

    #@205
    check-cast v2, [B

    #@207
    array-length v2, v2

    #@208
    new-array v2, v2, [B

    #@20a
    aput-object v2, v3, v4

    #@20c
    .line 462
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    #@20e
    add-int/lit8 v3, p1, -0x70

    #@210
    aget-object v2, v2, v3

    #@212
    .line 463
    iget-object v3, p0, Ljavax/obex/HeaderSet;->mSequenceUserDefined:[[B

    #@214
    add-int/lit8 v4, p1, -0x70

    #@216
    aget-object v3, v3, v4

    #@218
    array-length v3, v3

    #@219
    .line 462
    invoke-static {p2, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@21c
    goto/16 :goto_0

    #@21e
    .line 469
    :cond_25
    const/16 v2, 0xb0

    #@220
    if-lt p1, v2, :cond_28

    #@222
    const/16 v2, 0xbf

    #@224
    if-gt p1, v2, :cond_28

    #@226
    .line 470
    if-eqz p2, :cond_26

    #@228
    instance-of v2, p2, Ljava/lang/Byte;

    #@22a
    if-eqz v2, :cond_27

    #@22c
    .line 473
    :cond_26
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mByteUserDefined:[Ljava/lang/Byte;

    #@22e
    add-int/lit16 v3, p1, -0xb0

    #@230
    check-cast p2, Ljava/lang/Byte;

    #@232
    .end local p2    # "headerValue":Ljava/lang/Object;
    aput-object p2, v2, v3

    #@234
    goto/16 :goto_0

    #@236
    .line 471
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :cond_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@238
    const-string/jumbo v3, "ByteUser Defined must be a Byte"

    #@23b
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23e
    throw v2

    #@23f
    .line 479
    :cond_28
    const/16 v2, 0xf0

    #@241
    if-lt p1, v2, :cond_2d

    #@243
    const/16 v2, 0xff

    #@245
    if-gt p1, v2, :cond_2d

    #@247
    .line 480
    instance-of v2, p2, Ljava/lang/Long;

    #@249
    if-nez v2, :cond_2a

    #@24b
    .line 481
    if-nez p2, :cond_29

    #@24d
    .line 482
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    #@24f
    add-int/lit16 v3, p1, -0xf0

    #@251
    aput-object v4, v2, v3

    #@253
    goto/16 :goto_0

    #@255
    .line 485
    :cond_29
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@257
    const-string/jumbo v3, "Integer User Defined must be a Long"

    #@25a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25d
    throw v2

    #@25e
    :cond_2a
    move-object v2, p2

    #@25f
    .line 487
    check-cast v2, Ljava/lang/Long;

    #@261
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@264
    move-result-wide v0

    #@265
    .line 488
    cmp-long v2, v0, v6

    #@267
    if-ltz v2, :cond_2b

    #@269
    cmp-long v2, v0, v8

    #@26b
    if-lez v2, :cond_2c

    #@26d
    .line 489
    :cond_2b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@26f
    .line 490
    const-string/jumbo v3, "Integer User Defined must be between 0 and 0xFFFFFFFF"

    #@272
    .line 489
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@275
    throw v2

    #@276
    .line 492
    :cond_2c
    iget-object v2, p0, Ljavax/obex/HeaderSet;->mIntegerUserDefined:[Ljava/lang/Long;

    #@278
    add-int/lit16 v3, p1, -0xf0

    #@27a
    check-cast p2, Ljava/lang/Long;

    #@27c
    .end local p2    # "headerValue":Ljava/lang/Object;
    aput-object p2, v2, v3

    #@27e
    goto/16 :goto_0

    #@280
    .line 495
    .restart local p2    # "headerValue":Ljava/lang/Object;
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@282
    const-string/jumbo v3, "Invalid Header Identifier"

    #@285
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@288
    throw v2

    #@289
    .line 295
    nop

    #@28a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_6
        0x42 -> :sswitch_2
        0x44 -> :sswitch_4
        0x46 -> :sswitch_7
        0x47 -> :sswitch_8
        0x4a -> :sswitch_9
        0x4c -> :sswitch_b
        0x4f -> :sswitch_a
        0x97 -> :sswitch_c
        0x98 -> :sswitch_d
        0xc0 -> :sswitch_0
        0xc3 -> :sswitch_3
        0xc4 -> :sswitch_5
    .end sparse-switch
.end method
