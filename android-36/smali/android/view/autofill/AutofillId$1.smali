.class Landroid/view/autofill/AutofillId$1;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/autofill/AutofillId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/autofill/AutofillId;
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 318
    .local v2, "viewId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    .local v1, "flags":I
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    move v5, v0

    .line 320
    .local v5, "sessionId":I
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_23

    .line 321
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-long v3, v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJILandroid/view/autofill/AutofillId-IA;)V

    return-object v0

    .line 323
    :cond_23
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_32

    .line 324
    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJILandroid/view/autofill/AutofillId-IA;)V

    return-object v0

    .line 326
    :cond_32
    new-instance v0, Landroid/view/autofill/AutofillId;

    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJILandroid/view/autofill/AutofillId-IA;)V

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

    .line 314
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/autofill/AutofillId;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/autofill/AutofillId;
    .registers 3
    .param p1, "size"    # I

    .line 331
    new-array v0, p1, [Landroid/view/autofill/AutofillId;

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

    .line 314
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillId$1;->newArray(I)[Landroid/view/autofill/AutofillId;

    move-result-object p1

    return-object p1
.end method
