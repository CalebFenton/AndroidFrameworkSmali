.class public final Landroid/os/Service;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Service$Tag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Service;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist accessor:I = 0x1

.field public static final blacklist serviceWithMetadata:I


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Landroid/os/Service$1;

    invoke-direct {v0}, Landroid/os/Service$1;-><init>()V

    sput-object v0, Landroid/os/Service;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "_value":Landroid/os/ServiceWithMetadata;
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/Service;->_tag:I

    .line 27
    iput-object v0, p0, Landroid/os/Service;->_value:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/os/Service;->_tag:I

    .line 36
    iput-object p2, p0, Landroid/os/Service;->_value:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Service;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/os/Service-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/Service;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .registers 5
    .param p1, "tag"    # I

    .line 134
    invoke-virtual {p0}, Landroid/os/Service;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    .line 137
    return-void

    .line 135
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/os/Service;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Service;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/os/Service;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "_tag"    # I
    .param p2, "_value"    # Ljava/lang/Object;

    .line 148
    iput p1, p0, Landroid/os/Service;->_tag:I

    .line 149
    iput-object p2, p0, Landroid/os/Service;->_value:Ljava/lang/Object;

    .line 150
    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .registers 5
    .param p1, "_tag"    # I

    .line 140
    packed-switch p1, :pswitch_data_24

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :pswitch_1d
    const-string v0, "accessor"

    return-object v0

    .line 141
    :pswitch_20
    const-string/jumbo v0, "serviceWithMetadata"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist accessor(Landroid/os/IBinder;)Landroid/os/Service;
    .registers 3
    .param p0, "_value"    # Landroid/os/IBinder;

    .line 61
    new-instance v0, Landroid/os/Service;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/os/Service;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 127
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 128
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 130
    :cond_10
    return v0
.end method

.method public static blacklist serviceWithMetadata(Landroid/os/ServiceWithMetadata;)Landroid/os/Service;
    .registers 3
    .param p0, "_value"    # Landroid/os/ServiceWithMetadata;

    .line 46
    new-instance v0, Landroid/os/Service;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/os/Service;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "_mask":I
    invoke-virtual {p0}, Landroid/os/Service;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    goto :goto_12

    .line 120
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Service;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 123
    :goto_12
    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public blacklist getAccessor()Landroid/os/IBinder;
    .registers 2

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Service;->_assertTag(I)V

    .line 66
    iget-object v0, p0, Landroid/os/Service;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getServiceWithMetadata()Landroid/os/ServiceWithMetadata;
    .registers 2

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/Service;->_assertTag(I)V

    .line 51
    iget-object v0, p0, Landroid/os/Service;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/os/ServiceWithMetadata;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 40
    iget v0, p0, Landroid/os/Service;->_tag:I

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    .local v0, "_aidl_tag":I
    packed-switch v0, :pswitch_data_36

    .line 112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 109
    .local v1, "_aidl_value":Landroid/os/IBinder;
    invoke-direct {p0, v0, v1}, Landroid/os/Service;->_set(ILjava/lang/Object;)V

    .line 110
    return-void

    .line 103
    .end local v1    # "_aidl_value":Landroid/os/IBinder;
    :pswitch_29
    sget-object v1, Landroid/os/ServiceWithMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ServiceWithMetadata;

    .line 104
    .local v1, "_aidl_value":Landroid/os/ServiceWithMetadata;
    invoke-direct {p0, v0, v1}, Landroid/os/Service;->_set(ILjava/lang/Object;)V

    .line 105
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_29
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist setAccessor(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "_value"    # Landroid/os/IBinder;

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/os/Service;->_set(ILjava/lang/Object;)V

    .line 71
    return-void
.end method

.method public blacklist setServiceWithMetadata(Landroid/os/ServiceWithMetadata;)V
    .registers 3
    .param p1, "_value"    # Landroid/os/ServiceWithMetadata;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/os/Service;->_set(ILjava/lang/Object;)V

    .line 56
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 86
    iget v0, p0, Landroid/os/Service;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Landroid/os/Service;->_tag:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_1b

    .line 92
    :pswitch_b
    invoke-virtual {p0}, Landroid/os/Service;->getAccessor()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1b

    .line 89
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/Service;->getServiceWithMetadata()Landroid/os/ServiceWithMetadata;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 90
    nop

    .line 95
    :goto_1b
    return-void

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method
