.class public abstract Lcom/android/internal/compat/IPlatformCompatNative$Stub;
.super Landroid/os/Binder;
.source "IPlatformCompatNative.java"

# interfaces
.implements Lcom/android/internal/compat/IPlatformCompatNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/IPlatformCompatNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/IPlatformCompatNative$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_isChangeEnabledByPackageName:I = 0x3

.field static final blacklist TRANSACTION_isChangeEnabledByUid:I = 0x4

.field static final blacklist TRANSACTION_reportChangeByPackageName:I = 0x1

.field static final blacklist TRANSACTION_reportChangeByUid:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 106
    const-string v0, "com.android.internal.compat.IPlatformCompatNative"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompatNative;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 114
    if-nez p0, :cond_4

    .line 115
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_4
    const-string v0, "com.android.internal.compat.IPlatformCompatNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 118
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/compat/IPlatformCompatNative;

    if-eqz v1, :cond_14

    .line 119
    move-object v1, v0

    check-cast v1, Lcom/android/internal/compat/IPlatformCompatNative;

    return-object v1

    .line 121
    :cond_14
    new-instance v1, Lcom/android/internal/compat/IPlatformCompatNative$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/compat/IPlatformCompatNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 130
    packed-switch p0, :pswitch_data_14

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 146
    :pswitch_5
    const-string v0, "isChangeEnabledByUid"

    return-object v0

    .line 142
    :pswitch_8
    const-string v0, "isChangeEnabledByPackageName"

    return-object v0

    .line 138
    :pswitch_b
    const-string/jumbo v0, "reportChangeByUid"

    return-object v0

    .line 134
    :pswitch_f
    const-string/jumbo v0, "reportChangeByPackageName"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 125
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 380
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 157
    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    const-string v0, "com.android.internal.compat.IPlatformCompatNative"

    .line 162
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 163
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 166
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    return v1

    .line 169
    :cond_16
    packed-switch p1, :pswitch_data_78

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 212
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 214
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 215
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->isChangeEnabledByUid(JI)Z

    move-result v5

    .line 217
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 219
    goto :goto_76

    .line 198
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 200
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 203
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v6

    .line 205
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    goto :goto_76

    .line 187
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Z
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 189
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 190
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->reportChangeByUid(JI)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    goto :goto_76

    .line 174
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 176
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 179
    .restart local v5    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;->reportChangeByPackageName(JLjava/lang/String;I)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    nop

    .line 226
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :goto_76
    return v1

    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_60
        :pswitch_4e
        :pswitch_34
        :pswitch_1e
    .end packed-switch
.end method
