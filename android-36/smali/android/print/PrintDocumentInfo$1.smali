.class Landroid/print/PrintDocumentInfo$1;
.super Ljava/lang/Object;
.source "PrintDocumentInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/print/PrintDocumentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintDocumentInfo;
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 376
    new-instance v0, Landroid/print/PrintDocumentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/print/PrintDocumentInfo;-><init>(Landroid/os/Parcel;Landroid/print/PrintDocumentInfo-IA;)V

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

    .line 373
    invoke-virtual {p0, p1}, Landroid/print/PrintDocumentInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintDocumentInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/print/PrintDocumentInfo;
    .registers 3
    .param p1, "size"    # I

    .line 381
    new-array v0, p1, [Landroid/print/PrintDocumentInfo;

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

    .line 373
    invoke-virtual {p0, p1}, Landroid/print/PrintDocumentInfo$1;->newArray(I)[Landroid/print/PrintDocumentInfo;

    move-result-object p1

    return-object p1
.end method
