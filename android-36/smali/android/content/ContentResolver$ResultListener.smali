.class abstract Landroid/content/ContentResolver$ResultListener;
.super Ljava/lang/Object;
.source "ContentResolver.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ResultListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/RemoteCallback$OnResultListener;"
    }
.end annotation


# instance fields
.field public blacklist done:Z

.field public blacklist exception:Ljava/lang/RuntimeException;

.field public blacklist result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 982
    .local p0, "this":Landroid/content/ContentResolver$ResultListener;, "Landroid/content/ContentResolver$ResultListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ContentResolver-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentResolver$ResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract blacklist getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method public whitelist onResult(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "result"    # Landroid/os/Bundle;

    .line 994
    .local p0, "this":Landroid/content/ContentResolver$ResultListener;, "Landroid/content/ContentResolver$ResultListener<TT;>;"
    monitor-enter p0

    .line 995
    :try_start_1
    const-string v0, "error"

    const-class v1, Landroid/os/ParcelableException;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelableException;

    .line 996
    .local v0, "e":Landroid/os/ParcelableException;
    if-eqz v0, :cond_23

    .line 997
    invoke-virtual {v0}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 998
    .local v1, "t":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1b

    .line 999
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    iput-object v2, p0, Landroid/content/ContentResolver$ResultListener;->exception:Ljava/lang/RuntimeException;

    goto :goto_22

    .line 1001
    :cond_1b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, Landroid/content/ContentResolver$ResultListener;->exception:Ljava/lang/RuntimeException;

    .line 1003
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_22
    goto :goto_29

    .line 1004
    :cond_23
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver$ResultListener;->getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/content/ContentResolver$ResultListener;->result:Ljava/lang/Object;

    .line 1006
    :goto_29
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/ContentResolver$ResultListener;->done:Z

    .line 1007
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1008
    .end local v0    # "e":Landroid/os/ParcelableException;
    monitor-exit p0

    .line 1009
    return-void

    .line 1008
    :catchall_31
    move-exception v0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public blacklist waitForResult(J)V
    .registers 4
    .param p1, "timeout"    # J

    .line 1014
    .local p0, "this":Landroid/content/ContentResolver$ResultListener;, "Landroid/content/ContentResolver$ResultListener<TT;>;"
    monitor-enter p0

    .line 1015
    :try_start_1
    iget-boolean v0, p0, Landroid/content/ContentResolver$ResultListener;->done:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-nez v0, :cond_a

    .line 1017
    :try_start_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 1020
    goto :goto_a

    .line 1018
    :catch_9
    move-exception v0

    .line 1022
    :cond_a
    :goto_a
    :try_start_a
    monitor-exit p0

    .line 1023
    return-void

    .line 1022
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_c

    throw v0
.end method
