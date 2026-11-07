.class public Lcom/android/net/module/util/DnsPacket;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/DnsPacket$ParseException;,
        Lcom/android/net/module/util/DnsPacket$DnsHeader;,
        Lcom/android/net/module/util/DnsPacket$DnsRecord;,
        Lcom/android/net/module/util/DnsPacket$RecordType;
    }
.end annotation


# static fields
.field public static final blacklist ANSECTION:I = 0x1

.field public static final blacklist ARSECTION:I = 0x3

.field public static final blacklist NSSECTION:I = 0x2

.field static final blacklist NUM_SECTIONS:I = 0x4

.field public static final blacklist QDSECTION:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist TYPE_CNAME:I = 0x5

.field public static final blacklist TYPE_SVCB:I = 0x40


# instance fields
.field protected final blacklist mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

.field protected final blacklist mRecords:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lcom/android/net/module/util/DnsPacket$DnsRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 513
    const-class v0, Lcom/android/net/module/util/DnsPacket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/DnsPacket;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/net/module/util/DnsPacket$DnsHeader;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .param p1, "header"    # Lcom/android/net/module/util/DnsPacket$DnsHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/net/module/util/DnsPacket$DnsHeader;",
            "Ljava/util/List<",
            "Lcom/android/net/module/util/DnsPacket$DnsRecord;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/net/module/util/DnsPacket$DnsRecord;",
            ">;)V"
        }
    .end annotation

    .line 559
    .local p2, "qd":Ljava/util/List;, "Ljava/util/List<Lcom/android/net/module/util/DnsPacket$DnsRecord;>;"
    .local p3, "an":Ljava/util/List;, "Ljava/util/List<Lcom/android/net/module/util/DnsPacket$DnsRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/net/module/util/DnsPacket$DnsHeader;

    iput-object v0, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    .line 561
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/util/List;

    iput-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    .line 562
    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 563
    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 564
    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 565
    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 566
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, v0, :cond_87

    .line 567
    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-static {v2}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->-$$Nest$fgetmRecordCount(Lcom/android/net/module/util/DnsPacket$DnsHeader;)[I

    move-result-object v2

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_58

    .line 566
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 568
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Record count mismatch: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-static {v3}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->-$$Nest$fgetmRecordCount(Lcom/android/net/module/util/DnsPacket$DnsHeader;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    .end local v1    # "i":I
    :cond_87
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 9
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    if-eqz p1, :cond_50

    .line 532
    :try_start_5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 533
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-direct {v1, v0}, Lcom/android/net/module/util/DnsPacket$DnsHeader;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;
    :try_end_10
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_10} :catch_47

    .line 536
    nop

    .line 538
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    .line 540
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_46

    .line 541
    iget-object v3, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-virtual {v3, v2}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v3

    .line 542
    .local v3, "count":I
    iget-object v4, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v5, v4, v2

    .line 543
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_29
    if-ge v4, v3, :cond_43

    .line 545
    :try_start_2b
    iget-object v5, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object v5, v5, v2

    invoke-static {v2, v0}, Lcom/android/net/module/util/DnsPacket$DnsRecord;->parse(ILjava/nio/ByteBuffer;)Lcom/android/net/module/util/DnsPacket$DnsRecord;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2b .. :try_end_36} :catch_3a

    .line 548
    nop

    .line 543
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 546
    :catch_3a
    move-exception v1

    .line 547
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    new-instance v5, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v6, "Parse record fail"

    invoke-direct {v5, v6, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 540
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .end local v3    # "count":I
    .end local v4    # "j":I
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 551
    .end local v2    # "i":I
    :cond_46
    return-void

    .line 534
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_47
    move-exception v0

    .line 535
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    new-instance v1, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v2, "Parse Header fail, bad input data"

    invoke-direct {v1, v2, v0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 527
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :cond_50
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v1, "Parse header failed, null input data"

    invoke-direct {v0, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 596
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 597
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    return v3

    .line 598
    :cond_10
    move-object v1, p1

    check-cast v1, Lcom/android/net/module/util/DnsPacket;

    .line 599
    .local v1, "other":Lcom/android/net/module/util/DnsPacket;
    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    iget-object v4, v1, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    iget-object v4, v1, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    .line 600
    invoke-static {v2, v4}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_29

    :cond_28
    move v0, v3

    .line 599
    :goto_29
    return v0
.end method

.method public blacklist getBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 579
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-virtual {v1}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 581
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    const/4 v2, 0x4

    if-ge v1, v2, :cond_31

    .line 582
    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    .line 583
    .local v3, "record":Lcom/android/net/module/util/DnsPacket$DnsRecord;
    invoke-virtual {v3}, Lcom/android/net/module/util/DnsPacket$DnsRecord;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 584
    .end local v3    # "record":Lcom/android/net/module/util/DnsPacket$DnsRecord;
    goto :goto_1a

    .line 581
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 586
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist getRecords(I)Ljava/util/List;
    .registers 3
    .param p1, "section"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/net/module/util/DnsPacket$DnsRecord;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 605
    iget-object v0, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 606
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 607
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DnsPacket{header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", records=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
