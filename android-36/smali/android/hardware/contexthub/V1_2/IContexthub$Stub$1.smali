.class Landroid/hardware/contexthub/V1_2/IContexthub$Stub$1;
.super Ljava/lang/Object;
.source "IContexthub.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_2/IContexthub$getHubs_1_2Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contexthub/V1_2/IContexthub$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/contexthub/V1_2/IContexthub$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Landroid/hardware/contexthub/V1_2/IContexthub$Stub;
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

    .line 916
    iput-object p2, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValues(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/ContextHub;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 919
    .local p1, "hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    .local p2, "supportedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 920
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p1}, Landroid/hardware/contexthub/V1_0/ContextHub;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 921
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 922
    iget-object v0, p0, Landroid/hardware/contexthub/V1_2/IContexthub$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 923
    return-void
.end method
