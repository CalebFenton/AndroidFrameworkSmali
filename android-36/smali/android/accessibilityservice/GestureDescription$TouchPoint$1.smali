.class Landroid/accessibilityservice/GestureDescription$TouchPoint$1;
.super Ljava/lang/Object;
.source "GestureDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription$TouchPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 496
    new-instance v0, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v0, p1}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>(Landroid/os/Parcel;)V

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

    .line 494
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;->createFromParcel(Landroid/os/Parcel;)Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .registers 3
    .param p1, "size"    # I

    .line 500
    new-array v0, p1, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

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

    .line 494
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/GestureDescription$TouchPoint$1;->newArray(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object p1

    return-object p1
.end method
