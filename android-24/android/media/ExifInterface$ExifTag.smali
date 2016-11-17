.class Landroid/media/ExifInterface$ExifTag;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final number:I

.field public final primaryFormat:I

.field public final secondaryFormat:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "format"    # I

    #@0
    .prologue
    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 803
    iput-object p1, p0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@5
    .line 804
    iput p2, p0, Landroid/media/ExifInterface$ExifTag;->number:I

    #@7
    .line 805
    iput p3, p0, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    #@9
    .line 806
    const/4 v0, -0x1

    #@a
    iput v0, p0, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    #@c
    .line 802
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "primaryFormat"    # I
    .param p4, "secondaryFormat"    # I

    #@0
    .prologue
    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 810
    iput-object p1, p0, Landroid/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    #@5
    .line 811
    iput p2, p0, Landroid/media/ExifInterface$ExifTag;->number:I

    #@7
    .line 812
    iput p3, p0, Landroid/media/ExifInterface$ExifTag;->primaryFormat:I

    #@9
    .line 813
    iput p4, p0, Landroid/media/ExifInterface$ExifTag;->secondaryFormat:I

    #@b
    .line 809
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILandroid/media/ExifInterface$ExifTag;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "primaryFormat"    # I
    .param p4, "secondaryFormat"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;III)V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILandroid/media/ExifInterface$ExifTag;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # I
    .param p3, "format"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;II)V

    #@3
    return-void
.end method
