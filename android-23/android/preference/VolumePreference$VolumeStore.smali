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
.field public originalVolume:I

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 199
    iput v0, p0, Landroid/preference/VolumePreference$VolumeStore;->volume:I

    #@6
    .line 200
    iput v0, p0, Landroid/preference/VolumePreference$VolumeStore;->originalVolume:I

    #@8
    .line 198
    return-void
.end method
