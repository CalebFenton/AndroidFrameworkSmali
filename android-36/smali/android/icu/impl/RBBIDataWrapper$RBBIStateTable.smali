.class public Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
.super Ljava/lang/Object;
.source "RBBIDataWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/RBBIDataWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RBBIStateTable"
.end annotation


# static fields
.field public static blacklist fHeaderSize:I


# instance fields
.field public blacklist fDictCategoriesStart:I

.field public blacklist fFlags:I

.field public blacklist fLookAheadResultsSize:I

.field public blacklist fNumStates:I

.field public blacklist fRowLen:I

.field public blacklist fTable:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    const/16 v0, 0x14

    sput v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method static blacklist get(Ljava/nio/ByteBuffer;I)Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    .registers 9
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    if-nez p1, :cond_4

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_4
    sget v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    if-lt p1, v0, :cond_60

    .line 81
    new-instance v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    invoke-direct {v0}, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;-><init>()V

    .line 82
    .local v0, "This":Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    .line 83
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    .line 84
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    .line 85
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    .line 86
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    .line 87
    sget v1, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    sub-int v1, p1, v1

    .line 88
    .local v1, "lengthOfTable":I
    iget v2, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_37

    const/4 v2, 0x1

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    .line 89
    .local v2, "use8Bits":Z
    :goto_38
    if-eqz v2, :cond_55

    .line 90
    new-array v3, v1, [C

    iput-object v3, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 91
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    if-ge v3, v1, :cond_4f

    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 93
    .local v4, "b":B
    iget-object v5, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    and-int/lit16 v6, v4, 0xff

    int-to-char v6, v6

    aput-char v6, v5, v3

    .line 91
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 95
    .end local v3    # "i":I
    :cond_4f
    and-int/lit8 v3, v1, 0x1

    invoke-static {p0, v3}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    goto :goto_5f

    .line 97
    :cond_55
    div-int/lit8 v3, v1, 0x2

    and-int/lit8 v4, v1, 0x1

    invoke-static {p0, v3, v4}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v3

    iput-object v3, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 99
    :goto_5f
    return-object v0

    .line 79
    .end local v0    # "This":Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    .end local v1    # "lengthOfTable":I
    .end local v2    # "use8Bits":Z
    :cond_60
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid RBBI state table length."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 134
    if-ne p1, p0, :cond_4

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_4
    instance-of v0, p1, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 138
    return v1

    .line 140
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    .line 141
    .local v0, "otherST":Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;
    iget v2, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    iget v3, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    if-eq v2, v3, :cond_14

    return v1

    .line 142
    :cond_14
    iget v2, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    iget v3, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 143
    :cond_1b
    iget v2, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    iget v3, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    if-eq v2, v3, :cond_22

    return v1

    .line 144
    :cond_22
    iget v2, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    iget v3, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    if-eq v2, v3, :cond_29

    return v1

    .line 145
    :cond_29
    iget v2, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    iget v3, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    if-eq v2, v3, :cond_30

    return v1

    .line 146
    :cond_30
    iget-object v1, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    iget-object v2, v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    return v1
.end method

.method public blacklist put(Ljava/io/DataOutputStream;)I
    .registers 5
    .param p1, "bytes"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget v0, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 104
    iget v0, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 105
    iget v0, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 106
    iget v0, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 107
    iget v0, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 108
    iget v0, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_35

    .line 109
    iget v0, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    iget v1, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    mul-int/2addr v0, v1

    .line 110
    .local v0, "tableLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v0, :cond_34

    .line 111
    iget-object v2, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    aget-char v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 112
    .local v2, "b":B
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 110
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 114
    .end local v0    # "tableLen":I
    .end local v1    # "i":I
    :cond_34
    goto :goto_49

    .line 115
    :cond_35
    iget v0, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    iget v1, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 116
    .restart local v0    # "tableLen":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3d
    if-ge v1, v0, :cond_49

    .line 117
    iget-object v2, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    aget-char v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 120
    .end local v0    # "tableLen":I
    .end local v1    # "i":I
    :cond_49
    :goto_49
    sget v0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fHeaderSize:I

    iget v1, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fRowLen:I

    iget v2, p0, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fNumStates:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 122
    .local v0, "bytesWritten":I
    :goto_51
    rem-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_5c

    .line 123
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 126
    :cond_5c
    return v0
.end method
