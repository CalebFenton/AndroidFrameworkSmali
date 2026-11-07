.class Landroid/widget/Toast$CallbackBinder;
.super Landroid/app/ITransientNotificationCallback$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$L9_BR0JWt2r4Bt_AjGXK2rKaSio(Landroid/widget/Toast$CallbackBinder;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Toast$CallbackBinder;->lambda$onToastShown$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sraPlow1KZqYssuATIivxUKIwio(Landroid/widget/Toast$CallbackBinder;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/Toast$CallbackBinder;->lambda$onToastHidden$1()V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 859
    .local p1, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/widget/Toast$Callback;>;"
    invoke-direct {p0}, Landroid/app/ITransientNotificationCallback$Stub;-><init>()V

    .line 860
    iput-object p1, p0, Landroid/widget/Toast$CallbackBinder;->mCallbacks:Ljava/util/List;

    .line 861
    iput-object p2, p0, Landroid/widget/Toast$CallbackBinder;->mHandler:Landroid/os/Handler;

    .line 862
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist getCallbacks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation

    .line 883
    iget-object v0, p0, Landroid/widget/Toast$CallbackBinder;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 884
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/Toast$CallbackBinder;->mCallbacks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 885
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private synthetic blacklist lambda$onToastHidden$1()V
    .registers 3

    .line 876
    invoke-direct {p0}, Landroid/widget/Toast$CallbackBinder;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast$Callback;

    .line 877
    .local v1, "callback":Landroid/widget/Toast$Callback;
    invoke-virtual {v1}, Landroid/widget/Toast$Callback;->onToastHidden()V

    .line 878
    .end local v1    # "callback":Landroid/widget/Toast$Callback;
    goto :goto_8

    .line 879
    :cond_18
    return-void
.end method

.method private synthetic blacklist lambda$onToastShown$0()V
    .registers 3

    .line 867
    invoke-direct {p0}, Landroid/widget/Toast$CallbackBinder;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast$Callback;

    .line 868
    .local v1, "callback":Landroid/widget/Toast$Callback;
    invoke-virtual {v1}, Landroid/widget/Toast$Callback;->onToastShown()V

    .line 869
    .end local v1    # "callback":Landroid/widget/Toast$Callback;
    goto :goto_8

    .line 870
    :cond_18
    return-void
.end method


# virtual methods
.method public blacklist onToastHidden()V
    .registers 3

    .line 875
    iget-object v0, p0, Landroid/widget/Toast$CallbackBinder;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/Toast$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Toast$CallbackBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 880
    return-void
.end method

.method public blacklist onToastShown()V
    .registers 3

    .line 866
    iget-object v0, p0, Landroid/widget/Toast$CallbackBinder;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/Toast$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/Toast$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Toast$CallbackBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 871
    return-void
.end method
