.class Landroid/print/PrintAttributes$1;
.super Ljava/lang/Object;
.source "PrintAttributes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/print/PrintAttributes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes;
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1520
    new-instance v0, Landroid/print/PrintAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/print/PrintAttributes;-><init>(Landroid/os/Parcel;Landroid/print/PrintAttributes-IA;)V

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

    .line 1517
    invoke-virtual {p0, p1}, Landroid/print/PrintAttributes$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/print/PrintAttributes;
    .registers 3
    .param p1, "size"    # I

    .line 1525
    new-array v0, p1, [Landroid/print/PrintAttributes;

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

    .line 1517
    invoke-virtual {p0, p1}, Landroid/print/PrintAttributes$1;->newArray(I)[Landroid/print/PrintAttributes;

    move-result-object p1

    return-object p1
.end method
