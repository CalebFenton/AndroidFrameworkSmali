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
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetHost"

.field static final TRANSACTION_providerChanged:I = 0x2

.field static final TRANSACTION_providersChanged:I = 0x3

.field static final TRANSACTION_updateAppWidget:I = 0x1

.field static final TRANSACTION_viewDataChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 16
    const-string/jumbo v0, "com.android.internal.appwidget.IAppWidgetHost"

    #@6
    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    #@9
    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;
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
    const-string/jumbo v1, "com.android.internal.appwidget.IAppWidgetHost"

    #@7
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    #@a
    move-result-object v0

    #@b
    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    #@d
    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 29
    check-cast v0, Lcom/android/internal/appwidget/IAppWidgetHost;

    #@13
    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    #@14
    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/appwidget/IAppWidgetHost$Stub$Proxy;

    #@16
    invoke-direct {v1, p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .line 39
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@7
    move-result v4

    #@8
    return v4

    #@9
    .line 43
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.appwidget.IAppWidgetHost"

    #@c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 44
    return v5

    #@10
    .line 48
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.appwidget.IAppWidgetHost"

    #@13
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@16
    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v0

    #@1a
    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 53
    sget-object v4, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    #@22
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    check-cast v3, Landroid/widget/RemoteViews;

    #@28
    .line 58
    :goto_0
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    #@2b
    .line 59
    return v5

    #@2c
    .line 56
    :cond_0
    const/4 v3, 0x0

    #@2d
    .local v3, "_arg1":Landroid/widget/RemoteViews;
    goto :goto_0

    #@2e
    .line 63
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.appwidget.IAppWidgetHost"

    #@31
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@34
    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@37
    move-result v0

    #@38
    .line 67
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_1

    #@3e
    .line 68
    sget-object v4, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@40
    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@43
    move-result-object v2

    #@44
    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    #@46
    .line 73
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    #@49
    .line 74
    return v5

    #@4a
    .line 71
    :cond_1
    const/4 v2, 0x0

    #@4b
    .local v2, "_arg1":Landroid/appwidget/AppWidgetProviderInfo;
    goto :goto_1

    #@4c
    .line 78
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.appwidget.IAppWidgetHost"

    #@4f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@52
    .line 79
    invoke-virtual {p0}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->providersChanged()V

    #@55
    .line 80
    return v5

    #@56
    .line 84
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.appwidget.IAppWidgetHost"

    #@59
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@5c
    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v0

    #@60
    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@63
    move-result v1

    #@64
    .line 89
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->viewDataChanged(II)V

    #@67
    .line 90
    return v5

    #@68
    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
