.class public final Landroid/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Callback;,
        Landroid/telecom/Call$Details;,
        Landroid/telecom/Call$Listener;
    }
.end annotation


# static fields
.field public static final AVAILABLE_PHONE_ACCOUNTS:Ljava/lang/String; = "selectPhoneAccountAccounts"

.field public static final STATE_ACTIVE:I = 0x4

.field public static final STATE_CONNECTING:I = 0x9

.field public static final STATE_DIALING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x7

.field public static final STATE_DISCONNECTING:I = 0xa

.field public static final STATE_HOLDING:I = 0x3

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_PRE_DIAL_WAIT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STATE_PULLING_CALL:I = 0xb

.field public static final STATE_RINGING:I = 0x2

.field public static final STATE_SELECT_PHONE_ACCOUNT:I = 0x8


# instance fields
.field private final mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/CallbackRecord",
            "<",
            "Landroid/telecom/Call$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCannedTextResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenCached:Z

.field private final mChildrenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mDetails:Landroid/telecom/Call$Details;

.field private mExtras:Landroid/os/Bundle;

.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private mParentId:Ljava/lang/String;

.field private final mPhone:Landroid/telecom/Phone;

.field private mRemainingPostDialSequence:Ljava/lang/String;

.field private mState:I

.field private final mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoCallImpl:Landroid/telecom/VideoCallImpl;


# direct methods
.method static synthetic -get0(Landroid/telecom/Call;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/Call;)Landroid/telecom/Phone;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/telecom/Call;)Ljava/util/List;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "newBundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/telecom/Call;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;)V
    .locals 2
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 834
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    #@b
    .line 835
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    #@12
    .line 836
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    #@14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    #@1a
    .line 837
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@21
    .line 838
    new-instance v0, Ljava/util/ArrayList;

    #@23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@26
    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@28
    .line 840
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@2a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@2d
    move-result-object v0

    #@2e
    .line 839
    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    #@30
    .line 843
    iput-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    #@32
    .line 845
    iput-object v1, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    #@34
    .line 1334
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    #@36
    .line 1335
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@38
    .line 1336
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@3a
    .line 1337
    const/4 v0, 0x0

    #@3b
    iput v0, p0, Landroid/telecom/Call;->mState:I

    #@3d
    .line 1333
    return-void
.end method

.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;I)V
    .locals 2
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;
    .param p4, "state"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 834
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    #@b
    .line 835
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    #@12
    .line 836
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    #@14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    #@1a
    .line 837
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@21
    .line 838
    new-instance v0, Ljava/util/ArrayList;

    #@23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@26
    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@28
    .line 840
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@2a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@2d
    move-result-object v0

    #@2e
    .line 839
    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    #@30
    .line 843
    iput-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    #@32
    .line 845
    iput-object v1, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    #@34
    .line 1342
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    #@36
    .line 1343
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@38
    .line 1344
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@3a
    .line 1345
    iput p4, p0, Landroid/telecom/Call;->mState:I

    #@3c
    .line 1341
    return-void
.end method

.method private static areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "newBundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1640
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_2

    #@6
    .line 1641
    :cond_0
    if-ne p0, p1, :cond_1

    #@8
    :goto_0
    return v4

    #@9
    :cond_1
    move v4, v5

    #@a
    goto :goto_0

    #@b
    .line 1644
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    #@e
    move-result v6

    #@f
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    #@12
    move-result v7

    #@13
    if-eq v6, v7, :cond_3

    #@15
    .line 1645
    return v5

    #@16
    .line 1648
    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@19
    move-result-object v6

    #@1a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_5

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/lang/String;

    #@2a
    .line 1649
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@2c
    .line 1650
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    .line 1651
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    .line 1652
    .local v2, "newValue":Ljava/lang/Object;
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@37
    move-result v6

    #@38
    if-nez v6, :cond_4

    #@3a
    .line 1653
    return v5

    #@3b
    .line 1657
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_5
    return v4
.end method

.method private fireCallDestroyed()V
    .locals 6

    #@0
    .prologue
    .line 1564
    move-object v0, p0

    #@1
    .line 1565
    .local v0, "call":Landroid/telecom/Call;
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 1567
    iget-object v4, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    #@b
    invoke-virtual {v4, p0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    #@e
    .line 1569
    :cond_0
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@10
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v3

    #@14
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@20
    .line 1570
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Landroid/telecom/Call$Callback;

    #@26
    .line 1571
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@29
    move-result-object v4

    #@2a
    new-instance v5, Landroid/telecom/Call$8;

    #@2c
    invoke-direct {v5, p0, v1, p0, v2}, Landroid/telecom/Call$8;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V

    #@2f
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@32
    goto :goto_0

    #@33
    .line 1556
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_1
    return-void
.end method

.method private fireCannedTextResponsesLoaded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1518
    .local p1, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@12
    .line 1519
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1520
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1521
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$5;

    #@1f
    invoke-direct {v5, p0, v1, p0, p1}, Landroid/telecom/Call$5;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1517
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireChildrenChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1492
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@12
    .line 1493
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1494
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1495
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$3;

    #@1f
    invoke-direct {v5, p0, v1, p0, p1}, Landroid/telecom/Call$3;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1491
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireConferenceableCallsChanged()V
    .locals 6

    #@0
    .prologue
    .line 1599
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@12
    .line 1600
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1601
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1602
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$9;

    #@1f
    invoke-direct {v5, p0, v1, p0}, Landroid/telecom/Call$9;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1598
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireDetailsChanged(Landroid/telecom/Call$Details;)V
    .locals 6
    .param p1, "details"    # Landroid/telecom/Call$Details;

    #@0
    .prologue
    .line 1505
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@12
    .line 1506
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1507
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1508
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$4;

    #@1f
    invoke-direct {v5, p0, v1, p0, p1}, Landroid/telecom/Call$4;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1504
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1620
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v8

    #@6
    .local v8, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v7

    #@10
    check-cast v7, Landroid/telecom/CallbackRecord;

    #@12
    .line 1621
    .local v7, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v6, p0

    #@13
    .line 1622
    .local v6, "call":Landroid/telecom/Call;
    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/telecom/Call$Callback;

    #@19
    .line 1623
    .local v2, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v9

    #@1d
    new-instance v0, Landroid/telecom/Call$10;

    #@1f
    move-object v1, p0

    #@20
    move-object v3, p0

    #@21
    move-object v4, p1

    #@22
    move-object v5, p2

    #@23
    invoke-direct/range {v0 .. v5}, Landroid/telecom/Call$10;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V

    #@26
    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@29
    goto :goto_0

    #@2a
    .line 1619
    .end local v2    # "callback":Landroid/telecom/Call$Callback;
    .end local v6    # "call":Landroid/telecom/Call;
    .end local v7    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireParentChanged(Landroid/telecom/Call;)V
    .locals 6
    .param p1, "newParent"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 1479
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@12
    .line 1480
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1481
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1482
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$2;

    #@1f
    invoke-direct {v5, p0, v1, p0, p1}, Landroid/telecom/Call$2;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1478
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private firePostDialWait(Ljava/lang/String;)V
    .locals 6
    .param p1, "remainingPostDialSequence"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1544
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@12
    .line 1545
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1546
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1547
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$7;

    #@1f
    invoke-direct {v5, p0, v1, p0, p1}, Landroid/telecom/Call$7;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1543
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireStateChanged(I)V
    .locals 6
    .param p1, "newState"    # I

    #@0
    .prologue
    .line 1466
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@12
    .line 1467
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1468
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1469
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$1;

    #@1f
    invoke-direct {v5, p0, v1, p0, p1}, Landroid/telecom/Call$1;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1465
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V
    .locals 6
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    #@0
    .prologue
    .line 1531
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v3

    #@6
    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_0

    #@c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/telecom/CallbackRecord;

    #@12
    .line 1532
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1533
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1534
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$6;

    #@1f
    invoke-direct {v5, p0, v1, p0, p1}, Landroid/telecom/Call$6;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1530
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private static stateToString(I)Ljava/lang/String;
    .locals 5
    .param p0, "state"    # I

    #@0
    .prologue
    .line 1281
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1301
    :pswitch_0
    const-class v0, Landroid/telecom/Call;

    #@5
    const-string/jumbo v1, "Unknown state %d"

    #@8
    const/4 v2, 0x1

    #@9
    new-array v2, v2, [Ljava/lang/Object;

    #@b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v3

    #@f
    const/4 v4, 0x0

    #@10
    aput-object v3, v2, v4

    #@12
    invoke-static {v0, v1, v2}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@15
    .line 1302
    const-string/jumbo v0, "UNKNOWN"

    #@18
    return-object v0

    #@19
    .line 1283
    :pswitch_1
    const-string/jumbo v0, "NEW"

    #@1c
    return-object v0

    #@1d
    .line 1285
    :pswitch_2
    const-string/jumbo v0, "RINGING"

    #@20
    return-object v0

    #@21
    .line 1287
    :pswitch_3
    const-string/jumbo v0, "DIALING"

    #@24
    return-object v0

    #@25
    .line 1289
    :pswitch_4
    const-string/jumbo v0, "ACTIVE"

    #@28
    return-object v0

    #@29
    .line 1291
    :pswitch_5
    const-string/jumbo v0, "HOLDING"

    #@2c
    return-object v0

    #@2d
    .line 1293
    :pswitch_6
    const-string/jumbo v0, "DISCONNECTED"

    #@30
    return-object v0

    #@31
    .line 1295
    :pswitch_7
    const-string/jumbo v0, "CONNECTING"

    #@34
    return-object v0

    #@35
    .line 1297
    :pswitch_8
    const-string/jumbo v0, "DISCONNECTING"

    #@38
    return-object v0

    #@39
    .line 1299
    :pswitch_9
    const-string/jumbo v0, "SELECT_PHONE_ACCOUNT"

    #@3c
    return-object v0

    #@3d
    .line 1281
    nop

    #@3e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public addListener(Landroid/telecom/Call$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1316
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    #@3
    .line 1315
    return-void
.end method

.method public answer(I)V
    .locals 2
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 866
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->answerCall(Ljava/lang/String;I)V

    #@7
    .line 865
    return-void
.end method

.method public conference(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "callToConferenceWith"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 960
    if-eqz p1, :cond_0

    #@2
    .line 961
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@4
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@6
    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 959
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->disconnectCall(Ljava/lang/String;)V

    #@7
    .line 882
    return-void
.end method

.method public getCannedTextResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1202
    iget-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1157
    iget-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    #@2
    if-nez v3, :cond_1

    #@4
    .line 1158
    const/4 v3, 0x1

    #@5
    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    #@7
    .line 1159
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    #@9
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@c
    .line 1161
    iget-object v3, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    #@e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/String;

    #@1e
    .line 1162
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    #@20
    invoke-virtual {v3, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    #@23
    move-result-object v0

    #@24
    .line 1163
    .local v0, "call":Landroid/telecom/Call;
    if-nez v0, :cond_0

    #@26
    .line 1165
    const/4 v3, 0x0

    #@27
    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    #@29
    goto :goto_0

    #@2a
    .line 1167
    :cond_0
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    #@2c
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 1172
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "id$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    #@32
    return-object v3
.end method

.method public getConferenceableCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1181
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getDetails()Landroid/telecom/Call$Details;
    .locals 1

    #@0
    .prologue
    .line 1221
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    #@2
    return-object v0
.end method

.method public getParent()Landroid/telecom/Call;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1144
    iget-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1145
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    #@7
    iget-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    #@9
    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 1147
    :cond_0
    return-object v1
.end method

.method public getRemainingPostDialSequence()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 858
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 1190
    iget v0, p0, Landroid/telecom/Call;->mState:I

    #@2
    return v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    #@0
    .prologue
    .line 1211
    iget-object v0, p0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    #@2
    return-object v0
.end method

.method public hold()V
    .locals 2

    #@0
    .prologue
    .line 890
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->holdCall(Ljava/lang/String;)V

    #@7
    .line 889
    return-void
.end method

.method final internalGetCallId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1350
    iget-object v0, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method final internalOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1462
    invoke-direct {p0, p1, p2}, Landroid/telecom/Call;->fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    #@3
    .line 1461
    return-void
.end method

.method final internalSetDisconnected()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x7

    #@1
    .line 1453
    iget v0, p0, Landroid/telecom/Call;->mState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1454
    iput v1, p0, Landroid/telecom/Call;->mState:I

    #@7
    .line 1455
    iget v0, p0, Landroid/telecom/Call;->mState:I

    #@9
    invoke-direct {p0, v0}, Landroid/telecom/Call;->fireStateChanged(I)V

    #@c
    .line 1456
    invoke-direct {p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    #@f
    .line 1452
    :cond_0
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;)V
    .locals 1
    .param p1, "remaining"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1447
    iput-object p1, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    #@2
    .line 1448
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V

    #@7
    .line 1446
    return-void
.end method

.method final internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V
    .locals 19
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/ParcelableCall;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1356
    .local p2, "callIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Call;>;"
    invoke-static/range {p1 .. p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    #@3
    move-result-object v7

    #@4
    .line 1357
    .local v7, "details":Landroid/telecom/Call$Details;
    move-object/from16 v0, p0

    #@6
    iget-object v0, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    #@8
    move-object/from16 v17, v0

    #@a
    move-object/from16 v0, v17

    #@c
    invoke-static {v0, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v17

    #@10
    if-eqz v17, :cond_8

    #@12
    const/4 v8, 0x0

    #@13
    .line 1358
    .local v8, "detailsChanged":Z
    :goto_0
    if-eqz v8, :cond_0

    #@15
    .line 1359
    move-object/from16 v0, p0

    #@17
    iput-object v7, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    #@19
    .line 1362
    :cond_0
    const/4 v2, 0x0

    #@1a
    .line 1363
    .local v2, "cannedTextResponsesChanged":Z
    move-object/from16 v0, p0

    #@1c
    iget-object v0, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    #@1e
    move-object/from16 v17, v0

    #@20
    if-nez v17, :cond_1

    #@22
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    #@25
    move-result-object v17

    #@26
    if-eqz v17, :cond_1

    #@28
    .line 1364
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    #@2b
    move-result-object v17

    #@2c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    #@2f
    move-result v17

    #@30
    if-eqz v17, :cond_9

    #@32
    .line 1370
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoCallImpl()Landroid/telecom/VideoCallImpl;

    #@35
    move-result-object v9

    #@36
    .line 1371
    .local v9, "newVideoCallImpl":Landroid/telecom/VideoCallImpl;
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    #@39
    move-result v17

    #@3a
    if-eqz v17, :cond_b

    #@3c
    .line 1372
    move-object/from16 v0, p0

    #@3e
    iget-object v0, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    #@40
    move-object/from16 v17, v0

    #@42
    move-object/from16 v0, v17

    #@44
    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@47
    move-result v17

    #@48
    if-eqz v17, :cond_a

    #@4a
    const/16 v16, 0x0

    #@4c
    .line 1373
    .local v16, "videoCallChanged":Z
    :goto_2
    if-eqz v16, :cond_2

    #@4e
    .line 1374
    move-object/from16 v0, p0

    #@50
    iput-object v9, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    #@52
    .line 1376
    :cond_2
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    #@56
    move-object/from16 v17, v0

    #@58
    if-eqz v17, :cond_3

    #@5a
    .line 1377
    move-object/from16 v0, p0

    #@5c
    iget-object v0, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    #@5e
    move-object/from16 v17, v0

    #@60
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    #@63
    move-result-object v18

    #@64
    invoke-virtual/range {v18 .. v18}, Landroid/telecom/Call$Details;->getVideoState()I

    #@67
    move-result v18

    #@68
    invoke-virtual/range {v17 .. v18}, Landroid/telecom/VideoCallImpl;->setVideoState(I)V

    #@6b
    .line 1380
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getState()I

    #@6e
    move-result v14

    #@6f
    .line 1381
    .local v14, "state":I
    move-object/from16 v0, p0

    #@71
    iget v0, v0, Landroid/telecom/Call;->mState:I

    #@73
    move/from16 v17, v0

    #@75
    move/from16 v0, v17

    #@77
    if-eq v0, v14, :cond_c

    #@79
    const/4 v15, 0x1

    #@7a
    .line 1382
    .local v15, "stateChanged":Z
    :goto_3
    if-eqz v15, :cond_4

    #@7c
    .line 1383
    move-object/from16 v0, p0

    #@7e
    iput v14, v0, Landroid/telecom/Call;->mState:I

    #@80
    .line 1386
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    #@83
    move-result-object v13

    #@84
    .line 1387
    .local v13, "parentId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@86
    iget-object v0, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    #@88
    move-object/from16 v17, v0

    #@8a
    move-object/from16 v0, v17

    #@8c
    invoke-static {v0, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8f
    move-result v17

    #@90
    if-eqz v17, :cond_d

    #@92
    const/4 v12, 0x0

    #@93
    .line 1388
    .local v12, "parentChanged":Z
    :goto_4
    if-eqz v12, :cond_5

    #@95
    .line 1389
    move-object/from16 v0, p0

    #@97
    iput-object v13, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    #@99
    .line 1392
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    #@9c
    move-result-object v3

    #@9d
    .line 1393
    .local v3, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@9f
    iget-object v0, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    #@a1
    move-object/from16 v17, v0

    #@a3
    move-object/from16 v0, v17

    #@a5
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a8
    move-result v17

    #@a9
    if-eqz v17, :cond_e

    #@ab
    const/4 v4, 0x0

    #@ac
    .line 1394
    .local v4, "childrenChanged":Z
    :goto_5
    if-eqz v4, :cond_6

    #@ae
    .line 1395
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    #@b2
    move-object/from16 v17, v0

    #@b4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    #@b7
    .line 1396
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    #@bb
    move-object/from16 v17, v0

    #@bd
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    #@c0
    move-result-object v18

    #@c1
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@c4
    .line 1397
    const/16 v17, 0x0

    #@c6
    move/from16 v0, v17

    #@c8
    move-object/from16 v1, p0

    #@ca
    iput-boolean v0, v1, Landroid/telecom/Call;->mChildrenCached:Z

    #@cc
    .line 1400
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConferenceableCallIds()Ljava/util/List;

    #@cf
    move-result-object v5

    #@d0
    .line 1401
    .local v5, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    #@d2
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@d5
    move-result v17

    #@d6
    move/from16 v0, v17

    #@d8
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@db
    .line 1402
    .local v6, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@de
    move-result-object v11

    #@df
    .local v11, "otherId$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@e2
    move-result v17

    #@e3
    if-eqz v17, :cond_f

    #@e5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e8
    move-result-object v10

    #@e9
    check-cast v10, Ljava/lang/String;

    #@eb
    .line 1403
    .local v10, "otherId":Ljava/lang/String;
    move-object/from16 v0, p2

    #@ed
    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@f0
    move-result v17

    #@f1
    if-eqz v17, :cond_7

    #@f3
    .line 1404
    move-object/from16 v0, p2

    #@f5
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f8
    move-result-object v17

    #@f9
    check-cast v17, Landroid/telecom/Call;

    #@fb
    move-object/from16 v0, v17

    #@fd
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@100
    goto :goto_6

    #@101
    .line 1357
    .end local v2    # "cannedTextResponsesChanged":Z
    .end local v3    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "childrenChanged":Z
    .end local v5    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v8    # "detailsChanged":Z
    .end local v9    # "newVideoCallImpl":Landroid/telecom/VideoCallImpl;
    .end local v10    # "otherId":Ljava/lang/String;
    .end local v11    # "otherId$iterator":Ljava/util/Iterator;
    .end local v12    # "parentChanged":Z
    .end local v13    # "parentId":Ljava/lang/String;
    .end local v14    # "state":I
    .end local v15    # "stateChanged":Z
    .end local v16    # "videoCallChanged":Z
    :cond_8
    const/4 v8, 0x1

    #@102
    goto/16 :goto_0

    #@104
    .line 1366
    .restart local v2    # "cannedTextResponsesChanged":Z
    .restart local v8    # "detailsChanged":Z
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    #@107
    move-result-object v17

    #@108
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@10b
    move-result-object v17

    #@10c
    .line 1365
    move-object/from16 v0, v17

    #@10e
    move-object/from16 v1, p0

    #@110
    iput-object v0, v1, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    #@112
    .line 1367
    const/4 v2, 0x1

    #@113
    goto/16 :goto_1

    #@115
    .line 1372
    .restart local v9    # "newVideoCallImpl":Landroid/telecom/VideoCallImpl;
    :cond_a
    const/16 v16, 0x1

    #@117
    goto/16 :goto_2

    #@119
    .line 1371
    :cond_b
    const/16 v16, 0x0

    #@11b
    goto/16 :goto_2

    #@11d
    .line 1381
    .restart local v14    # "state":I
    .restart local v16    # "videoCallChanged":Z
    :cond_c
    const/4 v15, 0x0

    #@11e
    goto/16 :goto_3

    #@120
    .line 1387
    .restart local v13    # "parentId":Ljava/lang/String;
    .restart local v15    # "stateChanged":Z
    :cond_d
    const/4 v12, 0x1

    #@121
    goto/16 :goto_4

    #@123
    .line 1393
    .restart local v3    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "parentChanged":Z
    :cond_e
    const/4 v4, 0x1

    #@124
    goto :goto_5

    #@125
    .line 1408
    .restart local v4    # "childrenChanged":Z
    .restart local v5    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v11    # "otherId$iterator":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v0, p0

    #@127
    iget-object v0, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@129
    move-object/from16 v17, v0

    #@12b
    move-object/from16 v0, v17

    #@12d
    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@130
    move-result v17

    #@131
    if-nez v17, :cond_10

    #@133
    .line 1409
    move-object/from16 v0, p0

    #@135
    iget-object v0, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@137
    move-object/from16 v17, v0

    #@139
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    #@13c
    .line 1410
    move-object/from16 v0, p0

    #@13e
    iget-object v0, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@140
    move-object/from16 v17, v0

    #@142
    move-object/from16 v0, v17

    #@144
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@147
    .line 1411
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireConferenceableCallsChanged()V

    #@14a
    .line 1417
    :cond_10
    if-eqz v15, :cond_11

    #@14c
    .line 1418
    move-object/from16 v0, p0

    #@14e
    iget v0, v0, Landroid/telecom/Call;->mState:I

    #@150
    move/from16 v17, v0

    #@152
    move-object/from16 v0, p0

    #@154
    move/from16 v1, v17

    #@156
    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireStateChanged(I)V

    #@159
    .line 1420
    :cond_11
    if-eqz v8, :cond_12

    #@15b
    .line 1421
    move-object/from16 v0, p0

    #@15d
    iget-object v0, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    #@15f
    move-object/from16 v17, v0

    #@161
    move-object/from16 v0, p0

    #@163
    move-object/from16 v1, v17

    #@165
    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    #@168
    .line 1423
    :cond_12
    if-eqz v2, :cond_13

    #@16a
    .line 1424
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    #@16e
    move-object/from16 v17, v0

    #@170
    move-object/from16 v0, p0

    #@172
    move-object/from16 v1, v17

    #@174
    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireCannedTextResponsesLoaded(Ljava/util/List;)V

    #@177
    .line 1426
    :cond_13
    if-eqz v16, :cond_14

    #@179
    .line 1427
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    #@17d
    move-object/from16 v17, v0

    #@17f
    move-object/from16 v0, p0

    #@181
    move-object/from16 v1, v17

    #@183
    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V

    #@186
    .line 1429
    :cond_14
    if-eqz v12, :cond_15

    #@188
    .line 1430
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    #@18b
    move-result-object v17

    #@18c
    move-object/from16 v0, p0

    #@18e
    move-object/from16 v1, v17

    #@190
    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireParentChanged(Landroid/telecom/Call;)V

    #@193
    .line 1432
    :cond_15
    if-eqz v4, :cond_16

    #@195
    .line 1433
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    #@198
    move-result-object v17

    #@199
    move-object/from16 v0, p0

    #@19b
    move-object/from16 v1, v17

    #@19d
    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V

    #@1a0
    .line 1440
    :cond_16
    move-object/from16 v0, p0

    #@1a2
    iget v0, v0, Landroid/telecom/Call;->mState:I

    #@1a4
    move/from16 v17, v0

    #@1a6
    const/16 v18, 0x7

    #@1a8
    move/from16 v0, v17

    #@1aa
    move/from16 v1, v18

    #@1ac
    if-ne v0, v1, :cond_17

    #@1ae
    .line 1441
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    #@1b1
    .line 1354
    :cond_17
    return-void
.end method

.method public mergeConference()V
    .locals 2

    #@0
    .prologue
    .line 977
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->mergeConference(Ljava/lang/String;)V

    #@7
    .line 976
    return-void
.end method

.method public phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    #@0
    .prologue
    .line 950
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    #@7
    .line 949
    return-void
.end method

.method public playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    #@0
    .prologue
    .line 909
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->playDtmfTone(Ljava/lang/String;C)V

    #@7
    .line 908
    return-void
.end method

.method public postDialContinue(Z)V
    .locals 2
    .param p1, "proceed"    # Z

    #@0
    .prologue
    .line 942
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->postDialContinue(Ljava/lang/String;Z)V

    #@7
    .line 941
    return-void
.end method

.method public pullExternalCall()V
    .locals 2

    #@0
    .prologue
    .line 1000
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 1001
    return-void

    #@b
    .line 1004
    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@d
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@f
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->pullExternalCall(Ljava/lang/String;)V

    #@12
    .line 998
    return-void
.end method

.method public final putExtra(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1089
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1090
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@b
    .line 1092
    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 1093
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@12
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;I)V

    #@17
    .line 1088
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1104
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1105
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@b
    .line 1107
    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 1108
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@12
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@17
    .line 1103
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 1074
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1075
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@b
    .line 1077
    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@10
    .line 1078
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@12
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    #@17
    .line 1073
    return-void
.end method

.method public final putExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1055
    if-nez p1, :cond_0

    #@2
    .line 1056
    return-void

    #@3
    .line 1059
    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@5
    if-nez v0, :cond_1

    #@7
    .line 1060
    new-instance v0, Landroid/os/Bundle;

    #@9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@c
    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@e
    .line 1062
    :cond_1
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@10
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@13
    .line 1063
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@15
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@17
    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    #@1a
    .line 1054
    return-void
.end method

.method public registerCallback(Landroid/telecom/Call$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    #@0
    .prologue
    .line 1230
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    invoke-virtual {p0, p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V

    #@8
    .line 1229
    return-void
.end method

.method public registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/Call$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1240
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    #@3
    .line 1242
    if-eqz p1, :cond_0

    #@5
    if-eqz p2, :cond_0

    #@7
    iget v0, p0, Landroid/telecom/Call;->mState:I

    #@9
    const/4 v1, 0x7

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 1243
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@e
    new-instance v1, Landroid/telecom/CallbackRecord;

    #@10
    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    #@13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 1239
    :cond_0
    return-void
.end method

.method public reject(ZLjava/lang/String;)V
    .locals 2
    .param p1, "rejectWithMessage"    # Z
    .param p2, "textMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 876
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    #@7
    .line 875
    return-void
.end method

.method public final removeExtras(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 1117
    iget-object v2, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 1118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/lang/String;

    #@15
    .line 1119
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@17
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@1a
    goto :goto_0

    #@1b
    .line 1121
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@1d
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_1

    #@23
    .line 1122
    iput-object v3, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    #@25
    .line 1125
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@27
    iget-object v3, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@29
    invoke-virtual {v2, v3, p1}, Landroid/telecom/InCallAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    #@2c
    .line 1116
    return-void
.end method

.method public final varargs removeExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1134
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/telecom/Call;->removeExtras(Ljava/util/List;)V

    #@7
    .line 1133
    return-void
.end method

.method public removeListener(Landroid/telecom/Call$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1329
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    #@3
    .line 1328
    return-void
.end method

.method public sendCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1042
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    #@7
    .line 1041
    return-void
.end method

.method public splitFromConference()V
    .locals 2

    #@0
    .prologue
    .line 970
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->splitFromConference(Ljava/lang/String;)V

    #@7
    .line 969
    return-void
.end method

.method public stopDtmfTone()V
    .locals 2

    #@0
    .prologue
    .line 920
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopDtmfTone(Ljava/lang/String;)V

    #@7
    .line 919
    return-void
.end method

.method public swapConference()V
    .locals 2

    #@0
    .prologue
    .line 984
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->swapConference(Ljava/lang/String;)V

    #@7
    .line 983
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1267
    const-string/jumbo v1, "Call [id: "

    #@8
    .line 1266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 1268
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@e
    .line 1266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 1269
    const-string/jumbo v1, ", state: "

    #@15
    .line 1266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 1270
    iget v1, p0, Landroid/telecom/Call;->mState:I

    #@1b
    invoke-static {v1}, Landroid/telecom/Call;->stateToString(I)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 1266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 1271
    const-string/jumbo v1, ", details: "

    #@26
    .line 1266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 1272
    iget-object v1, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    #@2c
    .line 1266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 1273
    const-string/jumbo v1, "]"

    #@33
    .line 1266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method

.method public unhold()V
    .locals 2

    #@0
    .prologue
    .line 897
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->unholdCall(Ljava/lang/String;)V

    #@7
    .line 896
    return-void
.end method

.method public unregisterCallback(Landroid/telecom/Call$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    #@0
    .prologue
    .line 1254
    if-eqz p1, :cond_1

    #@2
    iget v2, p0, Landroid/telecom/Call;->mState:I

    #@4
    const/4 v3, 0x7

    #@5
    if-eq v2, v3, :cond_1

    #@7
    .line 1255
    iget-object v2, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Landroid/telecom/CallbackRecord;

    #@19
    .line 1256
    .local v0, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v0}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    if-ne v2, p1, :cond_0

    #@1f
    .line 1257
    iget-object v2, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@21
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@24
    .line 1252
    .end local v0    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
