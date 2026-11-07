.class Landroid/telecom/Logging/Session$Info$1;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Logging/Session$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/Logging/Session$Info;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/Logging/Session$Info;
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "methodName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "ownerInfo":Ljava/lang/String;
    new-instance v3, Landroid/telecom/Logging/Session$Info;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/telecom/Logging/Session$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session-IA;)V

    return-object v3
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

    .line 106
    invoke-virtual {p0, p1}, Landroid/telecom/Logging/Session$Info$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/Logging/Session$Info;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/Logging/Session$Info;
    .registers 3
    .param p1, "size"    # I

    .line 117
    new-array v0, p1, [Landroid/telecom/Logging/Session$Info;

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

    .line 106
    invoke-virtual {p0, p1}, Landroid/telecom/Logging/Session$Info$1;->newArray(I)[Landroid/telecom/Logging/Session$Info;

    move-result-object p1

    return-object p1
.end method
