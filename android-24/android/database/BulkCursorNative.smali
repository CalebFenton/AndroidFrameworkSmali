.class public abstract Landroid/database/BulkCursorNative;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Landroid/database/IBulkCursor;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 36
    const-string/jumbo v0, "android.content.IBulkCursor"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/database/BulkCursorNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/database/IBulkCursor;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    if-nez p0, :cond_0

    #@3
    .line 46
    return-object v1

    #@4
    .line 48
    :cond_0
    const-string/jumbo v1, "android.content.IBulkCursor"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/database/IBulkCursor;

    #@d
    .line 49
    .local v0, "in":Landroid/database/IBulkCursor;
    if-eqz v0, :cond_1

    #@f
    .line 50
    return-object v0

    #@10
    .line 53
    :cond_1
    new-instance v1, Landroid/database/BulkCursorProxy;

    #@12
    invoke-direct {v1, p0}, Landroid/database/BulkCursorProxy;-><init>(Landroid/os/IBinder;)V

    #@15
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 135
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 60
    packed-switch p1, :pswitch_data_0

    #@4
    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v8

    #@8
    return v8

    #@9
    .line 62
    :pswitch_0
    :try_start_0
    const-string/jumbo v8, "android.content.IBulkCursor"

    #@c
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f
    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v6

    #@13
    .line 64
    .local v6, "startPos":I
    invoke-virtual {p0, v6}, Landroid/database/BulkCursorNative;->getWindow(I)Landroid/database/CursorWindow;

    #@16
    move-result-object v7

    #@17
    .line 65
    .local v7, "window":Landroid/database/CursorWindow;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1a
    .line 66
    if-nez v7, :cond_0

    #@1c
    .line 67
    const/4 v8, 0x0

    #@1d
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 72
    :goto_0
    return v9

    #@21
    .line 69
    :cond_0
    const/4 v8, 0x1

    #@22
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 70
    const/4 v8, 0x1

    #@26
    invoke-virtual {v7, p3, v8}, Landroid/database/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    goto :goto_0

    #@2a
    .line 125
    .end local v6    # "startPos":I
    .end local v7    # "window":Landroid/database/CursorWindow;
    :catch_0
    move-exception v1

    #@2b
    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p3, v1}, Landroid/database/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    #@2e
    .line 127
    return v9

    #@2f
    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string/jumbo v8, "android.content.IBulkCursor"

    #@32
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 77
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->deactivate()V

    #@38
    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3b
    .line 79
    return v9

    #@3c
    .line 83
    :pswitch_2
    const-string/jumbo v8, "android.content.IBulkCursor"

    #@3f
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@42
    .line 84
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->close()V

    #@45
    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    .line 86
    return v9

    #@49
    .line 90
    :pswitch_3
    const-string/jumbo v8, "android.content.IBulkCursor"

    #@4c
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4f
    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@52
    move-result-object v8

    #@53
    invoke-static {v8}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    #@56
    move-result-object v3

    #@57
    .line 93
    .local v3, "observer":Landroid/database/IContentObserver;
    invoke-virtual {p0, v3}, Landroid/database/BulkCursorNative;->requery(Landroid/database/IContentObserver;)I

    #@5a
    move-result v0

    #@5b
    .line 94
    .local v0, "count":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@5e
    .line 95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@61
    .line 96
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    #@64
    move-result-object v8

    #@65
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@68
    .line 97
    return v9

    #@69
    .line 101
    .end local v0    # "count":I
    .end local v3    # "observer":Landroid/database/IContentObserver;
    :pswitch_4
    const-string/jumbo v8, "android.content.IBulkCursor"

    #@6c
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6f
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@72
    move-result v4

    #@73
    .line 103
    .local v4, "position":I
    invoke-virtual {p0, v4}, Landroid/database/BulkCursorNative;->onMove(I)V

    #@76
    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@79
    .line 105
    return v9

    #@7a
    .line 109
    .end local v4    # "position":I
    :pswitch_5
    const-string/jumbo v8, "android.content.IBulkCursor"

    #@7d
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80
    .line 110
    invoke-virtual {p0}, Landroid/database/BulkCursorNative;->getExtras()Landroid/os/Bundle;

    #@83
    move-result-object v2

    #@84
    .line 111
    .local v2, "extras":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@87
    .line 112
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@8a
    .line 113
    return v9

    #@8b
    .line 117
    .end local v2    # "extras":Landroid/os/Bundle;
    :pswitch_6
    const-string/jumbo v8, "android.content.IBulkCursor"

    #@8e
    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@91
    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@94
    move-result-object v2

    #@95
    .line 119
    .restart local v2    # "extras":Landroid/os/Bundle;
    invoke-virtual {p0, v2}, Landroid/database/BulkCursorNative;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    #@98
    move-result-object v5

    #@99
    .line 120
    .local v5, "returnExtras":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9c
    .line 121
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@9f
    .line 122
    return v9

    #@a0
    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method
