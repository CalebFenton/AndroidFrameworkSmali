.class Landroid/app/admin/PasswordMetrics$1;
.super Ljava/lang/Object;
.source "PasswordMetrics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PasswordMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/PasswordMetrics;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/PasswordMetrics;
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .local v1, "credType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .local v2, "length":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 164
    .local v3, "letters":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 165
    .local v4, "upperCase":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 166
    .local v5, "lowerCase":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 167
    .local v6, "numeric":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 168
    .local v7, "symbols":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 169
    .local v8, "nonLetter":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 170
    .local v9, "nonNumeric":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 171
    .local v10, "seqLength":I
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct/range {v0 .. v10}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIIIII)V

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

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/admin/PasswordMetrics$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/PasswordMetrics;
    .registers 3
    .param p1, "size"    # I

    .line 177
    new-array v0, p1, [Landroid/app/admin/PasswordMetrics;

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

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/admin/PasswordMetrics$1;->newArray(I)[Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    return-object p1
.end method
