.class public final Landroid/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Details;,
        Landroid/telecom/Call$RttCall;,
        Landroid/telecom/Call$Callback;,
        Landroid/telecom/Call$Listener;,
        Landroid/telecom/Call$RejectReason;,
        Landroid/telecom/Call$CallState;
    }
.end annotation


# static fields
.field public static final whitelist AVAILABLE_PHONE_ACCOUNTS:Ljava/lang/String; = "selectPhoneAccountAccounts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EVENT_CLEAR_DIAGNOSTIC_MESSAGE:Ljava/lang/String; = "android.telecom.event.CLEAR_DIAGNOSTIC_MESSAGE"

.field public static final whitelist EVENT_DISPLAY_DIAGNOSTIC_MESSAGE:Ljava/lang/String; = "android.telecom.event.DISPLAY_DIAGNOSTIC_MESSAGE"

.field public static final whitelist EXTRA_ASSERTED_DISPLAY_NAME:Ljava/lang/String; = "android.telecom.extra.ASSERTED_DISPLAY_NAME"

.field public static final whitelist EXTRA_DIAGNOSTIC_MESSAGE:Ljava/lang/String; = "android.telecom.extra.DIAGNOSTIC_MESSAGE"

.field public static final whitelist EXTRA_DIAGNOSTIC_MESSAGE_ID:Ljava/lang/String; = "android.telecom.extra.DIAGNOSTIC_MESSAGE_ID"

.field public static final whitelist EXTRA_IS_BUSINESS_CALL:Ljava/lang/String; = "android.telecom.extra.IS_BUSINESS_CALL"

.field public static final whitelist EXTRA_IS_SUPPRESSED_BY_DO_NOT_DISTURB:Ljava/lang/String; = "android.telecom.extra.IS_SUPPRESSED_BY_DO_NOT_DISTURB"

.field public static final whitelist EXTRA_LAST_EMERGENCY_CALLBACK_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.LAST_EMERGENCY_CALLBACK_TIME_MILLIS"

.field public static final whitelist EXTRA_SILENT_RINGING_REQUESTED:Ljava/lang/String; = "android.telecom.extra.SILENT_RINGING_REQUESTED"

.field public static final whitelist EXTRA_SUGGESTED_PHONE_ACCOUNTS:Ljava/lang/String; = "android.telecom.extra.SUGGESTED_PHONE_ACCOUNTS"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelecomCall"

.field public static final whitelist REJECT_REASON_DECLINED:I = 0x1

.field public static final whitelist REJECT_REASON_UNWANTED:I = 0x2

.field public static final whitelist STATE_ACTIVE:I = 0x4

.field public static final whitelist STATE_AUDIO_PROCESSING:I = 0xc

.field public static final whitelist STATE_CONNECTING:I = 0x9

.field public static final whitelist STATE_DIALING:I = 0x1

.field public static final whitelist STATE_DISCONNECTED:I = 0x7

.field public static final whitelist STATE_DISCONNECTING:I = 0xa

.field public static final whitelist STATE_HOLDING:I = 0x3

.field public static final whitelist STATE_NEW:I = 0x0

.field public static final whitelist STATE_PRE_DIAL_WAIT:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATE_PULLING_CALL:I = 0xb

.field public static final whitelist STATE_RINGING:I = 0x2

.field public static final whitelist STATE_SELECT_PHONE_ACCOUNT:I = 0x8

.field public static final whitelist STATE_SIMULATED_RINGING:I = 0xd


# instance fields
.field private blacklist mActiveGenericConferenceChild:Ljava/lang/String;

.field private final greylist-max-o mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/CallbackRecord<",
            "Landroid/telecom/Call$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mCallingPackage:Ljava/lang/String;

.field private greylist-max-o mCannedTextResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChildrenCached:Z

.field private final greylist-max-o mChildrenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDetails:Landroid/telecom/Call$Details;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private greylist-max-o mParentId:Ljava/lang/String;

.field private final greylist-max-o mPhone:Landroid/telecom/Phone;

.field private greylist-max-o mRemainingPostDialSequence:Ljava/lang/String;

.field private greylist-max-o mRttCall:Landroid/telecom/Call$RttCall;

.field private greylist-max-o mState:I

.field private greylist-max-o mTargetSdkVersion:I

.field private final greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUnmodifiableConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoCallImpl:Landroid/telecom/VideoCallImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackRecords(Landroid/telecom/Call;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Landroid/telecom/Call;)Landroid/telecom/Phone;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnmodifiableConferenceableCalls(Landroid/telecom/Call;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smareBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/telecom/Call;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smstateToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/telecom/Call;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;ILjava/lang/String;I)V
    .registers 8
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;
    .param p4, "state"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "targetSdkVersion"    # I

    .line 2457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 1679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 1680
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 1681
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    .line 1682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 1683
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 1684
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 1687
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 1688
    iput-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    .line 1690
    iput-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 2458
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 2459
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2460
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 2461
    iput p4, p0, Landroid/telecom/Call;->mState:I

    .line 2462
    iput-object p5, p0, Landroid/telecom/Call;->mCallingPackage:Ljava/lang/String;

    .line 2463
    iput p6, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    .line 2464
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V
    .registers 7
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "targetSdkVersion"    # I

    .line 2446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 1679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 1680
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 1681
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    .line 1682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 1683
    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 1684
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 1687
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 1688
    iput-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    .line 1690
    iput-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 2447
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 2448
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2449
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 2450
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Call;->mState:I

    .line 2451
    iput-object p4, p0, Landroid/telecom/Call;->mCallingPackage:Ljava/lang/String;

    .line 2452
    iput p5, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    .line 2453
    return-void
.end method

.method private static greylist-max-o areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 10
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "newBundle"    # Landroid/os/Bundle;

    .line 2903
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7a

    if-nez p1, :cond_8

    goto/16 :goto_7a

    .line 2907
    :cond_8
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_13

    .line 2908
    return v1

    .line 2911
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2912
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_6c

    .line 2913
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_2d} :catch_6f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_13 .. :try_end_2d} :catch_6f

    if-nez v4, :cond_30

    .line 2914
    return v1

    .line 2919
    :cond_30
    :try_start_30
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2920
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2921
    .local v5, "newValue":Ljava/lang/Object;
    instance-of v6, v4, Landroid/os/Bundle;

    if-eqz v6, :cond_4d

    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_4d

    .line 2922
    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    move-object v7, v5

    check-cast v7, Landroid/os/Bundle;

    invoke-static {v6, v7}, Landroid/telecom/Call;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 2923
    return v1

    .line 2926
    :cond_4d
    instance-of v6, v4, [B

    if-eqz v6, :cond_62

    instance-of v6, v5, [B

    if-eqz v6, :cond_62

    .line 2927
    move-object v6, v4

    check-cast v6, [B

    move-object v7, v5

    check-cast v7, [B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_69

    .line 2928
    return v1

    .line 2930
    :cond_62
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_66
    .catch Landroid/os/BadParcelableException; {:try_start_30 .. :try_end_66} :catch_6a
    .catch Ljava/lang/ClassCastException; {:try_start_30 .. :try_end_66} :catch_6f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_30 .. :try_end_66} :catch_6f

    if-nez v6, :cond_69

    .line 2931
    return v1

    .line 2935
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "newValue":Ljava/lang/Object;
    :cond_69
    goto :goto_6c

    .line 2933
    :catch_6a
    move-exception v0

    .line 2934
    .local v0, "e":Landroid/os/BadParcelableException;
    return v1

    .line 2937
    .end local v0    # "e":Landroid/os/BadParcelableException;
    .end local v3    # "key":Ljava/lang/String;
    :cond_6c
    :goto_6c
    goto :goto_1b

    .line 2952
    :cond_6d
    nop

    .line 2953
    return v0

    .line 2938
    :catch_6f
    move-exception v0

    .line 2950
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "areBundlesEqual: failed!"

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "TelecomCall"

    invoke-static {v4, v0, v2, v3}, Landroid/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2951
    return v1

    .line 2904
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_7a
    :goto_7a
    if-ne p0, p1, :cond_7d

    goto :goto_7e

    :cond_7d
    move v0, v1

    :goto_7e
    return v0
.end method

.method private greylist-max-o fireCallDestroyed()V
    .registers 7

    .line 2801
    move-object v0, p0

    .line 2802
    .local v0, "call":Landroid/telecom/Call;
    iget-object v1, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2804
    iget-object v1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v1, v0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 2806
    :cond_e
    iget-object v1, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallbackRecord;

    .line 2807
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2808
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$8;

    invoke-direct {v5, p0, v3, v0, v2}, Landroid/telecom/Call$8;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2832
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_14

    .line 2833
    :cond_33
    return-void
.end method

.method private greylist-max-o fireCannedTextResponsesLoaded(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2755
    .local p1, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2756
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2757
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2758
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$5;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$5;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2764
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2765
    :cond_26
    return-void
.end method

.method private greylist-max-o fireChildrenChanged(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .line 2729
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2730
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2731
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2732
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$3;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$3;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2738
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2739
    :cond_26
    return-void
.end method

.method private greylist-max-o fireConferenceableCallsChanged()V
    .registers 7

    .line 2836
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2837
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2838
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2839
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$9;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/Call$9;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2845
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2846
    :cond_26
    return-void
.end method

.method private greylist-max-o fireDetailsChanged(Landroid/telecom/Call$Details;)V
    .registers 8
    .param p1, "details"    # Landroid/telecom/Call$Details;

    .line 2742
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2743
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2744
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2745
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$4;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$4;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2751
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2752
    :cond_26
    return-void
.end method

.method private greylist-max-o fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2857
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2858
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v5, p0

    .line 2859
    .local v5, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/telecom/Call$Callback;

    .line 2860
    .local v4, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v2, Landroid/telecom/Call$10;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    .end local p1    # "event":Ljava/lang/String;
    .end local p2    # "extras":Landroid/os/Bundle;
    .local v6, "event":Ljava/lang/String;
    .local v7, "extras":Landroid/os/Bundle;
    invoke-direct/range {v2 .. v7}, Landroid/telecom/Call$10;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v8, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2866
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v4    # "callback":Landroid/telecom/Call$Callback;
    .end local v5    # "call":Landroid/telecom/Call;
    goto :goto_6

    .line 2867
    .end local v6    # "event":Ljava/lang/String;
    .end local v7    # "extras":Landroid/os/Bundle;
    .restart local p1    # "event":Ljava/lang/String;
    .restart local p2    # "extras":Landroid/os/Bundle;
    :cond_2a
    return-void
.end method

.method private greylist-max-o fireOnIsRttChanged(ZLandroid/telecom/Call$RttCall;)V
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "rttCall"    # Landroid/telecom/Call$RttCall;

    .line 2875
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2876
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2877
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2878
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v2, p1, p2}, Landroid/telecom/Call$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2879
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2880
    :cond_26
    return-void
.end method

.method private greylist-max-o fireOnRttModeChanged(I)V
    .registers 8
    .param p1, "mode"    # I

    .line 2888
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2889
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2890
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2891
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda4;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda4;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2892
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2893
    :cond_26
    return-void
.end method

.method private greylist-max-o fireParentChanged(Landroid/telecom/Call;)V
    .registers 8
    .param p1, "newParent"    # Landroid/telecom/Call;

    .line 2716
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2717
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2718
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2719
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$2;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$2;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2725
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2726
    :cond_26
    return-void
.end method

.method private greylist-max-o firePostDialWait(Ljava/lang/String;)V
    .registers 8
    .param p1, "remainingPostDialSequence"    # Ljava/lang/String;

    .line 2781
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2782
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2783
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2784
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$7;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$7;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2790
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2791
    :cond_26
    return-void
.end method

.method private greylist-max-o fireStateChanged(I)V
    .registers 8
    .param p1, "newState"    # I

    .line 2703
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2704
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2705
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2706
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$1;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$1;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2712
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2713
    :cond_26
    return-void
.end method

.method private greylist-max-o fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V
    .registers 8
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .line 2768
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2769
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2770
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2771
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$6;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$6;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2777
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2778
    :cond_26
    return-void
.end method

.method static synthetic blacklist lambda$fireOnIsRttChanged$4(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V
    .registers 4
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "enabled"    # Z
    .param p3, "rttCall"    # Landroid/telecom/Call$RttCall;

    .line 2878
    invoke-virtual {p0, p1, p2, p3}, Landroid/telecom/Call$Callback;->onRttStatusChanged(Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V

    return-void
.end method

.method static synthetic blacklist lambda$fireOnRttModeChanged$5(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .registers 3
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "mode"    # I

    .line 2891
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttModeChanged(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnHandoverComplete$3(Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V
    .registers 2
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;

    .line 2698
    invoke-virtual {p0, p1}, Landroid/telecom/Call$Callback;->onHandoverComplete(Landroid/telecom/Call;)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnHandoverFailed$2(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .registers 3
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "error"    # I

    .line 2689
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onHandoverFailed(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnRttInitiationFailure$1(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .registers 3
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "reason"    # I

    .line 2680
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttInitiationFailure(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnRttUpgradeRequest$0(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .registers 3
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "requestId"    # I

    .line 2671
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttRequest(Landroid/telecom/Call;I)V

    return-void
.end method

.method private static greylist-max-o stateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .line 2389
    packed-switch p0, :pswitch_data_36

    .line 2413
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/telecom/Call;

    const-string v2, "Unknown state %d"

    invoke-static {v1, v2, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2414
    const-string v0, "UNKNOWN"

    return-object v0

    .line 2409
    :pswitch_15
    const-string v0, "SIMULATED_RINGING"

    return-object v0

    .line 2411
    :pswitch_18
    const-string v0, "AUDIO_PROCESSING"

    return-object v0

    .line 2405
    :pswitch_1b
    const-string v0, "DISCONNECTING"

    return-object v0

    .line 2403
    :pswitch_1e
    const-string v0, "CONNECTING"

    return-object v0

    .line 2407
    :pswitch_21
    const-string v0, "SELECT_PHONE_ACCOUNT"

    return-object v0

    .line 2401
    :pswitch_24
    const-string v0, "DISCONNECTED"

    return-object v0

    .line 2397
    :pswitch_27
    const-string v0, "ACTIVE"

    return-object v0

    .line 2399
    :pswitch_2a
    const-string v0, "HOLDING"

    return-object v0

    .line 2393
    :pswitch_2d
    const-string v0, "RINGING"

    return-object v0

    .line 2395
    :pswitch_30
    const-string v0, "DIALING"

    return-object v0

    .line 2391
    :pswitch_33
    const-string v0, "NEW"

    return-object v0

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_3
        :pswitch_3
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_3
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public whitelist addConferenceParticipants(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1939
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 1940
    return-void
.end method

.method public whitelist addListener(Landroid/telecom/Call$Listener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2428
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 2429
    return-void
.end method

.method public whitelist answer(I)V
    .registers 4
    .param p1, "videoState"    # I

    .line 1714
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->answerCall(Ljava/lang/String;I)V

    .line 1715
    return-void
.end method

.method public whitelist conference(Landroid/telecom/Call;)V
    .registers 5
    .param p1, "callToConferenceWith"    # Landroid/telecom/Call;

    .line 1905
    if-eqz p1, :cond_b

    .line 1906
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    :cond_b
    return-void
.end method

.method public whitelist deflect(Landroid/net/Uri;)V
    .registers 4
    .param p1, "address"    # Landroid/net/Uri;

    .line 1723
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1724
    return-void
.end method

.method public whitelist disconnect()V
    .registers 3

    .line 1774
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1775
    return-void
.end method

.method public whitelist enterBackgroundAudioProcessing()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1812
    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_13

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 1813
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call must be active or ringing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1815
    :cond_13
    :goto_13
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->enterBackgroundAudioProcessing(Ljava/lang/String;)V

    .line 1816
    return-void
.end method

.method public whitelist exitBackgroundAudioProcessing(Z)V
    .registers 4
    .param p1, "shouldRing"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1832
    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_e

    .line 1835
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->exitBackgroundAudioProcessing(Ljava/lang/String;Z)V

    .line 1836
    return-void

    .line 1833
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call must in the audio processing state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCannedTextResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2293
    iget-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getChildren()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .line 2215
    iget-boolean v0, p0, Landroid/telecom/Call;->mChildrenCached:Z

    if-nez v0, :cond_30

    .line 2216
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 2217
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2219
    iget-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2220
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v2, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v2

    .line 2221
    .local v2, "call":Landroid/telecom/Call;
    if-nez v2, :cond_2a

    .line 2223
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    goto :goto_2f

    .line 2225
    :cond_2a
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2227
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "call":Landroid/telecom/Call;
    :goto_2f
    goto :goto_12

    .line 2230
    :cond_30
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getConferenceableCalls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .line 2239
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDetails()Landroid/telecom/Call$Details;
    .registers 2

    .line 2312
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    return-object v0
.end method

.method public whitelist getGenericConferenceActiveChildCall()Landroid/telecom/Call;
    .registers 3

    .line 2272
    iget-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 2273
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    return-object v0

    .line 2275
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getParent()Landroid/telecom/Call;
    .registers 3

    .line 2202
    iget-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 2203
    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    return-object v0

    .line 2205
    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRemainingPostDialSequence()Ljava/lang/String;
    .registers 2

    .line 1706
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRttCall()Landroid/telecom/Call$RttCall;
    .registers 2

    .line 2321
    iget-object v0, p0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2250
    iget v0, p0, Landroid/telecom/Call;->mState:I

    return v0
.end method

.method public whitelist getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .registers 2

    .line 2302
    iget-object v0, p0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    return-object v0
.end method

.method public whitelist handoverTo(Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "toHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "videoState"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2084
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telecom/InCallAdapter;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V

    .line 2085
    return-void
.end method

.method public whitelist hold()V
    .registers 3

    .line 1781
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->holdCall(Ljava/lang/String;)V

    .line 1782
    return-void
.end method

.method final greylist-max-o internalGetCallId()Ljava/lang/String;
    .registers 2

    .line 2468
    iget-object v0, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method final greylist-max-o internalOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2663
    invoke-direct {p0, p1, p2}, Landroid/telecom/Call;->fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2664
    return-void
.end method

.method final greylist-max-o internalOnHandoverComplete()V
    .registers 7

    .line 2695
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2696
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2697
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2698
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3, v2}, Landroid/telecom/Call$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2699
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2700
    :cond_26
    return-void
.end method

.method final greylist-max-o internalOnHandoverFailed(I)V
    .registers 8
    .param p1, "error"    # I

    .line 2686
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2687
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2688
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2689
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2690
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2691
    :cond_26
    return-void
.end method

.method final greylist-max-o internalOnRttInitiationFailure(I)V
    .registers 8
    .param p1, "reason"    # I

    .line 2677
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2678
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2679
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2680
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda5;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda5;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2681
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2682
    :cond_26
    return-void
.end method

.method final greylist-max-o internalOnRttUpgradeRequest(I)V
    .registers 8
    .param p1, "requestId"    # I

    .line 2668
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2669
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2670
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2671
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2672
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_6

    .line 2673
    :cond_26
    return-void
.end method

.method final greylist-max-o internalSetDisconnected()V
    .registers 28

    .line 2628
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telecom/Call;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_a1

    .line 2629
    iput v2, v0, Landroid/telecom/Call;->mState:I

    .line 2630
    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    if-eqz v1, :cond_99

    .line 2631
    new-instance v2, Landroid/telecom/Call$Details;

    iget v3, v0, Landroid/telecom/Call;->mState:I

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2632
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getTelecomCallId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2633
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v5

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2634
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v6

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2635
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2636
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v8

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2637
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2638
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v10

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2639
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result v11

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2640
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v12

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2641
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v13

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2642
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v15

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2643
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v16

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2644
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v17

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2645
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2646
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v19

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2647
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCreationTimeMillis()J

    move-result-wide v20

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2648
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getContactDisplayName()Ljava/lang/String;

    move-result-object v22

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2649
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallDirection()I

    move-result v23

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2650
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallerNumberVerificationStatus()I

    move-result v24

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2651
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getContactPhotoUri()Landroid/net/Uri;

    move-result-object v25

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2652
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getAssociatedUser()Landroid/os/UserHandle;

    move-result-object v26

    invoke-direct/range {v2 .. v26}, Landroid/telecom/Call$Details;-><init>(ILjava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/String;IILandroid/net/Uri;Landroid/os/UserHandle;)V

    iput-object v2, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2654
    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 2656
    :cond_99
    iget v1, v0, Landroid/telecom/Call;->mState:I

    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 2657
    invoke-direct {v0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 2659
    :cond_a1
    return-void
.end method

.method final greylist-max-o internalSetPostDialWait(Ljava/lang/String;)V
    .registers 3
    .param p1, "remaining"    # Ljava/lang/String;

    .line 2622
    iput-object p1, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    .line 2623
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V

    .line 2624
    return-void
.end method

.method final greylist-max-o internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V
    .registers 34
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/ParcelableCall;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .line 2475
    .local p2, "callIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Call;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v2

    .line 2476
    .local v2, "details":Landroid/telecom/Call$Details;
    iget-object v3, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 2477
    .local v3, "detailsChanged":Z
    if-eqz v3, :cond_14

    .line 2478
    iput-object v2, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2481
    :cond_14
    const/4 v5, 0x0

    .line 2482
    .local v5, "cannedTextResponsesChanged":Z
    iget-object v6, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    if-nez v6, :cond_35

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_35

    .line 2483
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_35

    .line 2484
    nop

    .line 2485
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 2486
    const/4 v5, 0x1

    .line 2489
    :cond_35
    iget-object v6, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    if-nez v6, :cond_3b

    const/4 v6, 0x0

    goto :goto_41

    .line 2490
    :cond_3b
    iget-object v6, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-virtual {v6}, Landroid/telecom/VideoCallImpl;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v6

    :goto_41
    nop

    .line 2491
    .local v6, "previousVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v8

    .line 2495
    .local v8, "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 2496
    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_54

    move v9, v4

    goto :goto_55

    :cond_54
    const/4 v9, 0x0

    .line 2497
    .local v9, "videoCallChanged":Z
    :goto_55
    if-eqz v9, :cond_77

    .line 2498
    iget-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    if-eqz v11, :cond_60

    .line 2499
    iget-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-virtual {v11}, Landroid/telecom/VideoCallImpl;->destroy()V

    .line 2501
    :cond_60
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    move-result v11

    if-eqz v11, :cond_71

    .line 2502
    iget-object v11, v0, Landroid/telecom/Call;->mCallingPackage:Ljava/lang/String;

    iget v12, v0, Landroid/telecom/Call;->mTargetSdkVersion:I

    move-object/from16 v13, p1

    invoke-virtual {v13, v11, v12}, Landroid/telecom/ParcelableCall;->getVideoCallImpl(Ljava/lang/String;I)Landroid/telecom/VideoCallImpl;

    move-result-object v11

    goto :goto_74

    :cond_71
    move-object/from16 v13, p1

    const/4 v11, 0x0

    :goto_74
    iput-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    goto :goto_79

    .line 2497
    :cond_77
    move-object/from16 v13, p1

    .line 2505
    :goto_79
    iget-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    if-eqz v11, :cond_8a

    .line 2506
    iget-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/telecom/VideoCallImpl;->setVideoState(I)V

    .line 2509
    :cond_8a
    invoke-virtual {v13}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v11

    .line 2510
    .local v11, "state":I
    iget v12, v0, Landroid/telecom/Call;->mTargetSdkVersion:I

    const/16 v14, 0x1e

    if-ge v12, v14, :cond_99

    const/16 v12, 0xd

    if-ne v11, v12, :cond_99

    .line 2511
    const/4 v11, 0x2

    .line 2513
    :cond_99
    iget v12, v0, Landroid/telecom/Call;->mState:I

    if-eq v12, v11, :cond_9f

    move v12, v4

    goto :goto_a0

    :cond_9f
    const/4 v12, 0x0

    .line 2514
    .local v12, "stateChanged":Z
    :goto_a0
    if-eqz v12, :cond_a4

    .line 2515
    iput v11, v0, Landroid/telecom/Call;->mState:I

    .line 2518
    :cond_a4
    invoke-virtual {v13}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v14

    .line 2519
    .local v14, "parentId":Ljava/lang/String;
    iget-object v15, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    xor-int/2addr v15, v4

    .line 2520
    .local v15, "parentChanged":Z
    if-eqz v15, :cond_b3

    .line 2521
    iput-object v14, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 2524
    :cond_b3
    move/from16 v16, v4

    invoke-virtual {v13}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    .line 2525
    .local v4, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-static {v4, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 2526
    .local v7, "childrenChanged":Z
    if-eqz v7, :cond_d7

    .line 2527
    iget-object v10, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 2528
    iget-object v10, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    move-object/from16 v18, v2

    .end local v2    # "details":Landroid/telecom/Call$Details;
    .local v18, "details":Landroid/telecom/Call$Details;
    invoke-virtual {v13}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2529
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/telecom/Call;->mChildrenCached:Z

    goto :goto_da

    .line 2526
    .end local v18    # "details":Landroid/telecom/Call$Details;
    .restart local v2    # "details":Landroid/telecom/Call$Details;
    :cond_d7
    move-object/from16 v18, v2

    const/4 v2, 0x0

    .line 2532
    .end local v2    # "details":Landroid/telecom/Call$Details;
    .restart local v18    # "details":Landroid/telecom/Call$Details;
    :goto_da
    invoke-virtual {v13}, Landroid/telecom/ParcelableCall;->getActiveChildCallId()Ljava/lang/String;

    move-result-object v10

    .line 2533
    .local v10, "activeChildCallId":Ljava/lang/String;
    iget-object v2, v0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    invoke-static {v10, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 2535
    .local v2, "activeChildChanged":Z
    if-eqz v2, :cond_ea

    .line 2536
    iput-object v10, v0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    .line 2539
    :cond_ea
    invoke-virtual {v13}, Landroid/telecom/ParcelableCall;->getConferenceableCallIds()Ljava/util/List;

    move-result-object v19

    .line 2540
    .local v19, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v20, v2

    .end local v2    # "activeChildChanged":Z
    .local v20, "activeChildChanged":Z
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v21, v3

    .end local v3    # "detailsChanged":Z
    .local v21, "detailsChanged":Z
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2541
    .local v2, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ff
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_125

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v3

    move-object/from16 v3, v22

    check-cast v3, Ljava/lang/String;

    .line 2542
    .local v3, "otherId":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_120

    .line 2543
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v1, v22

    check-cast v1, Landroid/telecom/Call;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2545
    .end local v3    # "otherId":Ljava/lang/String;
    :cond_120
    move-object/from16 v1, p2

    move-object/from16 v3, v23

    goto :goto_ff

    .line 2547
    :cond_125
    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13a

    .line 2548
    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2549
    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2550
    invoke-direct {v0}, Landroid/telecom/Call;->fireConferenceableCallsChanged()V

    .line 2553
    :cond_13a
    const/4 v1, 0x0

    .line 2554
    .local v1, "isRttChanged":Z
    const/4 v3, 0x0

    .line 2555
    .local v3, "rttModeChanged":Z
    invoke-virtual {v13}, Landroid/telecom/ParcelableCall;->getIsRttCallChanged()Z

    move-result v22

    if-eqz v22, :cond_1b1

    move/from16 v22, v1

    .end local v1    # "isRttChanged":Z
    .local v22, "isRttChanged":Z
    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2556
    move-object/from16 v23, v2

    .end local v2    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .local v23, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_1ae

    .line 2557
    invoke-virtual {v13}, Landroid/telecom/ParcelableCall;->getParcelableRttCall()Landroid/telecom/ParcelableRttCall;

    move-result-object v1

    .line 2558
    .local v1, "parcelableRttCall":Landroid/telecom/ParcelableRttCall;
    new-instance v2, Ljava/io/InputStreamReader;

    move-object/from16 v17, v1

    .end local v1    # "parcelableRttCall":Landroid/telecom/ParcelableRttCall;
    .local v17, "parcelableRttCall":Landroid/telecom/ParcelableRttCall;
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 2560
    move/from16 v24, v3

    .end local v3    # "rttModeChanged":Z
    .local v24, "rttModeChanged":Z
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/ParcelableRttCall;->getReceiveStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v27, v2

    .line 2562
    .local v27, "receiveStream":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 2564
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/ParcelableRttCall;->getTransmitStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v28, v1

    .line 2566
    .local v28, "transmitStream":Ljava/io/OutputStreamWriter;
    new-instance v25, Landroid/telecom/Call$RttCall;

    iget-object v1, v0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2567
    invoke-virtual/range {v17 .. v17}, Landroid/telecom/ParcelableRttCall;->getRttMode()I

    move-result v29

    iget-object v2, v0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    move-object/from16 v26, v1

    move-object/from16 v30, v2

    invoke-direct/range {v25 .. v30}, Landroid/telecom/Call$RttCall;-><init>(Ljava/lang/String;Ljava/io/InputStreamReader;Ljava/io/OutputStreamWriter;ILandroid/telecom/InCallAdapter;)V

    move-object/from16 v1, v25

    .line 2568
    .local v1, "newRttCall":Landroid/telecom/Call$RttCall;
    iget-object v2, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-nez v2, :cond_199

    .line 2569
    const/4 v2, 0x1

    move/from16 v22, v2

    move/from16 v3, v24

    .end local v22    # "isRttChanged":Z
    .local v2, "isRttChanged":Z
    goto :goto_1a9

    .line 2570
    .end local v2    # "isRttChanged":Z
    .restart local v22    # "isRttChanged":Z
    :cond_199
    iget-object v2, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {v2}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v2

    invoke-virtual {v1}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v3

    if-eq v2, v3, :cond_1a7

    .line 2571
    const/4 v3, 0x1

    .end local v24    # "rttModeChanged":Z
    .restart local v3    # "rttModeChanged":Z
    goto :goto_1a9

    .line 2570
    .end local v3    # "rttModeChanged":Z
    .restart local v24    # "rttModeChanged":Z
    :cond_1a7
    move/from16 v3, v24

    .line 2573
    .end local v24    # "rttModeChanged":Z
    .restart local v3    # "rttModeChanged":Z
    :goto_1a9
    iput-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    .line 2574
    .end local v1    # "newRttCall":Landroid/telecom/Call$RttCall;
    .end local v17    # "parcelableRttCall":Landroid/telecom/ParcelableRttCall;
    .end local v27    # "receiveStream":Ljava/io/InputStreamReader;
    .end local v28    # "transmitStream":Ljava/io/OutputStreamWriter;
    move/from16 v1, v22

    goto :goto_1d7

    .line 2556
    :cond_1ae
    move/from16 v24, v3

    .end local v3    # "rttModeChanged":Z
    .restart local v24    # "rttModeChanged":Z
    goto :goto_1b7

    .line 2555
    .end local v22    # "isRttChanged":Z
    .end local v23    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v24    # "rttModeChanged":Z
    .local v1, "isRttChanged":Z
    .local v2, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v3    # "rttModeChanged":Z
    :cond_1b1
    move/from16 v22, v1

    move-object/from16 v23, v2

    move/from16 v24, v3

    .line 2574
    .end local v1    # "isRttChanged":Z
    .end local v2    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .end local v3    # "rttModeChanged":Z
    .restart local v22    # "isRttChanged":Z
    .restart local v23    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v24    # "rttModeChanged":Z
    :goto_1b7
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-eqz v1, :cond_1d3

    invoke-virtual {v13}, Landroid/telecom/ParcelableCall;->getParcelableRttCall()Landroid/telecom/ParcelableRttCall;

    move-result-object v1

    if-nez v1, :cond_1d3

    .line 2575
    invoke-virtual {v13}, Landroid/telecom/ParcelableCall;->getIsRttCallChanged()Z

    move-result v1

    if-eqz v1, :cond_1d3

    .line 2576
    const/4 v1, 0x1

    .line 2577
    .end local v22    # "isRttChanged":Z
    .restart local v1    # "isRttChanged":Z
    iget-object v2, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {v2}, Landroid/telecom/Call$RttCall;->close()V

    .line 2578
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    move/from16 v3, v24

    goto :goto_1d7

    .line 2584
    .end local v1    # "isRttChanged":Z
    .restart local v22    # "isRttChanged":Z
    :cond_1d3
    move/from16 v1, v22

    move/from16 v3, v24

    .end local v22    # "isRttChanged":Z
    .end local v24    # "rttModeChanged":Z
    .restart local v1    # "isRttChanged":Z
    .restart local v3    # "rttModeChanged":Z
    :goto_1d7
    if-eqz v12, :cond_1de

    .line 2585
    iget v2, v0, Landroid/telecom/Call;->mState:I

    invoke-direct {v0, v2}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 2587
    :cond_1de
    if-eqz v21, :cond_1e5

    .line 2588
    iget-object v2, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-direct {v0, v2}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 2590
    :cond_1e5
    if-eqz v5, :cond_1ec

    .line 2591
    iget-object v2, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    invoke-direct {v0, v2}, Landroid/telecom/Call;->fireCannedTextResponsesLoaded(Ljava/util/List;)V

    .line 2593
    :cond_1ec
    if-eqz v9, :cond_1f3

    .line 2594
    iget-object v2, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-direct {v0, v2}, Landroid/telecom/Call;->fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V

    .line 2596
    :cond_1f3
    if-eqz v15, :cond_1fc

    .line 2597
    invoke-virtual {v0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/telecom/Call;->fireParentChanged(Landroid/telecom/Call;)V

    .line 2599
    :cond_1fc
    if-nez v7, :cond_200

    if-eqz v20, :cond_207

    .line 2600
    :cond_200
    invoke-virtual {v0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V

    .line 2602
    :cond_207
    if-eqz v1, :cond_219

    .line 2603
    iget-object v2, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-eqz v2, :cond_210

    move/from16 v2, v16

    goto :goto_211

    :cond_210
    const/4 v2, 0x0

    :goto_211
    move/from16 v16, v1

    .end local v1    # "isRttChanged":Z
    .local v16, "isRttChanged":Z
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-direct {v0, v2, v1}, Landroid/telecom/Call;->fireOnIsRttChanged(ZLandroid/telecom/Call$RttCall;)V

    goto :goto_21b

    .line 2602
    .end local v16    # "isRttChanged":Z
    .restart local v1    # "isRttChanged":Z
    :cond_219
    move/from16 v16, v1

    .line 2605
    .end local v1    # "isRttChanged":Z
    .restart local v16    # "isRttChanged":Z
    :goto_21b
    if-eqz v3, :cond_226

    .line 2606
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {v1}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireOnRttModeChanged(I)V

    .line 2615
    :cond_226
    iget v1, v0, Landroid/telecom/Call;->mState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_230

    if-eqz v12, :cond_230

    .line 2616
    invoke-direct {v0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 2618
    :cond_230
    return-void
.end method

.method public whitelist isRttActive()Z
    .registers 3

    .line 2329
    iget-object v0, p0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist mergeConference()V
    .registers 3

    .line 1922
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->mergeConference(Ljava/lang/String;)V

    .line 1923
    return-void
.end method

.method public whitelist phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .line 1895
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 1897
    return-void
.end method

.method public whitelist playDtmfTone(C)V
    .registers 4
    .param p1, "digit"    # C

    .line 1854
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->playDtmfTone(Ljava/lang/String;C)V

    .line 1855
    return-void
.end method

.method public whitelist postDialContinue(Z)V
    .registers 4
    .param p1, "proceed"    # Z

    .line 1887
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->postDialContinue(Ljava/lang/String;Z)V

    .line 1888
    return-void
.end method

.method public whitelist pullExternalCall()V
    .registers 3

    .line 1955
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1956
    return-void

    .line 1959
    :cond_b
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->pullExternalCall(Ljava/lang/String;)V

    .line 1960
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;I)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 2147
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 2148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2150
    :cond_b
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2151
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2152
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2162
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 2163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2165
    :cond_b
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 2132
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 2133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2135
    :cond_b
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2136
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2137
    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2113
    if-nez p1, :cond_3

    .line 2114
    return-void

    .line 2117
    :cond_3
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_e

    .line 2118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2120
    :cond_e
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2121
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2122
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/Call$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    .line 2338
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V

    .line 2339
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/Call$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2348
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 2350
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    .line 2351
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    new-instance v1, Landroid/telecom/CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2353
    :cond_16
    return-void
.end method

.method public whitelist reject(I)V
    .registers 4
    .param p1, "rejectReason"    # I

    .line 1743
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;I)V

    .line 1744
    return-void
.end method

.method public whitelist reject(ZLjava/lang/String;)V
    .registers 5
    .param p1, "rejectWithMessage"    # Z
    .param p2, "textMessage"    # Ljava/lang/String;

    .line 1733
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1734
    return-void
.end method

.method public final whitelist removeExtras(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2175
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_25

    .line 2176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2177
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2178
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_8

    .line 2179
    :cond_1a
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_25

    .line 2180
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2183
    :cond_25
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    .line 2184
    return-void
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .registers 3
    .param p1, "keys"    # [Ljava/lang/String;

    .line 2192
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Call;->removeExtras(Ljava/util/List;)V

    .line 2193
    return-void
.end method

.method public whitelist removeListener(Landroid/telecom/Call$Listener;)V
    .registers 2
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2441
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 2442
    return-void
.end method

.method public whitelist respondToRttRequest(IZ)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "accept"    # Z

    .line 2017
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->respondToRttRequest(Ljava/lang/String;IZ)V

    .line 2018
    return-void
.end method

.method public whitelist sendCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1997
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget v2, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telecom/InCallAdapter;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1998
    return-void
.end method

.method public whitelist sendRttRequest()V
    .registers 3

    .line 2006
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->sendRttRequest(Ljava/lang/String;)V

    .line 2007
    return-void
.end method

.method public whitelist splitFromConference()V
    .registers 3

    .line 1915
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->splitFromConference(Ljava/lang/String;)V

    .line 1916
    return-void
.end method

.method public whitelist stopDtmfTone()V
    .registers 3

    .line 1865
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopDtmfTone(Ljava/lang/String;)V

    .line 1866
    return-void
.end method

.method public whitelist stopRtt()V
    .registers 3

    .line 2092
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopRtt(Ljava/lang/String;)V

    .line 2093
    return-void
.end method

.method public whitelist swapConference()V
    .registers 3

    .line 1929
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->swapConference(Ljava/lang/String;)V

    .line 1930
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 2374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2375
    const-string v1, "Call [id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2377
    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/Call;->mState:I

    .line 2378
    invoke-static {v1}, Landroid/telecom/Call;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2379
    const-string v1, ", details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2381
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2374
    return-object v0
.end method

.method public blacklist transfer(Landroid/net/Uri;Z)V
    .registers 5
    .param p1, "targetNumber"    # Landroid/net/Uri;
    .param p2, "isConfirmationRequired"    # Z

    .line 1756
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 1757
    return-void
.end method

.method public blacklist transfer(Landroid/telecom/Call;)V
    .registers 5
    .param p1, "toCall"    # Landroid/telecom/Call;

    .line 1767
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    return-void
.end method

.method public whitelist unhold()V
    .registers 3

    .line 1788
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->unholdCall(Ljava/lang/String;)V

    .line 1789
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/telecom/Call$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    .line 2362
    if-eqz p1, :cond_26

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_26

    .line 2363
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2364
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_25

    .line 2365
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2366
    goto :goto_26

    .line 2368
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_25
    goto :goto_d

    .line 2370
    :cond_26
    :goto_26
    return-void
.end method
