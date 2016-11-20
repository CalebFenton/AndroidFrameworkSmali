.class public final Landroid/nfc/NdefMessage;
.super Ljava/lang/Object;
.source "NdefMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/NdefMessage$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/NdefMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRecords:[Landroid/nfc/NdefRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 217
    new-instance v0, Landroid/nfc/NdefMessage$1;

    #@2
    invoke-direct {v0}, Landroid/nfc/NdefMessage$1;-><init>()V

    #@5
    .line 216
    sput-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 61
    return-void
.end method

.method public varargs constructor <init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V
    .locals 5
    .param p1, "record"    # Landroid/nfc/NdefRecord;
    .param p2, "records"    # [Landroid/nfc/NdefRecord;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 113
    if-nez p1, :cond_0

    #@7
    new-instance v1, Ljava/lang/NullPointerException;

    #@9
    const-string/jumbo v2, "record cannot be null"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 115
    :cond_0
    array-length v3, p2

    #@11
    move v1, v2

    #@12
    :goto_0
    if-ge v1, v3, :cond_2

    #@14
    aget-object v0, p2, v1

    #@16
    .line 116
    .local v0, "r":Landroid/nfc/NdefRecord;
    if-nez v0, :cond_1

    #@18
    .line 117
    new-instance v1, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v2, "record cannot be null"

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 115
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 121
    .end local v0    # "r":Landroid/nfc/NdefRecord;
    :cond_2
    array-length v1, p2

    #@25
    add-int/lit8 v1, v1, 0x1

    #@27
    new-array v1, v1, [Landroid/nfc/NdefRecord;

    #@29
    iput-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@2b
    .line 122
    iget-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@2d
    aput-object p1, v1, v2

    #@2f
    .line 123
    iget-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@31
    array-length v3, p2

    #@32
    invoke-static {p2, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@35
    .line 111
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 95
    if-nez p1, :cond_0

    #@6
    new-instance v1, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v2, "data is null"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 96
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@12
    move-result-object v0

    #@13
    .line 98
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0, v1}, Landroid/nfc/NdefRecord;->parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@19
    .line 100
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@1c
    move-result v1

    #@1d
    if-lez v1, :cond_1

    #@1f
    .line 101
    new-instance v1, Landroid/nfc/FormatException;

    #@21
    const-string/jumbo v2, "trailing data"

    #@24
    invoke-direct {v1, v2}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 94
    :cond_1
    return-void
.end method

.method public constructor <init>([Landroid/nfc/NdefRecord;)V
    .locals 3
    .param p1, "records"    # [Landroid/nfc/NdefRecord;

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 133
    array-length v1, p1

    #@4
    const/4 v2, 0x1

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v2, "must have at least one record"

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 136
    :cond_0
    const/4 v1, 0x0

    #@11
    array-length v2, p1

    #@12
    :goto_0
    if-ge v1, v2, :cond_2

    #@14
    aget-object v0, p1, v1

    #@16
    .line 137
    .local v0, "r":Landroid/nfc/NdefRecord;
    if-nez v0, :cond_1

    #@18
    .line 138
    new-instance v1, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v2, "records cannot contain null"

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 142
    .end local v0    # "r":Landroid/nfc/NdefRecord;
    :cond_2
    iput-object p1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@26
    .line 131
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 207
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 242
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 243
    :cond_0
    if-nez p1, :cond_1

    #@7
    return v3

    #@8
    .line 244
    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 245
    check-cast v0, Landroid/nfc/NdefMessage;

    #@16
    .line 246
    .local v0, "other":Landroid/nfc/NdefMessage;
    iget-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@18
    iget-object v2, v0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@1a
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    return v1
.end method

.method public getByteArrayLength()I
    .locals 6

    #@0
    .prologue
    .line 174
    const/4 v0, 0x0

    #@1
    .line 175
    .local v0, "length":I
    iget-object v3, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@3
    const/4 v2, 0x0

    #@4
    array-length v4, v3

    #@5
    :goto_0
    if-ge v2, v4, :cond_0

    #@7
    aget-object v1, v3, v2

    #@9
    .line 176
    .local v1, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getByteLength()I

    #@c
    move-result v5

    #@d
    add-int/2addr v0, v5

    #@e
    .line 175
    add-int/lit8 v2, v2, 0x1

    #@10
    goto :goto_0

    #@11
    .line 178
    .end local v1    # "r":Landroid/nfc/NdefRecord;
    :cond_0
    return v0
.end method

.method public getRecords()[Landroid/nfc/NdefRecord;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toByteArray()[B
    .locals 6

    #@0
    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getByteArrayLength()I

    #@3
    move-result v2

    #@4
    .line 194
    .local v2, "length":I
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    .line 196
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@b
    array-length v5, v5

    #@c
    if-ge v1, v5, :cond_2

    #@e
    .line 197
    if-nez v1, :cond_0

    #@10
    const/4 v3, 0x1

    #@11
    .line 198
    .local v3, "mb":Z
    :goto_1
    iget-object v5, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@13
    array-length v5, v5

    #@14
    add-int/lit8 v5, v5, -0x1

    #@16
    if-ne v1, v5, :cond_1

    #@18
    const/4 v4, 0x1

    #@19
    .line 199
    .local v4, "me":Z
    :goto_2
    iget-object v5, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@1b
    aget-object v5, v5, v1

    #@1d
    invoke-virtual {v5, v0, v3, v4}, Landroid/nfc/NdefRecord;->writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V

    #@20
    .line 196
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 197
    .end local v3    # "mb":Z
    .end local v4    # "me":Z
    :cond_0
    const/4 v3, 0x0

    #@24
    .restart local v3    # "mb":Z
    goto :goto_1

    #@25
    .line 198
    :cond_1
    const/4 v4, 0x0

    #@26
    .restart local v4    # "me":Z
    goto :goto_2

    #@27
    .line 202
    .end local v3    # "mb":Z
    .end local v4    # "me":Z
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@2a
    move-result-object v5

    #@2b
    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "NdefMessage "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 212
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@2
    array-length v0, v0

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 213
    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    #@8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    #@b
    .line 211
    return-void
.end method
