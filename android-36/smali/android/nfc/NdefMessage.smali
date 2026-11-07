.class public final Landroid/nfc/NdefMessage;
.super Ljava/lang/Object;
.source "NdefMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/NdefMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mRecords:[Landroid/nfc/NdefRecord;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 217
    new-instance v0, Landroid/nfc/NdefMessage$1;

    invoke-direct {v0}, Landroid/nfc/NdefMessage$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor whitelist <init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V
    .registers 8
    .param p1, "record"    # Landroid/nfc/NdefRecord;
    .param p2, "records"    # [Landroid/nfc/NdefRecord;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v0, "record cannot be null"

    if-eqz p1, :cond_2b

    .line 116
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_19

    aget-object v4, p2, v3

    .line 117
    .local v4, "r":Landroid/nfc/NdefRecord;
    if-eqz v4, :cond_13

    .line 116
    .end local v4    # "r":Landroid/nfc/NdefRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 118
    .restart local v4    # "r":Landroid/nfc/NdefRecord;
    :cond_13
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    .end local v4    # "r":Landroid/nfc/NdefRecord;
    :cond_19
    array-length v0, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    iput-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    .line 123
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    aput-object p1, v0, v2

    .line 124
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v3, p2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    return-void

    .line 114
    :cond_2b
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor whitelist <init>([B)V
    .registers 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-eqz p1, :cond_1f

    .line 97
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/NdefRecord;->parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_17

    .line 104
    return-void

    .line 102
    :cond_17
    new-instance v1, Landroid/nfc/FormatException;

    const-string v2, "trailing data"

    invoke-direct {v1, v2}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>([Landroid/nfc/NdefRecord;)V
    .registers 5
    .param p1, "records"    # [Landroid/nfc/NdefRecord;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1d

    .line 137
    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1a

    aget-object v2, p1, v1

    .line 138
    .local v2, "r":Landroid/nfc/NdefRecord;
    if-eqz v2, :cond_12

    .line 137
    .end local v2    # "r":Landroid/nfc/NdefRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 139
    .restart local v2    # "r":Landroid/nfc/NdefRecord;
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "records cannot contain null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    .end local v2    # "r":Landroid/nfc/NdefRecord;
    :cond_1a
    iput-object p1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    .line 144
    return-void

    .line 135
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have at least one record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 266
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 267
    .local v3, "record":Landroid/nfc/NdefRecord;
    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 268
    .local v4, "token":J
    invoke-virtual {v3, p1}, Landroid/nfc/NdefRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 269
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 266
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    .end local v4    # "token":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 271
    :cond_1a
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 243
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 244
    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 245
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    .line 246
    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 247
    .local v0, "other":Landroid/nfc/NdefMessage;
    iget-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    iget-object v2, v0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getByteArrayLength()I
    .registers 7

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "length":I
    iget-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_11

    aget-object v4, v1, v3

    .line 177
    .local v4, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getByteLength()I

    move-result v5

    add-int/2addr v0, v5

    .line 176
    .end local v4    # "r":Landroid/nfc/NdefRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 179
    :cond_11
    return v0
.end method

.method public whitelist getRecords()[Landroid/nfc/NdefRecord;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist toByteArray()[B
    .registers 8

    .line 194
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getByteArrayLength()I

    move-result v0

    .line 195
    .local v0, "length":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 197
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v3, v3

    if-ge v2, v3, :cond_26

    .line 198
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_14

    move v5, v4

    goto :goto_15

    :cond_14
    move v5, v3

    .line 199
    .local v5, "mb":Z
    :goto_15
    iget-object v6, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v6, v6

    sub-int/2addr v6, v4

    if-ne v2, v6, :cond_1c

    move v3, v4

    .line 200
    .local v3, "me":Z
    :cond_1c
    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    aget-object v4, v4, v2

    invoke-virtual {v4, v1, v5, v3}, Landroid/nfc/NdefRecord;->writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V

    .line 197
    .end local v3    # "me":Z
    .end local v5    # "mb":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 203
    .end local v2    # "i":I
    :cond_26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NdefMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 213
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 215
    return-void
.end method
