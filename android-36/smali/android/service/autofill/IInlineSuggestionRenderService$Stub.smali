.class public abstract Landroid/service/autofill/IInlineSuggestionRenderService$Stub;
.super Landroid/os/Binder;
.source "IInlineSuggestionRenderService.java"

# interfaces
.implements Landroid/service/autofill/IInlineSuggestionRenderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IInlineSuggestionRenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_destroySuggestionViews:I = 0x3

.field static final blacklist TRANSACTION_getInlineSuggestionsRendererInfo:I = 0x2

.field static final blacklist TRANSACTION_renderSuggestion:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.service.autofill.IInlineSuggestionRenderService"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionRenderService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_4
    const-string v0, "android.service.autofill.IInlineSuggestionRenderService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/autofill/IInlineSuggestionRenderService;

    if-eqz v1, :cond_14

    .line 58
    move-object v1, v0

    check-cast v1, Landroid/service/autofill/IInlineSuggestionRenderService;

    return-object v1

    .line 60
    :cond_14
    new-instance v1, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 69
    packed-switch p0, :pswitch_data_10

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 81
    :pswitch_5
    const-string v0, "destroySuggestionViews"

    return-object v0

    .line 77
    :pswitch_8
    const-string v0, "getInlineSuggestionsRendererInfo"

    return-object v0

    .line 73
    :pswitch_b
    const-string/jumbo v0, "renderSuggestion"

    return-object v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 223
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 92
    invoke-static {p1}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const-string v0, "android.service.autofill.IInlineSuggestionRenderService"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_18

    .line 101
    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v1

    .line 104
    :cond_18
    move-object/from16 v2, p3

    packed-switch p1, :pswitch_data_72

    .line 148
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 139
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-virtual {p0, v3, v4}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->destroySuggestionViews(II)V

    .line 144
    goto :goto_71

    .line 131
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    :pswitch_31
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 132
    .local v3, "_arg0":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, v3}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    .line 134
    goto :goto_71

    .line 109
    .end local v3    # "_arg0":Landroid/os/RemoteCallback;
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/autofill/IInlineSuggestionUiCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IInlineSuggestionUiCallback;

    move-result-object v5

    .line 111
    .local v5, "_arg0":Landroid/service/autofill/IInlineSuggestionUiCallback;
    sget-object v3, Landroid/service/autofill/InlinePresentation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroid/service/autofill/InlinePresentation;

    .line 113
    .local v6, "_arg1":Landroid/service/autofill/InlinePresentation;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 115
    .local v7, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 117
    .local v8, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 119
    .local v9, "_arg4":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 121
    .local v10, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 123
    .local v11, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 124
    .local v12, "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Landroid/service/autofill/IInlineSuggestionRenderService$Stub;->renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    .line 126
    nop

    .line 151
    .end local v5    # "_arg0":Landroid/service/autofill/IInlineSuggestionUiCallback;
    .end local v6    # "_arg1":Landroid/service/autofill/InlinePresentation;
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/os/IBinder;
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":I
    :goto_71
    return v1

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_40
        :pswitch_31
        :pswitch_22
    .end packed-switch
.end method
