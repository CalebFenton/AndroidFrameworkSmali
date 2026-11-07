.class Ljava/io/ObjectInputStream$HandleTable;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectInputStream$HandleTable$HandleList;
    }
.end annotation


# static fields
.field private static final greylist-max-o STATUS_EXCEPTION:B = 0x3t

.field private static final greylist-max-o STATUS_OK:B = 0x1t

.field private static final greylist-max-o STATUS_UNKNOWN:B = 0x2t


# instance fields
.field greylist-max-o deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

.field greylist-max-o entries:[Ljava/lang/Object;

.field greylist-max-o lowDep:I

.field greylist-max-o size:I

.field greylist-max-o status:[B


# direct methods
.method constructor greylist-max-o <init>(I)V
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 3641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3634
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    .line 3636
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3642
    new-array v0, p1, [B

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    .line 3643
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    .line 3644
    new-array v0, p1, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iput-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3645
    return-void
.end method

.method private greylist-max-o grow()V
    .registers 8

    .line 3845
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 3847
    .local v0, "newCapacity":I
    new-array v1, v0, [B

    .line 3848
    .local v1, "newStatus":[B
    new-array v2, v0, [Ljava/lang/Object;

    .line 3849
    .local v2, "newEntries":[Ljava/lang/Object;
    new-array v3, v0, [Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3851
    .local v3, "newDeps":[Ljava/io/ObjectInputStream$HandleTable$HandleList;
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3852
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3853
    iget-object v4, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iget v5, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3855
    iput-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    .line 3856
    iput-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    .line 3857
    iput-object v3, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    .line 3858
    return-void
.end method


# virtual methods
.method greylist-max-o assign(Ljava/lang/Object;)I
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 3654
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    iget-object v1, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 3655
    invoke-direct {p0}, Ljava/io/ObjectInputStream$HandleTable;->grow()V

    .line 3657
    :cond_a
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 3658
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    aput-object p1, v0, v1

    .line 3659
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    return v0
.end method

.method greylist-max-o clear()V
    .registers 5

    .line 3827
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 3828
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3829
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    iget v1, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 3830
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    .line 3831
    iput v2, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3832
    return-void
.end method

.method greylist-max-o finish(I)V
    .registers 6
    .param p1, "handle"    # I

    .line 3750
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-gez v0, :cond_7

    .line 3752
    add-int/lit8 v0, p1, 0x1

    .local v0, "end":I
    goto :goto_10

    .line 3753
    .end local v0    # "end":I
    :cond_7
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-lt v0, p1, :cond_30

    .line 3755
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    .line 3756
    .restart local v0    # "end":I
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    .line 3763
    :goto_10
    move v1, p1

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_2f

    .line 3764
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v2, v2, v1

    packed-switch v2, :pswitch_data_32

    .line 3775
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2

    .line 3766
    :pswitch_20
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    const/4 v3, 0x1

    aput-byte v3, v2, v1

    .line 3767
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 3768
    goto :goto_2c

    .line 3772
    :pswitch_2b
    nop

    .line 3763
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 3778
    .end local v1    # "i":I
    :cond_2f
    return-void

    .line 3759
    .end local v0    # "end":I
    :cond_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_20
        :pswitch_2b
    .end packed-switch
.end method

.method greylist-max-o lookupException(I)Ljava/lang/ClassNotFoundException;
    .registers 4
    .param p1, "handle"    # I

    .line 3818
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11

    .line 3820
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/ClassNotFoundException;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 3818
    :goto_12
    return-object v0
.end method

.method greylist-max-o lookupObject(I)Ljava/lang/Object;
    .registers 4
    .param p1, "handle"    # I

    .line 3807
    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    .line 3809
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 3807
    :goto_10
    return-object v0
.end method

.method greylist-max-o markDependency(II)V
    .registers 5
    .param p1, "dependent"    # I
    .param p2, "target"    # I

    .line 3669
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4e

    if-ne p2, v0, :cond_6

    goto :goto_4e

    .line 3672
    :cond_6
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    packed-switch v0, :pswitch_data_50

    .line 3708
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3705
    :pswitch_13
    goto :goto_4d

    .line 3675
    :pswitch_14
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p2

    packed-switch v0, :pswitch_data_58

    .line 3700
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3682
    :pswitch_21
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aget-object v0, v0, p2

    check-cast v0, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0, p1, v0}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 3684
    goto :goto_4d

    .line 3688
    :pswitch_2b
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v0, p2

    if-nez v0, :cond_3a

    .line 3689
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    new-instance v1, Ljava/io/ObjectInputStream$HandleTable$HandleList;

    invoke-direct {v1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;-><init>()V

    aput-object v1, v0, p2

    .line 3691
    :cond_3a
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->add(I)V

    .line 3694
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-ltz v0, :cond_49

    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    if-le v0, p2, :cond_4d

    .line 3695
    :cond_49
    iput p2, p0, Ljava/io/ObjectInputStream$HandleTable;->lowDep:I

    goto :goto_4d

    .line 3678
    :pswitch_4c
    nop

    .line 3710
    :cond_4d
    :goto_4d
    return-void

    .line 3670
    :cond_4e
    :goto_4e
    return-void

    nop

    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_2b
        :pswitch_21
    .end packed-switch
.end method

.method greylist-max-o markException(ILjava/lang/ClassNotFoundException;)V
    .registers 7
    .param p1, "handle"    # I
    .param p2, "ex"    # Ljava/lang/ClassNotFoundException;

    .line 3719
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    packed-switch v0, :pswitch_data_36

    .line 3739
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3736
    :pswitch_d
    goto :goto_34

    .line 3721
    :pswitch_e
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    const/4 v1, 0x3

    aput-byte v1, v0, p1

    .line 3722
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 3725
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    aget-object v0, v0, p1

    .line 3726
    .local v0, "dlist":Ljava/io/ObjectInputStream$HandleTable$HandleList;
    if-eqz v0, :cond_34

    .line 3727
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->size()I

    move-result v1

    .line 3728
    .local v1, "ndeps":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    if-ge v2, v1, :cond_2e

    .line 3729
    invoke-virtual {v0, v2}, Ljava/io/ObjectInputStream$HandleTable$HandleList;->get(I)I

    move-result v3

    invoke-virtual {p0, v3, p2}, Ljava/io/ObjectInputStream$HandleTable;->markException(ILjava/lang/ClassNotFoundException;)V

    .line 3728
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 3731
    .end local v2    # "i":I
    :cond_2e
    iget-object v2, p0, Ljava/io/ObjectInputStream$HandleTable;->deps:[Ljava/io/ObjectInputStream$HandleTable$HandleList;

    const/4 v3, 0x0

    aput-object v3, v2, p1

    .line 3732
    .end local v1    # "ndeps":I
    nop

    .line 3741
    .end local v0    # "dlist":Ljava/io/ObjectInputStream$HandleTable$HandleList;
    :cond_34
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method greylist-max-o setObject(ILjava/lang/Object;)V
    .registers 4
    .param p1, "handle"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 3787
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->status:[B

    aget-byte v0, v0, p1

    packed-switch v0, :pswitch_data_14

    .line 3797
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 3794
    :pswitch_d
    goto :goto_13

    .line 3790
    :pswitch_e
    iget-object v0, p0, Ljava/io/ObjectInputStream$HandleTable;->entries:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 3791
    nop

    .line 3799
    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method greylist-max-o size()I
    .registers 2

    .line 3838
    iget v0, p0, Ljava/io/ObjectInputStream$HandleTable;->size:I

    return v0
.end method
