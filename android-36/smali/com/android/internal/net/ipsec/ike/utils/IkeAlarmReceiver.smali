.class public Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IkeAlarmReceiver.java"


# static fields
.field public static final blacklist ACTION_DELETE_CHILD:Ljava/lang/String; = "IkeAlarmReceiver.ACTION_DELETE_CHILD"

.field public static final blacklist ACTION_DELETE_IKE:Ljava/lang/String; = "IkeAlarmReceiver.ACTION_DELETE_IKE"

.field public static final blacklist ACTION_DPD:Ljava/lang/String; = "IkeAlarmReceiver.ACTION_DPD"

.field public static final blacklist ACTION_KEEPALIVE:Ljava/lang/String; = "IkeAlarmReceiver.ACTION_KEEPALIVE"

.field public static final blacklist ACTION_REKEY_CHILD:Ljava/lang/String; = "IkeAlarmReceiver.ACTION_REKEY_CHILD"

.field public static final blacklist ACTION_REKEY_IKE:Ljava/lang/String; = "IkeAlarmReceiver.ACTION_REKEY_IKE"

.field public static final blacklist PARCELABLE_NAME_IKE_SESSION_MSG:Ljava/lang/String; = "IkeAlarmReceiver.PARCELABLE_NAME_IKE_SESSION_MSG"

.field private static final blacklist sIkeSessionActionsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIkeSessionIdToHandlerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->sIkeSessionActionsSet:Ljava/util/HashSet;

    .line 49
    sget-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->sIkeSessionActionsSet:Ljava/util/HashSet;

    const-string v1, "IkeAlarmReceiver.ACTION_DELETE_CHILD"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->sIkeSessionActionsSet:Ljava/util/HashSet;

    const-string v1, "IkeAlarmReceiver.ACTION_REKEY_CHILD"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->sIkeSessionActionsSet:Ljava/util/HashSet;

    const-string v1, "IkeAlarmReceiver.ACTION_DELETE_IKE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->sIkeSessionActionsSet:Ljava/util/HashSet;

    const-string v1, "IkeAlarmReceiver.ACTION_REKEY_IKE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->sIkeSessionActionsSet:Ljava/util/HashSet;

    const-string v1, "IkeAlarmReceiver.ACTION_DPD"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->mIkeSessionIdToHandlerMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alarm fired: action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    const-string v3, "IkeAlarmReceiver"

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_9e

    :cond_35
    goto :goto_72

    :sswitch_36
    const-string v1, "IkeAlarmReceiver.ACTION_KEEPALIVE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x5

    goto :goto_73

    :sswitch_40
    const-string v1, "IkeAlarmReceiver.ACTION_DPD"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x4

    goto :goto_73

    :sswitch_4a
    const-string v1, "IkeAlarmReceiver.ACTION_REKEY_CHILD"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x1

    goto :goto_73

    :sswitch_54
    const-string v1, "IkeAlarmReceiver.ACTION_DELETE_CHILD"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    goto :goto_73

    :sswitch_5e
    const-string v1, "IkeAlarmReceiver.ACTION_REKEY_IKE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x3

    goto :goto_73

    :sswitch_68
    const-string v1, "IkeAlarmReceiver.ACTION_DELETE_IKE"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x2

    goto :goto_73

    :goto_72
    const/4 v1, -0x1

    :goto_73
    packed-switch v1, :pswitch_data_b8

    .line 94
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    const-string v2, "Received unrecognized alarm intent"

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 83
    :pswitch_80
    nop

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "IkeAlarmReceiver.PARCELABLE_NAME_IKE_SESSION_MSG"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 85
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->mIkeSessionIdToHandlerMap:Landroid/util/SparseArray;

    iget v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 87
    .local v2, "ikeHandler":Landroid/os/Handler;
    if-eqz v2, :cond_9c

    .line 90
    invoke-virtual {v2, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 92
    :cond_9c
    return-void

    nop

    :sswitch_data_9e
    .sparse-switch
        -0x78a46679 -> :sswitch_68
        -0x5ecafde8 -> :sswitch_5e
        0x1e858220 -> :sswitch_54
        0x27a70a71 -> :sswitch_4a
        0x2be18580 -> :sswitch_40
        0x675b0e90 -> :sswitch_36
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
        :pswitch_80
    .end packed-switch
.end method

.method public blacklist registerIkeSession(ILandroid/os/Handler;)V
    .registers 4
    .param p1, "ikeSessionId"    # I
    .param p2, "ikeSesisonHandler"    # Landroid/os/Handler;

    .line 100
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->mIkeSessionIdToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    return-void
.end method

.method public blacklist unregisterIkeSession(I)V
    .registers 3
    .param p1, "ikeSessionId"    # I

    .line 105
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarmReceiver;->mIkeSessionIdToHandlerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 106
    return-void
.end method
