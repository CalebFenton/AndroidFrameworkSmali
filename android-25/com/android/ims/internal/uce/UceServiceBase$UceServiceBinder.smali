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
.field final synthetic this$0:Lcom/android/ims/internal/uce/UceServiceBase;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/uce/UceServiceBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/uce/UceServiceBase;

    #@0
    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/uce/UceServiceBase;Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/uce/UceServiceBase;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;-><init>(Lcom/android/ims/internal/uce/UceServiceBase;)V

    #@3
    return-void
.end method


# virtual methods
.method public createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 1
    .param p1, "optionsListener"    # Lcom/android/ims/internal/uce/options/IOptionsListener;
    .param p2, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreateOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I
    .locals 1
    .param p1, "presServiceListener"    # Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .param p2, "presServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;

    #@0
    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/ims/internal/uce/UceServiceBase;->onCreatePresService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public destroyOptionsService(I)V
    .locals 1
    .param p1, "optionsServiceHandle"    # I

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onDestroyOptionsService(I)V

    #@5
    .line 61
    return-void
.end method

.method public destroyPresenceService(I)V
    .locals 1
    .param p1, "presServiceHdl"    # I

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onDestroyPresService(I)V

    #@5
    .line 73
    return-void
.end method

.method public getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    #@2
    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;
    .locals 1

    #@0
    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    #@2
    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getServiceStatus()Z
    .locals 1

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    #@2
    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onGetServiceStatus()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isServiceStarted()Z
    .locals 1

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    #@2
    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onIsServiceStarted()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z
    .locals 1
    .param p1, "uceListener"    # Lcom/android/ims/internal/uce/uceservice/IUceListener;

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/uce/UceServiceBase;->onServiceStart(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public stopService()Z
    .locals 1

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/ims/internal/uce/UceServiceBase$UceServiceBinder;->this$0:Lcom/android/ims/internal/uce/UceServiceBase;

    #@2
    invoke-virtual {v0}, Lcom/android/ims/internal/uce/UceServiceBase;->onStopService()Z

    #@5
    move-result v0

    #@6
    return v0
.end method
