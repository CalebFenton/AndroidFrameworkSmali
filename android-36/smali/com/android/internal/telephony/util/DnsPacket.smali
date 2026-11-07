.class public Lcom/android/internal/telephony/util/DnsPacket;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/util/DnsPacket$ParseException;,
        Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;,
        Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;
    }
.end annotation


# static fields
.field public static final blacklist ANSECTION:I = 0x1

.field public static final blacklist ARSECTION:I = 0x3

.field public static final blacklist NSSECTION:I = 0x2

.field static final blacklist NUM_SECTIONS:I = 0x4

.field public static final blacklist QDSECTION:I = 0x0

.field public static final blacklist TYPE_SVCB:I = 0x40


# instance fields
.field protected final blacklist mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

.field protected final blacklist mRecords:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;",
            ">;)V"
        }
    .end annotation

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    const/4 p1, 0x4

    .line 561
    new-array v0, p1, [Ljava/util/List;

    iput-object v0, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    .line 562
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 563
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    .line 564
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x2

    aput-object p2, v0, p3

    .line 565
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x3

    aput-object p2, v0, p3

    :goto_35
    if-ge v1, p1, :cond_77

    .line 567
    iget-object p2, p0, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    invoke-static {p2}, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->-$$Nest$fgetmRecordCount(Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;)[I

    move-result-object p2

    aget p2, p2, v1

    iget-object p3, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object p3, p3, v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p2, p3, :cond_4c

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 568
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Record count mismatch: expected "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    invoke-static {p3}, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->-$$Nest$fgetmRecordCount(Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;)[I

    move-result-object p3

    aget p3, p3, v1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object p0, p0, v1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_77
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4f

    .line 532
    :try_start_5
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 533
    new-instance v0, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;
    :try_end_10
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_10} :catch_46

    const/4 v0, 0x4

    .line 538
    new-array v1, v0, [Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_45

    .line 541
    iget-object v3, p0, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v3

    .line 542
    iget-object v4, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v5, v4, v2

    move v4, v1

    :goto_29
    if-ge v4, v3, :cond_42

    .line 545
    :try_start_2b
    iget-object v5, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object v5, v5, v2

    invoke-static {v2, p1}, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->parse(ILjava/nio/ByteBuffer;)Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2b .. :try_end_36} :catch_39

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :catch_39
    move-exception p0

    .line 547
    new-instance p1, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string v0, "Parse record fail"

    invoke-direct {p1, v0, p0}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_45
    return-void

    :catch_46
    move-exception p0

    .line 535
    new-instance p1, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string v0, "Parse Header fail, bad input data"

    invoke-direct {p1, v0, p0}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 527
    :cond_4f
    new-instance p0, Lcom/android/internal/telephony/util/DnsPacket$ParseException;

    const-string p1, "Parse header failed, null input data"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

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
    check-cast p1, Lcom/android/internal/telephony/util/DnsPacket;

    .line 599
    iget-object v1, p0, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    iget-object v2, p1, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    iget-object p1, p1, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    .line 600
    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    return v0

    :cond_27
    return v3
.end method

.method public blacklist getBytes()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 578
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 579
    iget-object v1, p0, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    invoke-virtual {v1}, Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x0

    :goto_f
    const/4 v2, 0x4

    if-ge v1, v2, :cond_31

    .line 582
    iget-object v2, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;

    .line 583
    invoke-virtual {v3}, Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1a

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 586
    :cond_31
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRecords(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/util/DnsPacket$DnsRecord;",
            ">;"
        }
    .end annotation

    .line 522
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 606
    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DnsPacket{header="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/util/DnsPacket;->mHeader:Lcom/android/internal/telephony/util/DnsPacket$DnsHeader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", records=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/util/DnsPacket;->mRecords:[Ljava/util/List;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
