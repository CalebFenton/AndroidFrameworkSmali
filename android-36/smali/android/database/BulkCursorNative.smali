.class public abstract Landroid/database/BulkCursorNative;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Landroid/database/IBulkCursor;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.content.IBulkCursor"

    invoke-virtual {p0, p0, v0}, Landroid/database/BulkCursorNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/database/IBulkCursor;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    const-string v0, "android.content.IBulkCursor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/database/IBulkCursor;

    .line 50
    .local v0, "in":Landroid/database/IBulkCursor;
    if-eqz v0, :cond_f

    .line 51
    return-object v0

    .line 54
    :cond_f
    new-instance v1, Landroid/database/BulkCursorProxy;

    invoke-direct {v1, p0}, Landroid/database/BulkCursorProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 136
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const-string v0, "android.content.IBulkCursor"

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_8e

    .line 129
    goto/16 :goto_89

    .line 84
    :pswitch_8
    :try_start_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->close()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v1

    .line 118
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 120
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/database/BulkCursorNative;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 121
    .local v2, "returnExtras":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 123
    return v1

    .line 110
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "returnExtras":Landroid/os/Bundle;
    :pswitch_24
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 112
    .restart local v0    # "extras":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 114
    return v1

    .line 102
    .end local v0    # "extras":Landroid/os/Bundle;
    :pswitch_32
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, "position":I
    invoke-virtual {p0, v0}, Landroid/database/BulkCursorNative;->onMove(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    return v1

    .line 91
    .end local v0    # "position":I
    :pswitch_40
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    nop

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v0

    .line 94
    .local v0, "observer":Landroid/database/IContentObserver;
    invoke-virtual {p0, v0}, Landroid/database/BulkCursorNative;->requery(Landroid/database/IContentObserver;)I

    move-result v2

    .line 95
    .local v2, "count":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 98
    return v1

    .line 77
    .end local v0    # "observer":Landroid/database/IContentObserver;
    .end local v2    # "count":I
    :pswitch_5e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->deactivate()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v1

    .line 63
    :pswitch_68
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, "startPos":I
    invoke-virtual {p0, v0}, Landroid/database/BulkCursorNative;->getWindow(I)Landroid/database/CursorWindow;

    move-result-object v2

    .line 66
    .local v2, "window":Landroid/database/CursorWindow;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-nez v2, :cond_7d

    .line 68
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_83

    .line 70
    :cond_7d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v2, p3, v1}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_83} :catch_84

    .line 73
    :goto_83
    return v1

    .line 126
    .end local v0    # "startPos":I
    .end local v2    # "window":Landroid/database/CursorWindow;
    :catch_84
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3, v0}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 128
    return v1

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_68
        :pswitch_5e
        :pswitch_40
        :pswitch_32
        :pswitch_24
        :pswitch_12
        :pswitch_8
    .end packed-switch
.end method
