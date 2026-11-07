.class public final synthetic Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/SimpleIconFactory;

.field public final synthetic blacklist f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/SimpleIconFactory;

    iput-object p2, p0, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/SimpleIconFactory;

    iget-object v1, p0, Lcom/android/internal/app/SimpleIconFactory$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Rect;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p1}, Lcom/android/internal/app/SimpleIconFactory;->$r8$lambda$3TdZrHYq4mg-L_5kmC4ODfA27Sg(Lcom/android/internal/app/SimpleIconFactory;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
