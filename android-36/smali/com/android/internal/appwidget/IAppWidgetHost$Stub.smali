.class public abstract Lcom/android/internal/appwidget/IAppWidgetHost$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetHost.java"

# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetHost$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetHost"

.field static final blacklist TRANSACTION_appWidgetRemoved:I = 0x6

.field static final greylist-max-o TRANSACTION_providerChanged:I = 0x3

.field static final greylist-max-o TRANSACTION_providersChanged:I = 0x4

.field static final greylist-max-o TRANSACTION_updateAppWidget:I = 0x2

.field static final blacklist TRANSACTION_updateAppWidgetDeferred:I = 0x1

.field static final greylist-max-o TRANSACTION_viewDataChanged:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    const-string v0, "com.android.internal.appwidget.IAppWidgetHost"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 54
    if-nez p0, :cond_4

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_4
    const-string v0, "com.android.internal.appwidget.IAppWidgetHost"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 58
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_14

    .line 59
    move-object v1, v0

    check-cast v1, Lcom/android/internal/appwidget/IAppWidgetHost;

    return-object v1

    .line 61
    :cond_14
    new-instance v1, Lcom/android/internal/appwidget/IAppWidgetHost$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 70
    packed-switch p0, :pswitch_data_1a

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_5
    const-string v0, "appWidgetRemoved"

    return-object v0

    .line 90
    :pswitch_8
    const-string/jumbo v0, "viewDataChanged"

    return-object v0

    .line 86
    :pswitch_c
    const-string v0, "providersChanged"

    return-object v0

    .line 82
    :pswitch_f
    const-string v0, "providerChanged"

    return-object v0

    .line 78
    :pswitch_12
    const-string/jumbo v0, "updateAppWidget"

    return-object v0

    .line 74
    :pswitch_16
    const-string/jumbo v0, "updateAppWidgetDeferred"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 65
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 278
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    const-string v0, "com.android.internal.appwidget.IAppWidgetHost"

    .line 110
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 111
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return v1

    .line 117
    :cond_16
    packed-switch p1, :pswitch_data_6e

    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 165
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 166
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v2}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->appWidgetRemoved(I)V

    .line 168
    goto :goto_6d

    .line 155
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 157
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->viewDataChanged(II)V

    .line 160
    goto :goto_6d

    .line 149
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_38
    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->providersChanged()V

    .line 150
    goto :goto_6d

    .line 140
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    .line 143
    .local v3, "_arg1":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 145
    goto :goto_6d

    .line 130
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/appwidget/AppWidgetProviderInfo;
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 133
    .local v3, "_arg1":Landroid/widget/RemoteViews;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 135
    goto :goto_6d

    .line 122
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->updateAppWidgetDeferred(I)V

    .line 125
    nop

    .line 175
    .end local v2    # "_arg0":I
    :goto_6d
    return v1

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_62
        :pswitch_4f
        :pswitch_3c
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
