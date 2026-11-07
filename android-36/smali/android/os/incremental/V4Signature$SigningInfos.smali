.class public Landroid/os/incremental/V4Signature$SigningInfos;
.super Ljava/lang/Object;
.source "V4Signature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/incremental/V4Signature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigningInfos"
.end annotation


# instance fields
.field public final blacklist signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

.field public final blacklist signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;


# direct methods
.method public constructor blacklist <init>(Landroid/os/incremental/V4Signature$SigningInfo;)V
    .registers 3
    .param p1, "signingInfo"    # Landroid/os/incremental/V4Signature$SigningInfo;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    .line 150
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/incremental/V4Signature$SigningInfoBlock;

    iput-object v0, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    .line 151
    return-void
.end method

.method public varargs constructor blacklist <init>(Landroid/os/incremental/V4Signature$SigningInfo;[Landroid/os/incremental/V4Signature$SigningInfoBlock;)V
    .registers 3
    .param p1, "signingInfo"    # Landroid/os/incremental/V4Signature$SigningInfo;
    .param p2, "signingInfoBlocks"    # [Landroid/os/incremental/V4Signature$SigningInfoBlock;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfo:Landroid/os/incremental/V4Signature$SigningInfo;

    .line 155
    iput-object p2, p0, Landroid/os/incremental/V4Signature$SigningInfos;->signingInfoBlocks:[Landroid/os/incremental/V4Signature$SigningInfoBlock;

    .line 156
    return-void
.end method

.method public static blacklist fromByteArray([B)Landroid/os/incremental/V4Signature$SigningInfos;
    .registers 6
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 163
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Landroid/os/incremental/V4Signature$SigningInfo;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/os/incremental/V4Signature$SigningInfo;

    move-result-object v1

    .line 164
    .local v1, "signingInfo":Landroid/os/incremental/V4Signature$SigningInfo;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 165
    new-instance v2, Landroid/os/incremental/V4Signature$SigningInfos;

    invoke-direct {v2, v1}, Landroid/os/incremental/V4Signature$SigningInfos;-><init>(Landroid/os/incremental/V4Signature$SigningInfo;)V

    return-object v2

    .line 167
    :cond_1a
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v2, "signingInfoBlocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/incremental/V4Signature$SigningInfoBlock;>;"
    :goto_20
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 169
    invoke-static {v0}, Landroid/os/incremental/V4Signature$SigningInfoBlock;->fromByteBuffer(Ljava/nio/ByteBuffer;)Landroid/os/incremental/V4Signature$SigningInfoBlock;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 171
    :cond_2e
    new-instance v3, Landroid/os/incremental/V4Signature$SigningInfos;

    .line 172
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/incremental/V4Signature$SigningInfoBlock;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/incremental/V4Signature$SigningInfoBlock;

    invoke-direct {v3, v1, v4}, Landroid/os/incremental/V4Signature$SigningInfos;-><init>(Landroid/os/incremental/V4Signature$SigningInfo;[Landroid/os/incremental/V4Signature$SigningInfoBlock;)V

    .line 171
    return-object v3
.end method
