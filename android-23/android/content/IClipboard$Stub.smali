.class public abstract Landroid/content/IClipboard$Stub;
.super Landroid/os/Binder;
.source "IClipboard.java"

# interfaces
.implements Landroid/content/IClipboard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IClipboard$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IClipboard"

.field static final TRANSACTION_addPrimaryClipChangedListener:I = 0x5

.field static final TRANSACTION_getPrimaryClip:I = 0x2

.field static final TRANSACTION_getPrimaryClipDescription:I = 0x3

.field static final TRANSACTION_hasClipboardText:I = 0x7

.field static final TRANSACTION_hasPrimaryClip:I = 0x4

.field static final TRANSACTION_removePrimaryClipChangedListener:I = 0x6

.field static final TRANSACTION_setPrimaryClip:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.content.IClipboard"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/content/IClipboard$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.content.IClipboard"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/content/IClipboard;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/content/IClipboard;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/IClipboard$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/content/IClipboard$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
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
    const/4 v7, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    return v7

    #@a
    .line 47
    :sswitch_0
    const-string/jumbo v7, "android.content.IClipboard"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 48
    return v8

    #@11
    .line 52
    :sswitch_1
    const-string/jumbo v7, "android.content.IClipboard"

    #@14
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_0

    #@1d
    .line 55
    sget-object v7, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/content/ClipData;

    #@25
    .line 61
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    .line 62
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/content/IClipboard$Stub;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    #@2c
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2f
    .line 64
    return v8

    #@30
    .line 58
    .end local v3    # "_arg1":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    #@31
    .local v0, "_arg0":Landroid/content/ClipData;
    goto :goto_0

    #@32
    .line 68
    .end local v0    # "_arg0":Landroid/content/ClipData;
    :sswitch_2
    const-string/jumbo v9, "android.content.IClipboard"

    #@35
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 71
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/IClipboard$Stub;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;

    #@3f
    move-result-object v4

    #@40
    .line 72
    .local v4, "_result":Landroid/content/ClipData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@43
    .line 73
    if-eqz v4, :cond_1

    #@45
    .line 74
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@48
    .line 75
    invoke-virtual {v4, p3, v8}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    #@4b
    .line 80
    :goto_1
    return v8

    #@4c
    .line 78
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    goto :goto_1

    #@50
    .line 84
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Landroid/content/ClipData;
    :sswitch_3
    const-string/jumbo v9, "android.content.IClipboard"

    #@53
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@56
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    .line 87
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/IClipboard$Stub;->getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;

    #@5d
    move-result-object v5

    #@5e
    .line 88
    .local v5, "_result":Landroid/content/ClipDescription;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@61
    .line 89
    if-eqz v5, :cond_2

    #@63
    .line 90
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@66
    .line 91
    invoke-virtual {v5, p3, v8}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    #@69
    .line 96
    :goto_2
    return v8

    #@6a
    .line 94
    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    goto :goto_2

    #@6e
    .line 100
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Landroid/content/ClipDescription;
    :sswitch_4
    const-string/jumbo v9, "android.content.IClipboard"

    #@71
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    .line 103
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/IClipboard$Stub;->hasPrimaryClip(Ljava/lang/String;)Z

    #@7b
    move-result v6

    #@7c
    .line 104
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7f
    .line 105
    if-eqz v6, :cond_3

    #@81
    move v7, v8

    #@82
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@85
    .line 106
    return v8

    #@86
    .line 110
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_5
    const-string/jumbo v7, "android.content.IClipboard"

    #@89
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8c
    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@8f
    move-result-object v7

    #@90
    invoke-static {v7}, Landroid/content/IOnPrimaryClipChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IOnPrimaryClipChangedListener;

    #@93
    move-result-object v1

    #@94
    .line 114
    .local v1, "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@97
    move-result-object v3

    #@98
    .line 115
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/content/IClipboard$Stub;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V

    #@9b
    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@9e
    .line 117
    return v8

    #@9f
    .line 121
    .end local v1    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v7, "android.content.IClipboard"

    #@a2
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a5
    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@a8
    move-result-object v7

    #@a9
    invoke-static {v7}, Landroid/content/IOnPrimaryClipChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IOnPrimaryClipChangedListener;

    #@ac
    move-result-object v1

    #@ad
    .line 124
    .restart local v1    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    invoke-virtual {p0, v1}, Landroid/content/IClipboard$Stub;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V

    #@b0
    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@b3
    .line 126
    return v8

    #@b4
    .line 130
    .end local v1    # "_arg0":Landroid/content/IOnPrimaryClipChangedListener;
    :sswitch_7
    const-string/jumbo v9, "android.content.IClipboard"

    #@b7
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ba
    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@bd
    move-result-object v2

    #@be
    .line 133
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/content/IClipboard$Stub;->hasClipboardText(Ljava/lang/String;)Z

    #@c1
    move-result v6

    #@c2
    .line 134
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@c5
    .line 135
    if-eqz v6, :cond_4

    #@c7
    move v7, v8

    #@c8
    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@cb
    .line 136
    return v8

    #@cc
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
