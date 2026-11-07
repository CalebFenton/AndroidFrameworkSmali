.class public abstract Landroid/content/pm/IOtaDexopt$Stub;
.super Landroid/os/Binder;
.source "IOtaDexopt.java"

# interfaces
.implements Landroid/content/pm/IOtaDexopt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOtaDexopt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOtaDexopt$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IOtaDexopt"

.field static final greylist-max-o TRANSACTION_cleanup:I = 0x2

.field static final greylist-max-o TRANSACTION_dexoptNextPackage:I = 0x5

.field static final greylist-max-o TRANSACTION_getProgress:I = 0x4

.field static final greylist-max-o TRANSACTION_isDone:I = 0x3

.field static final greylist-max-o TRANSACTION_nextDexoptCommand:I = 0x6

.field static final greylist-max-o TRANSACTION_prepare:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "android.content.pm.IOtaDexopt"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOtaDexopt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOtaDexopt;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_4
    const-string v0, "android.content.pm.IOtaDexopt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IOtaDexopt;

    if-eqz v1, :cond_14

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IOtaDexopt;

    return-object v1

    .line 87
    :cond_14
    new-instance v1, Landroid/content/pm/IOtaDexopt$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IOtaDexopt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 96
    packed-switch p0, :pswitch_data_1a

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 120
    :pswitch_5
    const-string/jumbo v0, "nextDexoptCommand"

    return-object v0

    .line 116
    :pswitch_9
    const-string v0, "dexoptNextPackage"

    return-object v0

    .line 112
    :pswitch_c
    const-string v0, "getProgress"

    return-object v0

    .line 108
    :pswitch_f
    const-string/jumbo v0, "isDone"

    return-object v0

    .line 104
    :pswitch_13
    const-string v0, "cleanup"

    return-object v0

    .line 100
    :pswitch_16
    const-string/jumbo v0, "prepare"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 91
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 330
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 131
    invoke-static {p1}, Landroid/content/pm/IOtaDexopt$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    const-string v0, "android.content.pm.IOtaDexopt"

    .line 136
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 137
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 140
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    return v1

    .line 143
    :cond_16
    packed-switch p1, :pswitch_data_56

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 179
    :pswitch_1e
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->nextDexoptCommand()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    goto :goto_54

    .line 173
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->dexoptNextPackage()V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    goto :goto_54

    .line 166
    :pswitch_30
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->getProgress()F

    move-result v2

    .line 167
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 169
    goto :goto_54

    .line 159
    .end local v2    # "_result":F
    :pswitch_3b
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->isDone()Z

    move-result v2

    .line 160
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 162
    goto :goto_54

    .line 153
    .end local v2    # "_result":Z
    :pswitch_46
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->cleanup()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_54

    .line 147
    :pswitch_4d
    invoke-virtual {p0}, Landroid/content/pm/IOtaDexopt$Stub;->prepare()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    nop

    .line 189
    :goto_54
    return v1

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_46
        :pswitch_3b
        :pswitch_30
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
