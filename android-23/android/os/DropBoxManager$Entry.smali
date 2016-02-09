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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DropBoxManager$Entry$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/DropBoxManager$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mData:[B

.field private final mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mFlags:I

.field private final mTag:Ljava/lang/String;

.field private final mTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 219
    new-instance v0, Landroid/os/DropBoxManager$Entry$1;

    #@2
    invoke-direct {v0}, Landroid/os/DropBoxManager$Entry$1;-><init>()V

    #@5
    sput-object v0, Landroid/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 96
    if-nez p1, :cond_0

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "tag == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 98
    :cond_0
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    #@11
    .line 99
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    #@13
    .line 100
    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    #@15
    .line 101
    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@17
    .line 102
    const/4 v0, 0x1

    #@18
    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    #@1a
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 139
    if-nez p1, :cond_0

    #@8
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "tag == null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 140
    :cond_0
    and-int/lit8 v2, p5, 0x1

    #@13
    if-eqz v2, :cond_1

    #@15
    move v2, v0

    #@16
    :goto_0
    if-nez p4, :cond_2

    #@18
    :goto_1
    if-eq v2, v0, :cond_3

    #@1a
    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Bad flags: "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    :cond_1
    move v2, v1

    #@35
    .line 140
    goto :goto_0

    #@36
    :cond_2
    move v0, v1

    #@37
    goto :goto_1

    #@38
    .line 144
    :cond_3
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    #@3a
    .line 145
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    #@3c
    .line 146
    iput-object v3, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    #@3e
    .line 147
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@40
    .line 148
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    #@42
    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/io/File;I)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # Ljava/io/File;
    .param p5, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 156
    if-nez p1, :cond_0

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "tag == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 157
    :cond_0
    and-int/lit8 v0, p5, 0x1

    #@11
    if-eqz v0, :cond_1

    #@13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Bad flags: "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 159
    :cond_1
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    #@2f
    .line 160
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    #@31
    .line 161
    iput-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    #@33
    .line 162
    const/high16 v0, 0x10000000

    #@35
    invoke-static {p4, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    #@38
    move-result-object v0

    #@39
    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@3b
    .line 163
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    #@3d
    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "text"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 107
    if-nez p1, :cond_0

    #@6
    new-instance v0, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v1, "tag == null"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 108
    :cond_0
    if-nez p4, :cond_1

    #@11
    new-instance v0, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v1, "text == null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 110
    :cond_1
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    #@1c
    .line 111
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    #@1e
    .line 112
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    #@24
    .line 113
    iput-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@26
    .line 114
    const/4 v0, 0x2

    #@27
    iput v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    #@29
    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[BI)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "data"    # [B
    .param p5, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 122
    if-nez p1, :cond_0

    #@8
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "tag == null"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 123
    :cond_0
    and-int/lit8 v2, p5, 0x1

    #@13
    if-eqz v2, :cond_1

    #@15
    move v2, v0

    #@16
    :goto_0
    if-nez p4, :cond_2

    #@18
    :goto_1
    if-eq v2, v0, :cond_3

    #@1a
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v2, "Bad flags: "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    :cond_1
    move v2, v1

    #@35
    .line 123
    goto :goto_0

    #@36
    :cond_2
    move v0, v1

    #@37
    goto :goto_1

    #@38
    .line 127
    :cond_3
    iput-object p1, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    #@3a
    .line 128
    iput-wide p2, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    #@3c
    .line 129
    iput-object p4, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    #@3e
    .line 130
    iput-object v3, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@40
    .line 131
    iput p5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    #@42
    .line 121
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    #@0
    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@6
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 167
    :cond_0
    :goto_0
    return-void

    #@a
    .line 168
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 178
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    #@2
    and-int/lit8 v0, v0, -0x5

    #@4
    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 209
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 210
    new-instance v0, Ljava/io/ByteArrayInputStream;

    #@7
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    #@9
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@c
    .line 216
    .local v0, "is":Ljava/io/InputStream;
    :goto_0
    iget v1, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    #@e
    and-int/lit8 v1, v1, 0x4

    #@10
    if-eqz v1, :cond_0

    #@12
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    #@14
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    #@17
    move-object v0, v1

    #@18
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    return-object v0

    #@19
    .line 211
    :cond_1
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 212
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    #@1f
    iget-object v1, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@21
    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    #@24
    .restart local v0    # "is":Ljava/io/InputStream;
    goto :goto_0

    #@25
    .line 214
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_2
    return-object v2
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 9
    .param p1, "maxBytes"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 185
    iget v5, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    #@4
    and-int/lit8 v5, v5, 0x2

    #@6
    if-nez v5, :cond_0

    #@8
    return-object v7

    #@9
    .line 186
    :cond_0
    iget-object v5, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    #@b
    if-eqz v5, :cond_1

    #@d
    new-instance v5, Ljava/lang/String;

    #@f
    iget-object v6, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    #@11
    iget-object v7, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    #@13
    array-length v7, v7

    #@14
    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    #@17
    move-result v7

    #@18
    invoke-direct {v5, v6, v8, v7}, Ljava/lang/String;-><init>([BII)V

    #@1b
    return-object v5

    #@1c
    .line 188
    :cond_1
    const/4 v2, 0x0

    #@1d
    .line 190
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    move-result-object v2

    #@21
    .line 191
    .local v2, "is":Ljava/io/InputStream;
    if-nez v2, :cond_3

    #@23
    .line 202
    if-eqz v2, :cond_2

    #@25
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@28
    .line 191
    :cond_2
    :goto_0
    return-object v7

    #@29
    .line 202
    :catch_0
    move-exception v1

    #@2a
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@2b
    .line 192
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-array v0, p1, [B

    #@2d
    .line 193
    .local v0, "buf":[B
    const/4 v4, 0x0

    #@2e
    .line 194
    .local v4, "readBytes":I
    const/4 v3, 0x0

    #@2f
    .line 195
    .local v3, "n":I
    :goto_1
    if-ltz v3, :cond_4

    #@31
    add-int/2addr v4, v3

    #@32
    if-ge v4, p1, :cond_4

    #@34
    .line 196
    sub-int v5, p1, v4

    #@36
    invoke-virtual {v2, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    #@39
    move-result v3

    #@3a
    goto :goto_1

    #@3b
    .line 198
    :cond_4
    new-instance v5, Ljava/lang/String;

    #@3d
    const/4 v6, 0x0

    #@3e
    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@41
    .line 202
    if-eqz v2, :cond_5

    #@43
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@46
    .line 198
    :cond_5
    :goto_2
    return-object v5

    #@47
    .line 202
    :catch_1
    move-exception v1

    #@48
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    #@49
    .line 199
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "n":I
    .end local v4    # "readBytes":I
    :catch_2
    move-exception v1

    #@4a
    .line 202
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_6

    #@4c
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@4f
    .line 200
    :cond_6
    :goto_3
    return-object v7

    #@50
    .line 202
    :catch_3
    move-exception v1

    #@51
    goto :goto_3

    #@52
    .line 201
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@53
    .line 202
    if-eqz v2, :cond_7

    #@55
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    #@58
    .line 201
    :cond_7
    :goto_4
    throw v5

    #@59
    .line 202
    :catch_4
    move-exception v1

    #@5a
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4
.end method

.method public getTimeMillis()J
    .locals 2

    #@0
    .prologue
    .line 175
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    #@2
    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mTag:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 240
    iget-wide v0, p0, Landroid/os/DropBoxManager$Entry;->mTimeMillis:J

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@a
    .line 241
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 242
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    #@10
    and-int/lit8 v0, v0, -0x9

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 243
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    #@17
    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@1a
    .line 238
    :goto_0
    return-void

    #@1b
    .line 245
    :cond_0
    iget v0, p0, Landroid/os/DropBoxManager$Entry;->mFlags:I

    #@1d
    or-int/lit8 v0, v0, 0x8

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 246
    iget-object v0, p0, Landroid/os/DropBoxManager$Entry;->mData:[B

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@27
    goto :goto_0
.end method
