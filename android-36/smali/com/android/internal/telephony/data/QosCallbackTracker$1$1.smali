.class Lcom/android/internal/telephony/data/QosCallbackTracker$1$1;
.super Ljava/lang/Object;
.source "QosCallbackTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/data/QosCallbackTracker$IFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/QosCallbackTracker$1;->onQosCallbackRegistered(ILandroid/net/QosFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$filter:Landroid/net/QosFilter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/QosCallbackTracker$1;Landroid/net/QosFilter;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    iput-object p2, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$1$1;->val$filter:Landroid/net/QosFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist matchesLocalAddress(Ljava/net/InetAddress;II)Z
    .registers 4

    .line 129
    iget-object p0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$1$1;->val$filter:Landroid/net/QosFilter;

    invoke-virtual {p0, p1, p2, p3}, Landroid/net/QosFilter;->matchesLocalAddress(Ljava/net/InetAddress;II)Z

    move-result p0

    return p0
.end method

.method public blacklist matchesProtocol(I)Z
    .registers 2

    .line 143
    iget-object p0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$1$1;->val$filter:Landroid/net/QosFilter;

    invoke-virtual {p0, p1}, Landroid/net/QosFilter;->matchesProtocol(I)Z

    move-result p0

    return p0
.end method

.method public blacklist matchesRemoteAddress(Ljava/net/InetAddress;II)Z
    .registers 4

    .line 137
    iget-object p0, p0, Lcom/android/internal/telephony/data/QosCallbackTracker$1$1;->val$filter:Landroid/net/QosFilter;

    invoke-virtual {p0, p1, p2, p3}, Landroid/net/QosFilter;->matchesRemoteAddress(Ljava/net/InetAddress;II)Z

    move-result p0

    return p0
.end method
