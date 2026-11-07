.class public abstract Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub;
.super Landroid/os/Binder;
.source "IDynamicInstrumentationManager.java"

# interfaces
.implements Landroid/os/instrumentation/IDynamicInstrumentationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/instrumentation/IDynamicInstrumentationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getExecutableMethodFileOffsets:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.os.instrumentation.IDynamicInstrumentationManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/instrumentation/IDynamicInstrumentationManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_4
    const-string v0, "android.os.instrumentation.IDynamicInstrumentationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/instrumentation/IDynamicInstrumentationManager;

    if-eqz v1, :cond_14

    .line 49
    move-object v1, v0

    check-cast v1, Landroid/os/instrumentation/IDynamicInstrumentationManager;

    return-object v1

    .line 51
    :cond_14
    new-instance v1, Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    const-string v0, "android.os.instrumentation.IDynamicInstrumentationManager"

    .line 60
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 61
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v1

    .line 67
    :cond_16
    packed-switch p1, :pswitch_data_42

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :pswitch_1e
    sget-object v2, Landroid/os/instrumentation/TargetProcess;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/instrumentation/TargetProcess;

    .line 74
    .local v2, "_arg0":Landroid/os/instrumentation/TargetProcess;
    sget-object v3, Landroid/os/instrumentation/MethodDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/instrumentation/MethodDescriptor;

    .line 76
    .local v3, "_arg1":Landroid/os/instrumentation/MethodDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/instrumentation/IOffsetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/instrumentation/IOffsetCallback;

    move-result-object v4

    .line 77
    .local v4, "_arg2":Landroid/os/instrumentation/IOffsetCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 78
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/instrumentation/IDynamicInstrumentationManager$Stub;->getExecutableMethodFileOffsets(Landroid/os/instrumentation/TargetProcess;Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    nop

    .line 87
    .end local v2    # "_arg0":Landroid/os/instrumentation/TargetProcess;
    .end local v3    # "_arg1":Landroid/os/instrumentation/MethodDescriptor;
    .end local v4    # "_arg2":Landroid/os/instrumentation/IOffsetCallback;
    return v1

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
