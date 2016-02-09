.class Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalServiceConnection"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private final mLocale:Ljava/lang/String;

.field private final mSciId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/TextServicesManagerService$InternalServiceConnection;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TextServicesManagerService;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 961
    iput-object p2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    #@7
    .line 962
    iput-object p3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mLocale:Ljava/lang/String;

    #@9
    .line 963
    iput-object p4, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mBundle:Landroid/os/Bundle;

    #@b
    .line 960
    return-void
.end method

.method private onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 978
    invoke-static {p2}, Lcom/android/internal/textservice/ISpellCheckerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/textservice/ISpellCheckerService;

    #@3
    move-result-object v1

    #@4
    .line 979
    .local v1, "spellChecker":Lcom/android/internal/textservice/ISpellCheckerService;
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    #@6
    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    #@c
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@12
    .line 980
    .local v0, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v0, :cond_0

    #@14
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get0(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    #@17
    move-result-object v2

    #@18
    if-ne p0, v2, :cond_0

    #@1a
    .line 981
    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerService;)V

    #@1d
    .line 973
    :cond_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@5
    move-result-object v0

    #@6
    monitor-enter v0

    #@7
    .line 969
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->onServiceConnectedInnerLocked(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v0

    #@b
    .line 967
    return-void

    #@c
    .line 968
    :catchall_0
    move-exception v1

    #@d
    monitor-exit v0

    #@e
    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 987
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@5
    move-result-object v2

    #@6
    monitor-enter v2

    #@7
    .line 988
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    #@9
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@c
    move-result-object v1

    #@d
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    #@15
    .line 989
    .local v0, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v0, :cond_0

    #@17
    invoke-static {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get0(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    #@1a
    move-result-object v1

    #@1b
    if-ne p0, v1, :cond_0

    #@1d
    .line 990
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->this$0:Lcom/android/server/TextServicesManagerService;

    #@1f
    invoke-static {v1}, Lcom/android/server/TextServicesManagerService;->-get3(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    #@22
    move-result-object v1

    #@23
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;->mSciId:Ljava/lang/String;

    #@25
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    :cond_0
    monitor-exit v2

    #@29
    .line 986
    return-void

    #@2a
    .line 987
    .end local v0    # "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    :catchall_0
    move-exception v1

    #@2b
    monitor-exit v2

    #@2c
    throw v1
.end method
