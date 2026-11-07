.class public final Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;
.super Ljava/lang/Object;
.source "BarringInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/BarringInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BarringTypeSpecificInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$hidl_discriminator;,
        Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;
    }
.end annotation


# instance fields
.field private blacklist hidl_d:B

.field private blacklist hidl_o:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 578
    new-instance v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/internal/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 579
    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;",
            ">;"
        }
    .end annotation

    .line 704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 708
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 709
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 710
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 709
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 713
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 714
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 715
    new-instance v5, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;-><init>()V

    .line 716
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;
    mul-int/lit8 v6, v3, 0x10

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 717
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 721
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "_hidl_index_0":I
    .end local p0    # "childBlob":Landroid/os/HwBlob;
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;",
            ">;)V"
        }
    .end annotation

    .line 752
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 754
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 755
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 756
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 757
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 758
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 759
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 758
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 761
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 764
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 765
    return-void
.end method


# virtual methods
.method public blacklist conditional()Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;
    .registers 5

    .line 630
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    .line 631
    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "null"

    .line 632
    .local v0, "className":Ljava/lang/String;
    :goto_16
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    .line 635
    invoke-static {v3}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 638
    .end local v0    # "className":Ljava/lang/String;
    :cond_51
    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_68

    const-class v0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_68

    .line 639
    :cond_60
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_68
    :goto_68
    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    return-object v0
.end method

.method public blacklist conditional(Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;)V
    .registers 3
    .param p1, "conditional"    # Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    .line 625
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    .line 626
    iput-object p1, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 627
    return-void
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 649
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 650
    return v0

    .line 652
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 653
    return v1

    .line 655
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    if-eq v2, v3, :cond_11

    .line 656
    return v1

    .line 658
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;

    .line 659
    .local v2, "other":Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;
    iget-byte v3, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    iget-byte v4, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    if-eq v3, v4, :cond_1b

    .line 660
    return v1

    .line 662
    :cond_1b
    iget-object v3, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    iget-object v4, v2, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 663
    return v1

    .line 665
    :cond_26
    return v0
.end method

.method public blacklist getDiscriminator()B
    .registers 2

    .line 645
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 670
    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 671
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    .line 672
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 670
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist noinit()Landroid/internal/hidl/safe_union/V1_0/Monostate;
    .registers 5

    .line 610
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    if-eqz v0, :cond_50

    .line 611
    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, "null"

    .line 612
    .local v0, "className":Ljava/lang/String;
    :goto_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read access to inactive union components is disallowed. Discriminator value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (corresponding to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    .line 615
    invoke-static {v3}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$hidl_discriminator;->getName(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), and hidl_o is of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 618
    .end local v0    # "className":Ljava/lang/String;
    :cond_50
    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    if-eqz v0, :cond_67

    const-class v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    iget-object v1, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_67

    .line 619
    :cond_5f
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Union is in a corrupted state."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_67
    :goto_67
    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    return-object v0
.end method

.method public blacklist noinit(Landroid/internal/hidl/safe_union/V1_0/Monostate;)V
    .registers 3
    .param p1, "noinit"    # Landroid/internal/hidl/safe_union/V1_0/Monostate;

    .line 605
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    .line 606
    iput-object p1, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 607
    return-void
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 726
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    .line 727
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_52

    .line 739
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :pswitch_31
    new-instance v0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    invoke-direct {v0}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 735
    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 736
    goto :goto_51

    .line 729
    :pswitch_41
    new-instance v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    invoke-direct {v0}, Landroid/internal/hidl/safe_union/V1_0/Monostate;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    .line 730
    iget-object v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_o:Ljava/lang/Object;

    check-cast v0, Landroid/internal/hidl/safe_union/V1_0/Monostate;

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/internal/hidl/safe_union/V1_0/Monostate;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 731
    nop

    .line 742
    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_41
        :pswitch_31
    .end packed-switch
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 699
    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 700
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 701
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget-byte v1, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    packed-switch v1, :pswitch_data_54

    .line 691
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown union discriminator (value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 686
    :pswitch_30
    const-string v1, ".conditional = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->conditional()Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 688
    goto :goto_4a

    .line 681
    :pswitch_3d
    const-string v1, ".noinit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->noinit()Landroid/internal/hidl/safe_union/V1_0/Monostate;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 683
    nop

    .line 694
    :goto_4a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_30
    .end packed-switch
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 769
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 770
    iget-byte v0, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    const-wide/16 v1, 0x4

    packed-switch v0, :pswitch_data_44

    .line 780
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown union discriminator (value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->hidl_d:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :pswitch_30
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->conditional()Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo$Conditional;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 777
    goto :goto_42

    .line 772
    :pswitch_39
    invoke-virtual {p0}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->noinit()Landroid/internal/hidl/safe_union/V1_0/Monostate;

    move-result-object v0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/internal/hidl/safe_union/V1_0/Monostate;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 773
    nop

    .line 783
    :goto_42
    return-void

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_39
        :pswitch_30
    .end packed-switch
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 745
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 746
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/BarringInfo$BarringTypeSpecificInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 747
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 748
    return-void
.end method
