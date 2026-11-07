.class public final Landroid/media/MediaDrm$CryptoSession;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CryptoSession"
.end annotation


# instance fields
.field private greylist-max-o mSessionId:[B

.field final synthetic blacklist this$0:Landroid/media/MediaDrm;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Landroid/media/MediaDrm;
    .param p2, "sessionId"    # [B
    .param p3, "cipherAlgorithm"    # Ljava/lang/String;
    .param p4, "macAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2365
    iput-object p1, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2366
    iput-object p2, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    .line 2367
    invoke-static {p1, p2, p3}, Landroid/media/MediaDrm;->-$$Nest$smsetCipherAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    .line 2368
    invoke-static {p1, p2, p4}, Landroid/media/MediaDrm;->-$$Nest$smsetMacAlgorithmNative(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    .line 2369
    return-void
.end method


# virtual methods
.method public whitelist decrypt([B[B[B)[B
    .registers 6
    .param p1, "keyid"    # [B
    .param p2, "input"    # [B
    .param p3, "iv"    # [B

    .line 2394
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->-$$Nest$smdecryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist encrypt([B[B[B)[B
    .registers 6
    .param p1, "keyid"    # [B
    .param p2, "input"    # [B
    .param p3, "iv"    # [B

    .line 2381
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->-$$Nest$smencryptNative(Landroid/media/MediaDrm;[B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist sign([B[B)[B
    .registers 5
    .param p1, "keyid"    # [B
    .param p2, "message"    # [B

    .line 2405
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2}, Landroid/media/MediaDrm;->-$$Nest$smsignNative(Landroid/media/MediaDrm;[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist verify([B[B[B)Z
    .registers 6
    .param p1, "keyid"    # [B
    .param p2, "message"    # [B
    .param p3, "signature"    # [B

    .line 2419
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->-$$Nest$smverifyNative(Landroid/media/MediaDrm;[B[B[B[B)Z

    move-result v0

    return v0
.end method
