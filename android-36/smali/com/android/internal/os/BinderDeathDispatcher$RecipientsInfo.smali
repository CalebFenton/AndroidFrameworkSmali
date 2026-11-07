.class Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;
.super Ljava/lang/Object;
.source "BinderDeathDispatcher.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderDeathDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientsInfo"
.end annotation


# instance fields
.field blacklist mRecipients:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTarget:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Lcom/android/internal/os/BinderDeathDispatcher;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/os/BinderDeathDispatcher;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/os/BinderDeathDispatcher;
    .param p2, "target"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 60
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    iput-object p1, p0, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->this$0:Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    .line 61
    iput-object p2, p0, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mTarget:Landroid/os/IBinder;

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BinderDeathDispatcher;Landroid/os/IBinder;Lcom/android/internal/os/BinderDeathDispatcher-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;-><init>(Lcom/android/internal/os/BinderDeathDispatcher;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 1

    .line 66
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    return-void
.end method

.method public whitelist binderDied(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "who"    # Landroid/os/IBinder;

    .line 71
    .local p0, "this":Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;, "Lcom/android/internal/os/BinderDeathDispatcher<TT;>.RecipientsInfo;"
    iget-object v0, p0, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->this$0:Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-static {v0}, Lcom/android/internal/os/BinderDeathDispatcher;->-$$Nest$fgetmLock(Lcom/android/internal/os/BinderDeathDispatcher;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 72
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    .line 73
    .local v1, "copy":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/IBinder$DeathRecipient;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mRecipients:Landroid/util/ArraySet;

    .line 76
    iget-object v2, p0, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->this$0:Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-static {v2}, Lcom/android/internal/os/BinderDeathDispatcher;->-$$Nest$fgetmTargets(Lcom/android/internal/os/BinderDeathDispatcher;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/BinderDeathDispatcher$RecipientsInfo;->mTarget:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_2f

    .line 78
    if-nez v1, :cond_1b

    .line 79
    return-void

    .line 82
    :cond_1b
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 83
    .local v0, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    if-ge v2, v0, :cond_2e

    .line 84
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, p1}, Landroid/os/IBinder$DeathRecipient;->binderDied(Landroid/os/IBinder;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 86
    .end local v2    # "i":I
    :cond_2e
    return-void

    .line 77
    .end local v0    # "size":I
    .end local v1    # "copy":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/IBinder$DeathRecipient;>;"
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method
