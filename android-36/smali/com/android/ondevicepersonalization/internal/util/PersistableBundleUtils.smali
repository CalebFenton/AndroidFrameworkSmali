.class public Lcom/android/ondevicepersonalization/internal/util/PersistableBundleUtils;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromByteArray([B)Landroid/os/PersistableBundle;
    .registers 3
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    if-nez p0, :cond_4

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 43
    .local v0, "stream":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist toByteArray(Landroid/os/PersistableBundle;)[B
    .registers 3
    .param p0, "input"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v0, 0x0

    return-object v0

    .line 32
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
