.class Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;
.super Ljava/lang/Object;
.source "ChildSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceivedRequest"
.end annotation


# instance fields
.field public final blacklist exchangeSubtype:I

.field public final blacklist exchangeType:I

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
.method constructor blacklist <init>(IILjava/util/List;)V
    .registers 4
    .param p1, "eSubtype"    # I
    .param p2, "eType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 680
    .local p3, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeSubtype:I

    .line 682
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->exchangeType:I

    .line 683
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/ChildSessionStateMachine$ReceivedRequest;->requestPayloads:Ljava/util/List;

    .line 684
    return-void
.end method
