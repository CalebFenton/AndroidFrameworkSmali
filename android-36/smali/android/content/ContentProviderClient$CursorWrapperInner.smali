.class final Landroid/content/ContentProviderClient$CursorWrapperInner;
.super Landroid/database/CrossProcessCursorWrapper;
.source "ContentProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorWrapperInner"
.end annotation


# instance fields
.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;


# direct methods
.method constructor blacklist <init>(Landroid/content/ContentProviderClient;Landroid/database/Cursor;)V
    .registers 4
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 697
    invoke-direct {p0, p2}, Landroid/database/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 694
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object p1

    iput-object p1, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 698
    iget-object p1, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v0, "CursorWrapperInner.close"

    invoke-virtual {p1, v0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 699
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 703
    iget-object v0, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 704
    invoke-super {p0}, Landroid/database/CrossProcessCursorWrapper;->close()V

    .line 705
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 710
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 711
    iget-object v0, p0, Landroid/content/ContentProviderClient$CursorWrapperInner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 714
    :cond_9
    invoke-virtual {p0}, Landroid/content/ContentProviderClient$CursorWrapperInner;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 716
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 717
    nop

    .line 718
    return-void

    .line 716
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 717
    throw v0
.end method
