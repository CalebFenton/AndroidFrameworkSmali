.class public abstract Landroid/telecom/CallScreeningService;
.super Landroid/app/Service;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallScreeningService$CallScreeningBinder;,
        Landroid/telecom/CallScreeningService$CallResponse;,
        Landroid/telecom/CallScreeningService$ParcelableCallResponse;
    }
.end annotation


# static fields
.field private static final greylist-max-o MSG_SCREEN_CALL:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.CallScreeningService"


# instance fields
.field private greylist-max-o mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallScreeningAdapter(Landroid/telecom/CallScreeningService;)Lcom/android/internal/telecom/ICallScreeningAdapter;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telecom/CallScreeningService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telecom/CallScreeningService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallScreeningAdapter(Landroid/telecom/CallScreeningService;Lcom/android/internal/telecom/ICallScreeningAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 591
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 130
    new-instance v0, Landroid/telecom/CallScreeningService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallScreeningService$1;-><init>(Landroid/telecom/CallScreeningService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/CallScreeningService;->mHandler:Landroid/os/Handler;

    .line 592
    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 596
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "onBind"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    new-instance v0, Landroid/telecom/CallScreeningService$CallScreeningBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/CallScreeningService$CallScreeningBinder;-><init>(Landroid/telecom/CallScreeningService;Landroid/telecom/CallScreeningService-IA;)V

    return-object v0
.end method

.method public abstract whitelist onScreenCall(Landroid/telecom/Call$Details;)V
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 602
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "onUnbind"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    return v0
.end method

.method public final whitelist respondToCall(Landroid/telecom/Call$Details;Landroid/telecom/CallScreeningService$CallResponse;)V
    .registers 8
    .param p1, "callDetails"    # Landroid/telecom/Call$Details;
    .param p2, "response"    # Landroid/telecom/CallScreeningService$CallResponse;

    .line 674
    :try_start_0
    iget-object v0, p0, Landroid/telecom/CallScreeningService;->mCallScreeningAdapter:Lcom/android/internal/telecom/ICallScreeningAdapter;

    .line 675
    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    .line 676
    invoke-virtual {p0}, Landroid/telecom/CallScreeningService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Landroid/telecom/CallScreeningService$CallResponse;->toParcelable()Landroid/telecom/CallScreeningService$ParcelableCallResponse;

    move-result-object v3

    .line 674
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/ICallScreeningAdapter;->onScreeningResponse(Ljava/lang/String;Landroid/content/ComponentName;Landroid/telecom/CallScreeningService$ParcelableCallResponse;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 680
    goto :goto_28

    .line 678
    :catch_1f
    move-exception v0

    .line 679
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Got remote exception when returning response"

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    return-void
.end method
