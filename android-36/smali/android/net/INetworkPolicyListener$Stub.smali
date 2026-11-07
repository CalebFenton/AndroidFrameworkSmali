.class public abstract Landroid/net/INetworkPolicyListener$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyListener.java"

# interfaces
.implements Landroid/net/INetworkPolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyListener"

.field static final blacklist TRANSACTION_onBlockedReasonChanged:I = 0x7

.field static final greylist-max-o TRANSACTION_onMeteredIfacesChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onRestrictBackgroundChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_onSubscriptionOverride:I = 0x5

.field static final blacklist TRANSACTION_onSubscriptionPlansChanged:I = 0x6

.field static final greylist-max-o TRANSACTION_onUidPoliciesChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_onUidRulesChanged:I = 0x1


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "android.net.INetworkPolicyListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_4

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_4
    const-string v0, "android.net.INetworkPolicyListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkPolicyListener;

    if-eqz v1, :cond_14

    .line 62
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkPolicyListener;

    return-object v1

    .line 64
    :cond_14
    new-instance v1, Landroid/net/INetworkPolicyListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkPolicyListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 73
    packed-switch p0, :pswitch_data_22

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 101
    :pswitch_5
    const-string/jumbo v0, "onBlockedReasonChanged"

    return-object v0

    .line 97
    :pswitch_9
    const-string/jumbo v0, "onSubscriptionPlansChanged"

    return-object v0

    .line 93
    :pswitch_d
    const-string/jumbo v0, "onSubscriptionOverride"

    return-object v0

    .line 89
    :pswitch_11
    const-string/jumbo v0, "onUidPoliciesChanged"

    return-object v0

    .line 85
    :pswitch_15
    const-string/jumbo v0, "onRestrictBackgroundChanged"

    return-object v0

    .line 81
    :pswitch_19
    const-string/jumbo v0, "onMeteredIfacesChanged"

    return-object v0

    .line 77
    :pswitch_1d
    const-string/jumbo v0, "onUidRulesChanged"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_19
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

    .line 68
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 325
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 112
    invoke-static {p1}, Landroid/net/INetworkPolicyListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const-string v0, "android.net.INetworkPolicyListener"

    .line 117
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v1

    .line 124
    :cond_16
    packed-switch p1, :pswitch_data_90

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 189
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 193
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 194
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/INetworkPolicyListener$Stub;->onBlockedReasonChanged(III)V

    .line 196
    goto :goto_8f

    .line 179
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/telephony/SubscriptionPlan;

    .line 182
    .local v3, "_arg1":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkPolicyListener$Stub;->onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V

    .line 184
    goto :goto_8f

    .line 165
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/telephony/SubscriptionPlan;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 167
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 171
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 172
    .local v5, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/INetworkPolicyListener$Stub;->onSubscriptionOverride(III[I)V

    .line 174
    goto :goto_8f

    .line 155
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":[I
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkPolicyListener$Stub;->onUidPoliciesChanged(II)V

    .line 160
    goto :goto_8f

    .line 147
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 148
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, v2}, Landroid/net/INetworkPolicyListener$Stub;->onRestrictBackgroundChanged(Z)V

    .line 150
    goto :goto_8f

    .line 139
    .end local v2    # "_arg0":Z
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-virtual {p0, v2}, Landroid/net/INetworkPolicyListener$Stub;->onMeteredIfacesChanged([Ljava/lang/String;)V

    .line 142
    goto :goto_8f

    .line 129
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 131
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 132
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v2, v3}, Landroid/net/INetworkPolicyListener$Stub;->onUidRulesChanged(II)V

    .line 134
    nop

    .line 203
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_8f
    return v1

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_80
        :pswitch_75
        :pswitch_6a
        :pswitch_5b
        :pswitch_44
        :pswitch_31
        :pswitch_1e
    .end packed-switch
.end method
