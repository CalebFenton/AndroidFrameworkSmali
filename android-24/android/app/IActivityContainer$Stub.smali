.class public abstract Landroid/app/IActivityContainer$Stub;
.super Landroid/os/Binder;
.source "IActivityContainer.java"

# interfaces
.implements Landroid/app/IActivityContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityContainer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityContainer"

.field static final TRANSACTION_attachToDisplay:I = 0x1

.field static final TRANSACTION_getDisplayId:I = 0x5

.field static final TRANSACTION_getStackId:I = 0x6

.field static final TRANSACTION_injectEvent:I = 0x7

.field static final TRANSACTION_release:I = 0x8

.field static final TRANSACTION_setSurface:I = 0x2

.field static final TRANSACTION_startActivity:I = 0x3

.field static final TRANSACTION_startActivityIntentSender:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.app.IActivityContainer"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityContainer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 24
    if-nez p0, :cond_0

    #@3
    .line 25
    return-object v1

    #@4
    .line 27
    :cond_0
    const-string/jumbo v1, "android.app.IActivityContainer"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IActivityContainer;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/app/IActivityContainer;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IActivityContainer$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IActivityContainer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v10

    #@7
    return v10

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v10, "android.app.IActivityContainer"

    #@b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 44
    const/4 v10, 0x1

    #@f
    return v10

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v10, "android.app.IActivityContainer"

    #@13
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/app/IActivityContainer$Stub;->attachToDisplay(I)V

    #@1d
    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@20
    .line 53
    const/4 v10, 0x1

    #@21
    return v10

    #@22
    .line 57
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v10, "android.app.IActivityContainer"

    #@25
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@28
    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2b
    move-result v10

    #@2c
    if-eqz v10, :cond_0

    #@2e
    .line 60
    sget-object v10, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    #@30
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    check-cast v4, Landroid/view/Surface;

    #@36
    .line 66
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@39
    move-result v5

    #@3a
    .line 68
    .local v5, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3d
    move-result v6

    #@3e
    .line 70
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v7

    #@42
    .line 71
    .local v7, "_arg3":I
    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/app/IActivityContainer$Stub;->setSurface(Landroid/view/Surface;III)V

    #@45
    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@48
    .line 73
    const/4 v10, 0x1

    #@49
    return v10

    #@4a
    .line 63
    .end local v5    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":I
    :cond_0
    const/4 v4, 0x0

    #@4b
    .local v4, "_arg0":Landroid/view/Surface;
    goto :goto_0

    #@4c
    .line 77
    .end local v4    # "_arg0":Landroid/view/Surface;
    :sswitch_3
    const-string/jumbo v10, "android.app.IActivityContainer"

    #@4f
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@55
    move-result v10

    #@56
    if-eqz v10, :cond_1

    #@58
    .line 80
    sget-object v10, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5a
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5d
    move-result-object v2

    #@5e
    check-cast v2, Landroid/content/Intent;

    #@60
    .line 85
    :goto_1
    invoke-virtual {p0, v2}, Landroid/app/IActivityContainer$Stub;->startActivity(Landroid/content/Intent;)I

    #@63
    move-result v8

    #@64
    .line 86
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@67
    .line 87
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@6a
    .line 88
    const/4 v10, 0x1

    #@6b
    return v10

    #@6c
    .line 83
    .end local v8    # "_result":I
    :cond_1
    const/4 v2, 0x0

    #@6d
    .local v2, "_arg0":Landroid/content/Intent;
    goto :goto_1

    #@6e
    .line 92
    .end local v2    # "_arg0":Landroid/content/Intent;
    :sswitch_4
    const-string/jumbo v10, "android.app.IActivityContainer"

    #@71
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@77
    move-result-object v10

    #@78
    invoke-static {v10}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    #@7b
    move-result-object v1

    #@7c
    .line 95
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p0, v1}, Landroid/app/IActivityContainer$Stub;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    #@7f
    move-result v8

    #@80
    .line 96
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@83
    .line 97
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@86
    .line 98
    const/4 v10, 0x1

    #@87
    return v10

    #@88
    .line 102
    .end local v1    # "_arg0":Landroid/content/IIntentSender;
    .end local v8    # "_result":I
    :sswitch_5
    const-string/jumbo v10, "android.app.IActivityContainer"

    #@8b
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e
    .line 103
    invoke-virtual {p0}, Landroid/app/IActivityContainer$Stub;->getDisplayId()I

    #@91
    move-result v8

    #@92
    .line 104
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@95
    .line 105
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@98
    .line 106
    const/4 v10, 0x1

    #@99
    return v10

    #@9a
    .line 110
    .end local v8    # "_result":I
    :sswitch_6
    const-string/jumbo v10, "android.app.IActivityContainer"

    #@9d
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a0
    .line 111
    invoke-virtual {p0}, Landroid/app/IActivityContainer$Stub;->getStackId()I

    #@a3
    move-result v8

    #@a4
    .line 112
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a7
    .line 113
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 114
    const/4 v10, 0x1

    #@ab
    return v10

    #@ac
    .line 118
    .end local v8    # "_result":I
    :sswitch_7
    const-string/jumbo v10, "android.app.IActivityContainer"

    #@af
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b2
    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b5
    move-result v10

    #@b6
    if-eqz v10, :cond_2

    #@b8
    .line 121
    sget-object v10, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@ba
    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@bd
    move-result-object v3

    #@be
    check-cast v3, Landroid/view/InputEvent;

    #@c0
    .line 126
    :goto_2
    invoke-virtual {p0, v3}, Landroid/app/IActivityContainer$Stub;->injectEvent(Landroid/view/InputEvent;)Z

    #@c3
    move-result v9

    #@c4
    .line 127
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c7
    .line 128
    if-eqz v9, :cond_3

    #@c9
    const/4 v10, 0x1

    #@ca
    :goto_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@cd
    .line 129
    const/4 v10, 0x1

    #@ce
    return v10

    #@cf
    .line 124
    .end local v9    # "_result":Z
    :cond_2
    const/4 v3, 0x0

    #@d0
    .local v3, "_arg0":Landroid/view/InputEvent;
    goto :goto_2

    #@d1
    .line 128
    .end local v3    # "_arg0":Landroid/view/InputEvent;
    .restart local v9    # "_result":Z
    :cond_3
    const/4 v10, 0x0

    #@d2
    goto :goto_3

    #@d3
    .line 133
    .end local v9    # "_result":Z
    :sswitch_8
    const-string/jumbo v10, "android.app.IActivityContainer"

    #@d6
    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d9
    .line 134
    invoke-virtual {p0}, Landroid/app/IActivityContainer$Stub;->release()V

    #@dc
    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    .line 136
    const/4 v10, 0x1

    #@e0
    return v10

    #@e1
    .line 39
    nop

    #@e2
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
