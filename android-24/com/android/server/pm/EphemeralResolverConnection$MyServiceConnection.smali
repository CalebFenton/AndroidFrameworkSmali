.class final Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;
.super Ljava/lang/Object;
.source "EphemeralResolverConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EphemeralResolverConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/EphemeralResolverConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/EphemeralResolverConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/EphemeralResolverConnection;

    #@0
    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/EphemeralResolverConnection;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;-><init>(Lcom/android/server/pm/EphemeralResolverConnection;)V

    #@3
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/EphemeralResolverConnection;->-get0(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    #@9
    invoke-static {p2}, Lcom/android/internal/app/IEphemeralResolver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IEphemeralResolver;

    #@c
    move-result-object v2

    #@d
    invoke-static {v0, v2}, Lcom/android/server/pm/EphemeralResolverConnection;->-set0(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/internal/app/IEphemeralResolver;)Lcom/android/internal/app/IEphemeralResolver;

    #@10
    .line 148
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    #@12
    invoke-static {v0}, Lcom/android/server/pm/EphemeralResolverConnection;->-get0(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    .line 145
    return-void

    #@1b
    .line 146
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/EphemeralResolverConnection;->-get0(Lcom/android/server/pm/EphemeralResolverConnection;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/EphemeralResolverConnection$MyServiceConnection;->this$0:Lcom/android/server/pm/EphemeralResolverConnection;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-static {v0, v2}, Lcom/android/server/pm/EphemeralResolverConnection;->-set0(Lcom/android/server/pm/EphemeralResolverConnection;Lcom/android/internal/app/IEphemeralResolver;)Lcom/android/internal/app/IEphemeralResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 153
    return-void

    #@f
    .line 154
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method
