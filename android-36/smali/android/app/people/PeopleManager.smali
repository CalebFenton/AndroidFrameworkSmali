.class public final Landroid/app/people/PeopleManager;
.super Ljava/lang/Object;
.source "PeopleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/PeopleManager$ConversationListenerProxy;,
        Landroid/app/people/PeopleManager$ConversationListener;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mConversationListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/people/PeopleManager$ConversationListener;",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/app/people/IConversationListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mService:Landroid/app/people/IPeopleManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/people/PeopleManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-class v0, Landroid/app/people/PeopleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/people/PeopleManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    .line 68
    iput-object p1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 69
    const-string/jumbo v0, "people"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/people/IPeopleManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/people/IPeopleManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/people/IPeopleManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/people/IPeopleManager;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    .line 78
    iput-object p1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist addOrUpdateStatus(Ljava/lang/String;Landroid/app/people/ConversationStatus;)V
    .registers 6
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "status"    # Landroid/app/people/ConversationStatus;

    .line 125
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 126
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :try_start_6
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    iget-object v1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 128
    invoke-interface {v0, v1, v2, p1, p2}, Landroid/app/people/IPeopleManager;->addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_19

    .line 132
    nop

    .line 133
    return-void

    .line 130
    :catch_19
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "conversationId"    # Ljava/lang/String;
    .param p2, "statusId"    # Ljava/lang/String;

    .line 144
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 145
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 147
    :try_start_6
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    iget-object v1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 147
    invoke-interface {v0, v1, v2, p1, p2}, Landroid/app/people/IPeopleManager;->clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_19

    .line 151
    nop

    .line 152
    return-void

    .line 149
    :catch_19
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist clearStatuses(Ljava/lang/String;)V
    .registers 5
    .param p1, "conversationId"    # Ljava/lang/String;

    .line 161
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 163
    :try_start_3
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    iget-object v1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 163
    invoke-interface {v0, v1, v2, p1}, Landroid/app/people/IPeopleManager;->clearStatuses(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_16

    .line 167
    nop

    .line 168
    return-void

    .line 165
    :catch_16
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getStatuses(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .param p1, "conversationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    .line 178
    :try_start_0
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    iget-object v1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 179
    invoke-interface {v0, v1, v2, p1}, Landroid/app/people/IPeopleManager;->getStatuses(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 181
    .local v0, "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/people/ConversationStatus;>;"
    if-eqz v0, :cond_19

    .line 182
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_20

    return-object v1

    .line 186
    .end local v0    # "parceledList":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/people/ConversationStatus;>;"
    :cond_19
    nop

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 184
    :catch_20
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isConversation(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 100
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 101
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 103
    :try_start_6
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    iget-object v1, p0, Landroid/app/people/PeopleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/people/IPeopleManager;->isConversation(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return v0

    .line 104
    :catch_13
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/PeopleManager$ConversationListener;Ljava/util/concurrent/Executor;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "shortcutId"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/app/people/PeopleManager$ConversationListener;
    .param p5, "executor"    # Ljava/util/concurrent/Executor;

    .line 224
    const-string v0, "Listener cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    const-string v0, "Package name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    const-string v0, "Shortcut ID cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    monitor-enter v0

    .line 228
    :try_start_12
    new-instance v1, Landroid/app/people/PeopleManager$ConversationListenerProxy;

    invoke-direct {v1, p5, p4}, Landroid/app/people/PeopleManager$ConversationListenerProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/app/people/PeopleManager$ConversationListener;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_2f

    .line 231
    .local v1, "proxy":Landroid/app/people/IConversationListener;
    :try_start_17
    iget-object v2, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    invoke-interface {v2, p1, p2, p3, v1}, Landroid/app/people/IPeopleManager;->registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/IConversationListener;)V

    .line 233
    iget-object v2, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, p4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_26} :catch_29
    .catchall {:try_start_17 .. :try_end_26} :catchall_2f

    .line 237
    nop

    .line 238
    .end local v1    # "proxy":Landroid/app/people/IConversationListener;
    :try_start_27
    monitor-exit v0

    .line 239
    return-void

    .line 235
    .restart local v1    # "proxy":Landroid/app/people/IConversationListener;
    :catch_29
    move-exception v2

    .line 236
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/people/PeopleManager;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "shortcutId":Ljava/lang/String;
    .end local p4    # "listener":Landroid/app/people/PeopleManager$ConversationListener;
    .end local p5    # "executor":Ljava/util/concurrent/Executor;
    throw v3

    .line 238
    .end local v1    # "proxy":Landroid/app/people/IConversationListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/people/PeopleManager;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "shortcutId":Ljava/lang/String;
    .restart local p4    # "listener":Landroid/app/people/PeopleManager$ConversationListener;
    .restart local p5    # "executor":Ljava/util/concurrent/Executor;
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public blacklist unregisterConversationListener(Landroid/app/people/PeopleManager$ConversationListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/app/people/PeopleManager$ConversationListener;

    .line 249
    const-string v0, "Listener cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    monitor-enter v0

    .line 252
    :try_start_8
    iget-object v1, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 253
    iget-object v1, p0, Landroid/app/people/PeopleManager;->mConversationListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/app/people/IConversationListener;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_2a

    .line 255
    .local v1, "proxy":Landroid/app/people/IConversationListener;
    :try_start_1c
    iget-object v2, p0, Landroid/app/people/PeopleManager;->mService:Landroid/app/people/IPeopleManager;

    invoke-interface {v2, v1}, Landroid/app/people/IPeopleManager;->unregisterConversationListener(Landroid/app/people/IConversationListener;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_21} :catch_22
    .catchall {:try_start_1c .. :try_end_21} :catchall_2a

    .line 258
    goto :goto_28

    .line 256
    :catch_22
    move-exception v2

    .line 257
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_23
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/app/people/PeopleManager;
    .end local p1    # "listener":Landroid/app/people/PeopleManager$ConversationListener;
    throw v3

    .line 260
    .end local v1    # "proxy":Landroid/app/people/IConversationListener;
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/people/PeopleManager;
    .restart local p1    # "listener":Landroid/app/people/PeopleManager$ConversationListener;
    :cond_28
    :goto_28
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_2a

    throw v1
.end method
