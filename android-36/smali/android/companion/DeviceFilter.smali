.class public interface abstract Landroid/companion/DeviceFilter;
.super Ljava/lang/Object;
.source "DeviceFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/DeviceFilter$MediumType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final greylist-max-o MEDIUM_TYPE_BLUETOOTH:I = 0x0

.field public static final greylist-max-o MEDIUM_TYPE_BLUETOOTH_LE:I = 0x1

.field public static final greylist-max-o MEDIUM_TYPE_WIFI:I = 0x2


# direct methods
.method public static greylist-max-o matches(Landroid/companion/DeviceFilter;Landroid/os/Parcelable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/companion/DeviceFilter<",
            "TD;>;TD;)Z"
        }
    .end annotation

    .line 65
    .local p0, "filter":Landroid/companion/DeviceFilter;, "Landroid/companion/DeviceFilter<TD;>;"
    .local p1, "device":Landroid/os/Parcelable;, "TD;"
    if-eqz p0, :cond_b

    invoke-interface {p0, p1}, Landroid/companion/DeviceFilter;->matches(Landroid/os/Parcelable;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method


# virtual methods
.method public abstract greylist-max-r getDeviceDisplayName(Landroid/os/Parcelable;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o getMediumType()I
.end method

.method public abstract greylist-max-r matches(Landroid/os/Parcelable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation
.end method
