.class Landroid/service/autofill/DateTransformation$1;
.super Ljava/lang/Object;
.source "DateTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/DateTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/DateTransformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/DateTransformation;
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 117
    new-instance v0, Landroid/service/autofill/DateTransformation;

    const/4 v1, 0x0

    const-class v2, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    const-class v2, Landroid/icu/text/DateFormat;

    .line 118
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/icu/text/DateFormat;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readSerializable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DateFormat;

    invoke-direct {v0, v1, v2}, Landroid/service/autofill/DateTransformation;-><init>(Landroid/view/autofill/AutofillId;Landroid/icu/text/DateFormat;)V

    .line 117
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

    .line 114
    invoke-virtual {p0, p1}, Landroid/service/autofill/DateTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/DateTransformation;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/DateTransformation;
    .registers 3
    .param p1, "size"    # I

    .line 123
    new-array v0, p1, [Landroid/service/autofill/DateTransformation;

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

    .line 114
    invoke-virtual {p0, p1}, Landroid/service/autofill/DateTransformation$1;->newArray(I)[Landroid/service/autofill/DateTransformation;

    move-result-object p1

    return-object p1
.end method
