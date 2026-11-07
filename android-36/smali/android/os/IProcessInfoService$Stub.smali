.class public abstract Landroid/os/IProcessInfoService$Stub;
.super Landroid/os/Binder;
.source "IProcessInfoService.java"

# interfaces
.implements Landroid/os/IProcessInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IProcessInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IProcessInfoService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IProcessInfoService"

.field static final greylist-max-o TRANSACTION_getProcessStatesAndOomScoresFromPids:I = 0x2

.field static final greylist-max-o TRANSACTION_getProcessStatesFromPids:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "android.os.IProcessInfoService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IProcessInfoService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IProcessInfoService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "android.os.IProcessInfoService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IProcessInfoService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Landroid/os/IProcessInfoService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Landroid/os/IProcessInfoService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IProcessInfoService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 68
    packed-switch p0, :pswitch_data_c

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 76
    :pswitch_5
    const-string v0, "getProcessStatesAndOomScoresFromPids"

    return-object v0

    .line 72
    :pswitch_8
    const-string v0, "getProcessStatesFromPids"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 87
    invoke-static {p1}, Landroid/os/IProcessInfoService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    const-string v0, "android.os.IProcessInfoService"

    .line 92
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 93
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return v1

    .line 99
    :cond_16
    const-string v2, "Array too large: "

    const v3, 0xf4240

    packed-switch p1, :pswitch_data_b2

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 123
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 125
    .local v4, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 126
    .local v5, "_arg1_length":I
    if-gt v5, v3, :cond_66

    .line 128
    if-gez v5, :cond_31

    .line 129
    const/4 v6, 0x0

    .local v6, "_arg1":[I
    goto :goto_33

    .line 131
    .end local v6    # "_arg1":[I
    :cond_31
    new-array v6, v5, [I

    .line 134
    .restart local v6    # "_arg1":[I
    :goto_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 135
    .local v7, "_arg2_length":I
    if-gt v7, v3, :cond_4f

    .line 137
    if-gez v7, :cond_3d

    .line 138
    const/4 v2, 0x0

    .local v2, "_arg2":[I
    goto :goto_3f

    .line 140
    .end local v2    # "_arg2":[I
    :cond_3d
    new-array v2, v7, [I

    .line 142
    .restart local v2    # "_arg2":[I
    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v4, v6, v2}, Landroid/os/IProcessInfoService$Stub;->getProcessStatesAndOomScoresFromPids([I[I[I)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 146
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 147
    goto :goto_9a

    .line 136
    .end local v2    # "_arg2":[I
    :cond_4f
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    .end local v6    # "_arg1":[I
    .end local v7    # "_arg2_length":I
    :cond_66
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    .end local v4    # "_arg0":[I
    .end local v5    # "_arg1_length":I
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 106
    .restart local v4    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 107
    .restart local v5    # "_arg1_length":I
    if-gt v5, v3, :cond_9b

    .line 109
    if-gez v5, :cond_8b

    .line 110
    const/4 v2, 0x0

    .local v2, "_arg1":[I
    goto :goto_8d

    .line 112
    .end local v2    # "_arg1":[I
    :cond_8b
    new-array v2, v5, [I

    .line 114
    .restart local v2    # "_arg1":[I
    :goto_8d
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-virtual {p0, v4, v2}, Landroid/os/IProcessInfoService$Stub;->getProcessStatesFromPids([I[I)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 118
    nop

    .line 154
    .end local v2    # "_arg1":[I
    .end local v4    # "_arg0":[I
    .end local v5    # "_arg1_length":I
    :goto_9a
    return v1

    .line 108
    .restart local v4    # "_arg0":[I
    .restart local v5    # "_arg1_length":I
    :cond_9b
    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_23
    .end packed-switch
.end method
