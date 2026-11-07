.class final Landroid/content/ContentResolver$CursorWrapperInner;
.super Landroid/database/CrossProcessCursorWrapper;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorWrapperInner"
.end annotation


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mContentProvider:Landroid/content/IContentProvider;

.field private final greylist-max-o mProviderReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic blacklist this$0:Landroid/content/ContentResolver;


# direct methods
.method constructor blacklist <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    .registers 5
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "contentProvider"    # Landroid/content/IContentProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 3879
    iput-object p1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    .line 3880
    invoke-direct {p0, p2}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 3875
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mProviderReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3877
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 3881
    iput-object p3, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    .line 3882
    iget-object p1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "CursorWrapperInner.close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 3883
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 3887
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 3888
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->close()V

    .line 3890
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mProviderReleased:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3891
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 3893
    :cond_19
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3898
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 3899
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 3902
    :cond_9
    invoke-virtual {p0}, Landroid/content/ContentResolver$CursorWrapperInner;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 3904
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3905
    nop

    .line 3906
    return-void

    .line 3904
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3905
    throw v0
.end method
