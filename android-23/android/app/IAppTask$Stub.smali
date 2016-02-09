.class public abstract Landroid/app/IAppTask$Stub;
.super Landroid/os/Binder;
.source "IAppTask.java"

# interfaces
.implements Landroid/app/IAppTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAppTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAppTask$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAppTask"

.field static final TRANSACTION_finishAndRemoveTask:I = 0x1

.field static final TRANSACTION_getTaskInfo:I = 0x2

.field static final TRANSACTION_moveToFront:I = 0x3

.field static final TRANSACTION_setExcludeFromRecents:I = 0x5

.field static final TRANSACTION_startActivity:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "android.app.IAppTask"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/app/IAppTask$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAppTask;
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
    const-string/jumbo v1, "android.app.IAppTask"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/app/IAppTask;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Landroid/app/IAppTask;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IAppTask$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/app/IAppTask$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 43
    :sswitch_0
    const-string/jumbo v0, "android.app.IAppTask"

    #@d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    return v9

    #@11
    .line 48
    :sswitch_1
    const-string/jumbo v0, "android.app.IAppTask"

    #@14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@17
    .line 49
    invoke-virtual {p0}, Landroid/app/IAppTask$Stub;->finishAndRemoveTask()V

    #@1a
    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d
    .line 51
    return v9

    #@1e
    .line 55
    :sswitch_2
    const-string/jumbo v0, "android.app.IAppTask"

    #@21
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24
    .line 56
    invoke-virtual {p0}, Landroid/app/IAppTask$Stub;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    #@27
    move-result-object v8

    #@28
    .line 57
    .local v8, "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b
    .line 58
    if-eqz v8, :cond_0

    #@2d
    .line 59
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    #@30
    .line 60
    invoke-virtual {v8, p3, v9}, Landroid/app/ActivityManager$RecentTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@33
    .line 65
    :goto_0
    return v9

    #@34
    .line 63
    :cond_0
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    #@37
    goto :goto_0

    #@38
    .line 69
    .end local v8    # "_result":Landroid/app/ActivityManager$RecentTaskInfo;
    :sswitch_3
    const-string/jumbo v0, "android.app.IAppTask"

    #@3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3e
    .line 70
    invoke-virtual {p0}, Landroid/app/IAppTask$Stub;->moveToFront()V

    #@41
    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@44
    .line 72
    return v9

    #@45
    .line 76
    :sswitch_4
    const-string/jumbo v0, "android.app.IAppTask"

    #@48
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@4b
    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@4e
    move-result-object v1

    #@4f
    .line 80
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    .line 82
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@56
    move-result v0

    #@57
    if-eqz v0, :cond_1

    #@59
    .line 83
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5b
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5e
    move-result-object v3

    #@5f
    check-cast v3, Landroid/content/Intent;

    #@61
    .line 89
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 91
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@68
    move-result v0

    #@69
    if-eqz v0, :cond_2

    #@6b
    .line 92
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@6d
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@70
    move-result-object v5

    #@71
    check-cast v5, Landroid/os/Bundle;

    #@73
    :goto_2
    move-object v0, p0

    #@74
    .line 97
    invoke-virtual/range {v0 .. v5}, Landroid/app/IAppTask$Stub;->startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I

    #@77
    move-result v7

    #@78
    .line 98
    .local v7, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@7b
    .line 99
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    #@7e
    .line 100
    return v9

    #@7f
    .line 86
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v7    # "_result":I
    :cond_1
    const/4 v3, 0x0

    #@80
    .local v3, "_arg2":Landroid/content/Intent;
    goto :goto_1

    #@81
    .line 95
    .end local v3    # "_arg2":Landroid/content/Intent;
    .restart local v4    # "_arg3":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    #@82
    .local v5, "_arg4":Landroid/os/Bundle;
    goto :goto_2

    #@83
    .line 104
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v0, "android.app.IAppTask"

    #@86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@89
    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@8c
    move-result v0

    #@8d
    if-eqz v0, :cond_3

    #@8f
    const/4 v6, 0x1

    #@90
    .line 107
    .local v6, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v6}, Landroid/app/IAppTask$Stub;->setExcludeFromRecents(Z)V

    #@93
    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@96
    .line 109
    return v9

    #@97
    .line 106
    .end local v6    # "_arg0":Z
    :cond_3
    const/4 v6, 0x0

    #@98
    .restart local v6    # "_arg0":Z
    goto :goto_3

    #@99
    .line 39
    nop

    #@9a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
