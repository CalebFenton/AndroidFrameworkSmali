.class public abstract Landroid/printservice/IPrintServiceClient$Stub;
.super Landroid/os/Binder;
.source "IPrintServiceClient.java"

# interfaces
.implements Landroid/printservice/IPrintServiceClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintServiceClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintServiceClient"

.field static final TRANSACTION_getPrintJobInfo:I = 0x2

.field static final TRANSACTION_getPrintJobInfos:I = 0x1

.field static final TRANSACTION_onCustomPrinterIconLoaded:I = 0xb

.field static final TRANSACTION_onPrintersAdded:I = 0x9

.field static final TRANSACTION_onPrintersRemoved:I = 0xa

.field static final TRANSACTION_setPrintJobState:I = 0x3

.field static final TRANSACTION_setPrintJobTag:I = 0x4

.field static final TRANSACTION_setProgress:I = 0x6

.field static final TRANSACTION_setStatus:I = 0x7

.field static final TRANSACTION_setStatusRes:I = 0x8

.field static final TRANSACTION_writePrintJobData:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 20
    const-string/jumbo v0, "android.printservice.IPrintServiceClient"

    #@6
    invoke-virtual {p0, p0, v0}, Landroid/printservice/IPrintServiceClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-nez p0, :cond_0

    #@3
    .line 29
    return-object v1

    #@4
    .line 31
    :cond_0
    const-string/jumbo v1, "android.printservice.IPrintServiceClient"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Landroid/printservice/IPrintServiceClient;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 33
    check-cast v0, Landroid/printservice/IPrintServiceClient;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/printservice/IPrintServiceClient$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Landroid/printservice/IPrintServiceClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    #@19
    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    #@0
    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 245
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v17

    #@7
    return v17

    #@8
    .line 47
    :sswitch_0
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@b
    move-object/from16 v0, p3

    #@d
    move-object/from16 v1, v17

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 48
    const/16 v17, 0x1

    #@14
    return v17

    #@15
    .line 52
    :sswitch_1
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v17

    #@1c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f
    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/printservice/IPrintServiceClient$Stub;->getPrintJobInfos()Ljava/util/List;

    #@22
    move-result-object v15

    #@23
    .line 54
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26
    .line 55
    move-object/from16 v0, p3

    #@28
    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@2b
    .line 56
    const/16 v17, 0x1

    #@2d
    return v17

    #@2e
    .line 60
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :sswitch_2
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@31
    move-object/from16 v0, p2

    #@33
    move-object/from16 v1, v17

    #@35
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@38
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v17

    #@3c
    if-eqz v17, :cond_0

    #@3e
    .line 63
    sget-object v17, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    move-object/from16 v0, v17

    #@42
    move-object/from16 v1, p2

    #@44
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@47
    move-result-object v4

    #@48
    check-cast v4, Landroid/print/PrintJobId;

    #@4a
    .line 68
    :goto_0
    move-object/from16 v0, p0

    #@4c
    invoke-virtual {v0, v4}, Landroid/printservice/IPrintServiceClient$Stub;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;

    #@4f
    move-result-object v14

    #@50
    .line 69
    .local v14, "_result":Landroid/print/PrintJobInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@53
    .line 70
    if-eqz v14, :cond_1

    #@55
    .line 71
    const/16 v17, 0x1

    #@57
    move-object/from16 v0, p3

    #@59
    move/from16 v1, v17

    #@5b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 72
    const/16 v17, 0x1

    #@60
    move-object/from16 v0, p3

    #@62
    move/from16 v1, v17

    #@64
    invoke-virtual {v14, v0, v1}, Landroid/print/PrintJobInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@67
    .line 77
    :goto_1
    const/16 v17, 0x1

    #@69
    return v17

    #@6a
    .line 66
    .end local v14    # "_result":Landroid/print/PrintJobInfo;
    :cond_0
    const/4 v4, 0x0

    #@6b
    .local v4, "_arg0":Landroid/print/PrintJobId;
    goto :goto_0

    #@6c
    .line 75
    .end local v4    # "_arg0":Landroid/print/PrintJobId;
    .restart local v14    # "_result":Landroid/print/PrintJobInfo;
    :cond_1
    const/16 v17, 0x0

    #@6e
    move-object/from16 v0, p3

    #@70
    move/from16 v1, v17

    #@72
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@75
    goto :goto_1

    #@76
    .line 81
    .end local v14    # "_result":Landroid/print/PrintJobInfo;
    :sswitch_3
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@79
    move-object/from16 v0, p2

    #@7b
    move-object/from16 v1, v17

    #@7d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@80
    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@83
    move-result v17

    #@84
    if-eqz v17, :cond_2

    #@86
    .line 84
    sget-object v17, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@88
    move-object/from16 v0, v17

    #@8a
    move-object/from16 v1, p2

    #@8c
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8f
    move-result-object v4

    #@90
    check-cast v4, Landroid/print/PrintJobId;

    #@92
    .line 90
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v7

    #@96
    .line 92
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@99
    move-result-object v13

    #@9a
    .line 93
    .local v13, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    #@9c
    invoke-virtual {v0, v4, v7, v13}, Landroid/printservice/IPrintServiceClient$Stub;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    #@9f
    move-result v16

    #@a0
    .line 94
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a3
    .line 95
    if-eqz v16, :cond_3

    #@a5
    const/16 v17, 0x1

    #@a7
    :goto_3
    move-object/from16 v0, p3

    #@a9
    move/from16 v1, v17

    #@ab
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ae
    .line 96
    const/16 v17, 0x1

    #@b0
    return v17

    #@b1
    .line 87
    .end local v7    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v16    # "_result":Z
    :cond_2
    const/4 v4, 0x0

    #@b2
    .restart local v4    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_2

    #@b3
    .line 95
    .end local v4    # "_arg0":Landroid/print/PrintJobId;
    .restart local v7    # "_arg1":I
    .restart local v13    # "_arg2":Ljava/lang/String;
    .restart local v16    # "_result":Z
    :cond_3
    const/16 v17, 0x0

    #@b5
    goto :goto_3

    #@b6
    .line 100
    .end local v7    # "_arg1":I
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_4
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@b9
    move-object/from16 v0, p2

    #@bb
    move-object/from16 v1, v17

    #@bd
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c0
    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@c3
    move-result v17

    #@c4
    if-eqz v17, :cond_4

    #@c6
    .line 103
    sget-object v17, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c8
    move-object/from16 v0, v17

    #@ca
    move-object/from16 v1, p2

    #@cc
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@cf
    move-result-object v4

    #@d0
    check-cast v4, Landroid/print/PrintJobId;

    #@d2
    .line 109
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d5
    move-result-object v11

    #@d6
    .line 110
    .local v11, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    #@d8
    invoke-virtual {v0, v4, v11}, Landroid/printservice/IPrintServiceClient$Stub;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z

    #@db
    move-result v16

    #@dc
    .line 111
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@df
    .line 112
    if-eqz v16, :cond_5

    #@e1
    const/16 v17, 0x1

    #@e3
    :goto_5
    move-object/from16 v0, p3

    #@e5
    move/from16 v1, v17

    #@e7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@ea
    .line 113
    const/16 v17, 0x1

    #@ec
    return v17

    #@ed
    .line 106
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :cond_4
    const/4 v4, 0x0

    #@ee
    .restart local v4    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_4

    #@ef
    .line 112
    .end local v4    # "_arg0":Landroid/print/PrintJobId;
    .restart local v11    # "_arg1":Ljava/lang/String;
    .restart local v16    # "_result":Z
    :cond_5
    const/16 v17, 0x0

    #@f1
    goto :goto_5

    #@f2
    .line 117
    .end local v11    # "_arg1":Ljava/lang/String;
    .end local v16    # "_result":Z
    :sswitch_5
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@f5
    move-object/from16 v0, p2

    #@f7
    move-object/from16 v1, v17

    #@f9
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@fc
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@ff
    move-result v17

    #@100
    if-eqz v17, :cond_6

    #@102
    .line 120
    sget-object v17, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@104
    move-object/from16 v0, v17

    #@106
    move-object/from16 v1, p2

    #@108
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@10b
    move-result-object v3

    #@10c
    check-cast v3, Landroid/os/ParcelFileDescriptor;

    #@10e
    .line 126
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@111
    move-result v17

    #@112
    if-eqz v17, :cond_7

    #@114
    .line 127
    sget-object v17, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@116
    move-object/from16 v0, v17

    #@118
    move-object/from16 v1, p2

    #@11a
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@11d
    move-result-object v9

    #@11e
    check-cast v9, Landroid/print/PrintJobId;

    #@120
    .line 132
    :goto_7
    move-object/from16 v0, p0

    #@122
    invoke-virtual {v0, v3, v9}, Landroid/printservice/IPrintServiceClient$Stub;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V

    #@125
    .line 133
    const/16 v17, 0x1

    #@127
    return v17

    #@128
    .line 123
    :cond_6
    const/4 v3, 0x0

    #@129
    .local v3, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    #@12a
    .line 130
    .end local v3    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :cond_7
    const/4 v9, 0x0

    #@12b
    .local v9, "_arg1":Landroid/print/PrintJobId;
    goto :goto_7

    #@12c
    .line 137
    .end local v9    # "_arg1":Landroid/print/PrintJobId;
    :sswitch_6
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@12f
    move-object/from16 v0, p2

    #@131
    move-object/from16 v1, v17

    #@133
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@136
    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@139
    move-result v17

    #@13a
    if-eqz v17, :cond_8

    #@13c
    .line 140
    sget-object v17, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@13e
    move-object/from16 v0, v17

    #@140
    move-object/from16 v1, p2

    #@142
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@145
    move-result-object v4

    #@146
    check-cast v4, Landroid/print/PrintJobId;

    #@148
    .line 146
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    #@14b
    move-result v6

    #@14c
    .line 147
    .local v6, "_arg1":F
    move-object/from16 v0, p0

    #@14e
    invoke-virtual {v0, v4, v6}, Landroid/printservice/IPrintServiceClient$Stub;->setProgress(Landroid/print/PrintJobId;F)V

    #@151
    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@154
    .line 149
    const/16 v17, 0x1

    #@156
    return v17

    #@157
    .line 143
    .end local v6    # "_arg1":F
    :cond_8
    const/4 v4, 0x0

    #@158
    .restart local v4    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_8

    #@159
    .line 153
    .end local v4    # "_arg0":Landroid/print/PrintJobId;
    :sswitch_7
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@15c
    move-object/from16 v0, p2

    #@15e
    move-object/from16 v1, v17

    #@160
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@163
    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@166
    move-result v17

    #@167
    if-eqz v17, :cond_9

    #@169
    .line 156
    sget-object v17, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16b
    move-object/from16 v0, v17

    #@16d
    move-object/from16 v1, p2

    #@16f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@172
    move-result-object v4

    #@173
    check-cast v4, Landroid/print/PrintJobId;

    #@175
    .line 162
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@178
    move-result v17

    #@179
    if-eqz v17, :cond_a

    #@17b
    .line 163
    sget-object v17, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@17d
    move-object/from16 v0, v17

    #@17f
    move-object/from16 v1, p2

    #@181
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@184
    move-result-object v10

    #@185
    check-cast v10, Ljava/lang/CharSequence;

    #@187
    .line 168
    :goto_a
    move-object/from16 v0, p0

    #@189
    invoke-virtual {v0, v4, v10}, Landroid/printservice/IPrintServiceClient$Stub;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V

    #@18c
    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@18f
    .line 170
    const/16 v17, 0x1

    #@191
    return v17

    #@192
    .line 159
    :cond_9
    const/4 v4, 0x0

    #@193
    .restart local v4    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_9

    #@194
    .line 166
    .end local v4    # "_arg0":Landroid/print/PrintJobId;
    :cond_a
    const/4 v10, 0x0

    #@195
    .local v10, "_arg1":Ljava/lang/CharSequence;
    goto :goto_a

    #@196
    .line 174
    .end local v10    # "_arg1":Ljava/lang/CharSequence;
    :sswitch_8
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@199
    move-object/from16 v0, p2

    #@19b
    move-object/from16 v1, v17

    #@19d
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a0
    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1a3
    move-result v17

    #@1a4
    if-eqz v17, :cond_b

    #@1a6
    .line 177
    sget-object v17, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a8
    move-object/from16 v0, v17

    #@1aa
    move-object/from16 v1, p2

    #@1ac
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1af
    move-result-object v4

    #@1b0
    check-cast v4, Landroid/print/PrintJobId;

    #@1b2
    .line 183
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b5
    move-result v7

    #@1b6
    .line 185
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1b9
    move-result v17

    #@1ba
    if-eqz v17, :cond_c

    #@1bc
    .line 186
    sget-object v17, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@1be
    move-object/from16 v0, v17

    #@1c0
    move-object/from16 v1, p2

    #@1c2
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1c5
    move-result-object v12

    #@1c6
    check-cast v12, Ljava/lang/CharSequence;

    #@1c8
    .line 191
    :goto_c
    move-object/from16 v0, p0

    #@1ca
    invoke-virtual {v0, v4, v7, v12}, Landroid/printservice/IPrintServiceClient$Stub;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V

    #@1cd
    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d0
    .line 193
    const/16 v17, 0x1

    #@1d2
    return v17

    #@1d3
    .line 180
    .end local v7    # "_arg1":I
    :cond_b
    const/4 v4, 0x0

    #@1d4
    .restart local v4    # "_arg0":Landroid/print/PrintJobId;
    goto :goto_b

    #@1d5
    .line 189
    .end local v4    # "_arg0":Landroid/print/PrintJobId;
    .restart local v7    # "_arg1":I
    :cond_c
    const/4 v12, 0x0

    #@1d6
    .local v12, "_arg2":Ljava/lang/CharSequence;
    goto :goto_c

    #@1d7
    .line 197
    .end local v7    # "_arg1":I
    .end local v12    # "_arg2":Ljava/lang/CharSequence;
    :sswitch_9
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@1da
    move-object/from16 v0, p2

    #@1dc
    move-object/from16 v1, v17

    #@1de
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e1
    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1e4
    move-result v17

    #@1e5
    if-eqz v17, :cond_d

    #@1e7
    .line 200
    sget-object v17, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@1e9
    move-object/from16 v0, v17

    #@1eb
    move-object/from16 v1, p2

    #@1ed
    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1f0
    move-result-object v2

    #@1f1
    check-cast v2, Landroid/content/pm/ParceledListSlice;

    #@1f3
    .line 205
    :goto_d
    move-object/from16 v0, p0

    #@1f5
    invoke-virtual {v0, v2}, Landroid/printservice/IPrintServiceClient$Stub;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V

    #@1f8
    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1fb
    .line 207
    const/16 v17, 0x1

    #@1fd
    return v17

    #@1fe
    .line 203
    :cond_d
    const/4 v2, 0x0

    #@1ff
    .local v2, "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_d

    #@200
    .line 211
    .end local v2    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_a
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@203
    move-object/from16 v0, p2

    #@205
    move-object/from16 v1, v17

    #@207
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@20a
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@20d
    move-result v17

    #@20e
    if-eqz v17, :cond_e

    #@210
    .line 214
    sget-object v17, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@212
    move-object/from16 v0, v17

    #@214
    move-object/from16 v1, p2

    #@216
    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@219
    move-result-object v2

    #@21a
    check-cast v2, Landroid/content/pm/ParceledListSlice;

    #@21c
    .line 219
    :goto_e
    move-object/from16 v0, p0

    #@21e
    invoke-virtual {v0, v2}, Landroid/printservice/IPrintServiceClient$Stub;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V

    #@221
    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@224
    .line 221
    const/16 v17, 0x1

    #@226
    return v17

    #@227
    .line 217
    :cond_e
    const/4 v2, 0x0

    #@228
    .restart local v2    # "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_e

    #@229
    .line 225
    .end local v2    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :sswitch_b
    const-string/jumbo v17, "android.printservice.IPrintServiceClient"

    #@22c
    move-object/from16 v0, p2

    #@22e
    move-object/from16 v1, v17

    #@230
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@233
    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@236
    move-result v17

    #@237
    if-eqz v17, :cond_f

    #@239
    .line 228
    sget-object v17, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@23b
    move-object/from16 v0, v17

    #@23d
    move-object/from16 v1, p2

    #@23f
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@242
    move-result-object v5

    #@243
    check-cast v5, Landroid/print/PrinterId;

    #@245
    .line 234
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@248
    move-result v17

    #@249
    if-eqz v17, :cond_10

    #@24b
    .line 235
    sget-object v17, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    #@24d
    move-object/from16 v0, v17

    #@24f
    move-object/from16 v1, p2

    #@251
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@254
    move-result-object v8

    #@255
    check-cast v8, Landroid/graphics/drawable/Icon;

    #@257
    .line 240
    :goto_10
    move-object/from16 v0, p0

    #@259
    invoke-virtual {v0, v5, v8}, Landroid/printservice/IPrintServiceClient$Stub;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V

    #@25c
    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@25f
    .line 242
    const/16 v17, 0x1

    #@261
    return v17

    #@262
    .line 231
    :cond_f
    const/4 v5, 0x0

    #@263
    .local v5, "_arg0":Landroid/print/PrinterId;
    goto :goto_f

    #@264
    .line 238
    .end local v5    # "_arg0":Landroid/print/PrinterId;
    :cond_10
    const/4 v8, 0x0

    #@265
    .local v8, "_arg1":Landroid/graphics/drawable/Icon;
    goto :goto_10

    #@266
    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
