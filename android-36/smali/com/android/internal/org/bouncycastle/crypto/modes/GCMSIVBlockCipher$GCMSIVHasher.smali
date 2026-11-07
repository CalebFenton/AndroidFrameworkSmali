.class Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;
.super Ljava/lang/Object;
.source "GCMSIVBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GCMSIVHasher"
.end annotation


# instance fields
.field private blacklist numActive:I

.field private blacklist numHashed:J

.field private final blacklist theBuffer:[B

.field private final blacklist theByte:[B

.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 854
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 859
    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    .line 864
    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theByte:[B

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)V

    return-void
.end method


# virtual methods
.method blacklist completeHash()V
    .registers 5

    .line 962
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    if-lez v0, :cond_26

    .line 965
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$fgettheReverse(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 966
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$fgettheReverse(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$smfillReverse([BII[B)V

    .line 969
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$fgettheReverse(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$mgHASH(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V

    .line 971
    :cond_26
    return-void
.end method

.method blacklist getBytesProcessed()J
    .registers 3

    .line 882
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    return-wide v0
.end method

.method blacklist reset()V
    .registers 3

    .line 890
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    .line 891
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    .line 892
    return-void
.end method

.method blacklist updateHash(B)V
    .registers 5
    .param p1, "pByte"    # B

    .line 900
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 901
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theByte:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    .line 902
    return-void
.end method

.method blacklist updateHash([BII)V
    .registers 12
    .param p1, "pBuffer"    # [B
    .param p2, "pOffset"    # I
    .param p3, "pLen"    # I

    .line 915
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    const/16 v1, 0x10

    rsub-int/lit8 v0, v0, 0x10

    .line 916
    .local v0, "mySpace":I
    const/4 v2, 0x0

    .line 917
    .local v2, "numProcessed":I
    move v3, p3

    .line 918
    .local v3, "myRemaining":I
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    if-lez v4, :cond_30

    if-lt p3, v0, :cond_30

    .line 922
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    invoke-static {p1, p2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 923
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$fgettheReverse(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v6, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$smfillReverse([BII[B)V

    .line 924
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$fgettheReverse(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$mgHASH(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V

    .line 927
    add-int/2addr v2, v0

    .line 928
    sub-int/2addr v3, v0

    .line 929
    iput v6, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    .line 933
    :cond_30
    :goto_30
    if-lt v3, v1, :cond_4d

    .line 936
    add-int v4, p2, v2

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$fgettheReverse(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v5

    invoke-static {p1, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$smfillReverse([BII[B)V

    .line 937
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$fgettheReverse(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;->-$$Nest$mgHASH(Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V

    .line 940
    add-int/lit8 v2, v2, 0x10

    .line 941
    add-int/lit8 v3, v3, -0x10

    goto :goto_30

    .line 945
    :cond_4d
    if-lez v3, :cond_5d

    .line 948
    add-int v1, p2, v2

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    invoke-static {p1, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 949
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    .line 953
    :cond_5d
    iget-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    int-to-long v6, p3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    .line 954
    return-void
.end method
