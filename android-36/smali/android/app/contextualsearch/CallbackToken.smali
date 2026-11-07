.class public final Landroid/app/contextualsearch/CallbackToken;
.super Ljava/lang/Object;
.source "CallbackToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contextualsearch/CallbackToken;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mToken:Landroid/os/IBinder;

.field private blacklist mTokenUsed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-class v0, Landroid/app/contextualsearch/CallbackToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/app/contextualsearch/CallbackToken$1;

    invoke-direct {v0}, Landroid/app/contextualsearch/CallbackToken$1;-><init>()V

    sput-object v0, Landroid/app/contextualsearch/CallbackToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    .line 57
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/contextualsearch/CallbackToken-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/contextualsearch/CallbackToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist markUsedLocked()Z
    .registers 3

    .line 106
    iget-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    .line 107
    .local v0, "oldValue":Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    .line 108
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getContextualSearchState(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 9
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/contextualsearch/ContextualSearchState;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p2, "callback":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/app/contextualsearch/ContextualSearchState;Ljava/lang/Throwable;>;"
    sget-object v0, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContextualSearchState for token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_1d
    invoke-direct {p0}, Landroid/app/contextualsearch/CallbackToken;->markUsedLocked()Z

    move-result v1

    .line 83
    .local v1, "tokenUsed":Z
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_5a

    .line 84
    if-eqz v1, :cond_2f

    .line 85
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v2, "Token already used."

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 86
    return-void

    .line 90
    :cond_2f
    :try_start_2f
    const-string v0, "contextual_search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 91
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contextualsearch/IContextualSearchManager;

    move-result-object v2

    .line 92
    .local v2, "service":Landroid/app/contextualsearch/IContextualSearchManager;
    new-instance v3, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;

    invoke-direct {v3, p1, p2}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 94
    .local v3, "wrapper":Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;
    if-eqz v2, :cond_46

    .line 95
    iget-object v4, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v4, v3}, Landroid/app/contextualsearch/IContextualSearchManager;->getContextualSearchState(Landroid/os/IBinder;Landroid/app/contextualsearch/IContextualSearchCallback;)V

    goto :goto_4d

    .line 97
    :cond_46
    sget-object v4, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    const-string v5, "Failed to getContextualSearchState. Service null."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_4d} :catch_4e

    .line 102
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "service":Landroid/app/contextualsearch/IContextualSearchManager;
    .end local v3    # "wrapper":Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;
    :goto_4d
    goto :goto_59

    .line 99
    :catch_4e
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call getContextualSearchState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 103
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_59
    return-void

    .line 83
    .end local v1    # "tokenUsed":Z
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 129
    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 130
    return-void
.end method
