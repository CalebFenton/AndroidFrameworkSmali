.class public Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;
.super Ljava/lang/Object;
.source "EapTtlsInboundFragmentationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper$FragmentationStatus;
    }
.end annotation


# static fields
.field public static final blacklist FRAGMENTATION_STATUS_ACK:I = 0x0

.field public static final blacklist FRAGMENTATION_STATUS_ASSEMBLED:I = 0x1

.field public static final blacklist FRAGMENTATION_STATUS_INVALID:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field public blacklist mFragmentedData:Ljava/nio/ByteBuffer;

.field public blacklist mIsAwaitingFragments:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->mIsAwaitingFragments:Z

    return-void
.end method


# virtual methods
.method public blacklist assembleInboundMessage(Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;)I
    .registers 7
    .param p1, "typeData"    # Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;

    .line 58
    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->mIsAwaitingFragments:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    .line 59
    iget-boolean v0, p1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isDataFragmented:Z

    if-eqz v0, :cond_15

    .line 60
    iput-boolean v2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->mIsAwaitingFragments:Z

    .line 61
    iget v0, p1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->messageLength:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    goto :goto_2c

    .line 64
    :cond_15
    iget-object v0, p1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    .line 65
    return v2

    .line 67
    :cond_1e
    iget-boolean v0, p1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isLengthIncluded:Z

    if-eqz v0, :cond_2c

    .line 70
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->TAG:Ljava/lang/String;

    const-string v3, "Fragmentation failure: Received a second or greater fragmented request with the length bit set."

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return v1

    .line 77
    :cond_2c
    :goto_2c
    iget-object v0, p1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->data:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v0, v3, :cond_41

    .line 78
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->TAG:Ljava/lang/String;

    const-string v3, "Fragmentation failure: Received more data then declared and failed to reassemble fragment."

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return v1

    .line 85
    :cond_41
    iget-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->data:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 87
    iget-boolean v0, p1, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;->isDataFragmented:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    .line 88
    return v1

    .line 91
    :cond_4e
    sget-object v0, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v3, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->TAG:Ljava/lang/String;

    const-string v4, "Successfully assembled a fragment."

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iput-boolean v1, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->mIsAwaitingFragments:Z

    .line 93
    return v2
.end method

.method public blacklist getAssembledInboundFragment()[B
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->mFragmentedData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist isAwaitingFragments()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsInboundFragmentationHelper;->mIsAwaitingFragments:Z

    return v0
.end method
