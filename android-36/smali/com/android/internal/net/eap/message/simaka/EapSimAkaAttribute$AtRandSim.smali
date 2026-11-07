.class public Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;
.super Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtRandSim"
.end annotation


# static fields
.field private static final blacklist MAX_RANDS:I = 0x3

.field private static final blacklist MIN_RANDS:I = 0x2

.field private static final blacklist RAND_LENGTH:I = 0x10


# instance fields
.field public final blacklist rands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "lengthInBytes"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 525
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(IILjava/nio/ByteBuffer;)V

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;->rands:Ljava/util/List;

    .line 527
    add-int/lit8 v0, p1, -0x4

    const/16 v1, 0x10

    div-int/2addr v0, v1

    .line 528
    .local v0, "numRands":I
    invoke-direct {p0, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;->isValidNumRands(I)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 532
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v0, :cond_43

    .line 533
    new-array v3, v1, [B

    .line 534
    .local v3, "rand":[B
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 537
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_20
    if-ge v4, v2, :cond_3b

    .line 538
    iget-object v5, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;->rands:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 539
    .local v5, "otherRand":[B
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_33

    .line 537
    .end local v5    # "otherRand":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 540
    .restart local v5    # "otherRand":[B
    :cond_33
    new-instance v1, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v6, "Received identical RANDs"

    invoke-direct {v1, v6}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    .end local v4    # "j":I
    .end local v5    # "otherRand":[B
    :cond_3b
    iget-object v4, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;->rands:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    .end local v3    # "rand":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 545
    .end local v2    # "i":I
    :cond_43
    return-void

    .line 529
    :cond_44
    new-instance v1, Lcom/android/internal/net/eap/exceptions/simaka/EapSimInvalidAtRandException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected number of rands: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimInvalidAtRandException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs constructor blacklist <init>(I[[B)V
    .registers 7
    .param p1, "lengthInBytes"    # I
    .param p2, "rands"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 550
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;-><init>(II)V

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;->rands:Ljava/util/List;

    .line 552
    array-length v0, p2

    invoke-direct {p0, v0}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;->isValidNumRands(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 556
    array-length v0, p2

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_21

    aget-object v2, p2, v1

    .line 557
    .local v2, "rand":[B
    iget-object v3, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;->rands:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    .end local v2    # "rand":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 559
    :cond_21
    return-void

    .line 553
    :cond_22
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimInvalidAtRandException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected number of rands: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimInvalidAtRandException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist isValidNumRands(I)Z
    .registers 3
    .param p1, "numRands"    # I

    .line 563
    const/4 v0, 0x2

    if-gt v0, p1, :cond_8

    const/4 v0, 0x3

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public blacklist encode(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 568
    invoke-super {p0, p1}, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;->encode(Ljava/nio/ByteBuffer;)V

    .line 570
    iget-object v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;->rands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 571
    .local v1, "rand":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 572
    .end local v1    # "rand":[B
    goto :goto_9

    .line 573
    :cond_19
    return-void
.end method
