.class Landroid/view/textclassifier/TextClassificationSessionId$1;
.super Ljava/lang/Object;
.source "TextClassificationSessionId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassificationSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/textclassifier/TextClassificationSessionId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassificationSessionId;
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 108
    new-instance v0, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/TextClassificationSessionId;-><init>(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 108
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

    .line 105
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassificationSessionId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/textclassifier/TextClassificationSessionId;
    .registers 3
    .param p1, "size"    # I

    .line 114
    new-array v0, p1, [Landroid/view/textclassifier/TextClassificationSessionId;

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

    .line 105
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassificationSessionId$1;->newArray(I)[Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object p1

    return-object p1
.end method
