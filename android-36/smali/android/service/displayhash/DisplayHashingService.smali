.class public abstract Landroid/service/displayhash/DisplayHashingService;
.super Landroid/app/Service;
.source "DisplayHashingService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;
    }
.end annotation


# static fields
.field public static final blacklist EXTRA_INTERVAL_BETWEEN_REQUESTS:Ljava/lang/String; = "android.service.displayhash.extra.INTERVAL_BETWEEN_REQUESTS"

.field public static final blacklist EXTRA_VERIFIED_DISPLAY_HASH:Ljava/lang/String; = "android.service.displayhash.extra.VERIFIED_DISPLAY_HASH"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.displayhash.DisplayHashingService"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mWrapper:Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/displayhash/DisplayHashingService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/service/displayhash/DisplayHashingService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDisplayHashAlgorithms(Landroid/service/displayhash/DisplayHashingService;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/displayhash/DisplayHashingService;->getDisplayHashAlgorithms(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDurationBetweenRequestsMillis(Landroid/service/displayhash/DisplayHashingService;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/displayhash/DisplayHashingService;->getDurationBetweenRequestsMillis(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mverifyDisplayHash(Landroid/service/displayhash/DisplayHashingService;[BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/service/displayhash/DisplayHashingService;->verifyDisplayHash([BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private blacklist getDisplayHashAlgorithms(Landroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 135
    invoke-virtual {p0}, Landroid/service/displayhash/DisplayHashingService;->onGetDisplayHashAlgorithms()Ljava/util/Map;

    move-result-object v0

    .line 136
    .local v0, "displayHashParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/service/displayhash/DisplayHashParams;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v1, "data":Landroid/os/Bundle;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 138
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/service/displayhash/DisplayHashParams;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/service/displayhash/DisplayHashParams;>;"
    goto :goto_11

    .line 140
    :cond_2d
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method private blacklist getDurationBetweenRequestsMillis(Landroid/os/RemoteCallback;)V
    .registers 5
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 152
    invoke-virtual {p0}, Landroid/service/displayhash/DisplayHashingService;->onGetIntervalBetweenRequestsMillis()I

    move-result v0

    .line 153
    .local v0, "durationBetweenRequestMillis":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "android.service.displayhash.extra.INTERVAL_BETWEEN_REQUESTS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method

.method private blacklist verifyDisplayHash([BLandroid/view/displayhash/DisplayHash;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "salt"    # [B
    .param p2, "displayHash"    # Landroid/view/displayhash/DisplayHash;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 127
    invoke-virtual {p0, p1, p2}, Landroid/service/displayhash/DisplayHashingService;->onVerifyDisplayHash([BLandroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object v0

    .line 129
    .local v0, "verifiedDisplayHash":Landroid/view/displayhash/VerifiedDisplayHash;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "android.service.displayhash.extra.VERIFIED_DISPLAY_HASH"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    invoke-virtual {p3, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 81
    iget-object v0, p0, Landroid/service/displayhash/DisplayHashingService;->mWrapper:Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 5

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 74
    new-instance v0, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;-><init>(Landroid/service/displayhash/DisplayHashingService;Landroid/service/displayhash/DisplayHashingService-IA;)V

    iput-object v0, p0, Landroid/service/displayhash/DisplayHashingService;->mWrapper:Landroid/service/displayhash/DisplayHashingService$DisplayHashingServiceWrapper;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/displayhash/DisplayHashingService;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method public abstract whitelist onGenerateDisplayHash([BLandroid/hardware/HardwareBuffer;Landroid/graphics/Rect;Ljava/lang/String;Landroid/view/displayhash/DisplayHashResultCallback;)V
.end method

.method public abstract whitelist onGetDisplayHashAlgorithms()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/service/displayhash/DisplayHashParams;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist onGetIntervalBetweenRequestsMillis()I
.end method

.method public abstract whitelist onVerifyDisplayHash([BLandroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;
.end method
