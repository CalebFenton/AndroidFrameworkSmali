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
    .line 426
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
    new-instance v19, Ljava/util/ArrayList;

    #@2c
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@2f
    .line 57
    .local v19, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    move-object/from16 v0, p0

    #@31
    move-object/from16 v1, v19

    #@33
    invoke-virtual {v0, v10, v12, v5, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I

    #@36
    move-result-object v27

    #@37
    .line 58
    .local v27, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3a
    .line 59
    move-object/from16 v0, p3

    #@3c
    move-object/from16 v1, v27

    #@3e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@41
    .line 60
    move-object/from16 v0, p3

    #@43
    move-object/from16 v1, v19

    #@45
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@48
    .line 61
    const/4 v2, 0x1

    #@49
    return v2

    #@4a
    .line 65
    .end local v5    # "_arg2":I
    .end local v10    # "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    .end local v27    # "_result":[I
    :sswitch_2
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@4d
    move-object/from16 v0, p2

    #@4f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 67
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    .line 69
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@59
    move-result v4

    #@5a
    .line 70
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    #@5c
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->stopListening(Ljava/lang/String;I)V

    #@5f
    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@62
    .line 72
    const/4 v2, 0x1

    #@63
    return v2

    #@64
    .line 76
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_3
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@67
    move-object/from16 v0, p2

    #@69
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@6c
    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    .line 80
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@73
    move-result v4

    #@74
    .line 81
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@76
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->allocateAppWidgetId(Ljava/lang/String;I)I

    #@79
    move-result v20

    #@7a
    .line 82
    .local v20, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@7d
    .line 83
    move-object/from16 v0, p3

    #@7f
    move/from16 v1, v20

    #@81
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@84
    .line 84
    const/4 v2, 0x1

    #@85
    return v2

    #@86
    .line 88
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v20    # "_result":I
    :sswitch_4
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@89
    move-object/from16 v0, p2

    #@8b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@8e
    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@91
    move-result-object v3

    #@92
    .line 92
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@95
    move-result v4

    #@96
    .line 93
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@98
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAppWidgetId(Ljava/lang/String;I)V

    #@9b
    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@9e
    .line 95
    const/4 v2, 0x1

    #@9f
    return v2

    #@a0
    .line 99
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_5
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@a3
    move-object/from16 v0, p2

    #@a5
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@a8
    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@ab
    move-result-object v3

    #@ac
    .line 103
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@af
    move-result v4

    #@b0
    .line 104
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@b2
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteHost(Ljava/lang/String;I)V

    #@b5
    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@b8
    .line 106
    const/4 v2, 0x1

    #@b9
    return v2

    #@ba
    .line 110
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    :sswitch_6
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@bd
    move-object/from16 v0, p2

    #@bf
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@c2
    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAllHosts()V

    #@c5
    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@c8
    .line 113
    const/4 v2, 0x1

    #@c9
    return v2

    #@ca
    .line 117
    :sswitch_7
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@cd
    move-object/from16 v0, p2

    #@cf
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@d2
    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@d5
    move-result-object v3

    #@d6
    .line 121
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@d9
    move-result v4

    #@da
    .line 122
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@dc
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetViews(Ljava/lang/String;I)Landroid/widget/RemoteViews;

    #@df
    move-result-object v25

    #@e0
    .line 123
    .local v25, "_result":Landroid/widget/RemoteViews;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@e3
    .line 124
    if-eqz v25, :cond_0

    #@e5
    .line 125
    const/4 v2, 0x1

    #@e6
    move-object/from16 v0, p3

    #@e8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@eb
    .line 126
    const/4 v2, 0x1

    #@ec
    move-object/from16 v0, v25

    #@ee
    move-object/from16 v1, p3

    #@f0
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    #@f3
    .line 131
    :goto_0
    const/4 v2, 0x1

    #@f4
    return v2

    #@f5
    .line 129
    :cond_0
    const/4 v2, 0x0

    #@f6
    move-object/from16 v0, p3

    #@f8
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@fb
    goto :goto_0

    #@fc
    .line 135
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v25    # "_result":Landroid/widget/RemoteViews;
    :sswitch_8
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@ff
    move-object/from16 v0, p2

    #@101
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@104
    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@107
    move-result-object v3

    #@108
    .line 139
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@10b
    move-result v4

    #@10c
    .line 140
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@10e
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIdsForHost(Ljava/lang/String;I)[I

    #@111
    move-result-object v27

    #@112
    .line 141
    .restart local v27    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@115
    .line 142
    move-object/from16 v0, p3

    #@117
    move-object/from16 v1, v27

    #@119
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@11c
    .line 143
    const/4 v2, 0x1

    #@11d
    return v2

    #@11e
    .line 147
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v27    # "_result":[I
    :sswitch_9
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@121
    move-object/from16 v0, p2

    #@123
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@126
    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@129
    move-result-object v3

    #@12a
    .line 151
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@12d
    move-result v4

    #@12e
    .line 153
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@131
    move-result v5

    #@132
    .line 154
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    #@134
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->createAppWidgetConfigIntentSender(Ljava/lang/String;II)Landroid/content/IntentSender;

    #@137
    move-result-object v22

    #@138
    .line 155
    .local v22, "_result":Landroid/content/IntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@13b
    .line 156
    if-eqz v22, :cond_1

    #@13d
    .line 157
    const/4 v2, 0x1

    #@13e
    move-object/from16 v0, p3

    #@140
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@143
    .line 158
    const/4 v2, 0x1

    #@144
    move-object/from16 v0, v22

    #@146
    move-object/from16 v1, p3

    #@148
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    #@14b
    .line 163
    :goto_1
    const/4 v2, 0x1

    #@14c
    return v2

    #@14d
    .line 161
    :cond_1
    const/4 v2, 0x0

    #@14e
    move-object/from16 v0, p3

    #@150
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@153
    goto :goto_1

    #@154
    .line 167
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v22    # "_result":Landroid/content/IntentSender;
    :sswitch_a
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@157
    move-object/from16 v0, p2

    #@159
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@15c
    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@15f
    move-result-object v3

    #@160
    .line 171
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@163
    move-result-object v13

    #@164
    .line 173
    .local v13, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@167
    move-result v2

    #@168
    if-eqz v2, :cond_2

    #@16a
    .line 174
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16c
    move-object/from16 v0, p2

    #@16e
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@171
    move-result-object v16

    #@172
    check-cast v16, Landroid/widget/RemoteViews;

    #@174
    .line 179
    :goto_2
    move-object/from16 v0, p0

    #@176
    move-object/from16 v1, v16

    #@178
    invoke-virtual {v0, v3, v13, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    #@17b
    .line 180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@17e
    .line 181
    const/4 v2, 0x1

    #@17f
    return v2

    #@180
    .line 177
    :cond_2
    const/16 v16, 0x0

    #@182
    .local v16, "_arg2":Landroid/widget/RemoteViews;
    goto :goto_2

    #@183
    .line 185
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":[I
    .end local v16    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_b
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@186
    move-object/from16 v0, p2

    #@188
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@18b
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18e
    move-result-object v3

    #@18f
    .line 189
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@192
    move-result v4

    #@193
    .line 191
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@196
    move-result v2

    #@197
    if-eqz v2, :cond_3

    #@199
    .line 192
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@19b
    move-object/from16 v0, p2

    #@19d
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a0
    move-result-object v15

    #@1a1
    check-cast v15, Landroid/os/Bundle;

    #@1a3
    .line 197
    :goto_3
    move-object/from16 v0, p0

    #@1a5
    invoke-virtual {v0, v3, v4, v15}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetOptions(Ljava/lang/String;ILandroid/os/Bundle;)V

    #@1a8
    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1ab
    .line 199
    const/4 v2, 0x1

    #@1ac
    return v2

    #@1ad
    .line 195
    :cond_3
    const/4 v15, 0x0

    #@1ae
    .local v15, "_arg2":Landroid/os/Bundle;
    goto :goto_3

    #@1af
    .line 203
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v15    # "_arg2":Landroid/os/Bundle;
    :sswitch_c
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@1b2
    move-object/from16 v0, p2

    #@1b4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1b7
    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ba
    move-result-object v3

    #@1bb
    .line 207
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1be
    move-result v4

    #@1bf
    .line 208
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@1c1
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetOptions(Ljava/lang/String;I)Landroid/os/Bundle;

    #@1c4
    move-result-object v24

    #@1c5
    .line 209
    .local v24, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@1c8
    .line 210
    if-eqz v24, :cond_4

    #@1ca
    .line 211
    const/4 v2, 0x1

    #@1cb
    move-object/from16 v0, p3

    #@1cd
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1d0
    .line 212
    const/4 v2, 0x1

    #@1d1
    move-object/from16 v0, v24

    #@1d3
    move-object/from16 v1, p3

    #@1d5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@1d8
    .line 217
    :goto_4
    const/4 v2, 0x1

    #@1d9
    return v2

    #@1da
    .line 215
    :cond_4
    const/4 v2, 0x0

    #@1db
    move-object/from16 v0, p3

    #@1dd
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@1e0
    goto :goto_4

    #@1e1
    .line 221
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v24    # "_result":Landroid/os/Bundle;
    :sswitch_d
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@1e4
    move-object/from16 v0, p2

    #@1e6
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@1e9
    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1ec
    move-result-object v3

    #@1ed
    .line 225
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@1f0
    move-result-object v13

    #@1f1
    .line 227
    .restart local v13    # "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@1f4
    move-result v2

    #@1f5
    if-eqz v2, :cond_5

    #@1f7
    .line 228
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1f9
    move-object/from16 v0, p2

    #@1fb
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1fe
    move-result-object v16

    #@1ff
    check-cast v16, Landroid/widget/RemoteViews;

    #@201
    .line 233
    :goto_5
    move-object/from16 v0, p0

    #@203
    move-object/from16 v1, v16

    #@205
    invoke-virtual {v0, v3, v13, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->partiallyUpdateAppWidgetIds(Ljava/lang/String;[ILandroid/widget/RemoteViews;)V

    #@208
    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@20b
    .line 235
    const/4 v2, 0x1

    #@20c
    return v2

    #@20d
    .line 231
    :cond_5
    const/16 v16, 0x0

    #@20f
    .restart local v16    # "_arg2":Landroid/widget/RemoteViews;
    goto :goto_5

    #@210
    .line 239
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":[I
    .end local v16    # "_arg2":Landroid/widget/RemoteViews;
    :sswitch_e
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@213
    move-object/from16 v0, p2

    #@215
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@218
    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@21b
    move-result v2

    #@21c
    if-eqz v2, :cond_6

    #@21e
    .line 242
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@220
    move-object/from16 v0, p2

    #@222
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@225
    move-result-object v9

    #@226
    check-cast v9, Landroid/content/ComponentName;

    #@228
    .line 248
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@22b
    move-result v2

    #@22c
    if-eqz v2, :cond_7

    #@22e
    .line 249
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@230
    move-object/from16 v0, p2

    #@232
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@235
    move-result-object v11

    #@236
    check-cast v11, Landroid/widget/RemoteViews;

    #@238
    .line 254
    :goto_7
    move-object/from16 v0, p0

    #@23a
    invoke-virtual {v0, v9, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    #@23d
    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@240
    .line 256
    const/4 v2, 0x1

    #@241
    return v2

    #@242
    .line 245
    :cond_6
    const/4 v9, 0x0

    #@243
    .local v9, "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    #@244
    .line 252
    .end local v9    # "_arg0":Landroid/content/ComponentName;
    :cond_7
    const/4 v11, 0x0

    #@245
    .local v11, "_arg1":Landroid/widget/RemoteViews;
    goto :goto_7

    #@246
    .line 260
    .end local v11    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_f
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@249
    move-object/from16 v0, p2

    #@24b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@24e
    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@251
    move-result-object v3

    #@252
    .line 264
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    #@255
    move-result-object v13

    #@256
    .line 266
    .restart local v13    # "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@259
    move-result v5

    #@25a
    .line 267
    .restart local v5    # "_arg2":I
    move-object/from16 v0, p0

    #@25c
    invoke-virtual {v0, v3, v13, v5}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->notifyAppWidgetViewDataChanged(Ljava/lang/String;[II)V

    #@25f
    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@262
    .line 269
    const/4 v2, 0x1

    #@263
    return v2

    #@264
    .line 273
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v13    # "_arg1":[I
    :sswitch_10
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@267
    move-object/from16 v0, p2

    #@269
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@26c
    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@26f
    move-result v8

    #@270
    .line 277
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@273
    move-result v4

    #@274
    .line 278
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@276
    invoke-virtual {v0, v8, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getInstalledProvidersForProfile(II)Landroid/content/pm/ParceledListSlice;

    #@279
    move-result-object v23

    #@27a
    .line 279
    .local v23, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@27d
    .line 280
    if-eqz v23, :cond_8

    #@27f
    .line 281
    const/4 v2, 0x1

    #@280
    move-object/from16 v0, p3

    #@282
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@285
    .line 282
    const/4 v2, 0x1

    #@286
    move-object/from16 v0, v23

    #@288
    move-object/from16 v1, p3

    #@28a
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    #@28d
    .line 287
    :goto_8
    const/4 v2, 0x1

    #@28e
    return v2

    #@28f
    .line 285
    :cond_8
    const/4 v2, 0x0

    #@290
    move-object/from16 v0, p3

    #@292
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@295
    goto :goto_8

    #@296
    .line 291
    .end local v4    # "_arg1":I
    .end local v8    # "_arg0":I
    .end local v23    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_11
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@299
    move-object/from16 v0, p2

    #@29b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@29e
    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2a1
    move-result-object v3

    #@2a2
    .line 295
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2a5
    move-result v4

    #@2a6
    .line 296
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@2a8
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetInfo(Ljava/lang/String;I)Landroid/appwidget/AppWidgetProviderInfo;

    #@2ab
    move-result-object v21

    #@2ac
    .line 297
    .local v21, "_result":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2af
    .line 298
    if-eqz v21, :cond_9

    #@2b1
    .line 299
    const/4 v2, 0x1

    #@2b2
    move-object/from16 v0, p3

    #@2b4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2b7
    .line 300
    const/4 v2, 0x1

    #@2b8
    move-object/from16 v0, v21

    #@2ba
    move-object/from16 v1, p3

    #@2bc
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@2bf
    .line 305
    :goto_9
    const/4 v2, 0x1

    #@2c0
    return v2

    #@2c1
    .line 303
    :cond_9
    const/4 v2, 0x0

    #@2c2
    move-object/from16 v0, p3

    #@2c4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2c7
    goto :goto_9

    #@2c8
    .line 309
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v21    # "_result":Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_12
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@2cb
    move-object/from16 v0, p2

    #@2cd
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2d0
    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d3
    move-result-object v3

    #@2d4
    .line 313
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2d7
    move-result v4

    #@2d8
    .line 314
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@2da
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    #@2dd
    move-result v26

    #@2de
    .line 315
    .local v26, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@2e1
    .line 316
    if-eqz v26, :cond_a

    #@2e3
    const/4 v2, 0x1

    #@2e4
    :goto_a
    move-object/from16 v0, p3

    #@2e6
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@2e9
    .line 317
    const/4 v2, 0x1

    #@2ea
    return v2

    #@2eb
    .line 316
    :cond_a
    const/4 v2, 0x0

    #@2ec
    goto :goto_a

    #@2ed
    .line 321
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v26    # "_result":Z
    :sswitch_13
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@2f0
    move-object/from16 v0, p2

    #@2f2
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@2f5
    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2f8
    move-result-object v3

    #@2f9
    .line 325
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@2fc
    move-result v4

    #@2fd
    .line 327
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@300
    move-result v2

    #@301
    if-eqz v2, :cond_b

    #@303
    const/16 v17, 0x1

    #@305
    .line 328
    .local v17, "_arg2":Z
    :goto_b
    move-object/from16 v0, p0

    #@307
    move/from16 v1, v17

    #@309
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setBindAppWidgetPermission(Ljava/lang/String;IZ)V

    #@30c
    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@30f
    .line 330
    const/4 v2, 0x1

    #@310
    return v2

    #@311
    .line 327
    .end local v17    # "_arg2":Z
    :cond_b
    const/16 v17, 0x0

    #@313
    .restart local v17    # "_arg2":Z
    goto :goto_b

    #@314
    .line 334
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v17    # "_arg2":Z
    :sswitch_14
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@317
    move-object/from16 v0, p2

    #@319
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@31c
    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@31f
    move-result-object v3

    #@320
    .line 338
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@323
    move-result v4

    #@324
    .line 340
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@327
    move-result v5

    #@328
    .line 342
    .restart local v5    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@32b
    move-result v2

    #@32c
    if-eqz v2, :cond_c

    #@32e
    .line 343
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@330
    move-object/from16 v0, p2

    #@332
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@335
    move-result-object v6

    #@336
    check-cast v6, Landroid/content/ComponentName;

    #@338
    .line 349
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@33b
    move-result v2

    #@33c
    if-eqz v2, :cond_d

    #@33e
    .line 350
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@340
    move-object/from16 v0, p2

    #@342
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@345
    move-result-object v7

    #@346
    check-cast v7, Landroid/os/Bundle;

    #@348
    :goto_d
    move-object/from16 v2, p0

    #@34a
    .line 355
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindAppWidgetId(Ljava/lang/String;IILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    #@34d
    move-result v26

    #@34e
    .line 356
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@351
    .line 357
    if-eqz v26, :cond_e

    #@353
    const/4 v2, 0x1

    #@354
    :goto_e
    move-object/from16 v0, p3

    #@356
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@359
    .line 358
    const/4 v2, 0x1

    #@35a
    return v2

    #@35b
    .line 346
    .end local v26    # "_result":Z
    :cond_c
    const/4 v6, 0x0

    #@35c
    .local v6, "_arg3":Landroid/content/ComponentName;
    goto :goto_c

    #@35d
    .line 353
    .end local v6    # "_arg3":Landroid/content/ComponentName;
    :cond_d
    const/4 v7, 0x0

    #@35e
    .local v7, "_arg4":Landroid/os/Bundle;
    goto :goto_d

    #@35f
    .line 357
    .end local v7    # "_arg4":Landroid/os/Bundle;
    .restart local v26    # "_result":Z
    :cond_e
    const/4 v2, 0x0

    #@360
    goto :goto_e

    #@361
    .line 362
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v26    # "_result":Z
    :sswitch_15
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@364
    move-object/from16 v0, p2

    #@366
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@369
    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@36c
    move-result-object v3

    #@36d
    .line 366
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@370
    move-result v4

    #@371
    .line 368
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@374
    move-result v2

    #@375
    if-eqz v2, :cond_f

    #@377
    .line 369
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@379
    move-object/from16 v0, p2

    #@37b
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@37e
    move-result-object v14

    #@37f
    check-cast v14, Landroid/content/Intent;

    #@381
    .line 375
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@384
    move-result-object v18

    #@385
    .line 376
    .local v18, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    #@387
    move-object/from16 v1, v18

    #@389
    invoke-virtual {v0, v3, v4, v14, v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    #@38c
    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@38f
    .line 378
    const/4 v2, 0x1

    #@390
    return v2

    #@391
    .line 372
    .end local v18    # "_arg3":Landroid/os/IBinder;
    :cond_f
    const/4 v14, 0x0

    #@392
    .local v14, "_arg2":Landroid/content/Intent;
    goto :goto_f

    #@393
    .line 382
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v14    # "_arg2":Landroid/content/Intent;
    :sswitch_16
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@396
    move-object/from16 v0, p2

    #@398
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@39b
    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@39e
    move-result-object v3

    #@39f
    .line 386
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a2
    move-result v4

    #@3a3
    .line 388
    .restart local v4    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3a6
    move-result v2

    #@3a7
    if-eqz v2, :cond_10

    #@3a9
    .line 389
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3ab
    move-object/from16 v0, p2

    #@3ad
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3b0
    move-result-object v14

    #@3b1
    check-cast v14, Landroid/content/Intent;

    #@3b3
    .line 394
    :goto_10
    move-object/from16 v0, p0

    #@3b5
    invoke-virtual {v0, v3, v4, v14}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    #@3b8
    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3bb
    .line 396
    const/4 v2, 0x1

    #@3bc
    return v2

    #@3bd
    .line 392
    :cond_10
    const/4 v14, 0x0

    #@3be
    .restart local v14    # "_arg2":Landroid/content/Intent;
    goto :goto_10

    #@3bf
    .line 400
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":I
    .end local v14    # "_arg2":Landroid/content/Intent;
    :sswitch_17
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@3c2
    move-object/from16 v0, p2

    #@3c4
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3c7
    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3ca
    move-result v2

    #@3cb
    if-eqz v2, :cond_11

    #@3cd
    .line 403
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@3cf
    move-object/from16 v0, p2

    #@3d1
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@3d4
    move-result-object v9

    #@3d5
    check-cast v9, Landroid/content/ComponentName;

    #@3d7
    .line 408
    :goto_11
    move-object/from16 v0, p0

    #@3d9
    invoke-virtual {v0, v9}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    #@3dc
    move-result-object v27

    #@3dd
    .line 409
    .restart local v27    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@3e0
    .line 410
    move-object/from16 v0, p3

    #@3e2
    move-object/from16 v1, v27

    #@3e4
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    #@3e7
    .line 411
    const/4 v2, 0x1

    #@3e8
    return v2

    #@3e9
    .line 406
    .end local v27    # "_result":[I
    :cond_11
    const/4 v9, 0x0

    #@3ea
    .restart local v9    # "_arg0":Landroid/content/ComponentName;
    goto :goto_11

    #@3eb
    .line 415
    .end local v9    # "_arg0":Landroid/content/ComponentName;
    :sswitch_18
    const-string/jumbo v2, "com.android.internal.appwidget.IAppWidgetService"

    #@3ee
    move-object/from16 v0, p2

    #@3f0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@3f3
    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3f6
    move-result-object v3

    #@3f7
    .line 419
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    #@3fa
    move-result v4

    #@3fb
    .line 420
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    #@3fd
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    #@400
    move-result v26

    #@401
    .line 421
    .restart local v26    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    #@404
    .line 422
    if-eqz v26, :cond_12

    #@406
    const/4 v2, 0x1

    #@407
    :goto_12
    move-object/from16 v0, p3

    #@409
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@40c
    .line 423
    const/4 v2, 0x1

    #@40d
    return v2

    #@40e
    .line 422
    :cond_12
    const/4 v2, 0x0

    #@40f
    goto :goto_12

    #@410
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
