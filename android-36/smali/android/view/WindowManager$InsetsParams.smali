.class public Landroid/view/WindowManager$InsetsParams;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsetsParams"
.end annotation


# instance fields
.field private blacklist mInsets:Landroid/graphics/Insets;

.field private final blacklist mType:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 6288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6289
    iput p1, p0, Landroid/view/WindowManager$InsetsParams;->mType:I

    .line 6290
    return-void
.end method


# virtual methods
.method public whitelist getInsetsSize()Landroid/graphics/Insets;
    .registers 2

    .line 6313
    iget-object v0, p0, Landroid/view/WindowManager$InsetsParams;->mInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 6305
    iget v0, p0, Landroid/view/WindowManager$InsetsParams;->mType:I

    return v0
.end method

.method public whitelist setInsetsSize(Landroid/graphics/Insets;)Landroid/view/WindowManager$InsetsParams;
    .registers 2
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 6297
    iput-object p1, p0, Landroid/view/WindowManager$InsetsParams;->mInsets:Landroid/graphics/Insets;

    .line 6298
    return-object p0
.end method
