.class public final Ljava/net/InetUnixAddress;
.super Ljava/net/InetAddress;
.source "InetUnixAddress.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    #@0
    .prologue
    .line 32
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Ljava/net/InetUnixAddress;-><init>([B)V

    #@9
    .line 31
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "path"    # [B

    #@0
    .prologue
    .line 39
    sget v0, Landroid/system/OsConstants;->AF_UNIX:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, p1, v1}, Ljava/net/InetAddress;-><init>(I[BLjava/lang/String;)V

    #@6
    .line 38
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "InetUnixAddress["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    new-instance v1, Ljava/lang/String;

    #@e
    iget-object v2, p0, Ljava/net/InetUnixAddress;->ipaddress:[B

    #@10
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@12
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    const-string/jumbo v1, "]"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    return-object v0
.end method
