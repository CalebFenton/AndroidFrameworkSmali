.class public abstract Lcom/android/internal/telephony/configupdate/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final blacklist VERSION_UNKNOWN:I = -0x1


# instance fields
.field protected blacklist mConfig:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected blacklist mVersion:I


# direct methods
.method public constructor blacklist <init>(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 63
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 64
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->readAllBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;->parseData([B)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    .line 65
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_16
    move-exception p0

    .line 63
    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
.end method

.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 53
    invoke-virtual {p1}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;->parseData([B)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/configupdate/ConfigParser;->parseData([B)V

    return-void
.end method


# virtual methods
.method public blacklist getConfig()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 83
    iget-object p0, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mConfig:Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist getData(Ljava/lang/String;)[B
    .registers 2

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVersion()I
    .registers 1

    .line 74
    iget p0, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    return p0
.end method

.method protected blacklist overrideVersion(I)V
    .registers 3

    .line 108
    iput p1, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "overrideVersion: mVersion="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/configupdate/ConfigParser;->mVersion:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ConfigParser"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract blacklist parseData([B)V
.end method
