.class Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;)I
    .registers 5
    .param p1, "lhs"    # Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    .param p2, "rhs"    # Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    .line 444
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getVolume()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getVolume()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 441
    check-cast p1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    check-cast p2, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;->compare(Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;)I

    move-result p1

    return p1
.end method
