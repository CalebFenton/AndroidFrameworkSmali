.class public final Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;
.super Ljava/lang/Object;
.source "OptionsRequestCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRequestCoordinator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;


# direct methods
.method public constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;)V
    .registers 10
    .param p1, "subId"    # I
    .param p3, "callback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
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

    .line 47
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;

    .line 49
    invoke-static {}, Lcom/android/ims/rcs/uce/UceStatsWriter;->getInstance()Lcom/android/ims/rcs/uce/UceStatsWriter;

    move-result-object v4

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "subId":I
    .end local p2    # "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    .end local p3    # "callback":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .local v1, "subId":I
    .local v2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    .local v3, "callback":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    invoke-direct/range {v0 .. v5}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator-IA;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;->mRequestCoordinator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;

    .line 50
    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .registers 11
    .param p1, "subId"    # I
    .param p3, "callback"    # Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
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

    .line 53
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;

    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "subId":I
    .end local p2    # "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    .end local p3    # "callback":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .end local p4    # "instance":Lcom/android/ims/rcs/uce/UceStatsWriter;
    .local v1, "subId":I
    .local v2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/ims/rcs/uce/request/UceRequest;>;"
    .local v3, "callback":Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;
    .local v4, "instance":Lcom/android/ims/rcs/uce/UceStatsWriter;
    invoke-direct/range {v0 .. v5}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;-><init>(ILjava/util/Collection;Lcom/android/ims/rcs/uce/request/UceRequestManager$RequestManagerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator-IA;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;->mRequestCoordinator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;

    .line 56
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;->mRequestCoordinator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;

    return-object v0
.end method

.method public blacklist setCapabilitiesCallback(Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    .line 59
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator$Builder;->mRequestCoordinator:Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;

    invoke-static {v0, p1}, Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;->-$$Nest$msetCapabilitiesCallback(Lcom/android/ims/rcs/uce/request/OptionsRequestCoordinator;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 60
    return-object p0
.end method
