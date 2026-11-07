.class public Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;
.super Ljava/lang/Object;
.source "EapTtlsOutboundFragmentationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FragmentationResult"
.end annotation


# instance fields
.field public final blacklist fragmentedData:[B

.field public final blacklist hasRemainingFragments:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;[BZ)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper;
    .param p2, "fragmentedData"    # [B
    .param p3, "hasRemainingFragments"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;->fragmentedData:[B

    .line 102
    iput-boolean p3, p0, Lcom/android/internal/net/eap/message/ttls/EapTtlsOutboundFragmentationHelper$FragmentationResult;->hasRemainingFragments:Z

    .line 103
    return-void
.end method
