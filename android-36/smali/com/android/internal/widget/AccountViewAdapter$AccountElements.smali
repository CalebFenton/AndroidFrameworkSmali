.class public Lcom/android/internal/widget/AccountViewAdapter$AccountElements;
.super Ljava/lang/Object;
.source "AccountViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AccountViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountElements"
.end annotation


# instance fields
.field private blacklist mDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mIcon:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mNumber:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "icon"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mIcon:I

    .line 109
    iput-object p2, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    iput-object p3, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mName:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mNumber:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "icon"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public blacklist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getIcon()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mIcon:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNumber()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mNumber:Ljava/lang/String;

    return-object v0
.end method
