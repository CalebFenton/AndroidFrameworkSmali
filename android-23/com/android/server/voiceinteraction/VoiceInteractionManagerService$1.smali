.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@0
    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .locals 4
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@3
    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get0(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->initForUser(I)V

    #@a
    .line 96
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$1;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    #@c
    invoke-static {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;->-get0(Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;)Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->getCurInteractor(I)Landroid/content/ComponentName;

    #@13
    move-result-object v0

    #@14
    .line 97
    .local v0, "interactor":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    #@16
    .line 98
    const/4 v1, 0x1

    #@17
    new-array v1, v1, [Ljava/lang/String;

    #@19
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x0

    #@1e
    aput-object v2, v1, v3

    #@20
    return-object v1

    #@21
    .line 100
    :cond_0
    return-object v2
.end method
