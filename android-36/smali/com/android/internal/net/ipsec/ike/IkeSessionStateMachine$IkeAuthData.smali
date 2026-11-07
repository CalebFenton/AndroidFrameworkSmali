.class Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;
.super Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;
.source "IkeSessionStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IkeAuthData"
.end annotation


# instance fields
.field public final blacklist firstChildReqList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist initIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

.field public final blacklist respIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;Ljava/util/List;)V
    .registers 6
    .param p1, "ikeInitData"    # Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;
    .param p2, "initIdPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;
    .param p3, "respIdPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;",
            "Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 743
    .local p4, "firstChildReqList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeInitData;)V

    .line 744
    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;->initIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    .line 745
    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;->respIdPayload:Lcom/android/internal/net/ipsec/ike/message/IkeIdPayload;

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;->firstChildReqList:Ljava/util/List;

    .line 747
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeSessionStateMachine$IkeAuthData;->firstChildReqList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 748
    return-void
.end method
