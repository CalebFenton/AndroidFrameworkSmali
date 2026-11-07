.class Landroid/service/chooser/ChooserAction$1;
.super Ljava/lang/Object;
.source "ChooserAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/ChooserAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/chooser/ChooserAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/chooser/ChooserAction;
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 94
    new-instance v0, Landroid/service/chooser/ChooserAction;

    sget-object v1, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 95
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 96
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 97
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/service/chooser/ChooserAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/service/chooser/ChooserAction-IA;)V

    .line 94
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

    .line 91
    invoke-virtual {p0, p1}, Landroid/service/chooser/ChooserAction$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/chooser/ChooserAction;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/chooser/ChooserAction;
    .registers 3
    .param p1, "size"    # I

    .line 102
    new-array v0, p1, [Landroid/service/chooser/ChooserAction;

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

    .line 91
    invoke-virtual {p0, p1}, Landroid/service/chooser/ChooserAction$1;->newArray(I)[Landroid/service/chooser/ChooserAction;

    move-result-object p1

    return-object p1
.end method
