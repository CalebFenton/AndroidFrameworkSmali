.class final Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;
.super Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
.source "UceServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/UceServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UceServiceBinder"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/ims/internal/uce/UceServiceBase;


# direct methods
.method private constructor blacklist <init>(Lcom/android/ims/internal/uce/UceServiceBase;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-direct {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/ims/internal/uce/UceServiceBase;Lcom/android/ims/internal/uce/UceServiceBase-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;-><init>(Lcom/android/ims/internal/uce/UceServiceBase;)V

    return-void
.end method


# virtual methods
.method public blacklist createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .registers 4
    .param p1, "optionsListener"    # Lcom/android/ims/internal/uce/options/IOptionsListener;
    .param p2, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;

    .line 56
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v0

    return v0
.end method

.method public blacklist createOptionsServiceForSubscription(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .registers 5
    .param p1, "optionsListener"    # Lcom/android/ims/internal/uce/options/IOptionsListener;
    .param p2, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .param p3, "iccId"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .registers 4
    .param p1, "presServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p2, "presServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;

    .line 77
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    move-result v0

    return v0
.end method

.method public blacklist createPresenceServiceForSubscription(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I
    .registers 5
    .param p1, "presServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p2, "presServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .param p3, "iccId"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist destroyOptionsService(I)V
    .registers 3
    .param p1, "optionsServiceHandle"    # I

    .line 70
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onDestroyOptionsService(I)V

    .line 71
    return-void
.end method

.method public blacklist destroyPresenceService(I)V
    .registers 3
    .param p1, "presServiceHdl"    # I

    .line 90
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onDestroyPresService(I)V

    .line 91
    return-void
.end method

.method public blacklist getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOptionsServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;
    .registers 3
    .param p1, "iccId"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetOptionsService(Ljava/lang/String;)Lcom/android/ims/internal/uce/options/IOptionsService;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPresenceServiceForSubscription(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;
    .registers 3
    .param p1, "iccId"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetPresenceService(Ljava/lang/String;)Lcom/android/ims/internal/uce/presence/IPresenceService;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceStatus()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetServiceStatus()Z

    move-result v0

    return v0
.end method

.method public blacklist isServiceStarted()Z
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onIsServiceStarted()Z

    move-result v0

    return v0
.end method

.method public blacklist startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
    .registers 3
    .param p1, "uceListener"    # Lcom/android/ims/internal/uce/uceservice/IUceListener;

    .line 40
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onServiceStart(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    move-result v0

    return v0
.end method

.method public blacklist stopService()Z
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onStopService()Z

    move-result v0

    return v0
.end method
