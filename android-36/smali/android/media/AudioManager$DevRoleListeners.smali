.class Landroid/media/AudioManager$DevRoleListeners;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevRoleListeners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mDevRoleListenersLock:Ljava/lang/Object;

.field private blacklist mListenerInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioManager$DevRoleListenerInfo<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDevRoleListenersLock(Landroid/media/AudioManager$DevRoleListeners;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager$DevRoleListeners;->mDevRoleListenersLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListenerInfos(Landroid/media/AudioManager$DevRoleListeners;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhasDevRoleListener(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->hasDevRoleListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveDevRoleListener(Landroid/media/AudioManager$DevRoleListeners;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->removeDevRoleListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2848
    .local p0, "this":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2849
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/AudioManager$DevRoleListeners;->mDevRoleListenersLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/AudioManager;Landroid/media/AudioManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method private blacklist getDevRoleListenerInfo(Ljava/lang/Object;)Landroid/media/AudioManager$DevRoleListenerInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/media/AudioManager$DevRoleListenerInfo<",
            "TT;>;"
        }
    .end annotation

    .line 2855
    .local p0, "this":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2856
    return-object v1

    .line 2858
    :cond_6
    iget-object v0, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager$DevRoleListenerInfo;

    .line 2859
    .local v2, "listenerInfo":Landroid/media/AudioManager$DevRoleListenerInfo;, "Landroid/media/AudioManager$DevRoleListenerInfo<TT;>;"
    iget-object v3, v2, Landroid/media/AudioManager$DevRoleListenerInfo;->mListener:Ljava/lang/Object;

    if-ne v3, p1, :cond_1d

    .line 2860
    return-object v2

    .line 2862
    .end local v2    # "listenerInfo":Landroid/media/AudioManager$DevRoleListenerInfo;, "Landroid/media/AudioManager$DevRoleListenerInfo<TT;>;"
    :cond_1d
    goto :goto_c

    .line 2863
    :cond_1e
    return-object v1
.end method

.method private blacklist hasDevRoleListener(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2868
    .local p0, "this":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->getDevRoleListenerInfo(Ljava/lang/Object;)Landroid/media/AudioManager$DevRoleListenerInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist removeDevRoleListener(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2873
    .local p0, "this":Landroid/media/AudioManager$DevRoleListeners;, "Landroid/media/AudioManager$DevRoleListeners<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Landroid/media/AudioManager$DevRoleListeners;->getDevRoleListenerInfo(Ljava/lang/Object;)Landroid/media/AudioManager$DevRoleListenerInfo;

    move-result-object v0

    .line 2874
    .local v0, "infoToRemove":Landroid/media/AudioManager$DevRoleListenerInfo;, "Landroid/media/AudioManager$DevRoleListenerInfo<TT;>;"
    if-eqz v0, :cond_d

    .line 2875
    iget-object v1, p0, Landroid/media/AudioManager$DevRoleListeners;->mListenerInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2876
    const/4 v1, 0x1

    return v1

    .line 2878
    :cond_d
    const/4 v1, 0x0

    return v1
.end method
