.class Landroid/view/KeyCharacterMap$1;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/KeyCharacterMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/KeyCharacterMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyCharacterMap;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 292
    new-instance v0, Landroid/view/KeyCharacterMap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/view/KeyCharacterMap;-><init>(Landroid/os/Parcel;Landroid/view/KeyCharacterMap-IA;)V

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

    .line 290
    invoke-virtual {p0, p1}, Landroid/view/KeyCharacterMap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/KeyCharacterMap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/KeyCharacterMap;
    .registers 3
    .param p1, "size"    # I

    .line 295
    new-array v0, p1, [Landroid/view/KeyCharacterMap;

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

    .line 290
    invoke-virtual {p0, p1}, Landroid/view/KeyCharacterMap$1;->newArray(I)[Landroid/view/KeyCharacterMap;

    move-result-object p1

    return-object p1
.end method
