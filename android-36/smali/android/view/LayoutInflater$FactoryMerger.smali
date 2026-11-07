.class Landroid/view/LayoutInflater$FactoryMerger;
.super Ljava/lang/Object;
.source "LayoutInflater.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/LayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryMerger"
.end annotation


# instance fields
.field private final greylist-max-o mF1:Landroid/view/LayoutInflater$Factory;

.field private final greylist-max-o mF12:Landroid/view/LayoutInflater$Factory2;

.field private final greylist-max-o mF2:Landroid/view/LayoutInflater$Factory;

.field private final greylist-max-o mF22:Landroid/view/LayoutInflater$Factory2;


# direct methods
.method constructor greylist-max-o <init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V
    .registers 5
    .param p1, "f1"    # Landroid/view/LayoutInflater$Factory;
    .param p2, "f12"    # Landroid/view/LayoutInflater$Factory2;
    .param p3, "f2"    # Landroid/view/LayoutInflater$Factory;
    .param p4, "f22"    # Landroid/view/LayoutInflater$Factory2;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF1:Landroid/view/LayoutInflater$Factory;

    .line 206
    iput-object p3, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF2:Landroid/view/LayoutInflater$Factory;

    .line 207
    iput-object p2, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF12:Landroid/view/LayoutInflater$Factory2;

    .line 208
    iput-object p4, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF22:Landroid/view/LayoutInflater$Factory2;

    .line 209
    return-void
.end method


# virtual methods
.method public whitelist onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 222
    iget-object v0, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF12:Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF12:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    .line 223
    :cond_b
    iget-object v0, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF1:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :goto_11
    nop

    .line 224
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_15

    return-object v0

    .line 225
    :cond_15
    iget-object v1, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF22:Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF22:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_26

    .line 226
    :cond_20
    iget-object v1, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF2:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 225
    :goto_26
    return-object v1
.end method

.method public whitelist onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .line 214
    iget-object v0, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF1:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_9

    return-object v0

    .line 216
    :cond_9
    iget-object v1, p0, Landroid/view/LayoutInflater$FactoryMerger;->mF2:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
