.class abstract Lcom/android/internal/telephony/cat/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# direct methods
.method constructor greylist-max-r <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeLength(Ljava/io/ByteArrayOutputStream;I)V
    .registers 3

    const/16 v0, 0x7f

    if-le p1, v0, :cond_9

    const/16 v0, 0x81

    .line 51
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    :cond_9
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public abstract greylist-max-r format(Ljava/io/ByteArrayOutputStream;)V
.end method
