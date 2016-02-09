.class public abstract Landroid/os/IBatteryPropertiesRegistrar$Stub;
.super Landroid/os/Binder;
.source "IBatteryPropertiesRegistrar.java"

# interfaces
.implements Landroid/os/IBatteryPropertiesRegistrar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IBatteryPropertiesRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IBatteryPropertiesRegistrar"

.field static final TRANSACTION_getProperty:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 18
    const-string/jumbo v0, "android.os.IBatteryPropertiesRegistrar"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;
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
    const-string/jumbo v1, "android.os.IBatteryPropertiesRegistrar"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/os/IBatteryPropertiesRegistrar;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 31
    check-cast v0, Landroid/os/IBatteryPropertiesRegistrar;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x1

    #@1
    .line 41
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 45
    :sswitch_0
    const-string/jumbo v4, "android.os.IBatteryPropertiesRegistrar"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 46
    return v5

    #@10
    .line 50
    :sswitch_1
    const-string/jumbo v4, "android.os.IBatteryPropertiesRegistrar"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@19
    move-result-object v4

    #@1a
    invoke-static {v4}, Landroid/os/IBatteryPropertiesListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesListener;

    #@1d
    move-result-object v1

    #@1e
    .line 53
    .local v1, "_arg0":Landroid/os/IBatteryPropertiesListener;
    invoke-virtual {p0, v1}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->registerListener(Landroid/os/IBatteryPropertiesListener;)V

    #@21
    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@24
    .line 55
    return v5

    #@25
    .line 59
    .end local v1    # "_arg0":Landroid/os/IBatteryPropertiesListener;
    :sswitch_2
    const-string/jumbo v4, "android.os.IBatteryPropertiesRegistrar"

    #@28
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2b
    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {v4}, Landroid/os/IBatteryPropertiesListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesListener;

    #@32
    move-result-object v1

    #@33
    .line 62
    .restart local v1    # "_arg0":Landroid/os/IBatteryPropertiesListener;
    invoke-virtual {p0, v1}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->unregisterListener(Landroid/os/IBatteryPropertiesListener;)V

    #@36
    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@39
    .line 64
    return v5

    #@3a
    .line 68
    .end local v1    # "_arg0":Landroid/os/IBatteryPropertiesListener;
    :sswitch_3
    const-string/jumbo v4, "android.os.IBatteryPropertiesRegistrar"

    #@3d
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@40
    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@43
    move-result v0

    #@44
    .line 72
    .local v0, "_arg0":I
    new-instance v2, Landroid/os/BatteryProperty;

    #@46
    invoke-direct {v2}, Landroid/os/BatteryProperty;-><init>()V

    #@49
    .line 73
    .local v2, "_arg1":Landroid/os/BatteryProperty;
    invoke-virtual {p0, v0, v2}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->getProperty(ILandroid/os/BatteryProperty;)I

    #@4c
    move-result v3

    #@4d
    .line 74
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@50
    .line 75
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@53
    .line 76
    if-eqz v2, :cond_0

    #@55
    .line 77
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 78
    invoke-virtual {v2, p3, v5}, Landroid/os/BatteryProperty;->writeToParcel(Landroid/os/Parcel;I)V

    #@5b
    .line 83
    :goto_0
    return v5

    #@5c
    .line 81
    :cond_0
    const/4 v4, 0x0

    #@5d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    goto :goto_0

    #@61
    .line 41
    nop

    #@62
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
