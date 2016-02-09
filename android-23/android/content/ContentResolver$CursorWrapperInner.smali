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


# static fields
.field public static final TAG:Ljava/lang/String; = "CursorWrapperInner"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mContentProvider:Landroid/content/IContentProvider;

.field private mProviderReleased:Z

.field final synthetic this$0:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/ContentResolver;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "icp"    # Landroid/content/IContentProvider;

    #@0
    .prologue
    .line 2504
    iput-object p1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    #@2
    .line 2505
    invoke-direct {p0, p2}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    #@5
    .line 2501
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@b
    .line 2506
    iput-object p3, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    #@d
    .line 2507
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@f
    const-string/jumbo v1, "close"

    #@12
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@15
    .line 2504
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    #@0
    .prologue
    .line 2512
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->close()V

    #@3
    .line 2513
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    #@5
    iget-object v1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    #@7
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    #@a
    .line 2514
    const/4 v0, 0x1

    #@b
    iput-boolean v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mProviderReleased:Z

    #@d
    .line 2516
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 2517
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@13
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@16
    .line 2511
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 2524
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2525
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 2528
    :cond_0
    iget-boolean v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mProviderReleased:Z

    #@b
    if-nez v0, :cond_1

    #@d
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 2531
    const-string/jumbo v0, "CursorWrapperInner"

    #@14
    const-string/jumbo v1, "Cursor finalized without prior close()"

    #@17
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1a
    .line 2532
    iget-object v0, p0, Landroid/content/ContentResolver$CursorWrapperInner;->this$0:Landroid/content/ContentResolver;

    #@1c
    iget-object v1, p0, Landroid/content/ContentResolver$CursorWrapperInner;->mContentProvider:Landroid/content/IContentProvider;

    #@1e
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    .line 2535
    :cond_1
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->finalize()V

    #@24
    .line 2522
    return-void

    #@25
    .line 2534
    :catchall_0
    move-exception v0

    #@26
    .line 2535
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->finalize()V

    #@29
    .line 2534
    throw v0
.end method
