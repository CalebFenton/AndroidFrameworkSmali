.class public Lcom/google/android/maps/OverlayItem;
.super Ljava/lang/Object;
.source "OverlayItem.java"


# static fields
.field public static final ITEM_STATE_FOCUSED_MASK:I = 0x4

.field public static final ITEM_STATE_PRESSED_MASK:I = 0x1

.field public static final ITEM_STATE_SELECTED_MASK:I = 0x2

.field private static final ITEM_STATE_TO_STATE_SET:[[I


# instance fields
.field protected mMarker:Landroid/graphics/drawable/Drawable;

.field protected final mPoint:Lcom/google/android/maps/GeoPoint;

.field protected final mSnippet:Ljava/lang/String;

.field protected final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v3, 0x0

    #@4
    .line 50
    const/16 v0, 0x8

    #@6
    new-array v0, v0, [[I

    #@8
    .line 51
    new-array v1, v6, [I

    #@a
    .line 52
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    #@c
    neg-int v2, v2

    #@d
    aput v2, v1, v3

    #@f
    .line 53
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    #@11
    neg-int v2, v2

    #@12
    aput v2, v1, v4

    #@14
    .line 54
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    #@16
    neg-int v2, v2

    #@17
    aput v2, v1, v5

    #@19
    .line 51
    aput-object v1, v0, v3

    #@1b
    .line 56
    new-array v1, v6, [I

    #@1d
    .line 57
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    #@1f
    neg-int v2, v2

    #@20
    aput v2, v1, v3

    #@22
    .line 58
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    #@24
    neg-int v2, v2

    #@25
    aput v2, v1, v4

    #@27
    .line 59
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    #@29
    aput v2, v1, v5

    #@2b
    .line 56
    aput-object v1, v0, v4

    #@2d
    .line 61
    new-array v1, v6, [I

    #@2f
    .line 62
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    #@31
    neg-int v2, v2

    #@32
    aput v2, v1, v3

    #@34
    .line 63
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    #@36
    aput v2, v1, v4

    #@38
    .line 64
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    #@3a
    neg-int v2, v2

    #@3b
    aput v2, v1, v5

    #@3d
    .line 61
    aput-object v1, v0, v5

    #@3f
    .line 66
    new-array v1, v6, [I

    #@41
    .line 67
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    #@43
    neg-int v2, v2

    #@44
    aput v2, v1, v3

    #@46
    .line 68
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    #@48
    aput v2, v1, v4

    #@4a
    .line 69
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    #@4c
    aput v2, v1, v5

    #@4e
    .line 66
    aput-object v1, v0, v6

    #@50
    .line 71
    new-array v1, v6, [I

    #@52
    .line 72
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    #@54
    aput v2, v1, v3

    #@56
    .line 73
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    #@58
    neg-int v2, v2

    #@59
    aput v2, v1, v4

    #@5b
    .line 74
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    #@5d
    neg-int v2, v2

    #@5e
    aput v2, v1, v5

    #@60
    .line 71
    const/4 v2, 0x4

    #@61
    aput-object v1, v0, v2

    #@63
    .line 76
    new-array v1, v6, [I

    #@65
    .line 77
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    #@67
    aput v2, v1, v3

    #@69
    .line 78
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    #@6b
    neg-int v2, v2

    #@6c
    aput v2, v1, v4

    #@6e
    .line 79
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    #@70
    aput v2, v1, v5

    #@72
    .line 76
    const/4 v2, 0x5

    #@73
    aput-object v1, v0, v2

    #@75
    .line 81
    new-array v1, v6, [I

    #@77
    .line 82
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    #@79
    aput v2, v1, v3

    #@7b
    .line 83
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    #@7d
    aput v2, v1, v4

    #@7f
    .line 84
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    #@81
    neg-int v2, v2

    #@82
    aput v2, v1, v5

    #@84
    .line 81
    const/4 v2, 0x6

    #@85
    aput-object v1, v0, v2

    #@87
    .line 86
    new-array v1, v6, [I

    #@89
    .line 87
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_focused:I

    #@8b
    aput v2, v1, v3

    #@8d
    .line 88
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_selected:I

    #@8f
    aput v2, v1, v4

    #@91
    .line 89
    sget v2, Lcom/google/android/maps/InternalR$attr;->state_pressed:I

    #@93
    aput v2, v1, v5

    #@95
    .line 86
    const/4 v2, 0x7

    #@96
    aput-object v1, v0, v2

    #@98
    .line 50
    sput-object v0, Lcom/google/android/maps/OverlayItem;->ITEM_STATE_TO_STATE_SET:[[I

    #@9a
    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/google/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    #@6
    .line 99
    iput-object p1, p0, Lcom/google/android/maps/OverlayItem;->mPoint:Lcom/google/android/maps/GeoPoint;

    #@8
    .line 100
    iput-object p2, p0, Lcom/google/android/maps/OverlayItem;->mTitle:Ljava/lang/String;

    #@a
    .line 101
    iput-object p3, p0, Lcom/google/android/maps/OverlayItem;->mSnippet:Ljava/lang/String;

    #@c
    .line 98
    return-void
.end method

.method public static setState(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "stateBitset"    # I

    #@0
    .prologue
    .line 149
    sget-object v0, Lcom/google/android/maps/OverlayItem;->ITEM_STATE_TO_STATE_SET:[[I

    #@2
    aget-object v0, v0, p1

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    #@7
    .line 148
    return-void
.end method


# virtual methods
.method public getMarker(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "stateBitset"    # I

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 132
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    #@6
    invoke-static {v0, p1}, Lcom/google/android/maps/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    #@9
    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    #@b
    return-object v0
.end method

.method public getPoint()Lcom/google/android/maps/GeoPoint;
    .locals 1

    #@0
    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mPoint:Lcom/google/android/maps/GeoPoint;

    #@2
    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mSnippet:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/maps/OverlayItem;->mTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public routableAddress()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const v2, 0x49742400    # 1000000.0f

    #@3
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 183
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/android/maps/OverlayItem;->mPoint:Lcom/google/android/maps/GeoPoint;

    #@a
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    #@d
    move-result v1

    #@e
    int-to-float v1, v1

    #@f
    div-float/2addr v1, v2

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@13
    .line 184
    const-string/jumbo v1, ", "

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 185
    iget-object v1, p0, Lcom/google/android/maps/OverlayItem;->mPoint:Lcom/google/android/maps/GeoPoint;

    #@1b
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    #@1e
    move-result v1

    #@1f
    int-to-float v1, v1

    #@20
    div-float/2addr v1, v2

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@24
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    return-object v1
.end method

.method public setMarker(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "marker"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/maps/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    #@2
    .line 113
    return-void
.end method
