.class public abstract Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.super Landroid/os/Binder;
.source "IRemoteViewsFactory.java"

# interfaces
.implements Lcom/android/internal/widget/IRemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/IRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.IRemoteViewsFactory"

.field static final TRANSACTION_getCount:I = 0x4

.field static final TRANSACTION_getItemId:I = 0x8

.field static final TRANSACTION_getLoadingView:I = 0x6

.field static final TRANSACTION_getViewAt:I = 0x5

.field static final TRANSACTION_getViewTypeCount:I = 0x7

.field static final TRANSACTION_hasStableIds:I = 0x9

.field static final TRANSACTION_isCreated:I = 0xa

.field static final TRANSACTION_onDataSetChanged:I = 0x1

.field static final TRANSACTION_onDataSetChangedAsync:I = 0x2

.field static final TRANSACTION_onDestroy:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "com.android.internal.widget.IRemoteViewsFactory"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;
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
    const-string/jumbo v1, "com.android.internal.widget.IRemoteViewsFactory"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/widget/IRemoteViewsFactory;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Lcom/android/internal/widget/IRemoteViewsFactory;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 145
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v7

    #@9
    return v7

    #@a
    .line 43
    :sswitch_0
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    #@d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    return v8

    #@11
    .line 48
    :sswitch_1
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    #@14
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 49
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDataSetChanged()V

    #@1a
    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    .line 51
    return v8

    #@1e
    .line 55
    :sswitch_2
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    #@21
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    .line 56
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDataSetChangedAsync()V

    #@27
    .line 57
    return v8

    #@28
    .line 61
    :sswitch_3
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    #@2b
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2e
    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_0

    #@34
    .line 64
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@36
    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@39
    move-result-object v1

    #@3a
    check-cast v1, Landroid/content/Intent;

    #@3c
    .line 69
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDestroy(Landroid/content/Intent;)V

    #@3f
    .line 70
    return v8

    #@40
    .line 67
    :cond_0
    const/4 v1, 0x0

    #@41
    .local v1, "_arg0":Landroid/content/Intent;
    goto :goto_0

    #@42
    .line 74
    .end local v1    # "_arg0":Landroid/content/Intent;
    :sswitch_4
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    #@45
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@48
    .line 75
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getCount()I

    #@4b
    move-result v2

    #@4c
    .line 76
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@4f
    .line 77
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@52
    .line 78
    return v8

    #@53
    .line 82
    .end local v2    # "_result":I
    :sswitch_5
    const-string/jumbo v9, "com.android.internal.widget.IRemoteViewsFactory"

    #@56
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@59
    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5c
    move-result v0

    #@5d
    .line 85
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getViewAt(I)Landroid/widget/RemoteViews;

    #@60
    move-result-object v3

    #@61
    .line 86
    .local v3, "_result":Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@64
    .line 87
    if-eqz v3, :cond_1

    #@66
    .line 88
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@69
    .line 89
    invoke-virtual {v3, p3, v8}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@6c
    .line 94
    :goto_1
    return v8

    #@6d
    .line 92
    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@70
    goto :goto_1

    #@71
    .line 98
    .end local v0    # "_arg0":I
    .end local v3    # "_result":Landroid/widget/RemoteViews;
    :sswitch_6
    const-string/jumbo v9, "com.android.internal.widget.IRemoteViewsFactory"

    #@74
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@77
    .line 99
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getLoadingView()Landroid/widget/RemoteViews;

    #@7a
    move-result-object v3

    #@7b
    .line 100
    .restart local v3    # "_result":Landroid/widget/RemoteViews;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7e
    .line 101
    if-eqz v3, :cond_2

    #@80
    .line 102
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    #@83
    .line 103
    invoke-virtual {v3, p3, v8}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@86
    .line 108
    :goto_2
    return v8

    #@87
    .line 106
    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@8a
    goto :goto_2

    #@8b
    .line 112
    .end local v3    # "_result":Landroid/widget/RemoteViews;
    :sswitch_7
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    #@8e
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@91
    .line 113
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getViewTypeCount()I

    #@94
    move-result v2

    #@95
    .line 114
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@98
    .line 115
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@9b
    .line 116
    return v8

    #@9c
    .line 120
    .end local v2    # "_result":I
    :sswitch_8
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    #@9f
    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a2
    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@a5
    move-result v0

    #@a6
    .line 123
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getItemId(I)J

    #@a9
    move-result-wide v4

    #@aa
    .line 124
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@ad
    .line 125
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@b0
    .line 126
    return v8

    #@b1
    .line 130
    .end local v0    # "_arg0":I
    .end local v4    # "_result":J
    :sswitch_9
    const-string/jumbo v9, "com.android.internal.widget.IRemoteViewsFactory"

    #@b4
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b7
    .line 131
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->hasStableIds()Z

    #@ba
    move-result v6

    #@bb
    .line 132
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@be
    .line 133
    if-eqz v6, :cond_3

    #@c0
    move v7, v8

    #@c1
    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@c4
    .line 134
    return v8

    #@c5
    .line 138
    .end local v6    # "_result":Z
    :sswitch_a
    const-string/jumbo v9, "com.android.internal.widget.IRemoteViewsFactory"

    #@c8
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@cb
    .line 139
    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->isCreated()Z

    #@ce
    move-result v6

    #@cf
    .line 140
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@d2
    .line 141
    if-eqz v6, :cond_4

    #@d4
    move v7, v8

    #@d5
    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@d8
    .line 142
    return v8

    #@d9
    .line 39
    nop

    #@da
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
