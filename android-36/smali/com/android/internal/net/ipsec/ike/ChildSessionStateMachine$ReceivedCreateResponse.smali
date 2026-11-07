.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceivedCreateResponse"
.end annotation


# instance fields
.field public final blacklist registeredSpi:I


# direct methods
.method constructor blacklist <init>(ILjava/util/List;I)V
    .registers 4
    .param p1, "eType"    # I
    .param p3, "spi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;I)V"
        }
    .end annotation

    .line 705
    .local p2, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;-><init>(ILjava/util/List;)V

    .line 706
    iput p3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;->registeredSpi:I

    .line 707
    return-void
.end method
