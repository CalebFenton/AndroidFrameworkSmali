.class public final Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;
.super Ljava/lang/Object;
.source "EventMessageEncoder.java"


# instance fields
.field private final blacklist byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field private final blacklist dataOutputStream:Ljava/io/DataOutputStream;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 32
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    return-void
.end method

.method private static blacklist writeNullTerminatedString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 62
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    return-void
.end method


# virtual methods
.method public blacklist encode(Landroid/media/internal/exo/metadata/emsg/EventMessage;)[B
    .registers 5

    .line 43
    iget-object v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 45
    :try_start_5
    iget-object v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    iget-object v1, p1, Landroid/media/internal/exo/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->writeNullTerminatedString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 46
    iget-object v0, p1, Landroid/media/internal/exo/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const-string v0, ""

    .line 47
    :goto_13
    iget-object v1, p0, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-static {v1, v0}, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->writeNullTerminatedString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    iget-wide v1, p1, Landroid/media/internal/exo/metadata/emsg/EventMessage;->durationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 49
    iget-object v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    iget-wide v1, p1, Landroid/media/internal/exo/metadata/emsg/EventMessage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 50
    iget-object v0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    iget-object p1, p1, Landroid/media/internal/exo/metadata/emsg/EventMessage;->messageData:[B

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 51
    iget-object p1, p0, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->dataOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 52
    iget-object p0, p0, Landroid/media/internal/exo/metadata/emsg/EventMessageEncoder;->byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    move-exception p0

    .line 55
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
