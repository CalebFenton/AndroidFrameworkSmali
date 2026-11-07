.class Landroid/content/ContentValues$1;
.super Ljava/lang/Object;
.source "ContentValues.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentValues;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 531
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/ContentValues;-><init>(Landroid/os/Parcel;Landroid/content/ContentValues-IA;)V

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

    .line 528
    invoke-virtual {p0, p1}, Landroid/content/ContentValues$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/ContentValues;
    .registers 3
    .param p1, "size"    # I

    .line 536
    new-array v0, p1, [Landroid/content/ContentValues;

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

    .line 528
    invoke-virtual {p0, p1}, Landroid/content/ContentValues$1;->newArray(I)[Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method
