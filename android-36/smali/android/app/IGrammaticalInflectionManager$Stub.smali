.class public abstract Landroid/app/IGrammaticalInflectionManager$Stub;
.super Landroid/os/Binder;
.source "IGrammaticalInflectionManager.java"

# interfaces
.implements Landroid/app/IGrammaticalInflectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IGrammaticalInflectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IGrammaticalInflectionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getSystemGrammaticalGender:I = 0x3

.field static final blacklist TRANSACTION_peekSystemGrammaticalGenderByUserId:I = 0x4

.field static final blacklist TRANSACTION_setRequestedApplicationGrammaticalGender:I = 0x1

.field static final blacklist TRANSACTION_setSystemWideGrammaticalGender:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "android.app.IGrammaticalInflectionManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IGrammaticalInflectionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IGrammaticalInflectionManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_4

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_4
    const-string v0, "android.app.IGrammaticalInflectionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IGrammaticalInflectionManager;

    if-eqz v1, :cond_14

    .line 67
    move-object v1, v0

    check-cast v1, Landroid/app/IGrammaticalInflectionManager;

    return-object v1

    .line 69
    :cond_14
    new-instance v1, Landroid/app/IGrammaticalInflectionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IGrammaticalInflectionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 78
    packed-switch p0, :pswitch_data_16

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 94
    :pswitch_5
    const-string/jumbo v0, "peekSystemGrammaticalGenderByUserId"

    return-object v0

    .line 90
    :pswitch_9
    const-string/jumbo v0, "getSystemGrammaticalGender"

    return-object v0

    .line 86
    :pswitch_d
    const-string/jumbo v0, "setSystemWideGrammaticalGender"

    return-object v0

    .line 82
    :pswitch_11
    const-string/jumbo v0, "setRequestedApplicationGrammaticalGender"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 73
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 272
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 105
    invoke-static {p1}, Landroid/app/IGrammaticalInflectionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const-string v0, "android.app.IGrammaticalInflectionManager"

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
    packed-switch p1, :pswitch_data_7c

    .line 169
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 158
    :pswitch_1e
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 160
    .local v2, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 161
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {p0, v2, v3}, Landroid/app/IGrammaticalInflectionManager$Stub;->peekSystemGrammaticalGenderByUserId(Landroid/content/AttributionSource;I)I

    move-result v4

    .line 163
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    goto :goto_7a

    .line 146
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_38
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 148
    .restart local v2    # "_arg0":Landroid/content/AttributionSource;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 149
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v2, v3}, Landroid/app/IGrammaticalInflectionManager$Stub;->getSystemGrammaticalGender(Landroid/content/AttributionSource;I)I

    move-result v4

    .line 151
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    goto :goto_7a

    .line 135
    .end local v2    # "_arg0":Landroid/content/AttributionSource;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 138
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3}, Landroid/app/IGrammaticalInflectionManager$Stub;->setSystemWideGrammaticalGender(II)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    goto :goto_7a

    .line 122
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 126
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IGrammaticalInflectionManager$Stub;->setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    nop

    .line 172
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :goto_7a
    return v1

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_64
        :pswitch_52
        :pswitch_38
        :pswitch_1e
    .end packed-switch
.end method
