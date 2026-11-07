.class Landroid/database/BulkCursorDescriptor$1;
.super Ljava/lang/Object;
.source "BulkCursorDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/BulkCursorDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/database/BulkCursorDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/database/BulkCursorDescriptor;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    new-instance v0, Landroid/database/BulkCursorDescriptor;

    invoke-direct {v0}, Landroid/database/BulkCursorDescriptor;-><init>()V

    .line 34
    .local v0, "d":Landroid/database/BulkCursorDescriptor;
    invoke-virtual {v0, p1}, Landroid/database/BulkCursorDescriptor;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
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

    .line 30
    invoke-virtual {p0, p1}, Landroid/database/BulkCursorDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/database/BulkCursorDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/database/BulkCursorDescriptor;
    .registers 3
    .param p1, "size"    # I

    .line 40
    new-array v0, p1, [Landroid/database/BulkCursorDescriptor;

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

    .line 30
    invoke-virtual {p0, p1}, Landroid/database/BulkCursorDescriptor$1;->newArray(I)[Landroid/database/BulkCursorDescriptor;

    move-result-object p1

    return-object p1
.end method
