.class public final Landroid/telephony/UssdResponse;
.super Ljava/lang/Object;
.source "UssdResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/UssdResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mReturnMessage:Ljava/lang/CharSequence;

.field private greylist-max-o mUssdRequest:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/telephony/UssdResponse$1;

    invoke-direct {v0}, Landroid/telephony/UssdResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/UssdResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "ussdRequest"    # Ljava/lang/String;
    .param p2, "returnMessage"    # Ljava/lang/CharSequence;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    .line 64
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getReturnMessage()Ljava/lang/CharSequence;
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getUssdRequest()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 38
    iget-object v0, p0, Landroid/telephony/UssdResponse;->mUssdRequest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Landroid/telephony/UssdResponse;->mReturnMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 40
    return-void
.end method
