.class public abstract Landroid/net/connectivity/org/chromium/base/task/BackgroundOnlyAsyncTask;
.super Landroid/net/connectivity/org/chromium/base/task/AsyncTask;
.source "BackgroundOnlyAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<",
        "TResult;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 15
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/BackgroundOnlyAsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/BackgroundOnlyAsyncTask<TResult;>;"
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final blacklist onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 19
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/BackgroundOnlyAsyncTask;, "Landroid/net/connectivity/org/chromium/base/task/BackgroundOnlyAsyncTask<TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    nop

    .line 20
    return-void
.end method
