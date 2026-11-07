.class public abstract Landroid/service/autofill/augmented/PresentationParams$Area;
.super Ljava/lang/Object;
.source "PresentationParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/augmented/PresentationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Area"
.end annotation


# instance fields
.field private final blacklist mBounds:Landroid/graphics/Rect;

.field public final blacklist proxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;


# direct methods
.method private constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "proxy"    # Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Landroid/service/autofill/augmented/PresentationParams$Area;->proxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    .line 71
    iput-object p2, p0, Landroid/service/autofill/augmented/PresentationParams$Area;->mBounds:Landroid/graphics/Rect;

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/graphics/Rect;Landroid/service/autofill/augmented/PresentationParams-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/service/autofill/augmented/PresentationParams$Area;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public whitelist getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/service/autofill/augmented/PresentationParams$Area;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/service/autofill/augmented/PresentationParams$Area;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
