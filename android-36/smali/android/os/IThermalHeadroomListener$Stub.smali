.class public abstract Landroid/os/IThermalHeadroomListener$Stub;
.super Landroid/os/Binder;
.source "IThermalHeadroomListener.java"

# interfaces
.implements Landroid/os/IThermalHeadroomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IThermalHeadroomListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IThermalHeadroomListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onHeadroomChange:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "android.os.IThermalHeadroomListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/IThermalHeadroomListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IThermalHeadroomListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_4
    const-string v0, "android.os.IThermalHeadroomListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IThermalHeadroomListener;

    if-eqz v1, :cond_14

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/os/IThermalHeadroomListener;

    return-object v1

    .line 52
    :cond_14
    new-instance v1, Landroid/os/IThermalHeadroomListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IThermalHeadroomListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 61
    packed-switch p0, :pswitch_data_a

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 65
    :pswitch_5
    const-string/jumbo v0, "onHeadroomChange"

    return-object v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 56
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 76
    invoke-static {p1}, Landroid/os/IThermalHeadroomListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 80
    const-string v0, "android.os.IThermalHeadroomListener"

    .line 81
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 82
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 85
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    return v1

    .line 88
    :cond_16
    packed-switch p1, :pswitch_data_36

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 93
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 95
    .local v2, "_arg0":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 97
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 99
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    .line 100
    .local v5, "_arg3":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/os/IThermalHeadroomListener$Stub;->onHeadroomChange(FFI[F)V

    .line 102
    nop

    .line 109
    .end local v2    # "_arg0":F
    .end local v3    # "_arg1":F
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":[F
    return v1

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
