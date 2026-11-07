.class Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestComparator;
.super Ljava/lang/Object;
.source "IkeLocalRequestScheduler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalRequestComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestComparator;-><init>(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;)V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)I
    .registers 6
    .param p1, "requestA"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;
    .param p2, "requestB"    # Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    .line 212
    nop

    .line 213
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->getPriority()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->getPriority()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 214
    .local v0, "relativePriorities":I
    if-eqz v0, :cond_10

    return v0

    .line 216
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->getRequestId()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->getRequestId()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    return v1
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 209
    check-cast p1, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    check-cast p2, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequestComparator;->compare(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;)I

    move-result p1

    return p1
.end method
