.class public final Landroid/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Details;,
        Landroid/telecom/Call$Callback;,
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

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


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

.method constructor <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;)V
    .locals 2
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 668
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    #@b
    .line 669
    new-instance v0, Ljava/util/ArrayList;

    #@d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@10
    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    #@12
    .line 670
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    #@14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    #@1a
    .line 671
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@1c
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@1f
    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@21
    .line 672
    new-instance v0, Ljava/util/ArrayList;

    #@23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@26
    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@28
    .line 674
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@2a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@2d
    move-result-object v0

    #@2e
    .line 673
    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    #@30
    .line 677
    iput-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    #@32
    .line 679
    iput-object v1, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    #@34
    .line 976
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    #@36
    .line 977
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@38
    .line 978
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@3a
    .line 979
    const/4 v0, 0x0

    #@3b
    iput v0, p0, Landroid/telecom/Call;->mState:I

    #@3d
    .line 975
    return-void
.end method

.method private fireCallDestroyed()V
    .locals 6

    #@0
    .prologue
    .line 1202
    move-object v0, p0

    #@1
    .line 1203
    .local v0, "call":Landroid/telecom/Call;
    iget-object v4, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 1205
    iget-object v4, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    #@b
    invoke-virtual {v4, v0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    #@e
    .line 1207
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
    .line 1208
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Landroid/telecom/Call$Callback;

    #@26
    .line 1209
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@29
    move-result-object v4

    #@2a
    new-instance v5, Landroid/telecom/Call$8;

    #@2c
    invoke-direct {v5, p0, v1, v0, v2}, Landroid/telecom/Call$8;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V

    #@2f
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@32
    goto :goto_0

    #@33
    .line 1194
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
    .line 1156
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
    .line 1157
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1158
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1159
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$5;

    #@1f
    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$5;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1155
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
    .line 1130
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
    .line 1131
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1132
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1133
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$3;

    #@1f
    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$3;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1129
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
    .line 1237
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
    .line 1238
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1239
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1240
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$9;

    #@1f
    invoke-direct {v5, p0, v1, v0}, Landroid/telecom/Call$9;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1236
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
    .line 1143
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
    .line 1144
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1145
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1146
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$4;

    #@1f
    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$4;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1142
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method

.method private fireParentChanged(Landroid/telecom/Call;)V
    .locals 6
    .param p1, "newParent"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 1117
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
    .line 1118
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1119
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1120
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$2;

    #@1f
    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$2;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1116
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
    .line 1182
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
    .line 1183
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1184
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1185
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$7;

    #@1f
    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$7;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1181
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
    .line 1104
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
    .line 1105
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1106
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1107
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$1;

    #@1f
    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$1;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1103
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
    .line 1169
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
    .line 1170
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v0, p0

    #@13
    .line 1171
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/telecom/Call$Callback;

    #@19
    .line 1172
    .local v1, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    #@1c
    move-result-object v4

    #@1d
    new-instance v5, Landroid/telecom/Call$6;

    #@1f
    invoke-direct {v5, p0, v1, v0, p1}, Landroid/telecom/Call$6;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    #@22
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@25
    goto :goto_0

    #@26
    .line 1168
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v1    # "callback":Landroid/telecom/Call$Callback;
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Landroid/telecom/Call$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 957
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    #@3
    .line 956
    return-void
.end method

.method public answer(I)V
    .locals 2
    .param p1, "videoState"    # I

    #@0
    .prologue
    .line 699
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->answerCall(Ljava/lang/String;I)V

    #@7
    .line 698
    return-void
.end method

.method public conference(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "callToConferenceWith"    # Landroid/telecom/Call;

    #@0
    .prologue
    .line 793
    if-eqz p1, :cond_0

    #@2
    .line 794
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@4
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@6
    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 792
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 2

    #@0
    .prologue
    .line 716
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->disconnectCall(Ljava/lang/String;)V

    #@7
    .line 715
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
    .line 885
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
    .line 840
    iget-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    #@2
    if-nez v3, :cond_1

    #@4
    .line 841
    const/4 v3, 0x1

    #@5
    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    #@7
    .line 842
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    #@9
    invoke-interface {v3}, Ljava/util/List;->clear()V

    #@c
    .line 844
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
    .line 845
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    #@20
    invoke-virtual {v3, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    #@23
    move-result-object v0

    #@24
    .line 846
    .local v0, "call":Landroid/telecom/Call;
    if-nez v0, :cond_0

    #@26
    .line 848
    const/4 v3, 0x0

    #@27
    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    #@29
    goto :goto_0

    #@2a
    .line 850
    :cond_0
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    #@2c
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2f
    goto :goto_0

    #@30
    .line 855
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
    .line 864
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getDetails()Landroid/telecom/Call$Details;
    .locals 1

    #@0
    .prologue
    .line 904
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
    .line 827
    iget-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 828
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
    .line 830
    :cond_0
    return-object v1
.end method

.method public getRemainingPostDialSequence()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 873
    iget v0, p0, Landroid/telecom/Call;->mState:I

    #@2
    return v0
.end method

.method public getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    #@0
    .prologue
    .line 894
    iget-object v0, p0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    #@2
    return-object v0
.end method

.method public hold()V
    .locals 2

    #@0
    .prologue
    .line 723
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->holdCall(Ljava/lang/String;)V

    #@7
    .line 722
    return-void
.end method

.method final internalGetCallId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 984
    iget-object v0, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method final internalSetDisconnected()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x7

    #@1
    .line 1096
    iget v0, p0, Landroid/telecom/Call;->mState:I

    #@3
    if-eq v0, v1, :cond_0

    #@5
    .line 1097
    iput v1, p0, Landroid/telecom/Call;->mState:I

    #@7
    .line 1098
    iget v0, p0, Landroid/telecom/Call;->mState:I

    #@9
    invoke-direct {p0, v0}, Landroid/telecom/Call;->fireStateChanged(I)V

    #@c
    .line 1099
    invoke-direct {p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    #@f
    .line 1095
    :cond_0
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;)V
    .locals 1
    .param p1, "remaining"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1090
    iput-object p1, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    #@2
    .line 1091
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    #@4
    invoke-direct {p0, v0}, Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V

    #@7
    .line 1089
    return-void
.end method

.method final internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V
    .locals 31
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
    .line 990
    .local p2, "callIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Call;>;"
    new-instance v3, Landroid/telecom/Call$Details;

    #@2
    .line 991
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandle()Landroid/net/Uri;

    #@5
    move-result-object v4

    #@6
    .line 992
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getHandlePresentation()I

    #@9
    move-result v5

    #@a
    .line 993
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayName()Ljava/lang/String;

    #@d
    move-result-object v6

    #@e
    .line 994
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCallerDisplayNamePresentation()I

    #@11
    move-result v7

    #@12
    .line 995
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    #@15
    move-result-object v8

    #@16
    .line 996
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    #@19
    move-result v9

    #@1a
    .line 997
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getProperties()I

    #@1d
    move-result v10

    #@1e
    .line 998
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    #@21
    move-result-object v11

    #@22
    .line 999
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConnectTimeMillis()J

    #@25
    move-result-wide v12

    #@26
    .line 1000
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    #@29
    move-result-object v14

    #@2a
    .line 1001
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoState()I

    #@2d
    move-result v15

    #@2e
    .line 1002
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getStatusHints()Landroid/telecom/StatusHints;

    #@31
    move-result-object v16

    #@32
    .line 1003
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getExtras()Landroid/os/Bundle;

    #@35
    move-result-object v17

    #@36
    .line 1004
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getIntentExtras()Landroid/os/Bundle;

    #@39
    move-result-object v18

    #@3a
    .line 990
    invoke-direct/range {v3 .. v18}, Landroid/telecom/Call$Details;-><init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;)V

    #@3d
    .line 1005
    .local v3, "details":Landroid/telecom/Call$Details;
    move-object/from16 v0, p0

    #@3f
    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    #@41
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_7

    #@47
    const/16 v23, 0x0

    #@49
    .line 1006
    .local v23, "detailsChanged":Z
    :goto_0
    if-eqz v23, :cond_0

    #@4b
    .line 1007
    move-object/from16 v0, p0

    #@4d
    iput-object v3, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    #@4f
    .line 1010
    :cond_0
    const/4 v2, 0x0

    #@50
    .line 1011
    .local v2, "cannedTextResponsesChanged":Z
    move-object/from16 v0, p0

    #@52
    iget-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    #@54
    if-nez v4, :cond_1

    #@56
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    #@59
    move-result-object v4

    #@5a
    if-eqz v4, :cond_1

    #@5c
    .line 1012
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    #@5f
    move-result-object v4

    #@60
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    #@63
    move-result v4

    #@64
    if-eqz v4, :cond_8

    #@66
    .line 1017
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    #@69
    move-result v4

    #@6a
    if-eqz v4, :cond_a

    #@6c
    .line 1018
    move-object/from16 v0, p0

    #@6e
    iget-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    #@70
    move-object/from16 v0, p1

    #@72
    move-object/from16 v1, p0

    #@74
    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall;->getVideoCall(Landroid/telecom/Call;)Landroid/telecom/InCallService$VideoCall;

    #@77
    move-result-object v5

    #@78
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7b
    move-result v4

    #@7c
    if-eqz v4, :cond_9

    #@7e
    const/16 v30, 0x0

    #@80
    .line 1019
    .local v30, "videoCallChanged":Z
    :goto_2
    if-eqz v30, :cond_2

    #@82
    .line 1020
    move-object/from16 v0, p1

    #@84
    move-object/from16 v1, p0

    #@86
    invoke-virtual {v0, v1}, Landroid/telecom/ParcelableCall;->getVideoCall(Landroid/telecom/Call;)Landroid/telecom/InCallService$VideoCall;

    #@89
    move-result-object v4

    #@8a
    move-object/from16 v0, p0

    #@8c
    iput-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    #@8e
    .line 1023
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getState()I

    #@91
    move-result v28

    #@92
    .line 1024
    .local v28, "state":I
    move-object/from16 v0, p0

    #@94
    iget v4, v0, Landroid/telecom/Call;->mState:I

    #@96
    move/from16 v0, v28

    #@98
    if-eq v4, v0, :cond_b

    #@9a
    const/16 v29, 0x1

    #@9c
    .line 1025
    .local v29, "stateChanged":Z
    :goto_3
    if-eqz v29, :cond_3

    #@9e
    .line 1026
    move/from16 v0, v28

    #@a0
    move-object/from16 v1, p0

    #@a2
    iput v0, v1, Landroid/telecom/Call;->mState:I

    #@a4
    .line 1029
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    #@a7
    move-result-object v27

    #@a8
    .line 1030
    .local v27, "parentId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@aa
    iget-object v4, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    #@ac
    move-object/from16 v0, v27

    #@ae
    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b1
    move-result v4

    #@b2
    if-eqz v4, :cond_c

    #@b4
    const/16 v26, 0x0

    #@b6
    .line 1031
    .local v26, "parentChanged":Z
    :goto_4
    if-eqz v26, :cond_4

    #@b8
    .line 1032
    move-object/from16 v0, v27

    #@ba
    move-object/from16 v1, p0

    #@bc
    iput-object v0, v1, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    #@be
    .line 1035
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    #@c1
    move-result-object v19

    #@c2
    .line 1036
    .local v19, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    #@c4
    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    #@c6
    move-object/from16 v0, v19

    #@c8
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@cb
    move-result v4

    #@cc
    if-eqz v4, :cond_d

    #@ce
    const/16 v20, 0x0

    #@d0
    .line 1037
    .local v20, "childrenChanged":Z
    :goto_5
    if-eqz v20, :cond_5

    #@d2
    .line 1038
    move-object/from16 v0, p0

    #@d4
    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    #@d6
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@d9
    .line 1039
    move-object/from16 v0, p0

    #@db
    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    #@dd
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    #@e0
    move-result-object v5

    #@e1
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@e4
    .line 1040
    const/4 v4, 0x0

    #@e5
    move-object/from16 v0, p0

    #@e7
    iput-boolean v4, v0, Landroid/telecom/Call;->mChildrenCached:Z

    #@e9
    .line 1043
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConferenceableCallIds()Ljava/util/List;

    #@ec
    move-result-object v21

    #@ed
    .line 1044
    .local v21, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    #@ef
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    #@f2
    move-result v4

    #@f3
    move-object/from16 v0, v22

    #@f5
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@f8
    .line 1045
    .local v22, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@fb
    move-result-object v25

    #@fc
    .local v25, "otherId$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    #@ff
    move-result v4

    #@100
    if-eqz v4, :cond_e

    #@102
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@105
    move-result-object v24

    #@106
    check-cast v24, Ljava/lang/String;

    #@108
    .line 1046
    .local v24, "otherId":Ljava/lang/String;
    move-object/from16 v0, p2

    #@10a
    move-object/from16 v1, v24

    #@10c
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@10f
    move-result v4

    #@110
    if-eqz v4, :cond_6

    #@112
    .line 1047
    move-object/from16 v0, p2

    #@114
    move-object/from16 v1, v24

    #@116
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@119
    move-result-object v4

    #@11a
    check-cast v4, Landroid/telecom/Call;

    #@11c
    move-object/from16 v0, v22

    #@11e
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@121
    goto :goto_6

    #@122
    .line 1005
    .end local v2    # "cannedTextResponsesChanged":Z
    .end local v19    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "childrenChanged":Z
    .end local v21    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v23    # "detailsChanged":Z
    .end local v24    # "otherId":Ljava/lang/String;
    .end local v25    # "otherId$iterator":Ljava/util/Iterator;
    .end local v26    # "parentChanged":Z
    .end local v27    # "parentId":Ljava/lang/String;
    .end local v28    # "state":I
    .end local v29    # "stateChanged":Z
    .end local v30    # "videoCallChanged":Z
    :cond_7
    const/16 v23, 0x1

    #@124
    .restart local v23    # "detailsChanged":Z
    goto/16 :goto_0

    #@126
    .line 1014
    .restart local v2    # "cannedTextResponsesChanged":Z
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    #@129
    move-result-object v4

    #@12a
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@12d
    move-result-object v4

    #@12e
    .line 1013
    move-object/from16 v0, p0

    #@130
    iput-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    #@132
    goto/16 :goto_1

    #@134
    .line 1018
    :cond_9
    const/16 v30, 0x1

    #@136
    .restart local v30    # "videoCallChanged":Z
    goto/16 :goto_2

    #@138
    .line 1017
    .end local v30    # "videoCallChanged":Z
    :cond_a
    const/16 v30, 0x0

    #@13a
    .restart local v30    # "videoCallChanged":Z
    goto/16 :goto_2

    #@13c
    .line 1024
    .restart local v28    # "state":I
    :cond_b
    const/16 v29, 0x0

    #@13e
    .restart local v29    # "stateChanged":Z
    goto/16 :goto_3

    #@140
    .line 1030
    .restart local v27    # "parentId":Ljava/lang/String;
    :cond_c
    const/16 v26, 0x1

    #@142
    .restart local v26    # "parentChanged":Z
    goto/16 :goto_4

    #@144
    .line 1036
    .restart local v19    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    const/16 v20, 0x1

    #@146
    .restart local v20    # "childrenChanged":Z
    goto :goto_5

    #@147
    .line 1051
    .restart local v21    # "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v25    # "otherId$iterator":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v0, p0

    #@149
    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@14b
    move-object/from16 v0, v22

    #@14d
    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@150
    move-result v4

    #@151
    if-nez v4, :cond_f

    #@153
    .line 1052
    move-object/from16 v0, p0

    #@155
    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@157
    invoke-interface {v4}, Ljava/util/List;->clear()V

    #@15a
    .line 1053
    move-object/from16 v0, p0

    #@15c
    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    #@15e
    move-object/from16 v0, v22

    #@160
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@163
    .line 1054
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireConferenceableCallsChanged()V

    #@166
    .line 1060
    :cond_f
    if-eqz v29, :cond_10

    #@168
    .line 1061
    move-object/from16 v0, p0

    #@16a
    iget v4, v0, Landroid/telecom/Call;->mState:I

    #@16c
    move-object/from16 v0, p0

    #@16e
    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireStateChanged(I)V

    #@171
    .line 1063
    :cond_10
    if-eqz v23, :cond_11

    #@173
    .line 1064
    move-object/from16 v0, p0

    #@175
    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    #@177
    move-object/from16 v0, p0

    #@179
    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    #@17c
    .line 1066
    :cond_11
    if-eqz v2, :cond_12

    #@17e
    .line 1067
    move-object/from16 v0, p0

    #@180
    iget-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    #@182
    move-object/from16 v0, p0

    #@184
    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireCannedTextResponsesLoaded(Ljava/util/List;)V

    #@187
    .line 1069
    :cond_12
    if-eqz v30, :cond_13

    #@189
    .line 1070
    move-object/from16 v0, p0

    #@18b
    iget-object v4, v0, Landroid/telecom/Call;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    #@18d
    move-object/from16 v0, p0

    #@18f
    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V

    #@192
    .line 1072
    :cond_13
    if-eqz v26, :cond_14

    #@194
    .line 1073
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    #@197
    move-result-object v4

    #@198
    move-object/from16 v0, p0

    #@19a
    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireParentChanged(Landroid/telecom/Call;)V

    #@19d
    .line 1075
    :cond_14
    if-eqz v20, :cond_15

    #@19f
    .line 1076
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    #@1a2
    move-result-object v4

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V

    #@1a8
    .line 1083
    :cond_15
    move-object/from16 v0, p0

    #@1aa
    iget v4, v0, Landroid/telecom/Call;->mState:I

    #@1ac
    const/4 v5, 0x7

    #@1ad
    if-ne v4, v5, :cond_16

    #@1af
    .line 1084
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    #@1b2
    .line 988
    :cond_16
    return-void
.end method

.method public mergeConference()V
    .locals 2

    #@0
    .prologue
    .line 810
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->mergeConference(Ljava/lang/String;)V

    #@7
    .line 809
    return-void
.end method

.method public phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    #@0
    .prologue
    .line 783
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    #@7
    .line 782
    return-void
.end method

.method public playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    #@0
    .prologue
    .line 742
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->playDtmfTone(Ljava/lang/String;C)V

    #@7
    .line 741
    return-void
.end method

.method public postDialContinue(Z)V
    .locals 2
    .param p1, "proceed"    # Z

    #@0
    .prologue
    .line 775
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->postDialContinue(Ljava/lang/String;Z)V

    #@7
    .line 774
    return-void
.end method

.method public registerCallback(Landroid/telecom/Call$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    #@0
    .prologue
    .line 913
    new-instance v0, Landroid/os/Handler;

    #@2
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@5
    invoke-virtual {p0, p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V

    #@8
    .line 912
    return-void
.end method

.method public registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/Call$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 923
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    #@3
    .line 925
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
    .line 926
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@e
    new-instance v1, Landroid/telecom/CallbackRecord;

    #@10
    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    #@13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 922
    :cond_0
    return-void
.end method

.method public reject(ZLjava/lang/String;)V
    .locals 2
    .param p1, "rejectWithMessage"    # Z
    .param p2, "textMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 709
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    #@7
    .line 708
    return-void
.end method

.method public removeListener(Landroid/telecom/Call$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 970
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    #@3
    .line 969
    return-void
.end method

.method public splitFromConference()V
    .locals 2

    #@0
    .prologue
    .line 803
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->splitFromConference(Ljava/lang/String;)V

    #@7
    .line 802
    return-void
.end method

.method public stopDtmfTone()V
    .locals 2

    #@0
    .prologue
    .line 753
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopDtmfTone(Ljava/lang/String;)V

    #@7
    .line 752
    return-void
.end method

.method public swapConference()V
    .locals 2

    #@0
    .prologue
    .line 817
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->swapConference(Ljava/lang/String;)V

    #@7
    .line 816
    return-void
.end method

.method public unhold()V
    .locals 2

    #@0
    .prologue
    .line 730
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    #@2
    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->unholdCall(Ljava/lang/String;)V

    #@7
    .line 729
    return-void
.end method

.method public unregisterCallback(Landroid/telecom/Call$Callback;)V
    .locals 4
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    #@0
    .prologue
    .line 937
    if-eqz p1, :cond_1

    #@2
    iget v2, p0, Landroid/telecom/Call;->mState:I

    #@4
    const/4 v3, 0x7

    #@5
    if-eq v2, v3, :cond_1

    #@7
    .line 938
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
    .line 939
    .local v0, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v0}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    if-ne v2, p1, :cond_0

    #@1f
    .line 940
    iget-object v2, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    #@21
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@24
    .line 935
    .end local v0    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
