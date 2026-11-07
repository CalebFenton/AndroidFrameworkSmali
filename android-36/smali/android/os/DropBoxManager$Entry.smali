.class public Landroid/os/DropBoxManager$Entry;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/DropBoxManager$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mData:[B

.field private final greylist-max-o mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mTag:Ljava/lang/String;

.field private final greylist-max-o mTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 266
    new-instance v0, Landroid/os/DropBoxManager$Entry$1;

    invoke-direct {v0}, Landroid/os/DropBoxManager$Entry$1;-><init>()V

    sput-object v0, Landroid/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    if-eqz p1, :cond_12

    .line 133
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 134
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 136
    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 138
    return-void

    .line 131
    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "flags"    # I

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    if-eqz p1, :cond_38

    .line 178
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-nez p4, :cond_11

    move v1, v2

    :cond_11
    if-ne v0, v1, :cond_1f

    .line 182
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 183
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 185
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 186
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 187
    return-void

    .line 179
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLjava/io/File;I)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # Ljava/io/File;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    if-eqz p1, :cond_34

    .line 196
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_1b

    .line 198
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 199
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 201
    const/high16 v0, 0x10000000

    invoke-static {p4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 202
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 203
    return-void

    .line 196
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "text"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-eqz p1, :cond_23

    .line 144
    if-eqz p4, :cond_1a

    .line 146
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 147
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 148
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 150
    const/4 v0, 0x2

    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 151
    return-void

    .line 144
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "text == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;J[BI)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # [B
    .param p5, "flags"    # I

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    if-eqz p1, :cond_38

    .line 160
    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-nez p4, :cond_11

    move v1, v2

    :cond_11
    if-ne v0, v1, :cond_1f

    .line 164
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    .line 165
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    .line 166
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 168
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    .line 169
    return-void

    .line 161
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 207
    :try_start_0
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_b

    :catch_a
    move-exception v0

    .line 208
    :cond_b
    :goto_b
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 282
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 223
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    return v0
.end method

.method public whitelist getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    if-eqz v0, :cond_c

    .line 256
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, "is":Ljava/io/InputStream;
    goto :goto_17

    .line 257
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_c
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2a

    .line 258
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 262
    .restart local v0    # "is":Ljava/io/InputStream;
    :goto_17
    iget v1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_28

    .line 263
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_29

    :cond_28
    move-object v1, v0

    .line 262
    :goto_29
    return-object v1

    .line 260
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getText(I)Ljava/lang/String;
    .registers 9
    .param p1, "maxBytes"    # I

    .line 231
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 232
    :cond_8
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    iget-object v3, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    array-length v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0

    .line 234
    :cond_1c
    const/4 v0, 0x0

    .line 236
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1d
    invoke-virtual {p0}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_55
    .catchall {:try_start_1d .. :try_end_21} :catchall_4c

    move-object v0, v3

    .line 237
    if-nez v0, :cond_2c

    .line 248
    if-eqz v0, :cond_2b

    :try_start_26
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2b

    :catch_2a
    move-exception v2

    .line 237
    :cond_2b
    :goto_2b
    return-object v1

    .line 238
    :cond_2c
    :try_start_2c
    new-array v3, p1, [B

    .line 239
    .local v3, "buf":[B
    const/4 v4, 0x0

    .line 240
    .local v4, "readBytes":I
    const/4 v5, 0x0

    .line 241
    .local v5, "n":I
    :goto_30
    if-ltz v5, :cond_3f

    add-int v6, v4, v5

    move v4, v6

    if-ge v6, p1, :cond_3f

    .line 242
    sub-int v6, p1, v4

    invoke-virtual {v0, v3, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v5, v6

    goto :goto_30

    .line 244
    :cond_3f
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3, v2, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_44} :catch_55
    .catchall {:try_start_2c .. :try_end_44} :catchall_4c

    .line 248
    if-eqz v0, :cond_4b

    :try_start_46
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_4b

    :catch_4a
    move-exception v1

    .line 244
    :cond_4b
    :goto_4b
    return-object v6

    .line 248
    .end local v3    # "buf":[B
    .end local v4    # "readBytes":I
    .end local v5    # "n":I
    :catchall_4c
    move-exception v1

    if-eqz v0, :cond_54

    :try_start_4f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_54

    :catch_53
    move-exception v2

    .line 249
    :cond_54
    :goto_54
    throw v1

    .line 245
    :catch_55
    move-exception v2

    .line 246
    .local v2, "e":Ljava/io/IOException;
    nop

    .line 248
    if-eqz v0, :cond_5e

    :try_start_59
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v3

    .line 246
    :cond_5e
    :goto_5e
    return-object v1
.end method

.method public whitelist getTimeMillis()J
    .registers 3

    .line 217
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 286
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 288
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1b

    .line 289
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 292
    :cond_1b
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 295
    :goto_27
    return-void
.end method
