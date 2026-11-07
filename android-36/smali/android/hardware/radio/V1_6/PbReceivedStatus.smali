.class public final Landroid/hardware/radio/V1_6/PbReceivedStatus;
.super Ljava/lang/Object;
.source "PbReceivedStatus.java"


# static fields
.field public static final blacklist PB_RECEIVED_ABORT:B = 0x3t

.field public static final blacklist PB_RECEIVED_ERROR:B = 0x2t

.field public static final blacklist PB_RECEIVED_FINAL:B = 0x4t

.field public static final blacklist PB_RECEIVED_OK:B = 0x1t


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(B)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # B

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 28
    .local v1, "flipped":B
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 29
    const-string v2, "PB_RECEIVED_OK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    or-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    .line 32
    :cond_13
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 33
    const-string v2, "PB_RECEIVED_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    or-int/lit8 v2, v1, 0x2

    int-to-byte v1, v2

    .line 36
    :cond_20
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d

    .line 37
    const-string v2, "PB_RECEIVED_ABORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    or-int/lit8 v2, v1, 0x3

    int-to-byte v1, v2

    .line 40
    :cond_2d
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3a

    .line 41
    const-string v2, "PB_RECEIVED_FINAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    or-int/lit8 v2, v1, 0x4

    int-to-byte v1, v2

    .line 44
    :cond_3a
    if-eq p0, v1, :cond_5d

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_5d
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final blacklist toString(B)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # B

    .line 10
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    .line 11
    const-string v0, "PB_RECEIVED_OK"

    return-object v0

    .line 13
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    .line 14
    const-string v0, "PB_RECEIVED_ERROR"

    return-object v0

    .line 16
    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    .line 17
    const-string v0, "PB_RECEIVED_ABORT"

    return-object v0

    .line 19
    :cond_12
    const/4 v0, 0x4

    if-ne p0, v0, :cond_18

    .line 20
    const-string v0, "PB_RECEIVED_FINAL"

    return-object v0

    .line 22
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
