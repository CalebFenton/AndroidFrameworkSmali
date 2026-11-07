.class public final Landroid/net/ipsec/ike/exceptions/UnsupportedCriticalPayloadException;
.super Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
.source "UnsupportedCriticalPayloadException.java"


# static fields
.field private static final blacklist EXPECTED_ERROR_DATA_LEN:I = 0x1


# instance fields
.field private final blacklist mPayloadTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "payloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    nop

    .line 52
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/net/ipsec/ike/exceptions/UnsupportedCriticalPayloadException;->integerToByteArray(II)[B

    move-result-object v0

    .line 50
    invoke-direct {p0, v1, v0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 53
    const-string v0, "payloadList is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ipsec/ike/exceptions/UnsupportedCriticalPayloadException;->mPayloadTypeList:Ljava/util/List;

    .line 55
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "notifyData"    # [B

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;-><init>(I[B)V

    .line 65
    invoke-static {p1}, Landroid/net/ipsec/ike/exceptions/UnsupportedCriticalPayloadException;->byteArrayToInteger([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ipsec/ike/exceptions/UnsupportedCriticalPayloadException;->mPayloadTypeList:Ljava/util/List;

    .line 66
    return-void
.end method


# virtual methods
.method public blacklist getMetricsErrorCode()I
    .registers 2

    .line 91
    const v0, 0x40001

    return v0
.end method

.method public blacklist getUnsupportedCriticalPayloadList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/net/ipsec/ike/exceptions/UnsupportedCriticalPayloadException;->mPayloadTypeList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isValidDataLength(I)Z
    .registers 3
    .param p1, "dataLen"    # I

    .line 81
    const/4 v0, 0x1

    if-ne v0, p1, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
