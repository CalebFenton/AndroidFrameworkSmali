.class public abstract Landroid/tracing/ITracingServiceProxy$Stub;
.super Landroid/os/Binder;
.source "ITracingServiceProxy.java"

# interfaces
.implements Landroid/tracing/ITracingServiceProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/tracing/ITracingServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/tracing/ITracingServiceProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_notifyTraceSessionEnded:I = 0x1

.field static final blacklist TRANSACTION_reportTrace:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.tracing.ITracingServiceProxy"

    invoke-virtual {p0, p0, v0}, Landroid/tracing/ITracingServiceProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/tracing/ITracingServiceProxy;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_4
    const-string v0, "android.tracing.ITracingServiceProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/tracing/ITracingServiceProxy;

    if-eqz v1, :cond_14

    .line 61
    move-object v1, v0

    check-cast v1, Landroid/tracing/ITracingServiceProxy;

    return-object v1

    .line 63
    :cond_14
    new-instance v1, Landroid/tracing/ITracingServiceProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/tracing/ITracingServiceProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 72
    packed-switch p0, :pswitch_data_c

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 80
    :pswitch_5
    const-string/jumbo v0, "reportTrace"

    return-object v0

    .line 76
    :pswitch_9
    const-string v0, "notifyTraceSessionEnded"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 91
    invoke-static {p1}, Landroid/tracing/ITracingServiceProxy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 95
    const-string v0, "android.tracing.ITracingServiceProxy"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 103
    :cond_16
    packed-switch p1, :pswitch_data_3a

    .line 123
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 116
    :pswitch_1e
    sget-object v2, Landroid/tracing/TraceReportParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/tracing/TraceReportParams;

    .line 117
    .local v2, "_arg0":Landroid/tracing/TraceReportParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {p0, v2}, Landroid/tracing/ITracingServiceProxy$Stub;->reportTrace(Landroid/tracing/TraceReportParams;)V

    .line 119
    goto :goto_38

    .line 108
    .end local v2    # "_arg0":Landroid/tracing/TraceReportParams;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 109
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2}, Landroid/tracing/ITracingServiceProxy$Stub;->notifyTraceSessionEnded(Z)V

    .line 111
    nop

    .line 126
    .end local v2    # "_arg0":Z
    :goto_38
    return v1

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
