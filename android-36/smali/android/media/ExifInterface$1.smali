.class Landroid/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/ExifInterface;->getHeifAttributes(Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mPosition:J

.field final synthetic blacklist val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;


# direct methods
.method constructor blacklist <init>(Landroid/media/ExifInterface;Landroid/media/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 3
    .param p1, "this$0"    # Landroid/media/ExifInterface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3075
    iput-object p2, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3079
    return-void
.end method

.method public whitelist getSize()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3122
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist readAt(J[BII)I
    .registers 12
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3084
    if-nez p5, :cond_4

    .line 3085
    const/4 v0, 0x0

    return v0

    .line 3087
    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, -0x1

    if-gez v2, :cond_c

    .line 3088
    return v3

    .line 3091
    :cond_c
    :try_start_c
    iget-wide v4, p0, Landroid/media/ExifInterface$1;->mPosition:J

    cmp-long v2, v4, p1

    if-eqz v2, :cond_2e

    .line 3096
    iget-wide v4, p0, Landroid/media/ExifInterface$1;->mPosition:J

    cmp-long v0, v4, v0

    if-ltz v0, :cond_27

    iget-wide v0, p0, Landroid/media/ExifInterface$1;->mPosition:J

    iget-object v2, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v2

    int-to-long v4, v2

    add-long/2addr v0, v4

    cmp-long v0, p1, v0

    if-ltz v0, :cond_27

    .line 3097
    return v3

    .line 3099
    :cond_27
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3100
    iput-wide p1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 3106
    :cond_2e
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    if-le p5, v0, :cond_3d

    .line 3107
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    move p5, v0

    .line 3110
    :cond_3d
    iget-object v0, p0, Landroid/media/ExifInterface$1;->val$in:Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-virtual {v0, p3, p4, p5}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result v0

    .line 3111
    .local v0, "bytesRead":I
    if-ltz v0, :cond_4c

    .line 3112
    iget-wide v1, p0, Landroid/media/ExifInterface$1;->mPosition:J

    int-to-long v4, v0

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroid/media/ExifInterface$1;->mPosition:J
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_4b} :catch_4d

    .line 3113
    return v0

    .line 3111
    .end local v0    # "bytesRead":I
    :cond_4c
    goto :goto_4e

    .line 3115
    :catch_4d
    move-exception v0

    :goto_4e
    nop

    .line 3116
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/ExifInterface$1;->mPosition:J

    .line 3117
    return v3
.end method
