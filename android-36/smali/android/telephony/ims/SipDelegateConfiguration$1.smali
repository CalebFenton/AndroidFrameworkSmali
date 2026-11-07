.class Landroid/telephony/ims/SipDelegateConfiguration$1;
.super Ljava/lang/Object;
.source "SipDelegateConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/SipDelegateConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ims/SipDelegateConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/SipDelegateConfiguration;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 877
    new-instance v0, Landroid/telephony/ims/SipDelegateConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/SipDelegateConfiguration;-><init>(Landroid/os/Parcel;Landroid/telephony/ims/SipDelegateConfiguration-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 874
    invoke-virtual {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/ims/SipDelegateConfiguration;
    .registers 3
    .param p1, "size"    # I

    .line 882
    new-array v0, p1, [Landroid/telephony/ims/SipDelegateConfiguration;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 874
    invoke-virtual {p0, p1}, Landroid/telephony/ims/SipDelegateConfiguration$1;->newArray(I)[Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object p1

    return-object p1
.end method
