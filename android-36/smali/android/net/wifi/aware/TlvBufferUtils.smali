.class public Landroid/net/wifi/aware/TlvBufferUtils;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;,
        Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;,
        Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;
    }
.end annotation


# direct methods
.method static bridge synthetic blacklist -$$Nest$smpeekInt([BILjava/nio/ByteOrder;)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/net/wifi/aware/TlvBufferUtils;->peekInt([BILjava/nio/ByteOrder;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smpeekShort([BILjava/nio/ByteOrder;)S
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/net/wifi/aware/TlvBufferUtils;->peekShort([BILjava/nio/ByteOrder;)S

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smpokeInt([BIILjava/nio/ByteOrder;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/net/wifi/aware/TlvBufferUtils;->pokeInt([BIILjava/nio/ByteOrder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smpokeShort([BISLjava/nio/ByteOrder;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/net/wifi/aware/TlvBufferUtils;->pokeShort([BISLjava/nio/ByteOrder;)V

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static greylist-max-o isValid([BII)Z
    .registers 4
    .param p0, "array"    # [B
    .param p1, "typeSize"    # I
    .param p2, "lengthSize"    # I

    .line 628
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, p1, p2, v0}, Landroid/net/wifi/aware/TlvBufferUtils;->isValidEndian([BIILjava/nio/ByteOrder;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isValidEndian([BIILjava/nio/ByteOrder;)Z
    .registers 8
    .param p0, "array"    # [B
    .param p1, "typeSize"    # I
    .param p2, "lengthSize"    # I
    .param p3, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 644
    if-ltz p1, :cond_42

    const/4 v0, 0x2

    if-gt p1, v0, :cond_42

    .line 648
    if-lez p2, :cond_29

    if-gt p2, v0, :cond_29

    .line 652
    const/4 v0, 0x1

    if-nez p0, :cond_d

    .line 653
    return v0

    .line 656
    :cond_d
    const/4 v1, 0x0

    .line 657
    .local v1, "nextTlvIndex":I
    :goto_e
    add-int v2, v1, p1

    add-int/2addr v2, p2

    array-length v3, p0

    if-gt v2, v3, :cond_23

    .line 658
    add-int/2addr v1, p1

    .line 659
    if-ne p2, v0, :cond_1c

    .line 660
    aget-byte v2, p0, v1

    add-int/2addr v2, p2

    add-int/2addr v1, v2

    goto :goto_e

    .line 662
    :cond_1c
    invoke-static {p0, v1, p3}, Landroid/net/wifi/aware/TlvBufferUtils;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v2

    add-int/2addr v2, p2

    add-int/2addr v1, v2

    goto :goto_e

    .line 666
    :cond_23
    array-length v2, p0

    if-ne v1, v2, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0

    .line 649
    .end local v1    # "nextTlvIndex":I
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments - lengthSize must be 1 or 2: lengthSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments - typeSize must be 0, 1, or 2: typeSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist peekInt([BILjava/nio/ByteOrder;)I
    .registers 5
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .line 702
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_26

    .line 703
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr p1, v1

    return p1

    .line 708
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :cond_26
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x0

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .restart local v1    # "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr p1, v1

    return p1
.end method

.method private static blacklist peekShort([BILjava/nio/ByteOrder;)S
    .registers 5
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    .line 694
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_11

    .line 695
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0

    .line 697
    :cond_11
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static blacklist pokeInt([BIILjava/nio/ByteOrder;)V
    .registers 6
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .line 680
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_27

    .line 681
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 682
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 683
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 684
    shr-int/lit8 p1, p2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    goto :goto_49

    .line 686
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :cond_27
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 687
    add-int/lit8 p1, v0, 0x1

    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 688
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 689
    shr-int/lit8 p1, p2, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    .line 691
    :goto_49
    return-void
.end method

.method private static blacklist pokeShort([BISLjava/nio/ByteOrder;)V
    .registers 6
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .line 670
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_15

    .line 671
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 672
    shr-int/lit8 p1, p2, 0x0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    goto :goto_25

    .line 674
    .end local v0    # "offset":I
    .restart local p1    # "offset":I
    :cond_15
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .restart local v0    # "offset":I
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 675
    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    .line 677
    :goto_25
    return-void
.end method
