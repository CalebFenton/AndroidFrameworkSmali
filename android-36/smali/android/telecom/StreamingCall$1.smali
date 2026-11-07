.class Landroid/telecom/StreamingCall$1;
.super Ljava/lang/Object;
.source "StreamingCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/StreamingCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/StreamingCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/StreamingCall;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 81
    new-instance v0, Landroid/telecom/StreamingCall;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telecom/StreamingCall;-><init>(Landroid/os/Parcel;Landroid/telecom/StreamingCall-IA;)V

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

    .line 78
    invoke-virtual {p0, p1}, Landroid/telecom/StreamingCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/StreamingCall;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/StreamingCall;
    .registers 3
    .param p1, "size"    # I

    .line 86
    new-array v0, p1, [Landroid/telecom/StreamingCall;

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

    .line 78
    invoke-virtual {p0, p1}, Landroid/telecom/StreamingCall$1;->newArray(I)[Landroid/telecom/StreamingCall;

    move-result-object p1

    return-object p1
.end method
