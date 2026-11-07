.class public abstract Landroid/app/trust/ITrustListener$Stub;
.super Landroid/os/Binder;
.source "ITrustListener.java"

# interfaces
.implements Landroid/app/trust/ITrustListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/trust/ITrustListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/ITrustListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.trust.ITrustListener"

.field static final blacklist TRANSACTION_onEnabledTrustAgentsChanged:I = 0x1

.field static final blacklist TRANSACTION_onIsActiveUnlockRunningChanged:I = 0x5

.field static final greylist-max-o TRANSACTION_onTrustChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onTrustError:I = 0x4

.field static final greylist-max-o TRANSACTION_onTrustManagedChanged:I = 0x3


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.app.trust.ITrustListener"

    invoke-virtual {p0, p0, v0}, Landroid/app/trust/ITrustListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.app.trust.ITrustListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/trust/ITrustListener;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/app/trust/ITrustListener;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/app/trust/ITrustListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/trust/ITrustListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_1a

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 91
    :pswitch_5
    const-string/jumbo v0, "onIsActiveUnlockRunningChanged"

    return-object v0

    .line 87
    :pswitch_9
    const-string/jumbo v0, "onTrustError"

    return-object v0

    .line 83
    :pswitch_d
    const-string/jumbo v0, "onTrustManagedChanged"

    return-object v0

    .line 79
    :pswitch_11
    const-string/jumbo v0, "onTrustChanged"

    return-object v0

    .line 75
    :pswitch_15
    const-string/jumbo v0, "onEnabledTrustAgentsChanged"

    return-object v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 273
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 102
    invoke-static {p1}, Landroid/app/trust/ITrustListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const-string v0, "android.app.trust.ITrustListener"

    .line 107
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v1

    .line 114
    :cond_16
    packed-switch p1, :pswitch_data_78

    .line 170
    move-object v4, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 161
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 163
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustListener$Stub;->onIsActiveUnlockRunningChanged(ZI)V

    .line 166
    move-object v4, p0

    goto :goto_77

    .line 153
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_2f
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 154
    .local v2, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 155
    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustListener$Stub;->onTrustError(Ljava/lang/CharSequence;)V

    .line 156
    move-object v4, p0

    goto :goto_77

    .line 143
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 145
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-virtual {p0, v2, v3}, Landroid/app/trust/ITrustListener$Stub;->onTrustManagedChanged(ZI)V

    .line 148
    move-object v4, p0

    goto :goto_77

    .line 127
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 129
    .local v5, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 131
    .local v6, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 133
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 135
    .local v8, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 136
    .local v9, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/app/trust/ITrustListener$Stub;->onTrustChanged(ZZIILjava/util/List;)V

    .line 138
    goto :goto_77

    .line 119
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":Z
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6b
    move-object v4, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 120
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 121
    invoke-virtual {p0, v2}, Landroid/app/trust/ITrustListener$Stub;->onEnabledTrustAgentsChanged(I)V

    .line 122
    nop

    .line 173
    .end local v2    # "_arg0":I
    :goto_77
    return v1

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_4f
        :pswitch_3f
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
