.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;
.super Ljava/lang/Object;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceivedResponse"
.end annotation


# instance fields
.field public final blacklist exchangeType:I

.field public final blacklist responsePayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(ILjava/util/List;)V
    .registers 3
    .param p1, "eType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 695
    .local p2, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;->exchangeType:I

    .line 697
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedResponse;->responsePayloads:Ljava/util/List;

    .line 698
    return-void
.end method
