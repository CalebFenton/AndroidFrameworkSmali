.class public abstract Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;
.super Landroid/os/Binder;
.source "IParcelFileDescriptorFactory.java"

# interfaces
.implements Lcom/android/internal/os/IParcelFileDescriptorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IParcelFileDescriptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.os.IParcelFileDescriptorFactory"

.field static final TRANSACTION_open:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "com.android.internal.os.IParcelFileDescriptorFactory"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IParcelFileDescriptorFactory;
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
    const-string/jumbo v1, "com.android.internal.os.IParcelFileDescriptorFactory"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/os/IParcelFileDescriptorFactory;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Lcom/android/internal/os/IParcelFileDescriptorFactory;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 5
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
    const/4 v4, 0x1

    #@1
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v3, "com.android.internal.os.IParcelFileDescriptorFactory"

    #@c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v4

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v3, "com.android.internal.os.IParcelFileDescriptorFactory"

    #@13
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    .line 52
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    .line 53
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/IParcelFileDescriptorFactory$Stub;->open(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    #@21
    move-result-object v2

    #@22
    .line 54
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    #@25
    .line 55
    if-eqz v2, :cond_0

    #@27
    .line 56
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@2a
    .line 57
    invoke-virtual {v2, p3, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@2d
    .line 62
    :goto_0
    return v4

    #@2e
    .line 60
    :cond_0
    const/4 v3, 0x0

    #@2f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@32
    goto :goto_0

    #@33
    .line 39
    nop

    #@34
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
