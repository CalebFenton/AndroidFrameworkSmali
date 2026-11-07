.class public final Lcom/android/internal/protolog/AutoClosableProtoInputStream;
.super Ljava/lang/Object;
.source "AutoClosableProtoInputStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist mFileInputStream:Ljava/io/FileInputStream;

.field private final blacklist mProtoInputStream:Landroid/util/proto/ProtoInputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/FileInputStream;)V
    .registers 3
    .param p1, "fileInputStream"    # Ljava/io/FileInputStream;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mProtoInputStream:Landroid/util/proto/ProtoInputStream;

    .line 34
    iput-object p1, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mFileInputStream:Ljava/io/FileInputStream;

    .line 35
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "input"    # [B

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mProtoInputStream:Landroid/util/proto/ProtoInputStream;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mFileInputStream:Ljava/io/FileInputStream;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mFileInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 55
    :cond_9
    return-void
.end method

.method public blacklist get()Landroid/util/proto/ProtoInputStream;
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/android/internal/protolog/AutoClosableProtoInputStream;->mProtoInputStream:Landroid/util/proto/ProtoInputStream;

    return-object v0
.end method
