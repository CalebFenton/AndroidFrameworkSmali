.class public final Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;
.super Ljava/lang/Object;
.source "SubscribeRequestCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRequestCoordinator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;


# direct methods
.method public constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V
    .registers 10
    .param p1, "subId"    # I
    .param p3, "c"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequest;",
            ">;",
            "Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;",
            ")V"
        }
    .end annotation

    .line 58
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;

    .line 60
    invoke-static {}, Lcom/android/ims/rcs/uce/UceStatsWriter;->getInstance()Lcom/android/ims/rcs/uce/UceStatsWriter;

    move-result-object v4

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "subId":I
    .end local p2    # "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    .end local p3    # "c":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .local v1, "subId":I
    .local v2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    .local v3, "c":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    invoke-direct/range {v0 .. v5}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator-IA;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;->mRequestCoordinator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;

    .line 61
    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .registers 11
    .param p1, "subId"    # I
    .param p3, "c"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .param p4, "instance"    # Lcom/android/ims/rcs/uce/UceStatsWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/android/ims/rcs/uce/request/UceRequest;",
            ">;",
            "Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;",
            "Lcom/android/ims/rcs/uce/UceStatsWriter;",
            ")V"
        }
    .end annotation

    .line 64
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "subId":I
    .end local p2    # "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    .end local p3    # "c":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .end local p4    # "instance":Lcom/android/ims/rcs/uce/UceStatsWriter;
    .local v1, "subId":I
    .local v2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    .local v3, "c":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .local v4, "instance":Lcom/android/ims/rcs/uce/UceStatsWriter;
    invoke-direct/range {v0 .. v5}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator-IA;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;->mRequestCoordinator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;

    .line 66
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;->mRequestCoordinator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;

    return-object v0
.end method

.method public blacklist setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 72
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator$Builder;->mRequestCoordinator:Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;->-$$Nest$msetCapabilitiesCallback(Lcom/android/ims/rcs/uce/request/SubscribeRequestCoordinator;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 73
    return-object p0
.end method
