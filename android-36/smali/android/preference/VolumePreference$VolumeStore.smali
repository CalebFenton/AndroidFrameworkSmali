.class public Landroid/preference/VolumePreference$VolumeStore;
.super Ljava/lang/Object;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public greylist originalVolume:I

.field public greylist volume:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    .line 216
    iput v0, p0, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    return-void
.end method
