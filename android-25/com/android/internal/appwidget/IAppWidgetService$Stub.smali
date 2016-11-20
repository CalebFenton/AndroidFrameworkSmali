.class public abstract Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetService.java"

# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetService"

.field static final TRANSACTION_allocateAppWidgetId:I = 0x3

.field static final TRANSACTION_bindAppWidgetId:I = 0x14

.field static final TRANSACTION_bindRemoteViewsService:I = 0x15

.field static final TRANSACTION_createAppWidgetConfigIntentSender:I = 0x9

.field static final TRANSACTION_deleteAllHosts:I = 0x6

.field static final TRANSACTION_deleteAppWidgetId:I = 0x4

.field static final TRANSACTION_deleteHost:I = 0x5

.field static final TRANSACTION_getAppWidgetIds:I = 0x17

.field static final TRANSACTION_getAppWidgetIdsForHost:I = 0x8

.field static final TRANSACTION_getAppWidgetInfo:I = 0x11

.field static final TRANSACTION_getAppWidgetOptions:I = 0xc

.field static final TRANSACTION_getAppWidgetViews:I = 0x7

.field static final TRANSACTION_getInstalledProvidersForProfile:I = 0x10

.field static final TRANSACTION_hasBindAppWidgetPermission:I = 0x12

.field static final TRANSACTION_isBoundWidgetPackage:I = 0x18

.field static final TRANSACTION_notifyAppWidgetViewDataChanged:I = 0xf

.field static final TRANSACTION_partiallyUpdateAppWidgetIds:I = 0xd

.field static final TRANSACTION_setBindAppWidgetPermission:I = 0x13

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_stopListening:I = 0x2

.field static final TRANSACTION_unbindRemoteViewsService:I = 0x16

.field static final TRANSACTION_updateAppWidgetIds:I = 0xa

.field static final TRANSACTION_updateAppWidgetOptions:I = 0xb

.field static final TRANSACTION_updateAppWidgetProvider:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "com.android.internal.appwidget.IAppWidgetService"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;
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
    const-string/jumbo v1, "com.android.internal.appwidget.IAppWidgetService"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetService;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Lcom/android/internal/appwidget/IAppWidgetService;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 28
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@3
    .line 431
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 43
    :sswitch_0
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@b
    move-object/from16 v0, p3

    #@d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@10
    .line 44
    const/4 v2, 0x1

    #@11
    return v2

    #@12
    .line 48
    :sswitch_1
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@15
    move-object/from16 v0, p2

    #@17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1a
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v2}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;

    #@21
    move-result-object v10

    #@22
    .line 52
    .local v10, "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@25
    move-result-object v12

    #@26
    .line 54
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v5

    #@2a
    .line 56
    .local v5, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@2d
    move-result-object v19

    #@2e
    .line 57
    .local v19, "_arg3":[I
    move-object/from16 v0, p0

    #@30
    move-object/from16 v1, v19

    #@32
    invoke-virtual {v0, v10, v12, v5, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;I[I)Landroid/content/pm/ParceledListSlice;

    #@35
    move-result-object v23

    #@36
    .line 58
    .local v23, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@39
    .line 59
    if-eqz v23, :cond_0

    #@3b
    .line 60
    const/4 v2, 0x1

    #@3c
    move-object/from16 v0, p3

    #@3e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@41
    .line 61
    const/4 v2, 0x1

    #@42
    move-object/from16 v0, v23

    #@44
    move-object/from16 v1, p3

    #@46
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@49
    .line 66
    :goto_0
    const/4 v2, 0x1

    #@4a
    return v2

    #@4b
    .line 64
    :cond_0
    const/4 v2, 0x0

    #@4c
    move-object/from16 v0, p3

    #@4e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    goto :goto_0

    #@52
    .line 70
    .end local v5    # "_arg2":I
    .end local v10    # "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg3":[I
    .end local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@55
    move-object/from16 v0, p2

    #@57
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5a
    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@5d
    move-result-object v3

    #@5e
    .line 74
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@61
    move-result v4

    #@62
    .line 75
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    #@64
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->stopListening(Ljava/lang/String;I)V

    #@67
    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@6a
    .line 77
    const/4 v2, 0x1

    #@6b
    return v2

    #@6c
    .line 81
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_3
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@6f
    move-object/from16 v0, p2

    #@71
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@74
    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    .line 85
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@7b
    move-result v4

    #@7c
    .line 86
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@7e
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->allocateAppWidgetId(Ljava/lang/String;I)I

    #@81
    move-result v20

    #@82
    .line 87
    .local v20, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@85
    .line 88
    move-object/from16 v0, p3

    #@87
    move/from16 v1, v20

    #@89
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8c
    .line 89
    const/4 v2, 0x1

    #@8d
    return v2

    #@8e
    .line 93
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v20    # "_result":I
    :sswitch_4
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@91
    move-object/from16 v0, p2

    #@93
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@96
    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    .line 97
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@9d
    move-result v4

    #@9e
    .line 98
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@a0
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAppWidgetId(Ljava/lang/String;I)V

    #@a3
    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@a6
    .line 100
    const/4 v2, 0x1

    #@a7
    return v2

    #@a8
    .line 104
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_5
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@ab
    move-object/from16 v0, p2

    #@ad
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@b0
    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b3
    move-result-object v3

    #@b4
    .line 108
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@b7
    move-result v4

    #@b8
    .line 109
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@ba
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteHost(Ljava/lang/String;I)V

    #@bd
    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c0
    .line 111
    const/4 v2, 0x1

    #@c1
    return v2

    #@c2
    .line 115
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_6
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@c5
    move-object/from16 v0, p2

    #@c7
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@ca
    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAllHosts()V

    #@cd
    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@d0
    .line 118
    const/4 v2, 0x1

    #@d1
    return v2

    #@d2
    .line 122
    :sswitch_7
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@d5
    move-object/from16 v0, p2

    #@d7
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@da
    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@dd
    move-result-object v3

    #@de
    .line 126
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@e1
    move-result v4

    #@e2
    .line 127
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@e4
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    #@e7
    move-result-object v25

    #@e8
    .line 128
    .local v25, "_result":Landroid/widget/RemoteViews;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@eb
    .line 129
    if-eqz v25, :cond_1

    #@ed
    .line 130
    const/4 v2, 0x1

    #@ee
    move-object/from16 v0, p3

    #@f0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@f3
    .line 131
    const/4 v2, 0x1

    #@f4
    move-object/from16 v0, v25

    #@f6
    move-object/from16 v1, p3

    #@f8
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@fb
    .line 136
    :goto_1
    const/4 v2, 0x1

    #@fc
    return v2

    #@fd
    .line 134
    :cond_1
    const/4 v2, 0x0

    #@fe
    move-object/from16 v0, p3

    #@100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@103
    goto :goto_1

    #@104
    .line 140
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v25    # "_result":Landroid/widget/RemoteViews;
    :sswitch_8
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@107
    move-object/from16 v0, p2

    #@109
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@10c
    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@10f
    move-result-object v3

    #@110
    .line 144
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@113
    move-result v4

    #@114
    .line 145
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@116
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    #@119
    move-result-object v27

    #@11a
    .line 146
    .local v27, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@11d
    .line 147
    move-object/from16 v0, p3

    #@11f
    move-object/from16 v1, v27

    #@121
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@124
    .line 148
    const/4 v2, 0x1

    #@125
    return v2

    #@126
    .line 152
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v27    # "_result":[I
    :sswitch_9
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@129
    move-object/from16 v0, p2

    #@12b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@12e
    .line 154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@131
    move-result-object v3

    #@132
    .line 156
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@135
    move-result v4

    #@136
    .line 158
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@139
    move-result v5

    #@13a
    .line 159
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    #@13c
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    #@13f
    move-result-object v22

    #@140
    .line 160
    .local v22, "_result":Landroid/content/IntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@143
    .line 161
    if-eqz v22, :cond_2

    #@145
    .line 162
    const/4 v2, 0x1

    #@146
    move-object/from16 v0, p3

    #@148
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@14b
    .line 163
    const/4 v2, 0x1

    #@14c
    move-object/from16 v0, v22

    #@14e
    move-object/from16 v1, p3

    #@150
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    #@153
    .line 168
    :goto_2
    const/4 v2, 0x1

    #@154
    return v2

    #@155
    .line 166
    :cond_2
    const/4 v2, 0x0

    #@156
    move-object/from16 v0, p3

    #@158
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@15b
    goto :goto_2

    #@15c
    .line 172
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v22    # "_result":Landroid/content/IntentSender;
    :sswitch_a
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@15f
    move-object/from16 v0, p2

    #@161
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@164
    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@167
    move-result-object v3

    #@168
    .line 176
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@16b
    move-result-object v13

    #@16c
    .line 178
    .local v13, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@16f
    move-result v2

    #@170
    if-eqz v2, :cond_3

    #@172
    .line 179
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@174
    move-object/from16 v0, p2

    #@176
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@179
    move-result-object v16

    #@17a
    check-cast v16, Landroid/widget/RemoteViews;

    #@17c
    .line 184
    :goto_3
    move-object/from16 v0, p0

    #@17e
    move-object/from16 v1, v16

    #@180
    invoke-virtual {v0, v3, v13, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    #@183
    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@186
    .line 186
    const/4 v2, 0x1

    #@187
    return v2

    #@188
    .line 182
    :cond_3
    const/16 v16, 0x0

    #@18a
    .local v16, "_arg2":Landroid/widget/RemoteViews;
    goto :goto_3

    #@18b
    .line 190
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":[I
    .end local v16    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_b
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@18e
    move-object/from16 v0, p2

    #@190
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@193
    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@196
    move-result-object v3

    #@197
    .line 194
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19a
    move-result v4

    #@19b
    .line 196
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@19e
    move-result v2

    #@19f
    if-eqz v2, :cond_4

    #@1a1
    .line 197
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1a3
    move-object/from16 v0, p2

    #@1a5
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a8
    move-result-object v15

    #@1a9
    check-cast v15, Landroid/os/Bundle;

    #@1ab
    .line 202
    :goto_4
    move-object/from16 v0, p0

    #@1ad
    invoke-virtual {v0, v3, v4, v15}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V

    #@1b0
    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1b3
    .line 204
    const/4 v2, 0x1

    #@1b4
    return v2

    #@1b5
    .line 200
    :cond_4
    const/4 v15, 0x0

    #@1b6
    .local v15, "_arg2":Landroid/os/Bundle;
    goto :goto_4

    #@1b7
    .line 208
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v15    # "_arg2":Landroid/os/Bundle;
    :sswitch_c
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@1ba
    move-object/from16 v0, p2

    #@1bc
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1bf
    .line 210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1c2
    move-result-object v3

    #@1c3
    .line 212
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1c6
    move-result v4

    #@1c7
    .line 213
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@1c9
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;

    #@1cc
    move-result-object v24

    #@1cd
    .line 214
    .local v24, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1d0
    .line 215
    if-eqz v24, :cond_5

    #@1d2
    .line 216
    const/4 v2, 0x1

    #@1d3
    move-object/from16 v0, p3

    #@1d5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1d8
    .line 217
    const/4 v2, 0x1

    #@1d9
    move-object/from16 v0, v24

    #@1db
    move-object/from16 v1, p3

    #@1dd
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1e0
    .line 222
    :goto_5
    const/4 v2, 0x1

    #@1e1
    return v2

    #@1e2
    .line 220
    :cond_5
    const/4 v2, 0x0

    #@1e3
    move-object/from16 v0, p3

    #@1e5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e8
    goto :goto_5

    #@1e9
    .line 226
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v24    # "_result":Landroid/os/Bundle;
    :sswitch_d
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@1ec
    move-object/from16 v0, p2

    #@1ee
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1f1
    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1f4
    move-result-object v3

    #@1f5
    .line 230
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1f8
    move-result-object v13

    #@1f9
    .line 232
    .restart local v13    # "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1fc
    move-result v2

    #@1fd
    if-eqz v2, :cond_6

    #@1ff
    .line 233
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@201
    move-object/from16 v0, p2

    #@203
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@206
    move-result-object v16

    #@207
    check-cast v16, Landroid/widget/RemoteViews;

    #@209
    .line 238
    :goto_6
    move-object/from16 v0, p0

    #@20b
    move-object/from16 v1, v16

    #@20d
    invoke-virtual {v0, v3, v13, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    #@210
    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@213
    .line 240
    const/4 v2, 0x1

    #@214
    return v2

    #@215
    .line 236
    :cond_6
    const/16 v16, 0x0

    #@217
    .restart local v16    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_6

    #@218
    .line 244
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":[I
    .end local v16    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_e
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@21b
    move-object/from16 v0, p2

    #@21d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@220
    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@223
    move-result v2

    #@224
    if-eqz v2, :cond_7

    #@226
    .line 247
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@228
    move-object/from16 v0, p2

    #@22a
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@22d
    move-result-object v9

    #@22e
    check-cast v9, Landroid/content/ComponentName;

    #@230
    .line 253
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@233
    move-result v2

    #@234
    if-eqz v2, :cond_8

    #@236
    .line 254
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@238
    move-object/from16 v0, p2

    #@23a
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@23d
    move-result-object v11

    #@23e
    check-cast v11, Landroid/widget/RemoteViews;

    #@240
    .line 259
    :goto_8
    move-object/from16 v0, p0

    #@242
    invoke-virtual {v0, v9, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    #@245
    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@248
    .line 261
    const/4 v2, 0x1

    #@249
    return v2

    #@24a
    .line 250
    :cond_7
    const/4 v9, 0x0

    #@24b
    .local v9, "_arg0":Landroid/content/ComponentName;
    goto :goto_7

    #@24c
    .line 257
    .end local v9    # "_arg0":Landroid/content/ComponentName;
    :cond_8
    const/4 v11, 0x0

    #@24d
    .local v11, "_arg1":Landroid/widget/RemoteViews;
    goto :goto_8

    #@24e
    .line 265
    .end local v11    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_f
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@251
    move-object/from16 v0, p2

    #@253
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@256
    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@259
    move-result-object v3

    #@25a
    .line 269
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@25d
    move-result-object v13

    #@25e
    .line 271
    .restart local v13    # "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@261
    move-result v5

    #@262
    .line 272
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    #@264
    invoke-virtual {v0, v3, v13, v5}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V

    #@267
    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@26a
    .line 274
    const/4 v2, 0x1

    #@26b
    return v2

    #@26c
    .line 278
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v13    # "_arg1":[I
    :sswitch_10
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@26f
    move-object/from16 v0, p2

    #@271
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@274
    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@277
    move-result v8

    #@278
    .line 282
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@27b
    move-result v4

    #@27c
    .line 283
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@27e
    invoke-virtual {v0, v8, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getInstalledProvidersForProfile(II)Landroid/content/pm/ParceledListSlice;

    #@281
    move-result-object v23

    #@282
    .line 284
    .restart local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@285
    .line 285
    if-eqz v23, :cond_9

    #@287
    .line 286
    const/4 v2, 0x1

    #@288
    move-object/from16 v0, p3

    #@28a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@28d
    .line 287
    const/4 v2, 0x1

    #@28e
    move-object/from16 v0, v23

    #@290
    move-object/from16 v1, p3

    #@292
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@295
    .line 292
    :goto_9
    const/4 v2, 0x1

    #@296
    return v2

    #@297
    .line 290
    :cond_9
    const/4 v2, 0x0

    #@298
    move-object/from16 v0, p3

    #@29a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@29d
    goto :goto_9

    #@29e
    .line 296
    .end local v4    # "_arg1":I
    .end local v8    # "_arg0":I
    .end local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_11
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@2a1
    move-object/from16 v0, p2

    #@2a3
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2a6
    .line 298
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a9
    move-result-object v3

    #@2aa
    .line 300
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2ad
    move-result v4

    #@2ae
    .line 301
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@2b0
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    #@2b3
    move-result-object v21

    #@2b4
    .line 302
    .local v21, "_result":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2b7
    .line 303
    if-eqz v21, :cond_a

    #@2b9
    .line 304
    const/4 v2, 0x1

    #@2ba
    move-object/from16 v0, p3

    #@2bc
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2bf
    .line 305
    const/4 v2, 0x1

    #@2c0
    move-object/from16 v0, v21

    #@2c2
    move-object/from16 v1, p3

    #@2c4
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c7
    .line 310
    :goto_a
    const/4 v2, 0x1

    #@2c8
    return v2

    #@2c9
    .line 308
    :cond_a
    const/4 v2, 0x0

    #@2ca
    move-object/from16 v0, p3

    #@2cc
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2cf
    goto :goto_a

    #@2d0
    .line 314
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v21    # "_result":Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_12
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@2d3
    move-object/from16 v0, p2

    #@2d5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d8
    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2db
    move-result-object v3

    #@2dc
    .line 318
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2df
    move-result v4

    #@2e0
    .line 319
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@2e2
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    #@2e5
    move-result v26

    #@2e6
    .line 320
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e9
    .line 321
    if-eqz v26, :cond_b

    #@2eb
    const/4 v2, 0x1

    #@2ec
    :goto_b
    move-object/from16 v0, p3

    #@2ee
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2f1
    .line 322
    const/4 v2, 0x1

    #@2f2
    return v2

    #@2f3
    .line 321
    :cond_b
    const/4 v2, 0x0

    #@2f4
    goto :goto_b

    #@2f5
    .line 326
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_13
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@2f8
    move-object/from16 v0, p2

    #@2fa
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2fd
    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@300
    move-result-object v3

    #@301
    .line 330
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@304
    move-result v4

    #@305
    .line 332
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@308
    move-result v2

    #@309
    if-eqz v2, :cond_c

    #@30b
    const/16 v17, 0x1

    #@30d
    .line 333
    .local v17, "_arg2":Z
    :goto_c
    move-object/from16 v0, p0

    #@30f
    move/from16 v1, v17

    #@311
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    #@314
    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@317
    .line 335
    const/4 v2, 0x1

    #@318
    return v2

    #@319
    .line 332
    .end local v17    # "_arg2":Z
    :cond_c
    const/16 v17, 0x0

    #@31b
    goto :goto_c

    #@31c
    .line 339
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_14
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@31f
    move-object/from16 v0, p2

    #@321
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@324
    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@327
    move-result-object v3

    #@328
    .line 343
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32b
    move-result v4

    #@32c
    .line 345
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32f
    move-result v5

    #@330
    .line 347
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@333
    move-result v2

    #@334
    if-eqz v2, :cond_d

    #@336
    .line 348
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@338
    move-object/from16 v0, p2

    #@33a
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@33d
    move-result-object v6

    #@33e
    check-cast v6, Landroid/content/ComponentName;

    #@340
    .line 354
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@343
    move-result v2

    #@344
    if-eqz v2, :cond_e

    #@346
    .line 355
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@348
    move-object/from16 v0, p2

    #@34a
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34d
    move-result-object v7

    #@34e
    check-cast v7, Landroid/os/Bundle;

    #@350
    :goto_e
    move-object/from16 v2, p0

    #@352
    .line 360
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    #@355
    move-result v26

    #@356
    .line 361
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@359
    .line 362
    if-eqz v26, :cond_f

    #@35b
    const/4 v2, 0x1

    #@35c
    :goto_f
    move-object/from16 v0, p3

    #@35e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@361
    .line 363
    const/4 v2, 0x1

    #@362
    return v2

    #@363
    .line 351
    .end local v26    # "_result":Z
    :cond_d
    const/4 v6, 0x0

    #@364
    .local v6, "_arg3":Landroid/content/ComponentName;
    goto :goto_d

    #@365
    .line 358
    .end local v6    # "_arg3":Landroid/content/ComponentName;
    :cond_e
    const/4 v7, 0x0

    #@366
    .local v7, "_arg4":Landroid/os/Bundle;
    goto :goto_e

    #@367
    .line 362
    .end local v7    # "_arg4":Landroid/os/Bundle;
    .restart local v26    # "_result":Z
    :cond_f
    const/4 v2, 0x0

    #@368
    goto :goto_f

    #@369
    .line 367
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v26    # "_result":Z
    :sswitch_15
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@36c
    move-object/from16 v0, p2

    #@36e
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@371
    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@374
    move-result-object v3

    #@375
    .line 371
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@378
    move-result v4

    #@379
    .line 373
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@37c
    move-result v2

    #@37d
    if-eqz v2, :cond_10

    #@37f
    .line 374
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@381
    move-object/from16 v0, p2

    #@383
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@386
    move-result-object v14

    #@387
    check-cast v14, Landroid/content/Intent;

    #@389
    .line 380
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@38c
    move-result-object v18

    #@38d
    .line 381
    .local v18, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@38f
    move-object/from16 v1, v18

    #@391
    invoke-virtual {v0, v3, v4, v14, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    #@394
    .line 382
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@397
    .line 383
    const/4 v2, 0x1

    #@398
    return v2

    #@399
    .line 377
    .end local v18    # "_arg3":Landroid/os/IBinder;
    :cond_10
    const/4 v14, 0x0

    #@39a
    .local v14, "_arg2":Landroid/content/Intent;
    goto :goto_10

    #@39b
    .line 387
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v14    # "_arg2":Landroid/content/Intent;
    :sswitch_16
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@39e
    move-object/from16 v0, p2

    #@3a0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3a3
    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3a6
    move-result-object v3

    #@3a7
    .line 391
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3aa
    move-result v4

    #@3ab
    .line 393
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ae
    move-result v2

    #@3af
    if-eqz v2, :cond_11

    #@3b1
    .line 394
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3b3
    move-object/from16 v0, p2

    #@3b5
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b8
    move-result-object v14

    #@3b9
    check-cast v14, Landroid/content/Intent;

    #@3bb
    .line 399
    :goto_11
    move-object/from16 v0, p0

    #@3bd
    invoke-virtual {v0, v3, v4, v14}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    #@3c0
    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3c3
    .line 401
    const/4 v2, 0x1

    #@3c4
    return v2

    #@3c5
    .line 397
    :cond_11
    const/4 v14, 0x0

    #@3c6
    .restart local v14    # "_arg2":Landroid/content/Intent;
    goto :goto_11

    #@3c7
    .line 405
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v14    # "_arg2":Landroid/content/Intent;
    :sswitch_17
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@3ca
    move-object/from16 v0, p2

    #@3cc
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3cf
    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3d2
    move-result v2

    #@3d3
    if-eqz v2, :cond_12

    #@3d5
    .line 408
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3d7
    move-object/from16 v0, p2

    #@3d9
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3dc
    move-result-object v9

    #@3dd
    check-cast v9, Landroid/content/ComponentName;

    #@3df
    .line 413
    :goto_12
    move-object/from16 v0, p0

    #@3e1
    invoke-virtual {v0, v9}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    #@3e4
    move-result-object v27

    #@3e5
    .line 414
    .restart local v27    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e8
    .line 415
    move-object/from16 v0, p3

    #@3ea
    move-object/from16 v1, v27

    #@3ec
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@3ef
    .line 416
    const/4 v2, 0x1

    #@3f0
    return v2

    #@3f1
    .line 411
    .end local v27    # "_result":[I
    :cond_12
    const/4 v9, 0x0

    #@3f2
    .restart local v9    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    #@3f3
    .line 420
    .end local v9    # "_arg0":Landroid/content/ComponentName;
    :sswitch_18
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@3f6
    move-object/from16 v0, p2

    #@3f8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3fb
    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3fe
    move-result-object v3

    #@3ff
    .line 424
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@402
    move-result v4

    #@403
    .line 425
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@405
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    #@408
    move-result v26

    #@409
    .line 426
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@40c
    .line 427
    if-eqz v26, :cond_13

    #@40e
    const/4 v2, 0x1

    #@40f
    :goto_13
    move-object/from16 v0, p3

    #@411
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@414
    .line 428
    const/4 v2, 0x1

    #@415
    return v2

    #@416
    .line 427
    :cond_13
    const/4 v2, 0x0

    #@417
    goto :goto_13

    #@418
    .line 39
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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
