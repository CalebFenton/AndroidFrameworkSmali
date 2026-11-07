.class Landroid/graphics/ColorSpace$Connector$1;
.super Landroid/graphics/ColorSpace$Connector;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/ColorSpace$Connector;->identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V
    .registers 4
    .param p1, "source"    # Landroid/graphics/ColorSpace;
    .param p2, "destination"    # Landroid/graphics/ColorSpace;
    .param p3, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .line 4254
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-void
.end method


# virtual methods
.method public whitelist transform([F)[F
    .registers 2
    .param p1, "v"    # [F

    .line 4257
    return-object p1
.end method
