.class public abstract Landroid/service/settings/suggestions/ISuggestionService$Stub;
.super Landroid/os/Binder;
.source "ISuggestionService.java"

# interfaces
.implements Landroid/service/settings/suggestions/ISuggestionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/settings/suggestions/ISuggestionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/suggestions/ISuggestionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.settings.suggestions.ISuggestionService"

.field static final greylist-max-o TRANSACTION_dismissSuggestion:I = 0x3

.field static final greylist-max-o TRANSACTION_getSuggestions:I = 0x2

.field static final greylist-max-o TRANSACTION_launchSuggestion:I = 0x4


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 47
    const-string v0, "android.service.settings.suggestions.ISuggestionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/settings/suggestions/ISuggestionService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_4
    const-string v0, "android.service.settings.suggestions.ISuggestionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 59
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz v1, :cond_14

    .line 60
    move-object v1, v0

    check-cast v1, Landroid/service/settings/suggestions/ISuggestionService;

    return-object v1

    .line 62
    :cond_14
    new-instance v1, Landroid/service/settings/suggestions/ISuggestionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/settings/suggestions/ISuggestionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 71
    packed-switch p0, :pswitch_data_10

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 83
    :pswitch_5
    const-string/jumbo v0, "launchSuggestion"

    return-object v0

    .line 79
    :pswitch_9
    const-string v0, "dismissSuggestion"

    return-object v0

    .line 75
    :pswitch_c
    const-string/jumbo v0, "getSuggestions"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 66
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 220
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 94
    invoke-static {p1}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 98
    const-string v0, "android.service.settings.suggestions.ISuggestionService"

    .line 99
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 100
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v1

    .line 106
    :cond_16
    packed-switch p1, :pswitch_data_4e

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 127
    :pswitch_1e
    sget-object v2, Landroid/service/settings/suggestions/Suggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/settings/suggestions/Suggestion;

    .line 128
    .local v2, "_arg0":Landroid/service/settings/suggestions/Suggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    invoke-virtual {p0, v2}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    goto :goto_4d

    .line 118
    .end local v2    # "_arg0":Landroid/service/settings/suggestions/Suggestion;
    :pswitch_30
    sget-object v2, Landroid/service/settings/suggestions/Suggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/settings/suggestions/Suggestion;

    .line 119
    .restart local v2    # "_arg0":Landroid/service/settings/suggestions/Suggestion;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->dismissSuggestion(Landroid/service/settings/suggestions/Suggestion;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    goto :goto_4d

    .line 110
    .end local v2    # "_arg0":Landroid/service/settings/suggestions/Suggestion;
    :pswitch_42
    invoke-virtual {p0}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->getSuggestions()Ljava/util/List;

    move-result-object v2

    .line 111
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 113
    nop

    .line 138
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0x2
        :pswitch_42
        :pswitch_30
        :pswitch_1e
    .end packed-switch
.end method
