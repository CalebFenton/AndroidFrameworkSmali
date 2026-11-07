.class public abstract Lcom/android/ims/internal/uce/UceServiceBase;
.super Ljava/lang/Object;
.source "UceServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
    }
.end annotation


# instance fields
.field private blacklist mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getBinder()Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    if-nez v0, :cond_c

    .line 123
    new-instance v0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;-><init>(Lcom/android/ims/internal/uce/UceServiceBase;Lcom/android/ims/internal/uce/UceServiceBase-IA;)V

    iput-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    .line 125
    :cond_c
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase;->mBinder:Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;

    return-object v0
.end method

.method protected blacklist onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .registers 4
    .param p1, "optionsListener"    # Lcom/android/ims/internal/uce/options/IOptionsListener;
    .param p2, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .registers 5
    .param p1, "optionsListener"    # Lcom/android/ims/internal/uce/options/IOptionsListener;
    .param p2, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .param p3, "iccId"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .registers 4
    .param p1, "presServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p2, "presServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .registers 5
    .param p1, "presServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p2, "presServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .param p3, "iccId"    # Ljava/lang/String;

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onDestroyOptionsService(I)V
    .registers 2
    .param p1, "cdServiceHandle"    # I

    .line 158
    return-void
.end method

.method protected blacklist onDestroyPresService(I)V
    .registers 2
    .param p1, "presServiceHdl"    # I

    .line 176
    return-void
.end method

.method protected blacklist onGetOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
    .registers 2

    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist onGetOptionsService(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .registers 3
    .param p1, "iccId"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist onGetPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
    .registers 2

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist onGetPresenceService(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .registers 3
    .param p1, "iccId"    # Ljava/lang/String;

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist onGetServiceStatus()Z
    .registers 2

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onIsServiceStarted()Z
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onServiceStart(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
    .registers 3
    .param p1, "uceListener"    # Lcom/android/ims/internal/uce/uceservice/IUceListener;

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist onStopService()Z
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method
