.class public abstract Landroid/os/IIncidentCompanion$Stub;
.super Landroid/os/Binder;
.source "IIncidentCompanion.java"

# interfaces
.implements Landroid/os/IIncidentCompanion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentCompanion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentCompanion$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_approveReport:I = 0x5

.field static final blacklist TRANSACTION_authorizeReport:I = 0x1

.field static final blacklist TRANSACTION_cancelAuthorization:I = 0x2

.field static final blacklist TRANSACTION_deleteAllIncidentReports:I = 0xa

.field static final blacklist TRANSACTION_deleteIncidentReports:I = 0x9

.field static final blacklist TRANSACTION_denyReport:I = 0x6

.field static final blacklist TRANSACTION_getIncidentReport:I = 0x8

.field static final blacklist TRANSACTION_getIncidentReportList:I = 0x7

.field static final blacklist TRANSACTION_getPendingReports:I = 0x4

.field static final blacklist TRANSACTION_sendReportReadyBroadcast:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 111
    const-string v0, "android.os.IIncidentCompanion"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIncidentCompanion$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentCompanion;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 119
    if-nez p0, :cond_4

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_4
    const-string v0, "android.os.IIncidentCompanion"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 123
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IIncidentCompanion;

    if-eqz v1, :cond_14

    .line 124
    move-object v1, v0

    check-cast v1, Landroid/os/IIncidentCompanion;

    return-object v1

    .line 126
    :cond_14
    new-instance v1, Landroid/os/IIncidentCompanion$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IIncidentCompanion$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 135
    packed-switch p0, :pswitch_data_24

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 175
    :pswitch_5
    const-string v0, "deleteAllIncidentReports"

    return-object v0

    .line 171
    :pswitch_8
    const-string v0, "deleteIncidentReports"

    return-object v0

    .line 167
    :pswitch_b
    const-string v0, "getIncidentReport"

    return-object v0

    .line 163
    :pswitch_e
    const-string v0, "getIncidentReportList"

    return-object v0

    .line 159
    :pswitch_11
    const-string v0, "denyReport"

    return-object v0

    .line 155
    :pswitch_14
    const-string v0, "approveReport"

    return-object v0

    .line 151
    :pswitch_17
    const-string v0, "getPendingReports"

    return-object v0

    .line 147
    :pswitch_1a
    const-string/jumbo v0, "sendReportReadyBroadcast"

    return-object v0

    .line 143
    :pswitch_1e
    const-string v0, "cancelAuthorization"

    return-object v0

    .line 139
    :pswitch_21
    const-string v0, "authorizeReport"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_14
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

    .line 130
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 550
    const/16 v0, 0x9

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 186
    invoke-static {p1}, Landroid/os/IIncidentCompanion$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 190
    const-string v0, "android.os.IIncidentCompanion"

    .line 191
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 192
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 195
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    return v1

    .line 198
    :cond_16
    packed-switch p1, :pswitch_data_e0

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 303
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2}, Landroid/os/IIncidentCompanion$Stub;->deleteAllIncidentReports(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto/16 :goto_de

    .line 290
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 292
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IIncidentCompanion$Stub;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto/16 :goto_de

    .line 276
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 278
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 281
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IIncidentCompanion$Stub;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    move-result-object v5

    .line 283
    .local v5, "_result":Landroid/os/IncidentManager$IncidentReport;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 285
    goto/16 :goto_de

    .line 264
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/IncidentManager$IncidentReport;
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 267
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2, v3}, Landroid/os/IIncidentCompanion$Stub;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 269
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 271
    goto :goto_de

    .line 255
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2}, Landroid/os/IIncidentCompanion$Stub;->denyReport(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto :goto_de

    .line 246
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {p0, v2}, Landroid/os/IIncidentCompanion$Stub;->approveReport(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    goto :goto_de

    .line 238
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_91
    invoke-virtual {p0}, Landroid/os/IIncidentCompanion$Stub;->getPendingReports()Ljava/util/List;

    move-result-object v2

    .line 239
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 241
    goto :goto_de

    .line 229
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 232
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    invoke-virtual {p0, v2, v3}, Landroid/os/IIncidentCompanion$Stub;->sendReportReadyBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    goto :goto_de

    .line 221
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IIncidentAuthListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentAuthListener;

    move-result-object v2

    .line 222
    .local v2, "_arg0":Landroid/os/IIncidentAuthListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Landroid/os/IIncidentCompanion$Stub;->cancelAuthorization(Landroid/os/IIncidentAuthListener;)V

    .line 224
    goto :goto_de

    .line 203
    .end local v2    # "_arg0":Landroid/os/IIncidentAuthListener;
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 205
    .local v4, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 213
    .local v8, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IIncidentAuthListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentAuthListener;

    move-result-object v9

    .line 214
    .local v9, "_arg5":Landroid/os/IIncidentAuthListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/os/IIncidentCompanion$Stub;->authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 216
    nop

    .line 314
    .end local v4    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Ljava/lang/String;
    .end local v7    # "_arg3":Ljava/lang/String;
    .end local v8    # "_arg4":I
    .end local v9    # "_arg5":Landroid/os/IIncidentAuthListener;
    :goto_de
    return v1

    nop

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_ab
        :pswitch_9c
        :pswitch_91
        :pswitch_83
        :pswitch_75
        :pswitch_5f
        :pswitch_44
        :pswitch_2d
        :pswitch_1e
    .end packed-switch
.end method
