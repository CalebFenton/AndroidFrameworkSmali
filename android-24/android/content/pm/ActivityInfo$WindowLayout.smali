.class public final Landroid/content/pm/ActivityInfo$WindowLayout;
.super Ljava/lang/Object;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowLayout"
.end annotation


# instance fields
.field public final gravity:I

.field public final height:I

.field public final heightFraction:F

.field public final minHeight:I

.field public final minWidth:I

.field public final width:I

.field public final widthFraction:F


# direct methods
.method public constructor <init>(IFIFIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "widthFraction"    # F
    .param p3, "height"    # I
    .param p4, "heightFraction"    # F
    .param p5, "gravity"    # I
    .param p6, "minWidth"    # I
    .param p7, "minHeight"    # I

    #@0
    .prologue
    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1006
    iput p1, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    #@5
    .line 1007
    iput p2, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    #@7
    .line 1008
    iput p3, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    #@9
    .line 1009
    iput p4, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    #@b
    .line 1010
    iput p5, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    #@d
    .line 1011
    iput p6, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    #@f
    .line 1012
    iput p7, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    #@11
    .line 1005
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1016
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    #@9
    .line 1017
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    #@f
    .line 1018
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    #@15
    .line 1019
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    #@1b
    .line 1020
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    #@21
    .line 1021
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    #@27
    .line 1022
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2a
    move-result v0

    #@2b
    iput v0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    #@2d
    .line 1015
    return-void
.end method
