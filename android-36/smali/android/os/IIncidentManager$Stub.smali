.class public abstract Landroid/os/IIncidentManager$Stub;
.super Landroid/os/Binder;
.source "IIncidentManager.java"

# interfaces
.implements Landroid/os/IIncidentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.os.IIncidentManager"

.field static final blacklist TRANSACTION_deleteAllIncidentReports:I = 0xa

.field static final blacklist TRANSACTION_deleteIncidentReports:I = 0x9

.field static final blacklist TRANSACTION_getIncidentReport:I = 0x8

.field static final blacklist TRANSACTION_getIncidentReportList:I = 0x7

.field static final blacklist TRANSACTION_registerSection:I = 0x4

.field static final greylist-max-o TRANSACTION_reportIncident:I = 0x1

.field static final blacklist TRANSACTION_reportIncidentToDumpstate:I = 0x3

.field static final greylist-max-o TRANSACTION_reportIncidentToStream:I = 0x2

.field static final greylist-max-o TRANSACTION_systemRunning:I = 0x6

.field static final blacklist TRANSACTION_unregisterSection:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 101
    const-string v0, "android.os.IIncidentManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIncidentManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 109
    if-nez p0, :cond_4

    .line 110
    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_4
    const-string v0, "android.os.IIncidentManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 113
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IIncidentManager;

    if-eqz v1, :cond_14

    .line 114
    move-object v1, v0

    check-cast v1, Landroid/os/IIncidentManager;

    return-object v1

    .line 116
    :cond_14
    new-instance v1, Landroid/os/IIncidentManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IIncidentManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 125
    packed-switch p0, :pswitch_data_2a

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 165
    :pswitch_5
    const-string v0, "deleteAllIncidentReports"

    return-object v0

    .line 161
    :pswitch_8
    const-string v0, "deleteIncidentReports"

    return-object v0

    .line 157
    :pswitch_b
    const-string v0, "getIncidentReport"

    return-object v0

    .line 153
    :pswitch_e
    const-string v0, "getIncidentReportList"

    return-object v0

    .line 149
    :pswitch_11
    const-string/jumbo v0, "systemRunning"

    return-object v0

    .line 145
    :pswitch_15
    const-string/jumbo v0, "unregisterSection"

    return-object v0

    .line 141
    :pswitch_19
    const-string/jumbo v0, "registerSection"

    return-object v0

    .line 137
    :pswitch_1d
    const-string/jumbo v0, "reportIncidentToDumpstate"

    return-object v0

    .line 133
    :pswitch_21
    const-string/jumbo v0, "reportIncidentToStream"

    return-object v0

    .line 129
    :pswitch_25
    const-string/jumbo v0, "reportIncident"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 120
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 516
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 176
    invoke-static {p1}, Landroid/os/IIncidentManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 180
    const-string v0, "android.os.IIncidentManager"

    .line 181
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 182
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 185
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    return v1

    .line 188
    :cond_16
    packed-switch p1, :pswitch_data_da

    .line 295
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 287
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, v2}, Landroid/os/IIncidentManager$Stub;->deleteAllIncidentReports(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    goto/16 :goto_d8

    .line 274
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 276
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 279
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IIncidentManager$Stub;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    goto/16 :goto_d8

    .line 260
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 262
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 264
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 265
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IIncidentManager$Stub;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    move-result-object v5

    .line 267
    .local v5, "_result":Landroid/os/IncidentManager$IncidentReport;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 269
    goto/16 :goto_d8

    .line 248
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/IncidentManager$IncidentReport;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 250
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2, v3}, Landroid/os/IIncidentManager$Stub;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 253
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 255
    goto :goto_d8

    .line 242
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_75
    invoke-virtual {p0}, Landroid/os/IIncidentManager$Stub;->systemRunning()V

    .line 243
    goto :goto_d8

    .line 235
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Landroid/os/IIncidentManager$Stub;->unregisterSection(I)V

    .line 238
    goto :goto_d8

    .line 223
    .end local v2    # "_arg0":I
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 225
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 227
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IIncidentDumpCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentDumpCallback;

    move-result-object v4

    .line 228
    .local v4, "_arg2":Landroid/os/IIncidentDumpCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IIncidentManager$Stub;->registerSection(ILjava/lang/String;Landroid/os/IIncidentDumpCallback;)V

    .line 230
    goto :goto_d8

    .line 213
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/IIncidentDumpCallback;
    :pswitch_9b
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 215
    .local v2, "_arg0":Ljava/io/FileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IIncidentReportStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentReportStatusListener;

    move-result-object v3

    .line 216
    .local v3, "_arg1":Landroid/os/IIncidentReportStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3}, Landroid/os/IIncidentManager$Stub;->reportIncidentToDumpstate(Ljava/io/FileDescriptor;Landroid/os/IIncidentReportStatusListener;)V

    .line 218
    goto :goto_d8

    .line 201
    .end local v2    # "_arg0":Ljava/io/FileDescriptor;
    .end local v3    # "_arg1":Landroid/os/IIncidentReportStatusListener;
    :pswitch_ae
    sget-object v2, Landroid/os/IncidentReportArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IncidentReportArgs;

    .line 203
    .local v2, "_arg0":Landroid/os/IncidentReportArgs;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IIncidentReportStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentReportStatusListener;

    move-result-object v3

    .line 205
    .restart local v3    # "_arg1":Landroid/os/IIncidentReportStatusListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 206
    .local v4, "_arg2":Ljava/io/FileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IIncidentManager$Stub;->reportIncidentToStream(Landroid/os/IncidentReportArgs;Landroid/os/IIncidentReportStatusListener;Ljava/io/FileDescriptor;)V

    .line 208
    goto :goto_d8

    .line 193
    .end local v2    # "_arg0":Landroid/os/IncidentReportArgs;
    .end local v3    # "_arg1":Landroid/os/IIncidentReportStatusListener;
    .end local v4    # "_arg2":Ljava/io/FileDescriptor;
    :pswitch_c9
    sget-object v2, Landroid/os/IncidentReportArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IncidentReportArgs;

    .line 194
    .restart local v2    # "_arg0":Landroid/os/IncidentReportArgs;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v2}, Landroid/os/IIncidentManager$Stub;->reportIncident(Landroid/os/IncidentReportArgs;)V

    .line 196
    nop

    .line 298
    .end local v2    # "_arg0":Landroid/os/IncidentReportArgs;
    :goto_d8
    return v1

    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_ae
        :pswitch_9b
        :pswitch_84
        :pswitch_79
        :pswitch_75
        :pswitch_5f
        :pswitch_44
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
