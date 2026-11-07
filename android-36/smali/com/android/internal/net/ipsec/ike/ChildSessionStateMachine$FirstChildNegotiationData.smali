.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$FirstChildNegotiationData;
.super Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstChildNegotiationData"
.end annotation


# instance fields
.field public final blacklist requestPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/List;Ljava/util/List;I)V
    .registers 5
    .param p3, "spi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;I)V"
        }
    .end annotation

    .line 720
    .local p1, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p2, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    const/16 v0, 0x23

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedCreateResponse;-><init>(ILjava/util/List;I)V

    .line 721
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$FirstChildNegotiationData;->requestPayloads:Ljava/util/List;

    .line 722
    return-void
.end method
