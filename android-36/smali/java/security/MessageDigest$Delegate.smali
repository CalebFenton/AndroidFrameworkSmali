.class Ljava/security/MessageDigest$Delegate;
.super Ljava/security/MessageDigest;
.source "MessageDigest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/MessageDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Delegate"
.end annotation


# instance fields
.field private greylist-max-o digestSpi:Ljava/security/MessageDigestSpi;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V
    .registers 3
    .param p1, "digestSpi"    # Ljava/security/MessageDigestSpi;
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 629
    invoke-direct {p0, p2}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 630
    iput-object p1, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    .line 631
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 642
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    instance-of v0, v0, Ljava/lang/Cloneable;

    if-eqz v0, :cond_26

    .line 643
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    .line 644
    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigestSpi;

    .line 648
    .local v0, "digestSpiClone":Ljava/security/MessageDigestSpi;
    new-instance v1, Ljava/security/MessageDigest$Delegate;

    invoke-static {p0}, Ljava/security/MessageDigest;->-$$Nest$fgetalgorithm(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/security/MessageDigest$Delegate;-><init>(Ljava/security/MessageDigestSpi;Ljava/lang/String;)V

    .line 651
    .local v1, "that":Ljava/security/MessageDigest;
    invoke-static {p0}, Ljava/security/MessageDigest;->-$$Nest$fgetprovider(Ljava/security/MessageDigest;)Ljava/security/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->-$$Nest$fputprovider(Ljava/security/MessageDigest;Ljava/security/Provider;)V

    .line 652
    invoke-static {p0}, Ljava/security/MessageDigest;->-$$Nest$fgetstate(Ljava/security/MessageDigest;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/security/MessageDigest;->-$$Nest$fputstate(Ljava/security/MessageDigest;I)V

    .line 653
    return-object v1

    .line 655
    .end local v0    # "digestSpiClone":Ljava/security/MessageDigestSpi;
    .end local v1    # "that":Ljava/security/MessageDigest;
    :cond_26
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api engineDigest([BII)I
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 694
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineDigest([BII)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineDigest()[B
    .registers 2

    .line 689
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api engineGetDigestLength()I
    .registers 2

    .line 660
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineGetDigestLength()I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineReset()V
    .registers 2

    .line 698
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0}, Ljava/security/MessageDigestSpi;->engineReset()V

    .line 699
    return-void
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 3
    .param p1, "input"    # B

    .line 664
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(B)V

    .line 665
    return-void
.end method

.method protected whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 672
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    .line 673
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 668
    iget-object v0, p0, Ljava/security/MessageDigest$Delegate;->digestSpi:Ljava/security/MessageDigestSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 669
    return-void
.end method
