.class Landroid/telecom/CallAttributes$1;
.super Ljava/lang/Object;
.source "CallAttributes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/CallAttributes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CallAttributes;
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;

    .line 306
    new-instance v0, Landroid/telecom/CallAttributes;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/net/Uri;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/telecom/CallAttributes;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;IIILandroid/telecom/CallAttributes-IA;)V

    .line 306
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

    .line 303
    invoke-virtual {p0, p1}, Landroid/telecom/CallAttributes$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CallAttributes;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/CallAttributes;
    .registers 3
    .param p1, "size"    # I

    .line 318
    new-array v0, p1, [Landroid/telecom/CallAttributes;

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

    .line 303
    invoke-virtual {p0, p1}, Landroid/telecom/CallAttributes$1;->newArray(I)[Landroid/telecom/CallAttributes;

    move-result-object p1

    return-object p1
.end method
