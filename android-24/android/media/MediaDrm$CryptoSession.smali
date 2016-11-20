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
.field private mSessionId:[B

.field final synthetic this$0:Landroid/media/MediaDrm;


# direct methods
.method constructor <init>(Landroid/media/MediaDrm;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaDrm;
    .param p2, "sessionId"    # [B
    .param p3, "cipherAlgorithm"    # Ljava/lang/String;
    .param p4, "macAlgorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1075
    iput-object p1, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1079
    iput-object p2, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    #@7
    .line 1080
    invoke-static {p1, p2, p3}, Landroid/media/MediaDrm;->-wrap5(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    #@a
    .line 1081
    invoke-static {p1, p2, p4}, Landroid/media/MediaDrm;->-wrap6(Landroid/media/MediaDrm;[BLjava/lang/String;)V

    #@d
    .line 1077
    return-void
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 2
    .param p1, "keyid"    # [B
    .param p2, "input"    # [B
    .param p3, "iv"    # [B

    #@0
    .prologue
    .line 1107
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    #@2
    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    #@4
    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->-wrap1(Landroid/media/MediaDrm;[B[B[B[B)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public encrypt([B[B[B)[B
    .locals 2
    .param p1, "keyid"    # [B
    .param p2, "input"    # [B
    .param p3, "iv"    # [B

    #@0
    .prologue
    .line 1094
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    #@2
    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    #@4
    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->-wrap2(Landroid/media/MediaDrm;[B[B[B[B)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public sign([B[B)[B
    .locals 2
    .param p1, "keyid"    # [B
    .param p2, "message"    # [B

    #@0
    .prologue
    .line 1118
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    #@2
    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    #@4
    invoke-static {v0, v1, p1, p2}, Landroid/media/MediaDrm;->-wrap3(Landroid/media/MediaDrm;[B[B[B)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public verify([B[B[B)Z
    .locals 2
    .param p1, "keyid"    # [B
    .param p2, "message"    # [B
    .param p3, "signature"    # [B

    #@0
    .prologue
    .line 1132
    iget-object v0, p0, Landroid/media/MediaDrm$CryptoSession;->this$0:Landroid/media/MediaDrm;

    #@2
    iget-object v1, p0, Landroid/media/MediaDrm$CryptoSession;->mSessionId:[B

    #@4
    invoke-static {v0, v1, p1, p2, p3}, Landroid/media/MediaDrm;->-wrap0(Landroid/media/MediaDrm;[B[B[B[B)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
