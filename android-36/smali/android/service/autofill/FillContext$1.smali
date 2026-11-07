.class Landroid/service/autofill/FillContext$1;
.super Ljava/lang/Object;
.source "FillContext.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/FillContext;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillContext;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .local v0, "requestId":I
    sget-object v1, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/assist/AssistStructure;

    .line 260
    .local v1, "structure":Landroid/app/assist/AssistStructure;
    sget-object v2, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 261
    .local v2, "focusedId":Landroid/view/autofill/AutofillId;
    new-instance v3, Landroid/service/autofill/FillContext;

    invoke-direct {v3, v0, v1, v2}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)V

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

    .line 246
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillContext$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillContext;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/FillContext;
    .registers 3
    .param p1, "size"    # I

    .line 249
    new-array v0, p1, [Landroid/service/autofill/FillContext;

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

    .line 246
    invoke-virtual {p0, p1}, Landroid/service/autofill/FillContext$1;->newArray(I)[Landroid/service/autofill/FillContext;

    move-result-object p1

    return-object p1
.end method
