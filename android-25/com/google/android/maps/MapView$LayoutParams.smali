.class public Lcom/google/android/maps/MapView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final BOTTOM:I = 0x50

.field public static final BOTTOM_CENTER:I = 0x51

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final LEFT:I = 0x3

.field public static final MODE_MAP:I = 0x0

.field public static final MODE_VIEW:I = 0x1

.field public static final RIGHT:I = 0x5

.field public static final TOP:I = 0x30

.field public static final TOP_LEFT:I = 0x33


# instance fields
.field public alignment:I

.field public mode:I

.field public point:Lcom/google/android/maps/GeoPoint;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "alignment"    # I

    #@0
    .prologue
    .line 989
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@3
    .line 990
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    #@6
    .line 991
    iput p3, p0, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    #@8
    .line 992
    iput p4, p0, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    #@a
    .line 993
    iput p5, p0, Lcom/google/android/maps/MapView$LayoutParams;->alignment:I

    #@c
    .line 988
    return-void
.end method

.method public constructor <init>(IILcom/google/android/maps/GeoPoint;I)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "point"    # Lcom/google/android/maps/GeoPoint;
    .param p4, "alignment"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move v5, v4

    #@6
    move v6, p4

    #@7
    .line 941
    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;III)V

    #@a
    .line 940
    return-void
.end method

.method public constructor <init>(IILcom/google/android/maps/GeoPoint;III)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "point"    # Lcom/google/android/maps/GeoPoint;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "alignment"    # I

    #@0
    .prologue
    .line 964
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@3
    .line 965
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    #@6
    .line 966
    iput-object p3, p0, Lcom/google/android/maps/MapView$LayoutParams;->point:Lcom/google/android/maps/GeoPoint;

    #@8
    .line 967
    iput p4, p0, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    #@a
    .line 968
    iput p5, p0, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    #@c
    .line 969
    iput p6, p0, Lcom/google/android/maps/MapView$LayoutParams;->alignment:I

    #@e
    .line 963
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 1017
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 1016
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    #@0
    .prologue
    .line 1026
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    .line 1027
    const/4 v0, 0x1

    #@4
    iput v0, p0, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    #@6
    .line 1028
    const/16 v0, 0x33

    #@8
    iput v0, p0, Lcom/google/android/maps/MapView$LayoutParams;->alignment:I

    #@a
    .line 1025
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "MapView.LayoutParams={width="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 1033
    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->width:I

    #@12
    invoke-static {v1}, Lcom/google/android/maps/MapView$LayoutParams;->sizeToString(I)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    .line 1033
    const-string/jumbo v1, ", height="

    #@1d
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    .line 1033
    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->height:I

    #@23
    invoke-static {v1}, Lcom/google/android/maps/MapView$LayoutParams;->sizeToString(I)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 1034
    const-string/jumbo v1, " mode="

    #@2e
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 1034
    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    #@34
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 1035
    const-string/jumbo v1, " lat="

    #@3b
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 1035
    iget-object v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->point:Lcom/google/android/maps/GeoPoint;

    #@41
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    #@44
    move-result v1

    #@45
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 1036
    const-string/jumbo v1, " lng="

    #@4c
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 1036
    iget-object v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->point:Lcom/google/android/maps/GeoPoint;

    #@52
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    #@55
    move-result v1

    #@56
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 1037
    const-string/jumbo v1, " x= "

    #@5d
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    .line 1037
    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    #@63
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 1037
    const-string/jumbo v1, " y= "

    #@6a
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    .line 1037
    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    #@70
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 1038
    const-string/jumbo v1, " alignment="

    #@77
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    .line 1038
    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->alignment:I

    #@7d
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v0

    #@81
    .line 1038
    const-string/jumbo v1, "}"

    #@84
    .line 1032
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v0

    #@8c
    return-object v0
.end method
