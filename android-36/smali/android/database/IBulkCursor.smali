.class public interface abstract Landroid/database/IBulkCursor;
.super Ljava/lang/Object;
.source "IBulkCursor.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final greylist-max-o CLOSE_TRANSACTION:I = 0x7

.field public static final greylist-max-o DEACTIVATE_TRANSACTION:I = 0x2

.field public static final greylist-max-o GET_CURSOR_WINDOW_TRANSACTION:I = 0x1

.field public static final greylist-max-o GET_EXTRAS_TRANSACTION:I = 0x5

.field public static final greylist-max-o ON_MOVE_TRANSACTION:I = 0x4

.field public static final greylist-max-o REQUERY_TRANSACTION:I = 0x3

.field public static final greylist-max-o RESPOND_TRANSACTION:I = 0x6

.field public static final greylist-max-o descriptor:Ljava/lang/String; = "android.content.IBulkCursor"


# virtual methods
.method public abstract greylist-max-o close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o deactivate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getExtras()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o getWindow(I)Landroid/database/CursorWindow;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onMove(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o requery(Landroid/database/IContentObserver;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
