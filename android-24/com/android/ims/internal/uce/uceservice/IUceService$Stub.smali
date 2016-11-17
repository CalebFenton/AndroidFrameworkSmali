.class public abstract Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;
.super Landroid/os/Binder;
.source "IUceService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/uceservice/IUceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/uceservice/IUceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.uceservice.IUceService"

.field static final TRANSACTION_createOptionsService:I = 0x4

.field static final TRANSACTION_createPresenceService:I = 0x6

.field static final TRANSACTION_destroyOptionsService:I = 0x5

.field static final TRANSACTION_destroyPresenceService:I = 0x7

.field static final TRANSACTION_getOptionsService:I = 0xa

.field static final TRANSACTION_getPresenceService:I = 0x9

.field static final TRANSACTION_getServiceStatus:I = 0x8

.field static final TRANSACTION_isServiceStarted:I = 0x3

.field static final TRANSACTION_startService:I = 0x1

.field static final TRANSACTION_stopService:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "com.android.ims.internal.uce.uceservice.IUceService"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    if-nez p0, :cond_0

    #@3
    .line 27
    return-object v1

    #@4
    .line 29
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.uce.uceservice.IUceService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/ims/internal/uce/uceservice/IUceService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Lcom/android/ims/internal/uce/uceservice/IUceService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 37
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 165
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v9

    #@7
    return v9

    #@8
    .line 45
    :sswitch_0
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    #@b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e
    .line 46
    const/4 v9, 0x1

    #@f
    return v9

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    #@13
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v9

    #@1a
    invoke-static {v9}, Lcom/android/ims/internal/uce/uceservice/IUceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/uceservice/IUceListener;

    #@1d
    move-result-object v3

    #@1e
    .line 53
    .local v3, "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    invoke-virtual {p0, v3}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->startService(Lcom/android/ims/internal/uce/uceservice/IUceListener;)Z

    #@21
    move-result v8

    #@22
    .line 54
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 55
    if-eqz v8, :cond_0

    #@27
    const/4 v9, 0x1

    #@28
    :goto_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 56
    const/4 v9, 0x1

    #@2c
    return v9

    #@2d
    .line 55
    :cond_0
    const/4 v9, 0x0

    #@2e
    goto :goto_0

    #@2f
    .line 60
    .end local v3    # "_arg0":Lcom/android/ims/internal/uce/uceservice/IUceListener;
    .end local v8    # "_result":Z
    :sswitch_2
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    #@32
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@35
    .line 61
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->stopService()Z

    #@38
    move-result v8

    #@39
    .line 62
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c
    .line 63
    if-eqz v8, :cond_1

    #@3e
    const/4 v9, 0x1

    #@3f
    :goto_1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@42
    .line 64
    const/4 v9, 0x1

    #@43
    return v9

    #@44
    .line 63
    :cond_1
    const/4 v9, 0x0

    #@45
    goto :goto_1

    #@46
    .line 68
    .end local v8    # "_result":Z
    :sswitch_3
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    #@49
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4c
    .line 69
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->isServiceStarted()Z

    #@4f
    move-result v8

    #@50
    .line 70
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@53
    .line 71
    if-eqz v8, :cond_2

    #@55
    const/4 v9, 0x1

    #@56
    :goto_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 72
    const/4 v9, 0x1

    #@5a
    return v9

    #@5b
    .line 71
    :cond_2
    const/4 v9, 0x0

    #@5c
    goto :goto_2

    #@5d
    .line 76
    .end local v8    # "_result":Z
    :sswitch_4
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    #@60
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@63
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@66
    move-result-object v9

    #@67
    invoke-static {v9}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;

    #@6a
    move-result-object v1

    #@6b
    .line 80
    .local v1, "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v9

    #@6f
    if-eqz v9, :cond_3

    #@71
    .line 81
    sget-object v9, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    #@73
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@76
    move-result-object v4

    #@77
    check-cast v4, Lcom/android/ims/internal/uce/common/UceLong;

    #@79
    .line 86
    :goto_3
    invoke-virtual {p0, v1, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createOptionsService(Lcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    #@7c
    move-result v5

    #@7d
    .line 87
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@80
    .line 88
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@83
    .line 89
    if-eqz v4, :cond_4

    #@85
    .line 90
    const/4 v9, 0x1

    #@86
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@89
    .line 91
    const/4 v9, 0x1

    #@8a
    invoke-virtual {v4, p3, v9}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    #@8d
    .line 96
    :goto_4
    const/4 v9, 0x1

    #@8e
    return v9

    #@8f
    .line 84
    .end local v5    # "_result":I
    :cond_3
    const/4 v4, 0x0

    #@90
    .local v4, "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_3

    #@91
    .line 94
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v5    # "_result":I
    :cond_4
    const/4 v9, 0x0

    #@92
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@95
    goto :goto_4

    #@96
    .line 100
    .end local v1    # "_arg0":Lcom/android/ims/internal/uce/options/IOptionsListener;
    .end local v5    # "_result":I
    :sswitch_5
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    #@99
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@9c
    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@9f
    move-result v0

    #@a0
    .line 103
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyOptionsService(I)V

    #@a3
    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6
    .line 105
    const/4 v9, 0x1

    #@a7
    return v9

    #@a8
    .line 109
    .end local v0    # "_arg0":I
    :sswitch_6
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    #@ab
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ae
    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@b1
    move-result-object v9

    #@b2
    invoke-static {v9}, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/presence/IPresenceListener;

    #@b5
    move-result-object v2

    #@b6
    .line 113
    .local v2, "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b9
    move-result v9

    #@ba
    if-eqz v9, :cond_5

    #@bc
    .line 114
    sget-object v9, Lcom/android/ims/internal/uce/common/UceLong;->CREATOR:Landroid/os/Parcelable$Creator;

    #@be
    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c1
    move-result-object v4

    #@c2
    check-cast v4, Lcom/android/ims/internal/uce/common/UceLong;

    #@c4
    .line 119
    :goto_5
    invoke-virtual {p0, v2, v4}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->createPresenceService(Lcom/android/ims/internal/uce/presence/IPresenceListener;Lcom/android/ims/internal/uce/common/UceLong;)I

    #@c7
    move-result v5

    #@c8
    .line 120
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@cb
    .line 121
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@ce
    .line 122
    if-eqz v4, :cond_6

    #@d0
    .line 123
    const/4 v9, 0x1

    #@d1
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@d4
    .line 124
    const/4 v9, 0x1

    #@d5
    invoke-virtual {v4, p3, v9}, Lcom/android/ims/internal/uce/common/UceLong;->writeToParcel(Landroid/os/Parcel;I)V

    #@d8
    .line 129
    :goto_6
    const/4 v9, 0x1

    #@d9
    return v9

    #@da
    .line 117
    .end local v5    # "_result":I
    :cond_5
    const/4 v4, 0x0

    #@db
    .restart local v4    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    goto :goto_5

    #@dc
    .line 127
    .end local v4    # "_arg1":Lcom/android/ims/internal/uce/common/UceLong;
    .restart local v5    # "_result":I
    :cond_6
    const/4 v9, 0x0

    #@dd
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@e0
    goto :goto_6

    #@e1
    .line 133
    .end local v2    # "_arg0":Lcom/android/ims/internal/uce/presence/IPresenceListener;
    .end local v5    # "_result":I
    :sswitch_7
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    #@e4
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e7
    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@ea
    move-result v0

    #@eb
    .line 136
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->destroyPresenceService(I)V

    #@ee
    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@f1
    .line 138
    const/4 v9, 0x1

    #@f2
    return v9

    #@f3
    .line 142
    .end local v0    # "_arg0":I
    :sswitch_8
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    #@f6
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@f9
    .line 143
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getServiceStatus()Z

    #@fc
    move-result v8

    #@fd
    .line 144
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@100
    .line 145
    if-eqz v8, :cond_7

    #@102
    const/4 v9, 0x1

    #@103
    :goto_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@106
    .line 146
    const/4 v9, 0x1

    #@107
    return v9

    #@108
    .line 145
    :cond_7
    const/4 v9, 0x0

    #@109
    goto :goto_7

    #@10a
    .line 150
    .end local v8    # "_result":Z
    :sswitch_9
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    #@10d
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@110
    .line 151
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getPresenceService()Lcom/android/ims/internal/uce/presence/IPresenceService;

    #@113
    move-result-object v7

    #@114
    .line 152
    .local v7, "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@117
    .line 153
    if-eqz v7, :cond_8

    #@119
    invoke-interface {v7}, Lcom/android/ims/internal/uce/presence/IPresenceService;->asBinder()Landroid/os/IBinder;

    #@11c
    move-result-object v9

    #@11d
    :goto_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@120
    .line 154
    const/4 v9, 0x1

    #@121
    return v9

    #@122
    .line 153
    :cond_8
    const/4 v9, 0x0

    #@123
    goto :goto_8

    #@124
    .line 158
    .end local v7    # "_result":Lcom/android/ims/internal/uce/presence/IPresenceService;
    :sswitch_a
    const-string/jumbo v9, "com.android.ims.internal.uce.uceservice.IUceService"

    #@127
    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12a
    .line 159
    invoke-virtual {p0}, Lcom/android/ims/internal/uce/uceservice/IUceService$Stub;->getOptionsService()Lcom/android/ims/internal/uce/options/IOptionsService;

    #@12d
    move-result-object v6

    #@12e
    .line 160
    .local v6, "_result":Lcom/android/ims/internal/uce/options/IOptionsService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@131
    .line 161
    if-eqz v6, :cond_9

    #@133
    invoke-interface {v6}, Lcom/android/ims/internal/uce/options/IOptionsService;->asBinder()Landroid/os/IBinder;

    #@136
    move-result-object v9

    #@137
    :goto_9
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@13a
    .line 162
    const/4 v9, 0x1

    #@13b
    return v9

    #@13c
    .line 161
    :cond_9
    const/4 v9, 0x0

    #@13d
    goto :goto_9

    #@13e
    .line 41
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
