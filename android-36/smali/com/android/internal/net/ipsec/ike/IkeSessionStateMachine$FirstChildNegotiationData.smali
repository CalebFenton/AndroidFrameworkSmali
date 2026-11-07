.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;
.super Ljava/lang/Object;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstChildNegotiationData"
.end annotation


# instance fields
.field public final blacklist childSessionCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

.field public final blacklist childSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

.field public final blacklist reqPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist respPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/ChildSessionCallback;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .param p1, "childSessionParams"    # Landroid/net/ipsec/ike/ChildSessionParams;
    .param p2, "childSessionCallback"    # Landroid/net/ipsec/ike/ChildSessionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ipsec/ike/ChildSessionParams;",
            "Landroid/net/ipsec/ike/ChildSessionCallback;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 1113
    .local p3, "reqPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    .local p4, "respPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1114
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;->childSessionParams:Landroid/net/ipsec/ike/ChildSessionParams;

    .line 1115
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;->childSessionCallback:Landroid/net/ipsec/ike/ChildSessionCallback;

    .line 1116
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;->reqPayloads:Ljava/util/List;

    .line 1117
    iput-object p4, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$FirstChildNegotiationData;->respPayloads:Ljava/util/List;

    .line 1118
    return-void
.end method
