.class public final synthetic Landroid/util/IconDrawableFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/util/IconDrawableFactory;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/util/IconDrawableFactory;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/IconDrawableFactory$$ExternalSyntheticLambda0;->f$0:Landroid/util/IconDrawableFactory;

    iput p2, p0, Landroid/util/IconDrawableFactory$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/util/IconDrawableFactory$$ExternalSyntheticLambda0;->f$0:Landroid/util/IconDrawableFactory;

    iget v1, p0, Landroid/util/IconDrawableFactory$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, v1}, Landroid/util/IconDrawableFactory;->$r8$lambda$EoW7C7TuolVRrnLqaSjZw4IAXEw(Landroid/util/IconDrawableFactory;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
