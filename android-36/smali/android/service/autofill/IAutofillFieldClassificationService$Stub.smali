.class public abstract Landroid/service/autofill/IAutofillFieldClassificationService$Stub;
.super Landroid/os/Binder;
.source "IAutofillFieldClassificationService.java"

# interfaces
.implements Landroid/service/autofill/IAutofillFieldClassificationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IAutofillFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IAutofillFieldClassificationService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.service.autofill.IAutofillFieldClassificationService"

.field static final blacklist TRANSACTION_calculateScores:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 35
    const-string v0, "android.service.autofill.IAutofillFieldClassificationService"

    invoke-virtual {p0, p0, v0}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutofillFieldClassificationService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    const-string v0, "android.service.autofill.IAutofillFieldClassificationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/autofill/IAutofillFieldClassificationService;

    if-eqz v1, :cond_14

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/service/autofill/IAutofillFieldClassificationService;

    return-object v1

    .line 50
    :cond_14
    new-instance v1, Landroid/service/autofill/IAutofillFieldClassificationService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 59
    packed-switch p0, :pswitch_data_8

    .line 67
    const/4 v0, 0x0

    return-object v0

    .line 63
    :pswitch_5
    const-string v0, "calculateScores"

    return-object v0

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 54
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 74
    invoke-static {p1}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "android.service.autofill.IAutofillFieldClassificationService"

    .line 79
    .local v2, "descriptor":Ljava/lang/String;
    const/4 v3, 0x1

    if-lt v0, v3, :cond_11

    const v4, 0xffffff

    if-gt v0, v4, :cond_11

    .line 80
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    :cond_11
    const v4, 0x5f4e5446

    if-ne v0, v4, :cond_1c

    .line 83
    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return v3

    .line 86
    :cond_1c
    move-object/from16 v4, p3

    packed-switch v0, :pswitch_data_64

    .line 113
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 91
    :pswitch_26
    sget-object v5, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/os/RemoteCallback;

    .line 93
    .local v7, "_arg0":Landroid/os/RemoteCallback;
    sget-object v5, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v8

    .line 95
    .local v8, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 97
    .local v9, "_arg2":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, "_arg3":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, "_arg4":Ljava/lang/String;
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/os/Bundle;

    .line 103
    .local v12, "_arg5":Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 104
    .local v5, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v13

    .line 106
    .local v13, "_arg6":Ljava/util/Map;
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v14

    .line 107
    .local v14, "_arg7":Ljava/util/Map;
    invoke-virtual {v1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 108
    move-object v6, p0

    invoke-virtual/range {v6 .. v14}, Landroid/service/autofill/IAutofillFieldClassificationService$Stub;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    .line 109
    nop

    .line 116
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    .end local v7    # "_arg0":Landroid/os/RemoteCallback;
    .end local v8    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v9    # "_arg2":[Ljava/lang/String;
    .end local v10    # "_arg3":[Ljava/lang/String;
    .end local v11    # "_arg4":Ljava/lang/String;
    .end local v12    # "_arg5":Landroid/os/Bundle;
    .end local v13    # "_arg6":Ljava/util/Map;
    .end local v14    # "_arg7":Ljava/util/Map;
    return v3

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch
.end method
